return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function(plugin, opts)
      local mason_nvim_dap = require "mason-nvim-dap"
      mason_nvim_dap.setup(opts) -- run setup
      -- do more configuration as needed
      mason_nvim_dap.setup_handlers {
        python = function(source_name)
          local dap = require "dap"

          dap.adapters.python = {
            type = "executable",
            command = "/usr/bin/python3",
            args = {
              "-m",
              "debugpy.adapter",
            },
          }

          dap.adapters.php = {
            type = "executable",
            command = "node",
            args = { "/opt/vscode-php-debug/out/phpDebug.js" },
          }

          dap.configurations.python = {
            {
              type = "python",
              request = "launch",
              name = "Launch file",
              program = "${file}", -- This configuration will launch the current file if used.
            },
          }

          dap.configurations.php = {
            type = "php",
            request = "launch",
            name = "Listen for Xdebug",
            port = "9003",
            log = true,
          }
        end,
      }
    end,
  },
}
