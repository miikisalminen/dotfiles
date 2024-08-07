-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/miiki/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?.lua;/home/miiki/.cache/nvim/packer_hererocks/2.1.1720049189/share/lua/5.1/?/init.lua;/home/miiki/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?.lua;/home/miiki/.cache/nvim/packer_hererocks/2.1.1720049189/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/miiki/.cache/nvim/packer_hererocks/2.1.1720049189/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["render-markdown"] = {
    config = { "\27LJ\2\n�#\0\0\t\0a\0s6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0005\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0005\4\29\0=\4\14\3=\3\30\0025\3\31\0005\4 \0=\4!\0035\4\"\0=\4#\0035\4%\0005\5$\0=\5&\4=\4'\3=\3(\0025\3)\0=\3*\0025\3+\0005\4,\0=\4-\3=\3.\0025\0030\0005\4/\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4&\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4*\3=\3J\0025\3K\0=\3L\0025\3M\0=\3N\0025\3U\0005\4S\0006\5O\0009\5P\0059\5Q\5'\aR\0004\b\0\0B\5\3\2=\5T\4=\4R\0035\4W\0006\5O\0009\5P\0059\5Q\5'\aV\0004\b\0\0B\5\3\2=\5T\4=\4V\3=\3X\0025\3]\0005\4[\0005\5Z\0005\6Y\0=\6N\5=\5\\\4=\4^\3=\3_\0024\3\0\0=\3`\2B\0\2\1K\0\1\0\20custom_handlers\14overrides\fbuftype\1\0\1\fbuftype\0\vnofile\1\0\1\vnofile\0\1\0\1\tsign\0\1\0\1\fenabled\1\16win_options\1\0\2\fdefault\0\rrendered\5\18concealcursor\1\0\2\17conceallevel\0\18concealcursor\0\fdefault\1\0\2\fdefault\0\rrendered\3\3\17conceallevel\26nvim_get_option_value\bapi\bvim\tsign\1\0\2\14highlight\23RenderMarkdownSign\fenabled\2\tlink\1\0\4\14hyperlink\t→ \nimage\t■ \14highlight\23RenderMarkdownLink\fenabled\2\fcallout\1\0\3\14highlight\24RenderMarkdownQuote\braw\r[!QUOTE]\rrendered\nQuote\fexample\1\0\3\14highlight\23RenderMarkdownHint\braw\15[!EXAMPLE]\rrendered\fExample\bbug\1\0\3\14highlight\24RenderMarkdownError\braw\v[!BUG]\rrendered\bBug\vdanger\1\0\3\14highlight\24RenderMarkdownError\braw\14[!DANGER]\rrendered\vDanger\ffailure\1\0\3\14highlight\24RenderMarkdownError\braw\15[!FAILURE]\rrendered\fFailure\rquestion\1\0\3\14highlight\23RenderMarkdownWarn\braw\16[!QUESTION]\rrendered\15? Question\fsuccess\1\0\3\14highlight\26RenderMarkdownSuccess\braw\15[!SUCCESS]\rrendered\16✔ Success\1\0\3\14highlight\23RenderMarkdownInfo\braw\f[!REQS]\rrendered\21✔ Requirements\rabstract\1\0\3\14highlight\23RenderMarkdownInfo\braw\16[!ABSTRACT]\rrendered\rAbstract\fcaution\1\0\3\14highlight\24RenderMarkdownError\braw\15[!CAUTION]\rrendered\19‼‼ Caution\fwarning\1\0\3\14highlight\23RenderMarkdownWarn\braw\15[!WARNING]\rrendered\16!!! Warning\14important\1\0\3\14highlight\23RenderMarkdownHint\braw\17[!IMPORTANT]\rrendered\17!! Important\btip\1\0\3\14highlight\26RenderMarkdownSuccess\braw\v[!TIP]\rrendered\bTip\tnote\1\0\14\tnote\0\bbug\0\rquestion\0\rabstract\0\vdanger\0\ffailure\0\ttodo\0\fwarning\0\nquote\0\fcaution\0\btip\0\14important\0\fexample\0\fsuccess\0\1\0\3\14highlight\23RenderMarkdownInfo\braw\f[!NOTE]\rrendered\v! Note\15pipe_table\vborder\1\f\0\0\b┌\b┬\b┐\b├\b┼\b┤\b└\b┴\b┘\b│\b─\1\0\b\vborder\0\nstyle\tfull\24alignment_indicator\b━\thead\28RenderMarkdownTableHead\tcell\vpadded\brow\27RenderMarkdownTableRow\vfiller\28RenderMarkdownTableFill\fenabled\2\nquote\1\0\3\14highlight\24RenderMarkdownQuote\ticon\b▋\fenabled\2\rcheckbox\vcustom\ttodo\1\0\1\ttodo\0\1\0\3\14highlight\23RenderMarkdownTodo\braw\b[-]\rrendered\n󰥔 \fchecked\1\0\2\ticon\t☑ \14highlight\26RenderMarkdownChecked\14unchecked\1\0\2\ticon\t☐ \14highlight\28RenderMarkdownUnchecked\1\0\4\fchecked\0\vcustom\0\14unchecked\0\fenabled\2\vbullet\1\5\0\0\b•\b○\b◆\b◇\1\0\4\14highlight\25RenderMarkdownBullet\nicons\0\14right_pad\3\0\fenabled\2\tdash\1\0\4\14highlight\23RenderMarkdownDash\nwidth\tfull\ticon\b─\fenabled\2\tcode\23disable_background\1\2\0\0\tdiff\1\0\r\rposition\tleft\14right_pad\3\0\rleft_pad\3\0\23disable_background\0\nabove\b▄\14highlight\23RenderMarkdownCode\21highlight_inline\29RenderMarkdownCodeInline\nwidth\tfull\vborder\tthin\nbelow\b▀\tsign\2\nstyle\tfull\fenabled\2\fheading\16foregrounds\1\a\0\0\21RenderMarkdownH1\21RenderMarkdownH2\21RenderMarkdownH3\21RenderMarkdownH4\21RenderMarkdownH5\21RenderMarkdownH6\16backgrounds\1\a\0\0\23RenderMarkdownH1Bg\23RenderMarkdownH2Bg\23RenderMarkdownH3Bg\23RenderMarkdownH4Bg\23RenderMarkdownH5Bg\23RenderMarkdownH6Bg\nsigns\1\2\0\0\n󰫎 \nicons\1\a\0\0\a~ \b~~ \t~~~ \n~~~~ \v~~~~~ \f~~~~~~ \1\0\b\rposition\foverlay\nicons\0\tsign\1\nwidth\tfull\nsigns\0\16backgrounds\0\16foregrounds\0\fenabled\2\nlatex\1\0\5\14converter\15latex2text\15bottom_pad\3\0\14highlight\23RenderMarkdownMath\ftop_pad\3\0\fenabled\2\17anti_conceal\1\0\1\fenabled\2\17render_modes\1\3\0\0\6n\6c\15file_types\1\2\0\0\rmarkdown\1\0\25\fheading\0\tcode\0\26acknowledge_conflicts\1\17render_modes\0\15file_types\0\15pipe_table\0\17inline_query�\1        (code_span) @code\n\n        (shortcut_link) @shortcut\n\n        [(inline_link) (full_reference_link) (image)] @link\n    \17anti_conceal\0\25markdown_quote_querym        [\n            (block_quote_marker)\n            (block_continuation)\n        ] @quote_marker\n    \nquote\0\19markdown_query�\4        (atx_heading [\n            (atx_h1_marker)\n            (atx_h2_marker)\n            (atx_h3_marker)\n            (atx_h4_marker)\n            (atx_h5_marker)\n            (atx_h6_marker)\n        ] @heading)\n\n        (thematic_break) @dash\n\n        (fenced_code_block) @code\n\n        [\n            (list_marker_plus)\n            (list_marker_minus)\n            (list_marker_star)\n        ] @list_marker\n\n        (task_list_marker_unchecked) @checkbox_unchecked\n        (task_list_marker_checked) @checkbox_checked\n\n        (block_quote) @quote\n\n        (pipe_table) @table\n    \18max_file_size\3\n\nlatex\0\tlink\0\tsign\0\fenabled\2\16win_options\0\14overrides\0\20custom_handlers\0\rcheckbox\0\fcallout\0\vbullet\0\tdash\0\rdebounce\3d\14log_level\nerror\nsetup\20render-markdown\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/opt/render-markdown",
    url = "https://github.com/MeanderingProgrammer/markdown.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-be-good"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/vim-be-good",
    url = "https://github.com/ThePrimeagen/vim-be-good"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/miiki/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  }
}

