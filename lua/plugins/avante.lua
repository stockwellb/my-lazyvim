return {
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      debug = true,
      provider = "copilot",
      auto_suggestions_provider = nil,

      providers = {
        provider = "copilot", -- Use copilot provider by default
        -- OpenAI Config
        openai = {
          api_key = os.getenv("OPENAI_API_KEY"), -- Set API key via environment variable
          model = "gpt-4", -- your desired model (or use gpt-3.5-turbo, etc.)
          timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
          extra_request_body = {
            temperature = 0,
            max_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
          },
        },
      },
    },
    build = "make",
    dependencies = {
      "zbirenbaum/copilot.lua", -- Required for copilot provider
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "hrsh7th/nvim-cmp",
      "nvim-tree/nvim-web-devicons",
      -- Optional:
      "echasnovski/mini.pick",
      "nvim-telescope/telescope.nvim",
      "ibhagwan/fzf-lua",
    },
  },
}
