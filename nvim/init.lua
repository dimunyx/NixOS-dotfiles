-- NOTE: Neovim config

-- Lazy (plugim manager)
local lazypath = vim.fn.stdpath(
	"data"
) .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(
	lazypath
) then
  	vim.fn.system(
		{
    			"git",
    			"clone",
    			"--filter=blob:none",
    			"https://github.com/folke/lazy.nvim.git",
    			"--branch=stable",
    			lazypath,
  		}
	)
end
vim.opt.rtp:prepend(
	lazypath
)
vim.opt.termguicolors = true

-- Plugins
require(
	"lazy"
).setup(
	{
		{
			"RRethy/base16-nvim"
		},
		{
    			"nvim-treesitter/nvim-treesitter",
    			build = ":TSUpdate",
    			opts = {
        			ensure_installed = {
					"lua",
					"vim",
					"vimdoc",
					"javascript",
					"typescript",
					"clangd",
					"bash",
					"c",
					"cpp",
					"nix",
					"python",
					"commonlisp",
					"rust",
					"go",
					"gomod",
					"gowork",
					"markdown_inline"
				},
        			auto_install = true,
    			}
		},
		{
    			"williamboman/mason.nvim",
    			opts = {}
		},
		{
			"nvim-telescope/telescope.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim"
			}
		},
		{
   	 		"catgoose/nvim-colorizer.lua",
			event = "BufReadPre",
			opts = {},
		},
		{
			"nvim-lualine/lualine.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons"
			}
		},
		{
			"romgrk/barbar.nvim",
			dependencies = {
				"lewis6991/gitsigns.nvim",
				"nvim-tree/nvim-web-devicons"
			},
			init = function()
				vim.g.barbar_auto_setup = false
			end,
			opts = {},
			version = "^1.0.0"
		},
		{
			"RRethy/vim-illuminate",
			config = function()
				vim.g.Illuminate_delay = 100
				vim.g.Illuminate_under_cursor = 1
				vim.g.Illuminate_min_count_to_highligh = 2
			end
		},
		{
			"nvim-mini/mini.pairs",
			version = false,
			opts = {
				modes = {
					insert = true,
					command = false,
					terminal = false
				},
				mappings = {
					['('] = {
						action = "open",
						pair = "()",
						neigh_pattern = "^[^\\]"
					},
    					['['] = {
						action = "open",
						pair = "[]",
						neigh_pattern = "^[^\\]"
					},
    					['{'] = {
						action = "open",
						pair = "{}",
						neigh_pattern = "^[^\\]"
					},
    					[')'] = {
						action = "close",
						pair = "()",
						neigh_pattern = "^[^\\]"
					},
    					[']'] = {
						action = "close",
						pair = "[]",
						neigh_pattern = "^[^\\]"
					},
    					['}'] = {
						action = "close",
						pair = "{}",
						neigh_pattern = "^[^\\]"
					},
    					['"'] = {
						action = "closeopen",
						pair = '""',
						neigh_pattern = "^[^\\]",
						register = {
							cr = false
						}
					},
    					["'"] = {
						action = "closeopen",
						pair = "''",
						neigh_pattern = "^[^%a\\]",
						register = {
							cr = false
						}
					},
    					['`'] = {
						action = "closeopen",
						pair = "``",
						neigh_pattern = "^[^\\]",
						register = {
							cr = false
						}
					}
				}
			}
		},
		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			dependencies = {
				"nvim-lua/plenary.nvim",
      				"MunifTanjim/nui.nvim",
      				"nvim-tree/nvim-web-devicons"
			},
			lazy = false
		},
		{
			"neovim/nvim-lspconfig"
		}
	}
)

-- Plugins settings
require(
	"matugen"
).setup()
require(
	"telescope"
).setup(
	{
		defaults = {
			border = true,
			selection_caret = "-> ",
			borderchars = {
      				"─",
				"│",
				"─",
				"│",
				"┌",
				"┐",
				"┘",
				"└"
    			}
		}
	}
)

require(
	"lualine"
).setup(
	{
		options = {
			icons_enabled = true;
			theme = "auto",
			component_separators = {
				left = "",
				right = ""
			},
    			section_separators = {
				left = "",
				right = ""
			},
			disabled_filetypes = {
      				statusline = {},
     				winbar = {},
    			},
			refresh = {
      				statusline = 1000,
      				tabline = 1000,
     				winbar = 1000,
      				refresh_time = 16,
			}
		}
	}
)

