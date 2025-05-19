---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true,
        expandtab = true,
        tabstop = 4,
        shiftwidth = 4,
        list = true,
        scrolloff = 10,
      },
    },
    diagnostics = {
      virtual_text = false,
    },
    mappings = {
      n = {
        ["<S-l>"] = {
          function() require("astrocore.buffer").nav(vim.v.count1) end,
          desc = "Next buffer",
        },
        ["<S-h>"] = {
          function() require("astrocore.buffer").nav(-vim.v.count1) end,
          desc = "Previous buffer",
        },

        ["<Leader>W"] = {
          ":noa w<cr>",
          desc = "Save without formatting",
        },
      },
    },
  },
}
