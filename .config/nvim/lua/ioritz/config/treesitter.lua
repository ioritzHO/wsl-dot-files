require('nvim-treesitter.configs').setup {
        ensure_installed = { "c", "c_sharp", "cpp", "dot", "markdown", "bash", "lua", "vim", "vimdoc", "python", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
}
