return {
  -- Barra de estado gruvbox
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme                = "gruvbox",
        globalstatus         = true,
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" },
      },
    },
  },

  -- Árbol de archivos
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      vim.g.loaded_netrw       = 1
      vim.g.loaded_netrwPlugin = 1
      require("nvim-tree").setup({
        renderer = { group_empty = true },
        filters  = { dotfiles = false },
      })
      vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
    end,
  },

 -- Resaltado de sintaxis moderno
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
  },

  -- Resaltado de colores hex (útil para configs de colores)
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },

  -- Comentarios rápidos con gcc / gc
  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  -- Autopares de brackets/comillas
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
}
