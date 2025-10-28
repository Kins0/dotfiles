return {
  {
    "kiyoon/jupynium.nvim",
    enabled = false,
    build = "pip3 install .",
    -- build = "uv pip install . --python=$HOME/.virtualenvs/jupynium/bin/python",
    -- build = "conda run --no-capture-output -n jupynium pip install .",
    opts = {
      default_notebook_URL = "localhost:8888/nbclassic",
    },
  },
  "rcarriga/nvim-notify", -- optional
  "stevearc/dressing.nvim", -- optional, UI for :JupyniumKernelSelect
}
