-- https://github.com/rest-nvim/rest.nvim
return {
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
    },
    {
        "rest-nvim/rest.nvim",
        ft = "http",
        dependencies = { "luarocks.nvim", "lua-curl", "nvim-nio", "mimetypes", "xml2lua" },
        config = function()
            require("rest-nvim").setup("plugins.configs.rest")
        end,
    }
}
