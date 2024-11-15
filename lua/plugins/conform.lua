return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        -- injected = { options = { ignore_errors = true } },
        -- # Example of using dprint only when a dprint.json file is present
        -- dprint = {
        --   condition = function(ctx)
        --     return vim.fs.find({ "dprint.json" }, { path = ctx.filename, upward = true })[1]
        --   end,
        -- },
        --
        -- # Example of using shfmt with extra args
        shfmt = {
          enabled = false,
          prepend_args = { "-i", "4", "-ci" },
        },
      },
    },
  },
}
