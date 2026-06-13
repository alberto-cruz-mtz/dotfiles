return {
  "sudo-tee/opencode.nvim",
  config = function()
    require("opencode").setup({
      keymap = {
        editor = {
          ["<leader>ao"] = { "toggle" }, -- Open opencode. Close if opened
          ["<leader>as"] = { "select_session" }, -- Select and load a opencode session
          ["<leader>aM"] = { "configure_variant" }, -- Switch model variant for the current model
          ["<leader>aY"] = { "add_visual_selection_inline", mode = { "v" } }, -- Insert visual selection as inline code block in the input buffer
        },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
    },
    -- Optional, for file mentions and commands completion, pick only one
    "saghen/blink.cmp",
    -- 'hrsh7th/nvim-cmp',

    -- Optional, for file mentions picker, pick only one
    "folke/snacks.nvim",
    -- 'nvim-telescope/telescope.nvim',
    -- 'ibhagwan/fzf-lua',
    -- 'nvim_mini/mini.nvim',
  },
}
