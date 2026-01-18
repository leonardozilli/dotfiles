return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  branch = 'master',
  event = { "BufReadPost", "BufNewFile" },

  config = function()
    require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "c",
          "cpp",
          "python",
          "html",
          "css",
          "matlab",
          "javascript",
          "lua",
          "vim",
          "vimdoc",
          "query"
        },

        sync_install = false,
        auto_install = true,

        autopairs = {
          enable = true,
        },
        
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        indent = {
          enable = true,
          --disable = { "python", "c" } -- these and some other langs don't work well
        },
        
        config = function(_, opts)
          require("nvim-treesitter.configs").setup(opts)
        end,
      })
  end
}
