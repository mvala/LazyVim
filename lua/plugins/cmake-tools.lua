return {
  {
    "Civitasv/cmake-tools.nvim",
    -- stylua: ignore
    keys = {
      { "<leader>cb", "<cmd>CMakeBuild<cr>", desc = "CMake build", mode="n" },
      { "<leader>ci", "<cmd>CMakeInstall<cr>", desc = "CMake install", mode="n" },
    },
  },
}