time([[Defining packer_plugins]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd render-markdown ]]

-- Config for: render-markdown
try_loadstring("\27LJ\2\n�#\0\0\t\0a\0s6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0005\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\3=\3\21\0025\3\22\0005\4\23\0=\4\24\3=\3\25\0025\3\26\0=\3\27\0025\3\28\0005\4\29\0=\4\14\3=\3\30\0025\3\31\0005\4 \0=\4!\0035\4\"\0=\4#\0035\4%\0005\5$\0=\5&\4=\4'\3=\3(\0025\3)\0=\3*\0025\3+\0005\4,\0=\4-\3=\3.\0025\0030\0005\4/\0=\0041\0035\0042\0=\0043\0035\0044\0=\0045\0035\0046\0=\0047\0035\0048\0=\0049\0035\4:\0=\4;\0035\4<\0=\4&\0035\4=\0=\4>\0035\4?\0=\4@\0035\4A\0=\4B\0035\4C\0=\4D\0035\4E\0=\4F\0035\4G\0=\4H\0035\4I\0=\4*\3=\3J\0025\3K\0=\3L\0025\3M\0=\3N\0025\3U\0005\4S\0006\5O\0009\5P\0059\5Q\5'\aR\0004\b\0\0B\5\3\2=\5T\4=\4R\0035\4W\0006\5O\0009\5P\0059\5Q\5'\aV\0004\b\0\0B\5\3\2=\5T\4=\4V\3=\3X\0025\3]\0005\4[\0005\5Z\0005\6Y\0=\6N\5=\5\\\4=\4^\3=\3_\0024\3\0\0=\3`\2B\0\2\1K\0\1\0\20custom_handlers\14overrides\fbuftype\1\0\1\fbuftype\0\vnofile\1\0\1\vnofile\0\1\0\1\tsign\0\1\0\1\fenabled\1\16win_options\1\0\2\fdefault\0\rrendered\5\18concealcursor\1\0\2\17conceallevel\0\18concealcursor\0\fdefault\1\0\2\fdefault\0\rrendered\3\3\17conceallevel\26nvim_get_option_value\bapi\bvim\tsign\1\0\2\14highlight\23RenderMarkdownSign\fenabled\2\tlink\1\0\4\14hyperlink\t→ \nimage\t■ \14highlight\23RenderMarkdownLink\fenabled\2\fcallout\1\0\3\14highlight\24RenderMarkdownQuote\braw\r[!QUOTE]\rrendered\nQuote\fexample\1\0\3\14highlight\23RenderMarkdownHint\braw\15[!EXAMPLE]\rrendered\fExample\bbug\1\0\3\14highlight\24RenderMarkdownError\braw\v[!BUG]\rrendered\bBug\vdanger\1\0\3\14highlight\24RenderMarkdownError\braw\14[!DANGER]\rrendered\vDanger\ffailure\1\0\3\14highlight\24RenderMarkdownError\braw\15[!FAILURE]\rrendered\fFailure\rquestion\1\0\3\14highlight\23RenderMarkdownWarn\braw\16[!QUESTION]\rrendered\15? Question\fsuccess\1\0\3\14highlight\26RenderMarkdownSuccess\braw\15[!SUCCESS]\rrendered\16✔ Success\1\0\3\14highlight\23RenderMarkdownInfo\braw\f[!REQS]\rrendered\21✔ Requirements\rabstract\1\0\3\14highlight\23RenderMarkdownInfo\braw\16[!ABSTRACT]\rrendered\rAbstract\fcaution\1\0\3\14highlight\24RenderMarkdownError\braw\15[!CAUTION]\rrendered\19‼‼ Caution\fwarning\1\0\3\14highlight\23RenderMarkdownWarn\braw\15[!WARNING]\rrendered\16!!! Warning\14important\1\0\3\14highlight\23RenderMarkdownHint\braw\17[!IMPORTANT]\rrendered\17!! Important\btip\1\0\3\14highlight\26RenderMarkdownSuccess\braw\v[!TIP]\rrendered\bTip\tnote\1\0\14\tnote\0\bbug\0\rquestion\0\rabstract\0\vdanger\0\ffailure\0\ttodo\0\fwarning\0\nquote\0\fcaution\0\btip\0\14important\0\fexample\0\fsuccess\0\1\0\3\14highlight\23RenderMarkdownInfo\braw\f[!NOTE]\rrendered\v! Note\15pipe_table\vborder\1\f\0\0\b┌\b┬\b┐\b├\b┼\b┤\b└\b┴\b┘\b│\b─\1\0\b\vborder\0\nstyle\tfull\24alignment_indicator\b━\thead\28RenderMarkdownTableHead\tcell\vpadded\brow\27RenderMarkdownTableRow\vfiller\28RenderMarkdownTableFill\fenabled\2\nquote\1\0\3\14highlight\24RenderMarkdownQuote\ticon\b▋\fenabled\2\rcheckbox\vcustom\ttodo\1\0\1\ttodo\0\1\0\3\14highlight\23RenderMarkdownTodo\braw\b[-]\rrendered\n󰥔 \fchecked\1\0\2\ticon\t☑ \14highlight\26RenderMarkdownChecked\14unchecked\1\0\2\ticon\t☐ \14highlight\28RenderMarkdownUnchecked\1\0\4\fchecked\0\vcustom\0\14unchecked\0\fenabled\2\vbullet\1\5\0\0\b•\b○\b◆\b◇\1\0\4\14highlight\25RenderMarkdownBullet\nicons\0\14right_pad\3\0\fenabled\2\tdash\1\0\4\14highlight\23RenderMarkdownDash\nwidth\tfull\ticon\b─\fenabled\2\tcode\23disable_background\1\2\0\0\tdiff\1\0\r\rposition\tleft\14right_pad\3\0\rleft_pad\3\0\23disable_background\0\nabove\b▄\14highlight\23RenderMarkdownCode\21highlight_inline\29RenderMarkdownCodeInline\nwidth\tfull\vborder\tthin\nbelow\b▀\tsign\2\nstyle\tfull\fenabled\2\fheading\16foregrounds\1\a\0\0\21RenderMarkdownH1\21RenderMarkdownH2\21RenderMarkdownH3\21RenderMarkdownH4\21RenderMarkdownH5\21RenderMarkdownH6\16backgrounds\1\a\0\0\23RenderMarkdownH1Bg\23RenderMarkdownH2Bg\23RenderMarkdownH3Bg\23RenderMarkdownH4Bg\23RenderMarkdownH5Bg\23RenderMarkdownH6Bg\nsigns\1\2\0\0\n󰫎 \nicons\1\a\0\0\a~ \b~~ \t~~~ \n~~~~ \v~~~~~ \f~~~~~~ \1\0\b\rposition\foverlay\nicons\0\tsign\1\nwidth\tfull\nsigns\0\16backgrounds\0\16foregrounds\0\fenabled\2\nlatex\1\0\5\14converter\15latex2text\15bottom_pad\3\0\14highlight\23RenderMarkdownMath\ftop_pad\3\0\fenabled\2\17anti_conceal\1\0\1\fenabled\2\17render_modes\1\3\0\0\6n\6c\15file_types\1\2\0\0\rmarkdown\1\0\25\fheading\0\tcode\0\26acknowledge_conflicts\1\17render_modes\0\15file_types\0\15pipe_table\0\17inline_query�\1        (code_span) @code\n\n        (shortcut_link) @shortcut\n\n        [(inline_link) (full_reference_link) (image)] @link\n    \17anti_conceal\0\25markdown_quote_querym        [\n            (block_quote_marker)\n            (block_continuation)\n        ] @quote_marker\n    \nquote\0\19markdown_query�\4        (atx_heading [\n            (atx_h1_marker)\n            (atx_h2_marker)\n            (atx_h3_marker)\n            (atx_h4_marker)\n            (atx_h5_marker)\n            (atx_h6_marker)\n        ] @heading)\n\n        (thematic_break) @dash\n\n        (fenced_code_block) @code\n\n        [\n            (list_marker_plus)\n            (list_marker_minus)\n            (list_marker_star)\n        ] @list_marker\n\n        (task_list_marker_unchecked) @checkbox_unchecked\n        (task_list_marker_checked) @checkbox_checked\n\n        (block_quote) @quote\n\n        (pipe_table) @table\n    \18max_file_size\3\n\nlatex\0\tlink\0\tsign\0\fenabled\2\16win_options\0\14overrides\0\20custom_handlers\0\rcheckbox\0\fcallout\0\vbullet\0\tdash\0\rdebounce\3d\14log_level\nerror\nsetup\20render-markdown\frequire\0", "config", "render-markdown")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
