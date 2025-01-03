-- general
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.list = true

vim.diagnostic.config({
    virtual_text = false,
})

lvim.format_on_save.enabled = false


-- keymappings
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.builtin.which_key.mappings["W"] = {
    "<cmd>noautocmd w<cr>", "Save without formatting (noautocmd)"
}

lvim.builtin.which_key.mappings["o"] = {
    "<cmd>SymbolsOutline<cr>", "Symbols outline"
}

-- change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
    -- for input mode
    i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
    },
    -- for normal mode
    n = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
    },
}


lvim.lsp.installer.setup.automatic_installation.exclude =
{ "ocamllsp", "clangd", "kotlin_language_server", "texlab", "rust_analyzer", "hls" }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers,
    { "clangd", "kotlin_language_server", "texlab", "rust_analyzer", "pyright", "ruff" })

lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
    return server ~= "emmet_ls"
end, lvim.lsp.automatic_configuration.skipped_servers)


local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
    {
        name = "prettier",
        args = { "--tab-width", "4" }
    },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
    -- { name = "cppcheck" }
}


-- additional Plugins
lvim.plugins = {
    -- improve the default vim.ui interfaces
    { "stevearc/dressing.nvim" },

    -- tree like view for symbols in neovim using the lsp
    {
        "simrat39/symbols-outline.nvim",
        config = function()
            require("symbols-outline").setup()
        end
    },

    -- add/change/delete surrounding delimiter pairs with ease
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },

    -- extensible UI for Neovim notifications and LSP progress messages
    {
        "j-hui/fidget.nvim",
        opts = {},
    },

    -- colorschemes
    { "catppuccin/nvim",       name = "catppuccin" },
    { "rose-pine/neovim",      name = "rose-pine" }
}

-- vim.o.background = "light"
lvim.colorscheme = "catppuccin"
