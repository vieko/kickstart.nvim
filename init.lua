-- set leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- `:help vim.opt`
vim.opt.autoindent = true
vim.opt.backup = false
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 1
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.copyindent = true
vim.opt.colorcolumn = "80"
vim.opt.cursorcolumn = false
vim.opt.cursorline = true
vim.opt.errorbells = false
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.fillchars = { eob = " " }
vim.opt.foldenable = false
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.guicursor = ""
vim.opt.history = 100
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.infercase = true
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.list = true
vim.opt.listchars = {
  tab = "» ",
  space = "·",
  extends = "›",
  precedes = "‹",
  nbsp = "␣",
  -- eol = "¬",
  -- trail = ".",
}
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.preserveindent = true
vim.opt.pumheight = 10
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shell = "fish"
vim.opt.shiftwidth = 2
vim.opt.showmatch = false
vim.opt.showmode = false
vim.opt.showtabline = 0
vim.opt.shortmess:append("I")
vim.opt.shortmess:append("c")
vim.opt.sidescrolloff = 8
vim.opt.signcolumn = "yes:2"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.spell = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.timeoutlen = 300
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.virtualedit = "block"
vim.opt.wildignorecase = true
vim.opt.wrap = true -- false
vim.opt.writebackup = false
vim.g.have_nerd_font = false

-- [[ UTILITIES ]]
vim.g.clipboard = {
  name = "xclip",
  copy = {
    ["+"] = "xclip -selection clipboard",
    ["*"] = "xclip -selection clipboard",
  },
  paste = {
    ["+"] = "xclip -selection clipboard -o",
    ["*"] = "xclip -selection clipboard -o",
  },
  cache_enabled = 0,
}

-- [[ NETRW ]]
vim.g.netrw_keepdir = 0
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 4

-- [[ DISABLE BUILTINS ]]
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwplugin = 1
-- vim.g.loaded_netrwsettings = 1

-- [[ keymaps ]]
-- `:help vim.keymap.set()`

-- disable arrows
vim.keymap.set("n", "<up>", "")
vim.keymap.set("n", "<down>", "")
vim.keymap.set("n", "<left>", "")
vim.keymap.set("n", "<right>", "")
vim.keymap.set("i", "<up>", "")
vim.keymap.set("i", "<down>", "")
vim.keymap.set("i", "<left>", "")
vim.keymap.set("i", "<right>", "")

-- set highlight on search, but clear on pressing <esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- move lines up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- half page up and down keeping the cursor centered
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- search terms stay in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- prevent capital Q from clobbering the current buffer
vim.keymap.set("n", "Q", "<nop>")

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- this won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- move between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- split window vertically
vim.keymap.set("n", "<C-w>\\", ":vsplit<CR>")

-- split window horizontally
vim.keymap.set("n", "<C-w>-", ":split<CR>")

-- make windows roughly the same size
vim.keymap.set("n", "<A-;>", "<C-W>=")

-- size windows horizontally
vim.keymap.set("n", "<A-h>", "<C-w>>")
vim.keymap.set("n", "<A-l>", "<C-w><")

-- size windows vertically
vim.keymap.set("n", "<A-k>", "<C-w>+")
vim.keymap.set("n", "<A-j>", "<C-w>-")

-- [[ AUTOCOMMANDS ]]
-- see `:help lua-guide-autocommands`

-- highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- refresh buffers when files change on disk
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  callback = function()
    vim.api.nvim_command("checktime")
  end,
  desc = "Refresh buffers when files change on disk",
})

