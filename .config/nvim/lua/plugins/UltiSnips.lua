return {
  -- add ultisnips
  {
    "SirVer/ultisnips",
    dependencies = {
      "honza/vim-snippets",
    },
    event = "InsertEnter",
    config = function()
      -- vim.g.UltiSnipsExpandOrJumpTrigger = "<tab>"
      vim.g.UltiSnipsExpandTrigger = "<Tab>"
      vim.g.UltiSnipsJumpTrigger = "<Tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<S-Tab>"
      vim.g.UltiSnipsEditSplit = "vertical"
      vim.g.UltiSnipsSnippetDirectories = { "UltiSnips", "ultisnips", "mySnippets" }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "quangnguyen30192/cmp-nvim-ultisnips" },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            vim.fn["UltiSnips#Anon"](args.body)
          end,
        },
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["UltiSnips#CanExpandSnippet"]() == 1 then
              vim.fn["UltiSnips#ExpandSnippet"]()
            elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
              vim.fn["UltiSnips#JumpForwards"]()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
              vim.fn["UltiSnips#JumpBackwards"](fallback)
            end
          end, { "i", "s" }),

          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Up>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { "i", "c" }),
          ["<Down>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end, { "i", "c" }),
        },
        sources = {
          { name = "ultisnips" },
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
        experimental = {
          ghost_text = true, -- Enables ghost text feature
        },
      })
    end,
  },
}
