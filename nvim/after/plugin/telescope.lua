require('telescope.actions')require('telescope').setup{
  pickers = {
    buffers = {
      sort_lastused = true
    }
  }
}

require("telescope").load_extension("live_grep_args")

local builtin = require('telescope.builtin')

function find_dotfiles()
    builtin.git_files {
        shorten_path = true,
        cwd = "~/.dotfiles",
        prompt = "~ nvim config ~",
        height = "10",

        layout_strategy = "horizontal",
        layout_options = {
            preview_width = 0.75,
        }
    }
end

function find_test()
    builtin.find_files {
        shorten_path = true,
        cwd = "test/",
        prompt = "~ tess ~",
        height = "10",

        layout_strategy = "horizontal",
        layout_options = {
            preview_width = 0.75,
        }
    }
end

function find_src()
    builtin.find_files {
        shorten_path = true,
        cwd = "src/",
        prompt = "~ src ~",
        height = "10",

        layout_strategy = "horizontal",
        layout_options = {
            preview_width = 0.75,
        }
    }
end

vim.keymap.set('n', '<leader>fd', find_dotfiles, {})

vim.keymap.set('n', '<leader>o', find_src, {})
vim.keymap.set('n', '<leader>t', find_test, {})

vim.keymap.set('n', '<leader>i', builtin.buffers, {})
vim.keymap.set('n', '<leader>p', builtin.find_files, {})

vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
--
--vim.keymap.set('n', '<leader>fs', function()
--	builtin.grep_string({ search = vim.fn.input("Grep > ") })
--end)

vim.keymap.set('n', '<leader>fr', builtin.resume, {})
vim.keymap.set('n', '<leader>fp', builtin.pickers, {})

vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})

vim.keymap.set("n", "<leader>fs", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")


