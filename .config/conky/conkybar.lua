conky.config = {
	out_to_x = false,
	own_window = false,
	out_to_console = true,
	background = false,
	max_text_width = 0,
	update_interval = 3.0,
	total_run_times = 0,
	short_units = false,
	cpu_avg_samples = 2,
	use_spacer = 'right',
};

conky.text = [[
[
	{
		"full_text": "${exec ~/.config/conky/bar_ws.sh}",
		"name": "conky-center",
		"markup": "pango",
		"background": "\#132635",
		"color": "\#5E828F",
		"border": "\#0D202F",
		"border_top": 12,
		"border_right": 6,
		"border_bottom": 12,
		"border_left": 12,
		"align": "center",
		"min_width": ${execi 86400 ~/.config/conky/bar_sizes.sh},
		"separator": false,
		"separator_block_width": 0
	},

	{
		"full_text": "\
<span fgcolor='\#7AB1B3'> ${execi 60 docker ps -q | wc -l}   </span>\
<span fgcolor='\#B48291'> ${execi 3600 ~/.config/conky/bar_pacman.sh}   </span>\
<span fgcolor='${if_match "${exec pamixer --get-mute}"=="true"}\#41515C${else}\#5E828F${endif}'> ${exec pamixer --get-volume-human}   </span>\
<span fgcolor='\#B98675'> ${exec printf %.0f $(xbacklight -get)}%</span>",
		"name": "conky-center",
		"markup": "pango",
		"background": "\#132635",
		"color": "\#5E828F",
		"border": "\#0D202F",
		"border_top": 12,
		"border_right": 6,
		"border_bottom": 12,
		"border_left": 6,
		"align": "center",
		"min_width": ${execi 86400 ~/.config/conky/bar_sizes.sh},
		"separator": false,
		"separator_block_width": 0
	},

	{
		"full_text": "\
<span fgcolor='\#B48291'> ${cpu cpu0}%   </span>\
<span fgcolor='\#B98675'> ${memperc}%   </span>\
<span fgcolor='\#5E828F'> ${swapperc}%   </span>\
<span fgcolor='\#7AB1B3'> ${fs_used_perc /}%</span>",
		"name": "conky-center",
		"markup": "pango",
		"background": "\#132635",
		"color": "\#5E828F",
		"border": "\#0D202F",
		"border_top": 12,
		"border_right": 6,
		"border_bottom": 12,
		"border_left": 6,
		"align": "center",
		"min_width": ${execi 86400 ~/.config/conky/bar_sizes.sh},
		"separator": false,
		"separator_block_width": 0
	},

	{
		"full_text": "\
<span fgcolor='${if_match ${battery_percent}>20}\#779687${else}\#AE5151${endif}'>${if_match "${battery_status}"=="discharging"} ${else} ${endif}${battery_percent}%   </span>\
<span fgcolor='${if_match "${wireless_essid wlp2s0}"=="off/any"}\#41515C${else}\#B48291${endif}'> ${wireless_essid wlp2s0}   </span>\
<span fgcolor='\#B2BEBF'> ${time %H:%M}</span>",
		"name": "conky-center",
		"markup": "pango",
		"background": "\#132635",
		"color": "\#5E828F",
		"border": "\#0D202F",
		"border_top": 12,
		"border_right": 12,
		"border_bottom": 12,
		"border_left": 6,
		"align": "center",
		"min_width": ${execi 86400 ~/.config/conky/bar_sizes.sh},
		"separator": false,
		"separator_block_width": 0
	},

	{
		"full_text": "",
		"name": "spacing-right",
		"separator_block_width": 0
	}
],
]];
