return {
  {
    "iamcco/markdown-preview.nvim",
    cmd = {
      "MarkdownPreview",
      "MarkdownPreviewStop",
      "MarkdownPreviewToggle",
    },
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "AckslD/nvim-FeMaco.lua",
    ft = { "markdown" },
    config = function()
      require("femaco").setup()
    end,
  },
}
