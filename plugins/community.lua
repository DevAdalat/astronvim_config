return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.dart" },
  {
    "akinsho/flutter-tools.nvim",
    opts = {
      debugger = {
        enabled = true,
        run_via_dap = true,
      },
      widget_guides = {
        enabled = true,
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
          background_color = { r = 19, g = 17, b = 24},
          foreground = true
        }
      }
    }
  },
}
