return {
  "sindrets/diffview.nvim",
  event = "User AstroGitFile",
  cmd = { "DiffviewOpen" },
  opts = {
    enhanced_diff_hl = true,
    view = {
      default = { winbar_info = true },
      file_history = { winbar_info = true },
    },
    hooks = {
      diff_buf_read = function(bufnr) vim.b[bufnr].view_activated = false end,
      view_opened = function()
        -- dirty workaround to avoid conflict with default "close buffer" mapping
        vim.keymap.set("n", "<Leader>c", function() return false end)
      end,
    },
  },
}
