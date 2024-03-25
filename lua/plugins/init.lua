return {
    -- Colorscheme
    {
      "EdenEast/nightfox.nvim",
      priority = 1000
    },


    -- File explorer
    {
      "nvim-tree/nvim-tree.lua",
      keys = { "<space>s" },
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("plugins.configs.nvim-tree")
      end,
    },

    -- Color
    {
		  "NvChad/nvim-colorizer.lua",
		  config = function()
			  require("plugins.configs.colorizer")
		  end,
    },

    -- Bars and Lines
    {
      "utilyre/barbecue.nvim",
      dependencies = {
        "SmiteshP/nvim-navic",
        "nvim-tree/nvim-web-devicons", -- optional dependency
      },
      version = "*",
      config = function()
        require("plugins.configs.barbecue")
      end,
    },
    -- Statusline
    {
      'nvim-lualine/lualine.nvim',
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        require("plugins.configs.lualine")
      end,
    },
    -- Tabline
    {
      'akinsho/bufferline.nvim',
      version = "*",
      dependencies = 'nvim-tree/nvim-web-devicons',
      config = function()
        require("plugins.configs.bufferline")
      end,
    },
    -- Cursorline
    {
      "yamatsum/nvim-cursorline",
      config = function()
        require("plugins.configs.cursorline")
      end,
    },

    -- Startup
    -- Dashboard Init
    {
		  "goolord/alpha-nvim",
		  config = function()
			  require("plugins.configs.alpha")
	    end,
	  },

    --[[
    -- Icon
    {
      "ziontee113/icon-picker.nvim",
      config = function()
        require("icon-picker").setup({ disable_legacy_commands = true })
        local opts = { noremap = true, silent = true }
        vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
        vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
        vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
      end,
    },
    ]]

    -- Note taking
    {
      "backdround/global-note.nvim",
      config = function()
        require("plugins.configs.globalnote")
      end,
    },

    -- Utility
    {
      'mcauley-penney/visual-whitespace.nvim',
      config = true,
      opts = {
        highlight = { link = 'Visual' },
        space_char = '·',
        tab_char = '→',
        nl_char = '↲',
      },
    },

    -- Terminal integration
    {
      'akinsho/toggleterm.nvim', 
      version = "*", 
      config = function()
        require("plugins.configs.toggleterm")
      end,
    },

    -- Neovim Lua Development
    {
      "folke/neodev.nvim",
      config = function()
        require("plugins.configs.neodev")
      end,
    },

    -- Dependency management
    {
      'piersolenski/telescope-import.nvim',
      dependencies = 'nvim-telescope/telescope.nvim',
      config = function()
        require("plugins.configs.telescope-import")
      end,
    }, -- TODO: keymap for :Telescope import

    -- Git


    -- Keybinding
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      config = function() 
        require("plugins.configs.whichkey")
      end,
    },

    -- Scrollbar
    {
      "petertriho/nvim-scrollbar",
      config = function()
        require("plugins.configs.nvim-scrollbar")
      end,
    },
    
    --[[ Editing support
    {
      "windwp/nvim-ts-autotag",
      config = function()
        require("plugins.configs.ts-autotag")
      end,
    }, -- TODO: use treesitter setup
    ]]

    {
		  "windwp/nvim-autopairs",
		  config = function()
			  require("plugins.configs.autopairs")
		  end,
    },

    --[[
    {
      "filipdutescu/renamer.nvim",
      branch = "master",
      dependencies = "nvim-lua/plenary.nvim",
      config = function()
        require("plugins.configs.renamer")
      end,
    },
    ]]

    {
		  "numToStr/Comment.nvim",
		  config = function()
			  require("plugins.configs.comment")
		  end,
	  },
    



    -- Discord
    {
      "andweeb/presence.nvim",
      config = function()
        require("plugins.configs.presence")
      end,
    },
}
