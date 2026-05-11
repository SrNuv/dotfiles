return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,  -- cargar antes que todo
    config = function()
      require("gruvbox").setup({
        terminal_colors  = true,
        undercurl        = true,
        underline        = true,
        bold             = true,
        italic = {
          strings   = true,
          emphasis  = true,
          comments  = true,
          operators = false,
          folds     = true,
        },
        strikethrough    = true,
        contrast         = "",   -- "" | "soft" | "hard"
        dim_inactive     = false,
        transparent_mode = true, -- 🔑 fondo transparente
      })

      vim.o.background = "dark"
      vim.cmd("colorscheme gruvbox")

      -- Forzar transparencia en los grupos clave
      -- (por si el terminal no la hereda automáticamente)
      local transparent_groups = {
        "Normal", "NormalNC", "NormalFloat",
        "SignColumn", "LineNr", "CursorLineNr",
        "EndOfBuffer", "FoldColumn", "Folded",
        "StatusLine", "StatusLineNC",
        "TelescopeNormal", "TelescopeBorder",
        "NvimTreeNormal", "NvimTreeEndOfBuffer",
      }
      for _, group in ipairs(transparent_groups) do
        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
      end
    end,
  },
}
