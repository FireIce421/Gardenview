-- Config Tab
dw = SMODS.current_mod

function dw.save_config(self)
    SMODS.save_mod_config(self)
end

G.FUNCS.restart_game_smods = function(e)
	SMODS.restart_game()
end

G.FUNCS.dw_joker_quotes = function(option_node)
    dw.config.dw_joker_quotes = option_node.cycle_config.current_option
    dw:save_config()
end

G.FUNCS.dw_fun_jokers = function(option_node)
    dw.config.dw_fun_jokers = option_node.cycle_config.current_option
    dw:save_config()
end

G.FUNCS.dw_twisted_jokers = function(option_node)
    dw.config.dw_twisted_jokers = option_node.cycle_config.current_option
    dw:save_config()
end

dw.config_tab = function()
	return {
		n = G.UIT.ROOT,
		config = {
			emboss = 0.05,
			r = 0.1,
			align = "tl",
			padding = 0.2,
			colour = G.C.BLACK
		},
		nodes =  {
            {n = G.UIT.C, config = { align = "cl", minw = G.ROOM.T.w*0, padding = 0.04 }, nodes = {
				create_option_cycle({ref_table = dw.config, ref_value = "dw_joker_quotes", opt_callback = 'dw_joker_quotes', w = 4,
					current_option = dw.config.dw_joker_quotes,
					label = localize('dw_options_joker_quotes'),
					options = {
						localize('dw_options_off'),
						localize('dw_options_on'),
					},
				}),
                UIBox_button({label = {localize('dw_options_apply')}, minw = 3.5, button = 'restart_game_smods'}),
            }},
		}
	}
end

dw.extra_tabs = function()
	return {
		-- Content Tab
		{
			label = localize('dw_options_fun'), tab_definition_function = function()
				return {
					n=G.UIT.ROOT, 
					config = {
						emboss = 0.05,
						r = 0.1,
						align = "tl",
						padding = 0.2,
						colour = G.C.BLACK
					}, 
					nodes = {
						{n = G.UIT.C, config = {align = "cl", minw = G.ROOM.T.w*0, padding = 0.04 }, nodes = {
							create_option_cycle({ref_table = dw.config, ref_value = "dw_fun_jokers", opt_callback = 'dw_fun_jokers', w = 4,
								current_option = dw.config.dw_fun_jokers,
								label = localize('dw_options_fun_jokers'),
								options = {
									localize('dw_options_off'),
									localize('dw_options_on'),
								},
							}),
							create_option_cycle({ref_table = dw.config, ref_value = "dw_twisted_jokers", opt_callback = 'dw_twisted_jokers', w = 4,
								current_option = dw.config.dw_twisted_jokers,
								label = localize('dw_options_twisted_jokers'),
								options = {
									localize('dw_options_off'),
									localize('dw_options_on'),
								},
							}),
							UIBox_button({label = {localize('dw_options_apply')}, minw = 3.5, button = 'restart_game_smods'}),
						}},
					}
				}
			end
		},
	}
end

local function default_value(setting, valid_type, default)
    dw.config[setting] = (type(dw.config[setting]) == valid_type and dw.config[setting]) or default
end

default_value('dw_joker_quotes', 'number', 2)
default_value('dw_fun_jokers', 'number', 1)
default_value('dw_twisted_jokers', 'number', 1)