-- [[ PLUGINS ]]
-- see `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "christoomey/vim-tmux-navigator",
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        mapping = { "jk" },
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    opts = {
      enable_check_bracket_line = false,
    },
  },
  {
    "github/copilot.vim",
    config = function()
      vim.keymap.set("i", "<C-Y>", 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false,
      })
      vim.g.copilot_no_tab_map = true
    end,
  },

  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        treesitter = {
          enabled = true,
          highlight = {
            backdrop = true,
          },
        },
        search = {
          enabled = true,
          highlight = { backdrop = true },
        },
        char = {
          jump_labels = true,
        },
      },
    },
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },

  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "A" },
        change = { text = "M" },
        delete = { text = "D" },
        topdelete = { text = "T" },
        changedelete = { text = "C" },
        untracked = { text = "?" },
      },
    },
  },

  { -- Useful plugin to show you pending keybinds.
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to "VimEnter"
    config = function() -- This is the function that runs, AFTER loading
      require("which-key").setup()

      -- Document existing key chains
      require("which-key").register({
        ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
        ["<leader>d"] = { name = "[D]ocument", _ = "which_key_ignore" },
        ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
        ["<leader>s"] = { name = "[S]earch", _ = "which_key_ignore" },
        ["<leader>t"] = { name = "[T]ree", _ = "which_key_ignore" },
        ["<leader>w"] = { name = "[W]orkspace", _ = "which_key_ignore" },
      })
    end,
  },
  { -- File Explorer
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    init = function()
      vim.keymap.set("n", "<leader>tt", "<Cmd>Neotree reveal toggle<CR>", { desc = "toggle [T]ree" })
    end,
    config = function()
      require("neo-tree").setup({
        sources = {
          "filesystem",
          "buffers",
          "git_status",
          "document_symbols",
        },
        close_if_last_window = true,
        default_component_configs = {
          diagnostics = {
            symbols = {
              hint = "H",
              info = "I",
              warn = "W",
              error = "E",
            },
            highlights = {
              hint = "DiagnosticSignHint",
              info = "DiagnosticSignInfo",
              warn = "DiagnosticSignWarn",
              error = "DiagnosticSignError",
            },
          },
          modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
          },
          name = {
            trailing_slash = false,
            highlight_opened_files = false,
            use_git_status_colors = false,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              added = "A",
              modified = "M",
              deleted = "D",
              renamed = "R",
              untracked = "?",
              ignored = "!",
              unstaged = "U",
              staged = "S",
              conflict = "C",
            },
          },
        },
        filesystem = {
          hijack_netrw_behavior = "open_default",
          filtered_items = {
            visible = false,
            hide_dotfiles = true,
            hide_gitignored = true,
            hide_hidden = true,
            hide_by_name = {
              "node_modules",
            },
            always_show = {
              ".gitignore",
            },
          },
          components = {
            icon = function(config, node, state)
              if node.type == "file" or node.type == "directory" then
                return {}
              end
              -- if node.type == "directory" then
              --   return {
              --     text = "- ",
              --     highlight = config.highlight,
              --   }
              -- end
              -- if node.type == "file" then
              --   return {
              --     text = "* ",
              --     highlight = config.highlight,
              --   }
              -- end
              return require("neo-tree.sources.common.components").icon(config, node, state)
            end,
          },
        },
      })
    end,
  },
  { -- Fuzzy Finder (files, lsp, etc)
    "nvim-telescope/telescope.nvim",
    event = "VimEnter",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      { "nvim-telescope/telescope-ui-select.nvim" },
      { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    },
    config = function()
      --  - insert mode: <c-/>
      --  - normal mode: ?
      -- `:help telescope` and `:help telescope.setup()`
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })
      pcall(require("telescope").load_extension, "fzf")
      pcall(require("telescope").load_extension, "ui-select")

      -- see `:help telescope.builtin`
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[s]earch [h]elp" })
      vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[s]earch [k]eymaps" })
      vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[s]earch [f]iles" })
      vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[s]earch [s]elect telescope" })
      vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[s]earch current [w]ord" })
      vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[s]earch by [g]rep" })
      vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[s]earch [d]iagnostics" })
      vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[s]earch [r]esume" })
      vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[s]earch recent files ("." for repeat)' })
      vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] find existing buffers" })

      vim.keymap.set("n", "<leader>/", function()
        builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
          winblend = 10,
          previewer = false,
        }))
      end, { desc = "[/] fuzzily search in current buffer" })

      vim.keymap.set("n", "<leader>s/", function()
        builtin.live_grep({
          grep_open_files = true,
          prompt_title = "live grep in open files",
        })
      end, { desc = "[s]earch [/] in open files" })

      -- shortcut for searching your neovim configuration files
      vim.keymap.set("n", "<leader>sn", function()
        builtin.find_files({ cwd = vim.fn.stdpath("config") })
      end, { desc = "[S]earch [N]eovim files" })
    end,
  },
  { -- LSP Configuration & Plugins
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",

      { -- Useful status updates for LSP.
        "j-hui/fidget.nvim",
        config = function()
          require("fidget").setup({
            notification = {
              window = {
                winblend = 0,
              },
            },
          })
        end,
      },

      -- used for completion, annotations and signatures of Neovim apis
      { "folke/neodev.nvim", opts = {} },
    },
    config = function()
      -- `:help lsp-vs-treesitter`
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("kickstart-lsp-attach", { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc)
            vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
          end
          --  To jump back, press <C-t>.
          map("gd", require("telescope.builtin").lsp_definitions, "[G]oto [D]efinition")
          map("gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
          map("gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
          map("<leader>D", require("telescope.builtin").lsp_type_definitions, "Type [D]efinition")
          map("<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
          map("<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
          map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
          map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
          map("K", vim.lsp.buf.hover, "Hover Documentation")
          map("gD", vim.lsp.buf.declaration, "[G]oto [D]eclaration")

          -- highlight references
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
              buffer = event.buf,
              callback = vim.lsp.buf.document_highlight,
            })
            vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
              buffer = event.buf,
              callback = vim.lsp.buf.clear_references,
            })
          end
        end,
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

      local function organize_imports()
        local params = {
          command = "_typescript.organizeImports",
          arguments = { vim.api.nvim_buf_get_name(0) },
          title = "",
        }
        vim.lsp.buf.execute_command(params)
      end

      -- Enable the following language servers
      -- `:help lspconfig-all` for a list of all the pre-configured LSPs
      local servers = {
        bashls = {},
        tsserver = {
          --- @diagnostic disable-next-line: unused-local
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<leader>co", organize_imports, { desc = "LSP: [O]rganize imports", buffer = bufnr })
          end,
        },
        tailwindcss = {},
        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = "Replace",
              },
              -- diagnostics = { disable = { "missing-fields" } },
            },
          },
        },
      }

      --  You can press `g?` for help in this menu.
      require("mason").setup()

      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        "stylua",
        "prettierd",
        "prettier",
      })
      require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

      require("mason-lspconfig").setup({
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend("force", {}, capabilities, server.capabilities or {})
            require("lspconfig")[server_name].setup(server)
          end,
        },
      })
      local _border = "rounded" -- "single", "double", "rounded", "solid", or "shadow"
      vim.diagnostic.config({
        float = {
          border = _border,
          source = "always",
          focusable = false,
          style = "minimal",
          header = "",
          prefix = "",
        },
      })
      vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
        border = _border,
        focusable = false,
      })
      vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
        border = _border,
        focusable = false,
      })
    end,
  },

  { -- Autoformat
    "stevearc/conform.nvim",
    lazy = false,
    keys = {
      {
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "[F]ormat buffer",
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        return {
          timeout_ms = 500,
          lsp_fallback = not disable_filetypes[vim.bo[bufnr].filetype],
        }
      end,
      formatters_by_ft = {
        lua = { "stylua" },
        javascriptreact = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
      },
    },
  },

  { -- Autocompletion
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        "L3MON4D3/LuaSnip",
        build = (function()
          if vim.fn.has("win32") == 1 or vim.fn.executable("make") == 0 then
            return
          end
          return "make install_jsregexp"
        end)(),
        dependencies = {
          {
            "rafamadriz/friendly-snippets",
            config = function()
              require("luasnip.loaders.from_vscode").lazy_load()
            end,
          },
        },
      },
      "saadparwaiz1/cmp_luasnip",
      -- Adds other completion capabilities.
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path",
    },
    config = function()
      -- See `:help cmp`
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      luasnip.config.setup({})
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = "menu,menuone,noinsert" },
        -- see `:help ins-completion`
        mapping = cmp.mapping.preset.insert({
          -- select the [n]ext item
          ["<C-n>"] = cmp.mapping.select_next_item(),
          -- select the [p]revious item
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          -- scroll the documentation window [b]ack / [f]orward
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          -- accept ([y]es) the completion.
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
          -- manually trigger a completion from nvim-cmp.
          ["<C-Space>"] = cmp.mapping.complete({}),
          -- <c-l> will move you to the right of each of the expansion locations.
          -- <c-h> is similar, except moving you backwards.
          ["<C-l>"] = cmp.mapping(function()
            if luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            end
          end, { "i", "s" }),
          ["<C-h>"] = cmp.mapping(function()
            if luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            end
          end, { "i", "s" }),
          -- <c-e> will cancel the completion.
          ["<C-e>"] = cmp.mapping.abort(),
          -- <cr> will confirm the completion.
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
        },
      })
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        -- flavour = "auto",
        background = {
          light = "latte",
          dark = "mocha",
        },
        term_colors = true,
        dim_inactive = {
          enabled = true,
        },
        highlight_overrides = {
          all = function(colors)
            return {
              CursorLineNr = { fg = colors.peach, bold = true },
              CopilotSuggestion = { fg = colors.surface1 },
              NeoTreeModified = { fg = colors.text },
              NeoTreeFadeText1 = { fg = colors.surface1 },
              NeoTreeFadeText2 = { fg = colors.surface1 },
              NeoTreeDotfile = { fg = colors.surface1 },
              NeoTreeDimText = { fg = colors.surface1 },
              NeoTreeHiddenByName = { fg = colors.surface1 },
              NeoTreeWindowsHidden = { fg = colors.surface1 },
            }
          end,
        },
        integrations = {
          fidget = true,
          flash = true,
          gitsigns = true,
          mason = true,
          mini = {
            enabled = true,
            indentscope_color = "",
          },
          cmp = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
            inlay_hints = {
              background = true,
            },
          },
          treesitter = true,
          telescope = { enabled = true, style = "classic" },
          which_key = true,
        },
      })
    end,
    init = function()
      vim.opt.background = "dark"
      vim.cmd.colorscheme("catppuccin")
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },

  -- Highlight todo, notes, etc in comments
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  { -- Collection of various small independent plugins/modules
    "echasnovski/mini.nvim",
    config = function()
      -- better around/inside textobjects
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require("mini.ai").setup({ n_lines = 500 })
      -- add/delete/replace surroundings (brackets, quotes, etc.)
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require("mini.surround").setup({
        mappings = {
          add = "ca", -- Add surrounding in Normal and Visual modes
          delete = "cd", -- Delete surrounding
          find = "cf", -- Find surrounding (to the right)
          find_left = "cF", -- Find surrounding (to the left)
          highlight = "ch", -- Highlight surrounding
          replace = "cr", -- Replace surrounding
          update_n_lines = "cn", -- Update `n_lines`
          suffix_last = "l", -- Suffix to search with "prev" method
          suffix_next = "n", -- Suffix to search with "next" method
        },
      })
      -- simple and easy statusline.
      local statusline = require("mini.statusline")
      local active = function()
        local mode, mode_hl = statusline.section_mode({ trunc_width = 120 })
        local git = statusline.section_git({ trunc_width = 75, icon = "GIT" })
        local diagnostics = statusline.section_diagnostics({ trunc_width = 75, icon = "LSP" })
        local filename = MiniStatusline.section_filename({ trunc_width = 140 })
        local fileinfo = statusline.section_fileinfo({ trunc_width = 120 })
        local location = statusline.section_location({ trunc_width = 75 })
        local search = statusline.section_searchcount({ trunc_width = 75 })

        return MiniStatusline.combine_groups({
          { hl = mode_hl, strings = { mode } },
          { hl = "MiniStatuslineDevinfo", strings = { git, diagnostics } },
          "%<", -- Mark general truncate point
          { hl = "MiniStatuslineFilename", strings = { filename } },
          "%=", -- End left alignment
          { hl = "MiniStatuslineFileinfo", strings = { fileinfo } },
          { hl = mode_hl, strings = { search, location } },
        })
      end
      statusline.setup({ use_icons = vim.g.have_nerd_font, set_vim_settings = false, content = { active = active } })
    end,
  },
  { -- highlight, edit, and navigate code
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = { "windwp/nvim-ts-autotag" },
    opts = {
      ensure_installed = { "bash", "c", "html", "lua", "luadoc", "markdown", "vim", "vimdoc" },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- additional_vim_regex_highlighting = { "ruby" },
      },
      indent = { enable = true, disable = { "ruby" } },
      autotag = { enable = true },
      incremental_selection = {
        enable = false,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    },
    config = function(_, opts)
      -- see `:help nvim-treesitter`
      ---@diagnostic disable-next-line: missing-fields
      require("nvim-treesitter.configs").setup(opts)
      --    - incremental selection: included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },

  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',

  -- see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
  -- { import = 'custom.plugins' },
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
