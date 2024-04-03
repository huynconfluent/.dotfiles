return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
        vim.keymap.set("n", "<leader>tf", ":Telescope find_files<CR>"),
        vim.keymap.set("n", "<leader>tl", ":Telescope live_grep<CR>"),
        vim.keymap.set("n", "<leader>tg", ":Telescope live_grep<CR>"),
        vim.keymap.set("n", "<leader>tb", ":Telescope buffers<CR>"),
        vim.keymap.set("n", "<leader>th", ":Telescope help_tags<CR>"),
    },
    config = function()
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                layout_strategy = "vertical",
                layout_config = { prompt_position = "bottom" },
            },
        })

        telescope.load_extension("fzf")
    end,
}
