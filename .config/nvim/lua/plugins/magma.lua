return {
  "dccsillag/magma-nvim",
  lazy = false,
  enabled = false,
  keys = {
    { "<LocalLeader>r", "<cmd>MagmaEvaluateOperator<cr>", mode = { "n" } },
    { "<LocalLeader>rr", "<cmd>MagmaEvaluateLine<cr>", mode = { "n" } },
    { "<LocalLeader>r", "<cmd>MagmaEvaluateVisual<cr>", mode = { "x" } },
    { "<LocalLeader>rc", "<cmd>MagmaReevaluateCell<cr>", mode = { "n" } },
    { "<LocalLeader>rd", "<cmd>MagmaDelete<cr>", mode = { "n" } },
    { "<LocalLeader>ro", "<cmd>MagmaShowOutput<cr>", mode = { "n" } },
  },
}
