local clangd_flags = {
    "--background-index",
    "--fallback-style=Google",
    "--all-scopes-completion",
    "--clang-tidy",
    "--log=error",
    "--suggest-missing-includes",
    "--cross-file-rename",
    "--completion-style=detailed",
    "--pch-storage=memory",     -- could also be disk
    "--folding-ranges",
    "--enable-config",          -- clangd 11+ supports reading from .clangd configuration file
    "--offset-encoding=utf-16", --temporary fix for null-ls
}

local opts = {
    cmd = { "/opt/homebrew/opt/llvm/bin/clangd", unpack(clangd_flags) },
}

require("lvim.lsp.manager").setup("clangd", opts)
