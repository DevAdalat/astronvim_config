return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.color.ccc-nvim"},
  { import = "astrocommunity.editing-support.todo-comments-nvim"},
  {
    "akinsho/flutter-tools.nvim",
    opts = {
      ui = {
        notification_style = 'plugin'
      },
      debugger = {
        enabled = true,
        run_via_dap = false,
        register_configurations = function(_)
          require("dap").configurations.dart = {
            {
              type = "dart",
              request = "launch",
              name = "Launch App",
              program = "lib/main.dart",
            },
            {
              type = "dart",
              request = "launch",
              name = "Launch current file",
              program = "${file}",
            }
          }
          require("dap.ext.vscode").load_launchjs()
        end
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
        },
        settings = {
          completeFunctionCalls = true,
          renameFilesWithClasses = "prompt", -- "always"
          analysisExcludedFolders = {
            vim.fn.expand("$HOME/.pub-cache/")
          },
        }
      }
    }
  },
}
