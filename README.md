# vsce publish docker action

This action publishes a VS Code extension using vsce.

## Example usage

uses: sigma/vsce-publish-action@vmaster
env:
  VSCE_TOKEN: ${{ secrets.VSCE_TOKEN }}
with:
  args: publish -p $VSCE_TOKEN
