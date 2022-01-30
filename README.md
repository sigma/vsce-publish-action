# vsce publish docker action

This action publishes a VS Code extension using vsce and if needed generate .vsix package.

## Inputs

- `vcse_token`: token to use for authentication (mandatory)
- `build_pkg`: `yes` or `no`. Default no. If yes .vsix package will be generated and pass set to output

## Outputs

- `vsix_path`: Path of the .vsix package generated

## Example usage

```yaml
steps:
  - name: Publish extension
    id: publisher
    uses: sigma/vsce-publish-action@v0.0.2
    with:
      vsce_token: ${{ secrets.VSCE_TOKEN }}
  - name: Process further
    // Do whatever for instance draft release with gh cli
    run: echo ${{ steps.publisher.ouputs.vsix_path }}
```