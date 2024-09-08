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
            -- Use Ruff's import organizer
            disableOrganizeImports = true,

            disableTaggedHints = true,
        },
        python = {
            analysis = {
                diagnosticSeverityOverrides = {
                    reportUndefinedVariable = "none",
                },
            },
        },
    },
})
