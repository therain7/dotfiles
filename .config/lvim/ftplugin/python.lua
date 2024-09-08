require("lvim.lsp.manager").setup("ruff_lsp", {
    on_attach = function(client, bufnr)
        -- Disable hover in favor of Pyright
        client.server_capabilities.hoverProvider = false

        require("lvim.lsp").common_on_attach(client, bufnr)
    end,
})

require("lvim.lsp.manager").setup("pyright", {
    settings = {
        pyright = {
            -- Using Ruff's import organizer
            disableOrganizeImports = true,
        },
        python = {
            analysis = {
                typeCheckingMode = "standard",

                -- Ignore all files for analysis
                -- to exclusively use Ruff for linting
                ignore = { "*" }
            },
        },
    },
})
