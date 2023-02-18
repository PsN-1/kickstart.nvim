return {
    { "akinsho/bufferline.nvim",
    dependencies = "kyazdani42/nvim-web-devicons",
    lazy = false,
    config = function ()
        require("bufferline").setup {
            options = {
                show_close_icon = false,
                show_buffer_close_icons = false,
                color_icons = true
            },
        }
    end,
    }
}