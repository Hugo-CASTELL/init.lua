-- Creating breakpoints
vim.keymap.set("n", "<leader>bb", "<cmd>DapToggleBreakPoint<CR>")

-- Opening debugger
vim.keymap.set("n", "<leader>db", function()
    local widgets = require("dap.ui.widgets")
    local sidebar = widgets.sidebar(widgets.scopes)
    sidebar.open()
end)
