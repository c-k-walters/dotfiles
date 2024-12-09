return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({})

        local keymap = vim.keymap
        local builtin = require('telescope.builtin')

        keymap.set("n", "<leader>pf", builtin.find_files, {})
        keymap.set("n", "<C-p>", builtin.git_files, {})
        keymap.set("n", "<leader>ps", builtin.live_grep, {})
    end,
}
