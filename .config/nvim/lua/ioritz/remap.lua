vim.keymap.set("n","<leader>r",":registers<CR>")
vim.keymap.set("n","<leader>b",":ls<CR>")
vim.keymap.set("n","<leader>m",":marks<CR>")
vim.keymap.set("n","<leader>C","I//<ESC>")              -- comment line
vim.keymap.set("n","<leader>c","bi//<ESC>")             -- comment from word
-- vim.keymap.set("n","<leader><space>",":/\s\+$<CR>")     -- look for trailing spaces
vim.keymap.set("n","<leader>l","<C-w>w")
vim.keymap.set("n","<leader>s",":set scb!<CR>")         -- toggle scrollbind
vim.keymap.set("n","<leader>d",":call DiffToggle()<CR>")
vim.keymap.set("n","<leader>n",":NERDTreeToggle<CR>")
vim.keymap.set("n","<leader>u",":UndotreeToggle<CR>")
vim.keymap.set("n","<leader>f",":Telescope find_files<CR>")
vim.keymap.set("n","<leader>g",":Telescope live_grep<CR>")

function DiffToggle()
    -- Test the setting 'diff', to see if it's on or off.
    -- (Any :set option can be tested with &name.
    -- See :help expr-option.)
    if (vim.cmd("diff")) then
        vim.cmd("diffoff")
    else
        vim.cmd("diffthis")
    end
end

