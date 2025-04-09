return {
  {
    "Civitasv/cmake-tools.nvim",
    -- stylua: ignore
    keys = {
      -- { "<leader>cb", "<cmd>CMakeBuild<cr>", desc = "CMake build", mode="n" },
      -- { "<leader>ci", "<cmd>CMakeInstall<cr>", desc = "CMake install", mode="n" },
      -- { "<F2>", "<cmd>CMakeBuild<cr>", desc = "CMake build", mode="n" },
      -- { "<F3>", "<cmd>CMakeInstall<cr>", desc = "CMake install", mode="n" },
      { "<leader>cb", "<cmd>CMakeBuild install<cr>", desc = "CMake build and install", mode="n" },
      { "<F2>", "<cmd>CMakeBuild install<cr>", desc = "CMake build and install", mode="n" },
    },
    opts = {
      cmake_executor = { -- executor to use
        name = "quickfix", -- name of the executor
        opts = {}, -- the options the executor will get, possible values depend on the executor type. See `default_opts` for possible values.
        default_opts = { -- a list of default and possible values for executors
          quickfix = {
            -- show = "only_on_error", -- "always", "only_on_error"
            -- position = "belowright", -- "vertical", "horizontal", "leftabove", "aboveleft", "rightbelow", "belowright", "topleft", "botright", use `:h vertical` for example to see help on them
            size = 20,
            -- encoding = "utf-8", -- if encoding is not "utf-8", it will be converted to "utf-8" using `vim.fn.iconv`
            -- auto_close_when_success = false, -- typically, you can use it with the "always" option; it will auto-close the quickfix buffer if the execution is successful.
          },
        },
      },
    },
  },
}
