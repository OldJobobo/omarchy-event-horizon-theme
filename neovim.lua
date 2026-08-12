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
                bg = "#1C1E26",
                bg_dark = "#15171D",
                bg_highlight = "#2E303E",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#CBCED0",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#9DA0A2",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#6F6F70",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#E95678",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#EC6A88",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#FAC29A",
                -- green: Comments, strings, success states, git additions
                green = "#29D398",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#59E1E3",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#26BBD9",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#EE64AC",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#F075B5",
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
