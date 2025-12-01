return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- enable finding hidden/dot files
    {
      "<leader><leader>",
      LazyVim.pick("files", { hidden = true, no_ignore = true }),
      desc = "Find files (root dir)",
    },
    {
      "<leader>ff",
      LazyVim.pick("files", { hidden = true, no_ignore = true }),
      desc = "Find files (root dir)",
    },
    {
      "<leader>fF",
      LazyVim.pick("files", { cwd = false, hidden = true, no_ignore = true }),
      desc = "Find files (cwd)",
    },
  },
}
