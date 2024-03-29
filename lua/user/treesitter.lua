local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "comment",
    "css",
    "dart",
    "dockerfile",
    "dot",
    "eex",
    "elixir",
    "erlang",
    "fish",
    "go",
    "graphql",
    "heex",
    "html",
    "http",
    "java",
    "javascript",
    "jsdoc",
    "json",
    "json5",
    "julia",
    "kotlin",
    "llvm",
    "lua",
    "make",
    "perl",
    "php",
    "proto",
    "python",
    "r",
    "regex",
    "ruby",
    "rust",
    "scala",
    "scss",
    "solidity",
    "svelte",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "vue",
    "yaml",
  },                          -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false,       -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "help" }, -- List of parsers to ignore installing
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true,  -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = false,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- query = 'rainbow-parens',
    -- strategy = require('ts-rainbow').strategy.global,
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
})

status_ok, configs = pcall(require, "ts_context_commentstring")
if not status_ok then
  return
end

configs.setup {
  enable_autocmd = false,
  languages = {
    typescript = '// %s',
  },
}
