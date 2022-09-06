return require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("lewis6991/impatient.nvim")
  use({
    "nvim-lua/plenary.nvim",
    as = "plenary"
  })
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      return require("nvim-treesitter.install").update({
        with_sync = true
      })
    end
  })
  use({
    "nvim-treesitter/nvim-treesitter-context",
    requires = "nvim-treesitter/nvim-treesitter",
    config = function()
      return require("treesitter-context").setup({ })
    end
  })
  use({
    "lukas-reineke/lsp-format.nvim",
    config = function()
      return require("lsp-format").setup({ })
    end
  })
  use({
    "neovim/nvim-lspconfig",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "lukas-reineke/lsp-format.nvim",
      "plenary",
      "jose-elias-alvarez/null-ls.nvim",
      "folke/lua-dev.nvim"
    },
    config = function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      require("cmp_nvim_lsp").update_capabilities(capabilities)
      local default = {
        capabilities = capabilities,
        on_attach = require("lsp-format").on_attach
      }
      local setup
      setup = function(name, extra)
        if extra == nil then
          extra = { }
        end
        return require("lspconfig")[name].setup(vim.tbl_extend("force", default, extra))
      end
      setup("arduino_language_server")
      setup("denols")
      setup("rust_analyzer")
      setup("sumneko_lua", require("lua-dev").setup({ }))
      local null_ls = require("null-ls")
      return null_ls.setup({
        sources = {
          null_ls.builtins.formatting.shfmt,
          null_ls.builtins.diagnostics.shellcheck
        },
        on_attach = require("lsp-format").on_attach
      })
    end
  })
  use({
    "tombl/moon.nvim",
    ft = "moon",
    rocks = "moonscript",
    requires = {
      "jose-elias-alvarez/null-ls.nvim",
      "leafo/moonscript-vim"
    },
    config = function()
      return require("moon-nvim").setup({ })
    end
  })
  use({
    "j-hui/fidget.nvim",
    config = function()
      return require("fidget").setup({ })
    end
  })
  use({
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
      return vim.diagnostic.config({
        virtual_text = false
      })
    end
  })
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-path"
    },
    config = function()
      local setup, mapping, config
      do
        local _obj_0 = require("cmp")
        setup, mapping, config = _obj_0.setup, _obj_0.mapping, _obj_0.config
      end
      setup({
        mapping = mapping.preset.insert({
          ["<C-b>"] = mapping.scroll_docs(-4),
          ["<C-f>"] = mapping.scroll_docs(4),
          ["<C-Space>"] = mapping.complete(),
          ["<C-e>"] = mapping.abort(),
          ["<CR>"] = mapping.confirm({
            select = true
          })
        }),
        sources = config.sources({
          {
            name = "nvim_lsp"
          },
          {
            name = "copilot"
          }
        })
      })
      setup.cmdline("/", {
        mapping = mapping.preset.cmdline(),
        sources = {
          {
            name = "buffer"
          }
        }
      })
      return setup.cmdline(":", {
        mapping = mapping.preset.cmdline(),
        sources = {
          {
            name = "cmdline"
          },
          {
            name = "path"
          }
        }
      })
    end
  })
  use({
    "navarasu/onedark.nvim",
    config = function()
      return require("onedark").load()
    end
  })
  use({
    "kyazdani42/nvim-web-devicons",
    as = "devicons"
  })
  use({
    "nvim-lualine/lualine.nvim",
    requires = "devicons",
    config = function()
      local config = {
        options = {
          theme = "onedark",
          component_separators = "",
          section_separators = {
            left = "",
            right = ""
          }
        },
        sections = {
          lualine_a = { },
          lualine_b = { },
          lualine_c = { },
          lualine_x = { },
          lualine_y = { },
          lualine_z = { }
        }
      }
      local section
      section = function(where, what)
        return table.insert(config.sections["lualine_" .. where], what)
      end
      local isection
      isection = function(where, what)
        table.insert(config.sections["lualine_" .. where], what)
        return table.insert(config.inactive_sections["lualine_" .. where], what)
      end
      local get_icon_color_by_filetype
      get_icon_color_by_filetype = require("nvim-web-devicons").get_icon_color_by_filetype
      section("a", function()
        return string.upper(vim.fn.mode())
      end)
      section("c", function()
        local name = vim.fn.expand("%:t")
        if not vim.bo.modifiable or vim.bo.readonly then
          name = name .. ""
        end
        return name
      end)
      section("x", {
        "diagnostics",
        sources = {
          "nvim_lsp"
        },
        symbols = {
          error = " ",
          warn = " ",
          info = " "
        }
      })
      section("x", "location")
      section("x", {
        function()
          local ft = vim.api.nvim_buf_get_option(0, "filetype")
          local icon, color = get_icon_color_by_filetype(ft, {
            default = true
          })
          return icon .. " "
        end,
        color = function()
          local ft = vim.api.nvim_buf_get_option(0, "filetype")
          local icon, color = get_icon_color_by_filetype(ft, {
            default = true
          })
          return {
            fg = color
          }
        end
      })
      return require("lualine").setup(config)
    end
  })
  use({
    "kyazdani42/nvim-tree.lua",
    requires = "devicons",
    config = function()
      return require("nvim-tree").setup()
    end
  })
  use({
    "nvim-telescope/telescope.nvim",
    requires = "plenary"
  })
  use({
    "numToStr/Comment.nvim",
    config = function()
      return require("Comment").setup()
    end
  })
  use({
    "akinsho/bufferline.nvim",
    config = function()
      return require("bufferline").setup({
        options = {
          diagnostics = "nvim_lsp",
          offsets = {
            {
              filetype = "NvimTree",
              text = "Files",
              text_align = "left"
            }
          }
        }
      })
    end
  })
  use({
    "ggandor/leap.nvim",
    config = function()
      return require("leap").set_default_keymaps()
    end
  })
  return use({
    "Darazaki/indent-o-matic",
    config = function()
      return require("indent-o-matic").setup({ })
    end
  })
end)
