local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Add plugins here

require("lazy").setup(
{
    -- Colorscheme
    {
        "navarasu/onedark.nvim",
        config = function() require("ioritz.config.onedark") end,
        lazy = false,
        priority = 1000,
    },

    -- File Tree
    { "scrooloose/nerdtree", on = ":NERDTreeToggle" },

    -- Status Line
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons" },
        config = function() require("ioritz.config.lualine") end,
    },

    -- Fuzzy finder
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.4", -- or                              , branch = '0.1.x',
        dependencies = { "nvim-lua/plenary.nvim" },
    },

    -- Tmux integration navigation
    { "christoomey/vim-tmux-navigator" },

    -- Better syntax highlight
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function() require("ioritz.config.treesitter") end,
    },

    -- Undo Tree
    { "mbbill/undotree" },
})