require(
	"barbar"
).setup(
	{
		animation = true,
		auto_hide = false,
		clickable = true,
		tabpages = true,
		focus_on_close = "left",
		icons = {
			button = "󰖭",
			buffer_mode = {
				enabled = false
			},
			buffer_number = {
				enabled = false
			},
			filetype = {
				enabled = true
			},
			separator = {
				left = "",
				right = ""
			},
			inactive = {
				button = "󰖭"
			}
		}
	}
)

vim.api.nvim_set_hl(
	0,
	"TelescopeBorder",
	{
		fg = "#B58FFF"
	}
)

vim.api.nvim_set_hl(
	0,
	"IlluminatedWordText",
	{
		underline = true
	}
)
vim.api.nvim_set_hl(
	0,
	"IlluminatedWordRead",
	{
		underline = true
	}
)
vim.api.nvim_set_hl(
	0,
	"IlluminatedWordWrite",
	{
		underline = true
	}
)

require(
	"neo-tree"
).setup(
	{
		enable_git_status = true,
		position = "left",
		filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = false
		}
	}
)

-- Settings
vim.opt.number = true
vim.opt.wrap = false
vim.opt.shortmess:append "I"
vim.opt.showmode = false
vim.lsp.enable(
	"pyright",
	"qmlls"
)
vim.lsp.config(
	"qmlls",
	{
		cmd = {
			"qmlls"
		},
		filetypes = {
			"qml",
			"qmljs"
		}
	}
)

-- Binds
vim.keymap.set(
	"n",
	"<M-w>",
	"<Cmd>write<CR>"
)

vim.keymap.set(
	"n",
	"<M-q>",
	"<Cmd>quit<CR>"
)

vim.keymap.set(
	"n",
	"<M-x>",
	"<Cmd>xit<CR>"
)

vim.keymap.set(
	"n",
	"<M-S-w>",
	"<Cmd>write!<CR>"
)

vim.keymap.set(
	"n",
	"<M-S-q>",
	"<Cmd>quit!<CR>"
)

vim.keymap.set(
	"n",
	"<M-S-x>",
	"<Cmd>xit!<CR>"
)

vim.keymap.set(
	"n",
	"<M-t>",
	"<Cmd>tabnew<CR>"
)

vim.keymap.set(
	"n",
	"<M-e>",
	":edit "
)

vim.keymap.set(
	"n",
	"<M-n>",
	"<Cmd>Neotree show<CR>"
)

vim.keymap.set(
	"n",
	"<M-S-n>",
	"<Cmd>Neotree close<CR>"
)

vim.keymap.set(
	"n",
	"<M-Left>",
	"<C-w><Left>"
)

vim.keymap.set(
	"n",
	"<M-Right>",
	"<C-w><Right>"
)

vim.keymap.set(
	"n",
	"<M-Up>",
	"<C-w><Up>"
)

vim.keymap.set(
	"n",
	"<M-Down>",
	"<C-w><Down>"
)

vim.keymap.set(
	"n",
	"<A-CR>",
	"<Cmd>vsplit<CR>"
)

vim.keymap.set(
	"n",
	"<A-S-CR>",
	"<Cmd>split<CR>"
)

vim.keymap.set(
	"n",
	"<M-s>",
	function()
		require(
			"telescope.builtin"
		).find_files(
			{
				cwd = vim.fn.expand(
					"/home/dimunyx"
				),
				hidden = true,
				file_ignore_patterns = {
					"Изображения",
					"Видео",
					"Загрузки",
					"Проекты",
					"Шаблоны",
					"Общедоступные",
					"Музыка",
					".cache",
					".nix-defexpr",
					".var"
				},
			}
		)
	end
)

vim.keymap.set(
	"n",
	"<M-i>",
	"<Cmd>edit ~/.config/nvim/init.lua<CR>"
)

vim.keymap.set(
	"n",
	"<A-f>",
	"/",
	{
		silent = false
	}
)

vim.keymap.set(
	"n",
	"<A-c>",
	":%s/",
	{
		silent = false
	}
)

vim.keymap.set(
	"n",
	"<A-l>",
	":",
	{
		silent = false
	}
)
