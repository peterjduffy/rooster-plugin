#!/bin/sh
# Starts the MCP server that ships inside Rooster.app. It looks for Rooster
# in /Applications, then in the Applications folder in your home folder.
for app in "/Applications/Rooster.app" "$HOME/Applications/Rooster.app"; do
  helper="$app/Contents/Helpers/rooster-mcp"
  if [ -x "$helper" ]; then
    exec "$helper" "$@"
  fi
done
echo "Rooster was not found in /Applications or ~/Applications. Install it from https://rooster.cam and move it to your Applications folder." >&2
exit 1
