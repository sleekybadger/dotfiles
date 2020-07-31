left_separator=""
right_separator=""
left_sub_separator=""
right_sub_separator=""

# Tabs
set -g window-status-separator ""

setw -g window-status-format ""
setw -ga window-status-format "#[bg=colour018,fg=colour015] #I #W #[default]"


# Current Tab
setw -g window-status-current-format ""
setw -ga window-status-current-format "#[bg=colour039,fg=colour018]${left_separator}#[default]"
setw -ga window-status-current-format "#[bg=colour039,fg=colour015] #I #[default]"
setw -ga window-status-current-format "#[bg=colour039,fg=colour018]${left_sub_separator}#[default]"
setw -ga window-status-current-format "#[bg=colour039,fg=colour015] #W #[default]"
setw -ga window-status-current-format "#[bg=colour018,fg=colour039]${left_separator}#[default]"


# Prefix Highlight
set -g @prefix_highlight_show_copy_mode on
set -g @prefix_highlight_empty_has_affixes on
set -g @prefix_highlight_copy_prompt "CPY"
set -g @prefix_highlight_empty_prompt "NRM"
set -g @prefix_highlight_prefix_prompt "CMD"
set -g @prefix_highlight_bg "colour015"
set -g @prefix_highlight_fg "colour233"
set -g @prefix_highlight_empty_attr "bg=colour015,fg=colour233"
set -g @prefix_highlight_copy_mode_attr "bg=colour015,fg=colour233"


# System Stats
set -g @sysstat_cpu_view_tmpl "#{cpu.pused} ﬙"
set -g @sysstat_mem_view_tmpl "#{mem.pused} "
set -g @sysstat_swap_view_tmpl "#{swap.pused} ﬘"


# Battery Status
set -g @batt_icon_status_charging "ﮣ"
set -g @batt_icon_status_attached ""

set -g @batt_icon_status_charged ""
set -g @batt_icon_charge_tier8 ""
set -g @batt_icon_charge_tier7 ""
set -g @batt_icon_charge_tier6 ""
set -g @batt_icon_charge_tier5 ""
set -g @batt_icon_charge_tier4 ""
set -g @batt_icon_charge_tier3 ""
set -g @batt_icon_charge_tier2 ""
set -g @batt_icon_charge_tier1 ""


# WiFi Signal Strength
set -g @wifi_signal_strength_high_icon ""
set -g @wifi_signal_strength_medium_icon ""
set -g @wifi_signal_strength_low_icon ""
set -g @wifi_signal_strength_off_icon ""

set -g @wifi_signal_strength_off_msg ""

set -g @wifi_signal_strength_off_fg "colour000"
set -g @wifi_signal_strength_low_fg "colour196"
set -g @wifi_signal_strength_medium_fg "colour202"
set -g @wifi_signal_strength_hight_fg "colour034"


# Status Line
set -g status-left-length 10000
set -g status-right-length 10000

set -g status-style "bg=colour018,fg=colour015"


# Left Status Line
set -g status-left ""
set -ga status-left "#[bg=colour015,fg=colour233]#{prefix_highlight}#[default]"
set -ga status-left "#[bg=colour015,fg=colour227]${right_separator}#[default]"
set -ga status-left "#[bg=colour227,fg=colour234] ﬦ #S #[default]"
set -ga status-left "#[bg=colour018,fg=colour227]${left_separator}#[default]"


# Right Status Line
set -g status-right ""

set -ga status-right "#[bg=colour018,fg=#{wifi_signal_strength_bg}]${right_separator}#[default]"
set -ga status-right "#[bg=#{wifi_signal_strength_bg},fg=#{wifi_signal_strength_fg}] #{wifi_signal_strength}#{wifi_signal_strength_icon} #[default]"
set -ga status-right "#[bg=colour015,fg=colour033]${right_separator}#[default]"
set -ga status-right "#[bg=colour033,fg=colour015] #{sysstat_cpu} / #{sysstat_mem} / #{sysstat_swap} #[default]"
set -ga status-right "#[bg=colour033,fg=colour196]${right_separator}#[default]"
set -ga status-right "#[bg=colour196,fg=colour015] #{battery_percentage} #{battery_icon} #[default]"
