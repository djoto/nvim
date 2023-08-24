# nvim
## ~/.config/nvim

- Coc Pyright installation:
  - `:CocInstall coc-pyright`
    
- Coc Pyright configuration changes from ___~/.config/coc/extensions/node_modules/coc-pyright/package.json___ file:
  
  - Set `pyright.inlayHints.functionReturnTypes` to `false` (Disables inlay hints for function return types)
  - Set `pyright.inlayHints.variableTypes` to `false` (Disables inlay hints for variable types)
  - Set `pyright.disableDiagnostics` to `true` (Disables diagnostics from Pyright)
