local home = os.getenv('HOME')
local db = require('dashboard')
db.custom_center = {
	--[[ { icon = '  ',
		desc = 'Recently latest session                 ',
		shortcut = 'SPC s l',
		action = 'SessionLoad' }, --]]
	{ icon = '  ',
		desc = 'Recently opened files                   ',
		action = 'DashboardFindHistory',
		shortcut = 'SPC f h' },
	{ icon = '  ',
		desc = 'Find  File                              ',
		action = 'Telescope find_files find_command=rg,--hidden,--files',
		shortcut = 'SPC s f' },
	{
		icon = '  ',
		desc = 'File Browser                            ',
		action = 'Telescope file_browser',
		shortcut = 'SPC s b'
	},
	{ icon = '  ',
		desc = 'Find  word                              ',
		action = 'Telescope live_grep',
		shortcut = 'SPC s g' },
	{ icon = '  ',
		desc = 'Open nvim configuration file            ',
		shortcut = 'SPC o c' },
}
