---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    features = { inlay_hints = true },
    formatting = {
      format_on_save = {
        enabled = true,
        ignore_filetypes = { "c" },
      },
    },
    servers = {},
    mappings = {
      n = {
        gr = {
          function() vim.lsp.buf.references() end,
          desc = "References of current symbol",
          cond = "textDocument/references",
        },
      },
    },
  },
}
