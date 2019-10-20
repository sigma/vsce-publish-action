# vsce publish docker action

This action publishes a VS Code extension using vsce.

## Inputs

`vcse_token`: token to use for authentication (mandatory)

## Example usage

    uses: sigma/vsce-publish-action@v0.0.1
    with:
      vsce_token: ${{ secrets.VSCE_TOKEN }}
