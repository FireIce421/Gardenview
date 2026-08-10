-- Config Tab
dw = SMODS.current_mod

G.FUNCS.restart_game_smods = function(e)
	SMODS.restart_game()
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
                UIBox_button({label = {localize('dw_options_apply')}, minw = 3.5, button = 'restart_game_smods'}),
            }},
		}
	}
end