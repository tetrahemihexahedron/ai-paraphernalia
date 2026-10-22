#!/usr/bin/env bash
set -euo pipefail

workspace_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
export PLAYWRIGHT_BROWSERS_PATH="${PLAYWRIGHT_BROWSERS_PATH:-${workspace_dir}/.pi/cache/ms-playwright}"
export PLAYWRIGHT_MCP_CONFIG="${PLAYWRIGHT_MCP_CONFIG:-${workspace_dir}/.playwright/cli.config.json}"

# Reinstall tools after each container rebuild; keep browser downloads in the workspace.
npm install -g --ignore-scripts \
  @earendil-works/pi-coding-agent \
  @playwright/cli@0.1.22

mkdir -p "$PLAYWRIGHT_BROWSERS_PATH"

# Resolve the CLI package's own Playwright dependency so its browser revision matches.
# Do not use an independently installed stable Playwright to download the browser.
cli_package_dir="$(npm root -g)/@playwright/cli"
playwright_package_json="$(node -e '
  console.log(require.resolve("playwright/package.json", { paths: [process.argv[1]] }));
' "$cli_package_dir")"
playwright_cli="${playwright_package_json%/package.json}/cli.js"

# Playwright uses sudo for Linux system dependencies when invoked as the dev user.
node "$playwright_cli" install --with-deps chromium

# Relative browser output paths resolve from the working directory.
cd "$workspace_dir"

# Verify the actual agent-facing CLI can launch the configured headless Chromium.
export NO_UPDATE_NOTIFIER=1
playwright-cli --version
trap 'playwright-cli -s=devcontainer-smoke close >/dev/null 2>&1 || true' EXIT
playwright-cli -s=devcontainer-smoke open about:blank
playwright-cli -s=devcontainer-smoke close
trap - EXIT
