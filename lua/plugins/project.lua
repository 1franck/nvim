return {
    {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup(require "plugins.configs.project")
            require('telescope').load_extension('projects')

            vim.keymap.set('n', '<leader>pr', function()
                local project_nvim = require("project_nvim")
                local recent_projects = project_nvim.get_recent_projects()
                -- todo: add telescope picker
                local picker = require('telescope.pickers')
                picker.new({}, {
                    prompt_title = 'Recent projects',
                    finder = require('telescope.finders').new_table {
                        results = recent_projects,
                    },
                    sorter = require('telescope.config').values.generic_sorter({}),
                    attach_mappings = function(prompt_bufnr, map)
                        local select_project = function()
                            local entry = require('telescope.actions.state').get_selected_entry()
                            require('telescope.actions').close(prompt_bufnr)
                            vim.cmd('cd ' .. entry.value)
                        end

                        map('i', '<CR>', select_project)
                        map('n', '<CR>', select_project)

                        return true
                    end,
                }):find()
            end, { desc = 'Recent projects' })

            vim.keymap.set('n', '<leader>pp', require 'telescope'.extensions.projects.projects, { desc = 'Telescope projects' })

        end
    },
}