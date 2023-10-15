return {
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
        config = function(_, opts)
            --dofile(vim.g.base46_cache .. "mason")
            require("mason").setup(require "plugins.configs.mason")

            -- custom nvchad cmd to install all mason binaries listed
            --vim.api.nvim_create_user_command("MasonInstallAll", function()
            --    vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
            --end, {})
            --
            --vim.g.mason_binaries_list = opts.ensure_installed
        end,
        init = function()
        end
    },
}