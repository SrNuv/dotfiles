local opt = vim.opt

opt.number         = true
opt.relativenumber = true
opt.tabstop        = 4
opt.shiftwidth     = 4
opt.expandtab      = true
opt.smartindent    = true
opt.wrap           = false
opt.termguicolors  = true   -- necesario para transparencia y colores
opt.cursorline     = true
opt.scrolloff      = 8
opt.signcolumn     = "yes"
opt.updatetime     = 100
opt.clipboard      = "unnamedplus"
opt.splitbelow     = true
opt.splitright     = true

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(function()
      require("nvim-treesitter.configs").setup({
        highlight = { enable = true },
        indent    = { enable = true },
      })
    end)
  end,
})
