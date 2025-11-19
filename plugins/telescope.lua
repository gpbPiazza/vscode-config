return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules", "%.git/", "dist" }, -- remove "env" patterns if they exist
        hidden = true, -- optional: always show hidden files
      },
    },
  },
}
