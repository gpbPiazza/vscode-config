return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go",
    },
    ft = "go",
    config = function()
      local dap = require("dap")
      local dapgo = require("dap-go")

      -- basic setup (uses dlv under the hood)
      dapgo.setup()

      -- keymaps for Go debugging
      vim.keymap.set("n", "<leader>dt", function()
        dapgo.debug_test()
      end, { desc = "Debug Go test (nearest)" })

      vim.keymap.set("n", "<leader>dT", function()
        dapgo.debug_last()
      end, { desc = "Debug Go last test" })

      -- you still have normal dap keys from LazyVim, like:
      -- <leader>db  -> toggle breakpoint
      -- <leader>dO  -> step over
      -- <leader>di  -> step into
      -- <leader>do  -> step out
      -- <leader>du  -> toggle DAP UI
    end,
  },
}
