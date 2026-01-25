return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1c1e26",
                bg_dark = "#1c1e26",
                bg_highlight = "#6c6f93",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#fadad1",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#fadad1",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6c6f93",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#e95678",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ec6a88",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#fab795",
                -- green: Comments, strings, success states, git additions
                green = "#29d398",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#59e3e3",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#26bbd9",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#ee64ac",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#f075b5",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
