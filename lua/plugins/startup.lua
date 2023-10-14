return {
    {
        "startup-nvim/startup.nvim",
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            require "startup".setup(require "plugins.configs.startup")
        end
    },
}