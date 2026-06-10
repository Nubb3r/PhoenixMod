----------------------------------------------------------------------------------------
-- taskbar
--
-- this file is organized into two sections: 
-- 
-- 1. functions
--    - these are util functions used in this file
--
-- 2. bindings
--    - Bindings specify the functionality in code for a particular widget.
--    - Each binding is specified as a table with BASE fields and CUSTOM fields.
--      BASE fields are those that are common to ALL bindings.
--      CUSTOM fields are specific to a binding type; you will have to find the binding class
--      in code to see what fields are available.  (See OnLoad)
--
--      Base Fields:
--          - bind: Specifies the type of binding.  This name is matched with a class in RegisterBindings.cpp.
--          - ui: A name of a widget.  If specified, this binding acts on the given widget.
--          - uilist: Specifies a list of widget names.  If specified, child bindings will act on a widget from this list.
--          - tt: Specifies the tooltip binding that is validated when this binding is moused over.
--          - hk: Associates a hotkey with this binding.  This name matches a field in keydefaults.lua

----------------------------------------------------------------------------------------
-- functions
--

-- This function returns a function that creates a new table containing the entries of tables in the parameter list
-- with entries in an original table.
--
-- The parameter list should contain a list of tables.  The original table follows the call of the use() function.
--
-- eg.
-- foo = use( table1, table2 ) { 1, 2, 3 }
--
-- creates a new table assigned to foo that consists of the entries 1, 2, 3, and all entries in table1 and table2.

function use(...)

	local function internal(tt)
		-- create new table
		local newt = {}
		
		-- append all original arguments
		for i = 1, table.getn(arg) do
			for j = 1, table.getn(arg[i]) do
				table.insert(newt, arg[i][j])
			end
		end
		
		-- append tt
		for k = 1, table.getn(tt) do
			table.insert(newt, tt[k])
		end
		
		-- done!
		return newt
		
	end

	return internal
end


----------------------------------------------------------------------------------------
-- local data
--

-- first row of command buttons
local command_buttons_row1 =
{
    "command_button_01",
    "command_button_02",
    "command_button_03",
    "command_button_04",
}

-- second row of command buttons
local command_buttons_row2 =
{
    "command_button_05",
    "command_button_06",
    "command_button_07",
    "command_button_08",
}

-- third row of command buttons
local command_buttons_row3 =
{
    "command_button_09",
    "command_button_10",
    "command_button_11",
    "command_button_12",
}

-- all command buttons
local command_buttons = use( command_buttons_row1, command_buttons_row2, command_buttons_row3 ) { }

local player_ability_buttons =
{
	"ability_icon_01",
	"ability_icon_02",
	"ability_icon_03",
	"ability_icon_04",
	"ability_icon_05",
	"ability_icon_06",
	"ability_icon_07",
	"ability_icon_08",
	"ability_icon_09",
}


local player_ability_progress = 
{
	"ability_progress_01",
	"ability_progress_02",
	"ability_progress_03",
	"ability_progress_04",
	"ability_progress_05",
	"ability_progress_06",
	"ability_progress_07",
	"ability_progress_08",
	"ability_progress_09",
}

				
local ability_buttons =
{
	"command_ability_button_01",
	"command_ability_button_02",
	"command_ability_button_03",
	"command_ability_button_04",
	"command_ability_button_05",
	"command_ability_button_06",
	"command_ability_button_07",
	"command_ability_button_08",
	"command_ability_button_09",
	"command_ability_button_10",
	"command_ability_button_11",
	"command_ability_button_12"
}

local production_buttons = command_buttons

local recharge_progress =
{
	"command_recharge_progress_01",
	"command_recharge_progress_02",
	"command_recharge_progress_03",
	"command_recharge_progress_04",
	"command_recharge_progress_05",
	"command_recharge_progress_06",
	"command_recharge_progress_07",
	"command_recharge_progress_08",
	"command_recharge_progress_09",
	"command_recharge_progress_10",
	"command_recharge_progress_11",
	"command_recharge_progress_12",
}


local upgrade_progress =
{
	"command_upgrade_progress_01",
	"command_upgrade_progress_02",
	"command_upgrade_progress_03",
	"command_upgrade_progress_04",
	"command_upgrade_progress_05",
	"command_upgrade_progress_06",
	"command_upgrade_progress_07",
	"command_upgrade_progress_08",
	"command_upgrade_progress_09",
	"command_upgrade_progress_10",
	"command_upgrade_progress_11",
	"command_upgrade_progress_12"
}



-- needs to skip unload and rally point
local converted_building_production_buttons =
{
	command_buttons[1],
	command_buttons[2],
	command_buttons[3],
	command_buttons[4],
	command_buttons[6],
	command_buttons[7],
	command_buttons[9],
	command_buttons[10],
	command_buttons[11],
	command_buttons[12],
}


-- widgets for squad selection.  used when multiple squads are selected or squads in a hold
-- should be displayed.
local selection_widgets =
{
	"selection_max_unit_01",
	"selection_max_unit_01_icon",
	"selection_max_unit_01_icon_select",
	"selection_max_unit_01_shadow",
	"selection_max_unit_01_health",
	"selection_max_unit_02",
	"selection_max_unit_02_icon",
	"selection_max_unit_02_icon_select",
	"selection_max_unit_02_shadow",
	"selection_max_unit_02_health",
	"selection_max_unit_03",
	"selection_max_unit_03_icon",
	"selection_max_unit_03_icon_select",
	"selection_max_unit_03_shadow",
	"selection_max_unit_03_health",
	"selection_max_unit_04",
	"selection_max_unit_04_icon",
	"selection_max_unit_04_icon_select",
	"selection_max_unit_04_shadow",
	"selection_max_unit_04_health",
	"selection_max_unit_05",
	"selection_max_unit_05_icon",
	"selection_max_unit_05_icon_select",
	"selection_max_unit_05_shadow",
	"selection_max_unit_05_health",
	"selection_max_unit_06",
	"selection_max_unit_06_icon",
	"selection_max_unit_06_icon_select",
	"selection_max_unit_06_shadow",
	"selection_max_unit_06_health",
	"selection_max_unit_07",
	"selection_max_unit_07_icon",
	"selection_max_unit_07_icon_select",
	"selection_max_unit_07_shadow",
	"selection_max_unit_07_health",
	"selection_max_unit_08",
	"selection_max_unit_08_icon",
	"selection_max_unit_08_icon_select",
	"selection_max_unit_08_shadow",
	"selection_max_unit_08_health",
	"selection_max_unit_09",
	"selection_max_unit_09_icon",
	"selection_max_unit_09_icon_select",
	"selection_max_unit_09_shadow",
	"selection_max_unit_09_health",
	"selection_max_unit_10",
	"selection_max_unit_10_icon",
	"selection_max_unit_10_icon_select",
	"selection_max_unit_10_shadow",
	"selection_max_unit_10_health",
}



local hold_widgets =
{
	"selection_max_unit_02",
	"selection_max_unit_02_icon",
	"selection_max_unit_02_icon_select",
	"selection_max_unit_02_shadow",
	"selection_max_unit_02_health",
	"selection_max_unit_03",
	"selection_max_unit_03_icon",
	"selection_max_unit_03_icon_select",
	"selection_max_unit_03_shadow",
	"selection_max_unit_03_health",
	"selection_max_unit_04",
	"selection_max_unit_04_icon",
	"selection_max_unit_04_icon_select",
	"selection_max_unit_04_shadow",
	"selection_max_unit_04_health",
	"selection_max_unit_05",
	"selection_max_unit_05_icon",
	"selection_max_unit_05_icon_select",
	"selection_max_unit_05_shadow",
	"selection_max_unit_05_health",
	"selection_max_unit_06",
	"selection_max_unit_06_icon",
	"selection_max_unit_06_icon_select",
	"selection_max_unit_06_shadow",
	"selection_max_unit_06_health",
	"selection_max_unit_07",
	"selection_max_unit_07_icon",
	"selection_max_unit_07_icon_select",
	"selection_max_unit_07_shadow",
	"selection_max_unit_07_health",
	"selection_max_unit_08",
	"selection_max_unit_08_icon",
	"selection_max_unit_08_icon_select",
	"selection_max_unit_08_shadow",
	"selection_max_unit_08_health",
	"selection_max_unit_09",
	"selection_max_unit_09_icon",
	"selection_max_unit_09_icon_select",
	"selection_max_unit_09_shadow",
	"selection_max_unit_09_health",
	"selection_max_unit_10",
	"selection_max_unit_10_icon",
	"selection_max_unit_10_icon_select",
	"selection_max_unit_10_shadow",
	"selection_max_unit_10_health",
}



upgrade_buttons =
{
	"upgrade_button_01",
	"upgrade_button_02",
	"upgrade_button_03"
}


----------------------------------------------------------------------------------------
-- tooltips

-- Creates a simple tooltip with a title and description
function tooltip_desc( t, d, u )
	local tt =
	{
		bind = "help_text_box",
		title = t,
		desc = d,
		usage = u
	}
	
	return tt
end

-- resource tooltips
tt_resource_manpower = tooltip_desc( "$40750", "$40751" )

tt_resource_munition = tooltip_desc( "$40752", "$40753" )

tt_resource_fuel = tooltip_desc( "$40754", "$40755" )

tt_resource_action = tooltip_desc( "$40756", "$40757" )

tt_help_box = { bind = "help_text_box" }

function tooltip_display_ctrl_group( groupnum )

	local t =
	{
		{
			bind = "ctrl_group_repeat",
			binder =
			{
				type = "clone_list",
				skip_invalid = false,
				clones =
				{
					{ prototype = "group_squad_icon",
					  children =
					  {
					    "squad_icon",
						"squad_selected",
						"squad_shadow",
						"squad_health",
					  }
					},
				},
			},					
			ctrl_group = groupnum,
			content =
			{
				{ bind = "ctrl_unit_portrait", ctrl_group = groupnum, reuse = false, offsetx = -0.03,
				  content =
				  {
					{ bind = "squad_badge", tt = tt_help_box,
					  icon = true, badge = true, count = true, weapon = true, suppression = true, mouseover = true, veterancy = true },
					{ bind = "squad_badge", selected = true },
					{ bind = "squad_badge", shadow = true },
					{ bind = "squad_health_bar",  },
				  }
				},
			}
		},
	}
	
	return t
end

----------------------------------------------------------
-- taskbar settings

global =
{
	screen = "Taskbar"
}

-----------------------------------------------------------
-- local player resources

resources = 
{
    bind = "group",
	name = "resources",
    content =
    {
        -- manpower
        { name = "manpower_img", bind = "image", ui = "resource_manpower_art", tt = tt_resource_manpower },
        { name = "manpower", bind = "player_resource_label", ui = "resource_manpower_display", res_type = "manpower", tt = tt_resource_manpower	},
        { name = "manpower_rate", bind = "player_resource_rate_label", ui = "resource_manpower_rate", res_type = "manpower", rate_unit = 60, tt = tooltip_desc( "$40780", "$40781" ) },
    
        -- munition
        { name = "munition_img", bind = "image", ui = "resource_munition_art", tt = tt_resource_munition },
        { name = "munition", bind = "player_resource_label", ui = "resource_munition_display", res_type = "munition", tt = tt_resource_munition	},
        { name = "munition_rate", bind = "player_resource_rate_label", ui = "resource_munition_rate", res_type = "munition", rate_unit = 60, tt = tooltip_desc( "$40782", "$40783" ) },

        -- fuel
        { name = "fuel_img", bind = "image", ui = "resource_fuel_art", tt = tt_resource_fuel },
        { name = "fuel", bind = "player_resource_label", ui = "resource_fuel_display", res_type = "fuel", tt = tt_resource_fuel		},
        { name = "fuel_rate", bind = "player_resource_rate_label", ui = "resource_fuel_rate", res_type = "fuel", rate_unit = 60, tt = tooltip_desc( "$40784", "$40785" ) },
   	},
}


-- dialogs buttons
dialogs = 
{
    bind = "group",
    content =
    {
        { name = "system_menu", bind = "dlg_system_button", ui = "menu_button", tt = tooltip_desc("$40950", "$40957"), hk = "systemmenu" },
    },
}



-- these are static bindings for hotkey commands that do not have UI associated with them (ie Center on HQ)
static_hotkey_bindings =
{
	bind = "group",
	name = "static_hotkey_bindings",
	content =
	{
		{ bind = "static_hotkey", 	hk = "hkgroup_set0",		action = "setgroup", groupnum = 0 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set1",		action = "setgroup", groupnum = 1 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set2",	    action = "setgroup", groupnum = 2 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set3",		action = "setgroup", groupnum = 3 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set4",		action = "setgroup", groupnum = 4 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set5",		action = "setgroup", groupnum = 5 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set6",		action = "setgroup", groupnum = 6 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set7",		action = "setgroup", groupnum = 7 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set8",		action = "setgroup", groupnum = 8 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_set9",		action = "setgroup", groupnum = 9 },	
	
		{ bind = "static_hotkey", 	hk = "hkgroup_select0",		action = "selectgroup", groupnum = 0 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select1", 	action = "selectgroup", groupnum = 1 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select2",		action = "selectgroup", groupnum = 2 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select3",		action = "selectgroup", groupnum = 3 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select4",		action = "selectgroup", groupnum = 4 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select5",		action = "selectgroup", groupnum = 5 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select6",		action = "selectgroup", groupnum = 6 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select7",		action = "selectgroup", groupnum = 7 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select8",		action = "selectgroup", groupnum = 8 },	
		{ bind = "static_hotkey", 	hk = "hkgroup_select9",		action = "selectgroup", groupnum = 9 },	
		
		{ bind = "static_hotkey",	hk = "select_focus", action = "selectfocus" },
		{ bind = "static_hotkey",	hk = "event_cue_cycle", action = "focusnext_eventcue" },
	},
}


-----------------------------------------------------------------------------
-- static bindings (always applicable)

static =
{
    bind = "group",
	name = "static",
    content =
    {
        dialogs,
        
        resources,

		{ bind = "empty", name = "ping_portrait", ui = "ping_portrait" },
		{ bind = "empty", name = "ping_portrait_hint", ui = "ping_portrait_hint" },
        { bind = "empty", name = "ping_popcap", ui = "ping_popcap" },
        { bind = "empty", name = "ping_fuel", ui = "ping_fuel" },
        { bind = "empty", name = "ping_munitions", ui = "ping_munitions" },
        { bind = "empty", name = "ping_munitions_rate", ui = "ping_munitions_rate" },
		{ bind = "empty", name = "ping_manpower", ui = "ping_manpower" },
		{ bind = "empty", name = "ping_manpower_amount", ui = "ping_manpower_amount" },
		{ bind = "empty", name = "ping_manpower_rate", ui = "ping_manpower_rate" },
		{ bind = "empty", name = "ping_command", ui = "ping_command" },
		{ bind = "empty", name = "ping_selection", ui = "ping_selection" },
		{ bind = "empty", name = "ping_minimap", ui = "ping_minimap" },

		-- squad/support cap
        {
			name = "squadcap",
			bind = "player_resource_popcap",
			cap_type = "personnel",
			ui = "resource_unit_display", 
			tt = tt_help_box,
		},

		static_hotkey_bindings,

		-- need a binding for the minimap to show help text
		{ bind = "image", name = "minimap image", ui = "custom_minimap" },
		
		-- minimap buttons
		-- select next idle infantry squad
		{ bind = "static_hotkey", hk = "infantry_cycle",
		  focus_type = "infantry",	action  = "selectnextidle",
		  ui = "minimap_next_button_01", tt = tooltip_desc( "$40854", "$40855" ) },
		-- select next idle vehicle squad
		{ bind = "static_hotkey", hk = "vehicle_cycle",
		  focus_type = "vehicle", action  = "selectnextidle",
		  ui = "minimap_next_button_02", tt = tooltip_desc( "$40852", "$40853" ) },
		-- select next idle builder squad
		{ bind = "static_hotkey", hk = "builder_cycle",
		  focus_type = "builder", action  = "selectnextidle",
		  tt = tooltip_desc( "$40852", "$40853" ) },

		-- ui warnings
        { bind = "ui_warning", ui = "txtCriticalWarning" },

        -- ui instructions
        { bind = "ui_warning", ui = "txtInstruction", warnings = "instruction" },
		
		-- MP vs. SP specific bindings
		{
			bind = "gametype_switch",
			mp =
			{
				-- ping buttons!
				{ name = "attack_ping", bind = "minimap_ping_button", ui = "minimap_ping_button_01",		--ADDED NAME TO ALLOW ENABLE/DISABLE FOR OBSERVER MODE
					ping = "attack", good_cursor = "modal_ping",
					hk = "ping_attack", tt = tooltip_desc( "$40790", "$40791", "$40800")},
				{ name = "defend_ping", bind = "minimap_ping_button", ui = "minimap_ping_button_02",		--ADDED NAME TO ALLOW ENABLE/DISABLE FOR OBSERVER MODE
					ping = "defend", good_cursor = "modal_ping",
					hk = "ping_defend", tt = tooltip_desc( "$40792", "$40793", "$40800")},
				{ name = "capture_ping", bind = "minimap_ping_button", ui = "minimap_ping_button_03",		--ADDED NAME TO ALLOW ENABLE/DISABLE FOR OBSERVER MODE
					ping = "capture", good_cursor = "modal_ping",
					hk = "ping_capture", tt = tooltip_desc( "$40794", "$40795", "$40800")},
				{ name = "chat_button", bind = "minimap_chat_button", ui = "minimap_chat_button",		--ADDED NAME TO ALLOW ENABLE/DISABLE FOR OBSERVER MODE
					tt = tooltip_desc("$40856", "$40857") },
				{ name = "ping_frame", bind = "empty", ui = "mp_frame_art" },				--ADDED NAME TO ALLOW ENABLE/DISABLE FOR OBSERVER MODE
				{ name = "playercolour_01", bind = "empty", ui = "playercolour_01" },			--ADDED For 2v2 OBSERVER MODE
				{ name = "playercolour_02", bind = "empty", ui = "playercolour_02" },			--ADDED For 2v2 OBSERVER MODE
  				{ name = "pm_timer_narrow", bind = "empty", ui = "game_timer_bg" },			-- ADDED FOR GAME TIMER
				{ name = "pm_timer_wide", bind = "empty", ui = "game_timer_bg2" },				-- ADDED FOR GAME TIMER
			},
			sp =
			{
  				{ name = "pm_timer_narrow", bind = "empty", ui = "game_timer_bg" },			-- ADDED FOR GAME TIMER (Playback uses SP UI)
				{ name = "pm_timer_wide", bind = "empty", ui = "game_timer_bg2" },				-- ADDED FOR GAME TIMER
			},
		}
	},
}

-----------------------------------------------------------------------------
-- player-level commands
		
building_management =
{
	bind = "group",
	name = "building management",
	content =
	{
		{ name = "manage_hq", bind = "static_hotkey", ui = "display_build_max_select_headquarters",
		  hk = "manage_hq",
		  focus_type = "hq", action = "selectnextentity", tt = tt_help_box, widget_index = 1 },

		{ name = "manage_barracks", bind = "static_hotkey", ui = "display_build_max_select_barracks", 
		  hk = "manage_barracks",
		  focus_type = "barracks", action = "selectnextentity", tt = tt_help_box, widget_index = 2  },
		
		{ name = "manage_armory", bind = "static_hotkey", ui = "display_build_max_select_armory", 
		  hk = "manage_armory",
		  focus_type = "armory", action = "selectnextentity", tt = tt_help_box, widget_index = 3  },
		
		{ name = "manage_light_motorpool", bind = "static_hotkey", ui = "display_build_max_select_motorpool_light", 
		  hk = "manage_light_motorpool",
		  focus_type = "motor_pool_light", action = "selectnextentity", tt = tt_help_box, widget_index = 4  },

		{ name = "manage_heavy_motorpool", bind = "static_hotkey", ui = "display_build_max_select_motorpool_heavy",
		  hk = "manage_heavy_motorpool",		
		  focus_type = "motor_pool_heavy", action = "selectnextentity", tt = tt_help_box, widget_index = 5  },

		{ name = "manage_supply_yard", bind = "static_hotkey", ui = "display_build_max_select_procurement",
		  hk = "manage_supply_yard",
		  focus_type = "supply_yard", action = "selectnextentity", tt = tt_help_box, widget_index = 6  },
	}
}

make_ctrl_group_binding = function( groupnum )

	local t =
	{
		bind = "unit_management",
		ui = "group_ctrl"..groupnum.."_units", 
		activate = { "display_ctrl"..groupnum.."_btn", "display_all_art" },
		ctrl_group = groupnum,
		content = tooltip_display_ctrl_group( groupnum ),
	}
	
	return t
end


		
player_unit_management =
{
	bind = "group",
	name = "unit management",
	content =
	{
		-- display all
		--[[{ name = "units_show_all", bind = "selection_ctrl_group_button", ui = "display_all_art", tt = tooltip_desc( "$40767", "$40768" ), ctrl_group = -2, height_idx = 0 },
		{ bind = "unit_management", ui = "group_all_units", ctrl_group = -2, 
		  content =
		  {
			{ bind = "empty" },
		  }
		},--]]
		
		-- display leftovers
		{ name = "units_show_others", bind = "selection_ctrl_group_button", ui = "display_idle_btn", tt = tooltip_desc( "$40769", "$40770" ) , ctrl_group = -1, height_idx = 1 },
		{ bind = "unit_management", ui = "group_idle_units", activate = { "display_idle_btn", "display_all_art" },
		  ctrl_group = -1,
		  content = tooltip_display_ctrl_group( -1 ) },
		
		  -- display ctrl groups
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl1_btn", ctrl_group = 1, height_idx = 2, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 1 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl2_btn", ctrl_group = 2, height_idx = 3, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 2 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl3_btn", ctrl_group = 3, height_idx = 4, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 3 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl4_btn", ctrl_group = 4, height_idx = 5, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 4 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl5_btn", ctrl_group = 5, height_idx = 6, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 5 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl6_btn", ctrl_group = 6, height_idx = 7, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 6 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl7_btn", ctrl_group = 7, height_idx = 8, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 7 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl8_btn", ctrl_group = 8, height_idx = 9, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 8 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl9_btn", ctrl_group = 9, height_idx = 10, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 9 ),
		{ bind = "selection_ctrl_group_button", ui = "display_ctrl0_btn", ctrl_group = 0, height_idx = 11, tt = tooltip_desc( "$40765", "$40766" ) },
		make_ctrl_group_binding( 0 ),
	},
}


player_company_commander =
{
	bind = "group",
	name = "company_commander",
	ui = "group_company_commander",
	content =
	{
		{ bind = "player_company_commander_button", ui = "tech_tree_button", hk = "company_commander", tt = tooltip_desc("$40796", "$40797") },
		{ bind = "player_resource_amount_bar", ui = "action_progress", res_type = "action", tt = tt_resource_action },
	}
}
		
player_info =
{
	bind = "group",
	name = "player info",
    content =
    {
		-- player abilities
		{
			bind = "ability_bar",
		},
		{ 
			bind = "abilities_repeat",
			caster = "player",
			ordered = true,
			uilist = player_ability_buttons,
			content = 
			{
				{ bind = "player_ability_button",  tt = tt_help_box, submenu = "basic_modal",
					disabled_texture = { file = "", art = "icon_disabled" },
					active_ui = "ability_activated_progress", recharge_ui = "ability_recharge_progress"
				},
			},
		},
		
		{ bind = "player_tactical_map_button", name = "tacmap_button", ui = "tacmap_btn", hk = "tactical_map", tt = tooltip_desc("$40798", "$40799") },
		
		-- building management
		building_management,
			
		-- company commander UI
		player_company_commander,

		-- unit management
		player_unit_management,
	}
}

----------------------------------------------------------------------------------------
-- selection info

taskbar_squad_display_panel =
{
	{
		bind = "group_selection_primary",
		content =
		{
			-- portrait
			{ name = "critical_panel", bind = "critical_panel", ui = "critical_vehicle_art" },

			{ bind = "selection_portrait_button", ui = "portrait_squad_art" },
			
			{ bind = "empty_portrait_image", ui = "portrait_building_art" },

			{ bind = "squad_health_bar", ui = "portrait_squad_health" },

			-- name of selected item
			{ bind = "selection_name_label", ui = "display_unit_max_name" },
			
			-- stats
			{ bind = "group_selection_count", min_squads = 1, max_squads = 1,
				ui = "group_stats",
				content =
				{
					{ bind = "squad_rating_txt", type = "infantry" },
					{ bind = "squad_rating_txt", type = "lightarmor"},
					{ bind = "squad_rating_txt", type = "heavyarmor" },
					{ bind = "squad_rating_txt", type = "structure" },
					{ bind = "empty", ui = "kill_rating_infantry_txt", tt = tooltip_desc("$40982", "$40983") },
					{ bind = "empty", ui = "kill_rating_lightarmor_txt", tt = tooltip_desc("$40984", "$40985") },
					{ bind = "empty", ui = "kill_rating_heavyarmor_txt", tt = tooltip_desc("$40986", "$40987") },
					{ bind = "empty", ui = "kill_rating_structure_txt", tt = tooltip_desc("$40988", "$40989") },
				},
			},
			
			-- display the unit owner
			{ bind = "selection_player_label", ui = "display_unit_max_player_name" },
		},
	},
}


taskbar_entity_display_panel =
{
	-- display the entity portrait
	{ bind = "selection_portrait_button", ui = "portrait_building_art", tt = tt_help_box },

	-- health bar
	{ bind = "entity_health_bar", ui = "portrait_building_health" },
	
	-- production progress
	{
		bind = "group_selection_owner",
		owner = "ally",
		content =
		{
			{ bind = "production_queue_progress", target = "entity", ui = "portrait_building_production" },
		},
	},
	
	-- repair station radius display
	{ bind = "repair_radius_circle" },
	
	-- name of selected item
	{ bind = "selection_name_label", ui = "display_unit_max_name" },

	-- display the unit owner
	{ bind = "selection_player_label", ui = "display_unit_max_player_name" },
}


taskbar_squad_selection_panel =
{
	{
		bind = "group_selection_owner",
		owner = "self",
		content =
		{
			{ bind = "selection_toggle_primary", name = "squad selection shield", ui = "display_ctrl_group_btn" },
		}
	},

	-- list all squads selected
	{ 
		bind = "selection_squads_repeat",
		self_only = false,
		uilist = selection_widgets,
		skip_invalid = false,
		hk = "next_primary_selection",
		content =
		{
			{ bind = "empty" },
			{ bind = "squad_badge", tt = tt_help_box,
			  icon = true, badge = true, count = true, weapon = true, suppression = true, mouseover = true, veterancy = true },
			{ bind = "squad_badge", selected = true },
			{ bind = "squad_badge", shadow = true },
			{ bind = "squad_health_bar",  },
		},
	},
	
	-- empty binding just to be able to hintpoint/flash the squad selection area
	{
		bind = "empty",
		ui = "group_selection_max",
		name = "squad selection area",
	},
	
	{
		bind = "selection_squads_repeat_reverse",
		self_only = false,
		hk = "prev_primary_selection",
		content =
		{
			{ bind = "empty" },
		},
	},
}

taskbar_squad_production =
{
	-- display the production progress
	{ bind = "production_queue_progress", target = "squad", ui = "build_queue_01_progress" },

	-- display the production queue
	{ 
		bind = "production_queue_repeat", 
		target = "squad",
		uilist =
		{
			"build_queue_01",
			"build_queue_02",
			"build_queue_03",
			"build_queue_04",
			"build_queue_05",
			"build_queue_06",
		},
		content = 
		{
			{ bind = "production_queue_button", texture = { art = "icon" }},
		},
	},
	
	{
		bind = "production_slots", ui = "build_slots_grp"
	},
}

taskbar_entity_production =
{
	-- display the production progress
	{ bind = "production_queue_progress", target = "entity", ui = "build_queue_01_progress" },

	-- display the production queue
	{ 
		bind = "production_queue_repeat", 
		target = "entity",
		uilist =
		{
			"build_queue_01",
			"build_queue_02",
			"build_queue_03",
			"build_queue_04",
			"build_queue_05",
			"build_queue_06",
		},
		content = 
		{
			{ bind = "production_queue_button", texture = { art = "icon" }},
		},
	},
	
	{
		bind = "production_slots", ui = "build_slots_grp"
	},
}

taskbar_entity_hold_production = 
{
	{
		bind = "group_selection_owner",
		owner = "self",
		name = "entity hold production",
		content =
		{
			{
				bind = "group_selection_primary",
				name = "entity hold primary selection production",
				content =
				{
					{
						bind = "if_switch",
						check = { bind = "in_hold" },
						dependant = taskbar_squad_production,
						exclusive = taskbar_entity_production,
					}
				}
			}
		}
	}
}

taskbar_entity_selection_panel =
{
	{ bind = "image", ui = "build_max_background" },
}


taskbar_hold_selection_panel =
{
	-- hold label
	{ bind = "hold_label", ui = "display_capacity_txt" },
	
	{
		bind = "group_selection_owner",
		owner = "self",
		content =
		{
			{
				-- hold contents
				bind = "hold_repeat",
				name = "hold occupants",
				uilist = hold_widgets,
				skip_invalid = false,
				hk = "next_primary_selection",
				content =
				{
					{ bind = "empty" },
					{ bind = "squad_badge", tt = tt_help_box,
					  icon = true, badge = true, count = true, suppression = true, weapon = true, mouseover = true },
					{ bind = "squad_badge", selected = true },
					{ bind = "squad_badge", shadow = true },
					{ bind = "squad_health_bar" },
				},
			},
			
			{
				-- available hold slots
				bind = "hold_slot_frames_repeat",
				name = "hold_slot_frames",
				uilist =
				{
					"hold_slot_01",
					"hold_slot_02",
					"hold_slot_03",
					"hold_slot_04",
				},
				skip_invalid = false,
				content =
				{
					{ bind = "image", },
				},
			},
		},
	},
	
	-- for allowing squad upgrades in a hold
	{
		bind = "group_selection_primary",
		content =
		{
			squad_control_panel
		},
	},
	
		
	-- empty binding just to be able to hintpoint/flash the squad selection area
	{
		bind = "empty",
		ui = "group_selection_max",
		name = "squad selection area",
	},
	
	{
		bind = "hold_repeat_reverse",
		skip_invalid = false,
		hk = "prev_primary_selection",
		content =
		{
			{ bind = "empty" },
		},
	},
}


squad_hold_commands =
{		
	-- unload button
	{ bind 	= "command_unload", name = "command_unload_individual_squad", ui = command_buttons[5],
		hk = "unload", submenu = "basic_modal",
		tt = tooltip_desc("$40844", "$40845"),
		texture = { file = "commands/icon_command_unload_here", art = "icon" },
		disabled_texture = { file = "commands/icon_command_unload_here", art = "icon_disabled" },
		hover_texture = { file = "", art = "icon_hover" },
		good_cursor = "modal_unload", bad_cursor = "modal_unload_cancel" },
		
	-- squad abilities
	{ 
		bind = "abilities_repeat",
		caster = "squad",
		binder	= { type = "context_list", uilist = use( ability_buttons ){} },
		content = 
		{
			{ bind = "ability_button", tt = tt_help_box,
				hover_texture = { file = "", art = "icon_hover" },
				disabled_texture = { file = "", art = "icon_disabled" },
				submenu = "basic_modal",
				active_ui = "command_activated_progress",
				recharge_ui = "command_recharge_progress" },
		},
	},
	
	-- squad items, production buttons and progress bars (in command panels)
	{
		bind = "production_repeat",
		name = "command panel upgrades",
		target = "squad",
		type = "sq_upgrade",
		group = "command_panel",
		binder	= { type = "context_list", uilist = use( production_buttons ){} },
		content =
		{
			{ bind = "production_button",
			  hover_texture = { file = "", art = "icon_hover" },
			  disabled_texture = { file = "", art = "icon_disabled" },
			  tt = tt_help_box },
		},
	},

	-- squad items, production buttons and progress bars
	{
		bind = "production_repeat",
		name = "unit upgrades",
		target = "squad",
		type = "sq_upgrade",
		group = "unit_upgrade_panel",
		binder	= { type = "context_list", uilist = use( upgrade_buttons ){} },
		content =
		{
			{ bind = "production_button",
			  disabled_texture = { file = "", art = "icon_disabled" },
			  tt = tt_help_box },
		},
	},
	
	-- squad items, production buttons and progress bars
	{
		bind = "production_repeat",
		name = "weapon packages",
		target = "squad",
		type = "sq_upgrade",
		group = "weapon_package",
		binder	= { type = "context_list", uilist = use( upgrade_buttons ){} },
		content =
		{
			{ bind = "production_button",
			  disabled_texture = { file = "", art = "icon_disabled" },
			  tt = tt_help_box },
		},
	},

	-- squad reinforce button and progress bar
	{
		bind = "production_repeat",
		name = "reinforcements",
		target = "squad",
		type = "unit",
		skip_invalid = false,
		uilist =
		{
			"control_max_upgrade_button_01",
			"control_max_upgrade_progress_01",
		},
		content =
		{
			{ bind = "production_button",
			  disabled_texture = { file = "", art = "icon_disabled" },
			  tt = tt_help_box },
		},
	},
	-- squad command-panel production queue (based off of entity spawner_ext & upgrade_ext)
	-- this hack essentially allows putting production item buttons in the command-panel,
	-- and having it be managed by the Squad's production queue (if the squad is flagged as doing
	-- spawner production - allow_spawner_production in squad's ui ext)
	
	-- producible entity upgrades
	{ 
		bind	= "production_repeat", 
		target 	= "squad",
		type	= "upgrade",
		binder = { type = "context_list", uilist = use( production_buttons ){} },
		group 	= "command_panel",
		content	= 
		{
			{ bind = "production_button",
				hover_texture = { file = "", art = "icon_hover" },
				disabled_texture = { file = "", art = "icon_disabled" },
				tt = tt_help_box },
		},
	},
	
	-- producible entity upgrades
	{ 
		bind	= "production_repeat", 
		target 	= "squad",
		type	= "upgrade",
		binder = { type = "context_list", uilist = use( upgrade_buttons ){} },
		group 	= "unit_upgrade_panel",
		content =
		{
			{ bind = "production_button",
			  disabled_texture = { file = "", art = "icon_disabled" },
			  tt = tt_help_box },
		},
	},
	
	-- producible squads
	{
		bind = "production_repeat",
		target = "squad",
		type = "squad",
		group 	= "command_panel",
		binder = { type = "context_list", uilist = use( command_buttons ){} },
		content	= 
		{
			{ bind = "production_button",
				hover_texture = { file = "", art = "icon_hover" },
				disabled_texture = { file = "", art = "icon_disabled" },
				tt = tt_help_box },
		},
	},
}


squad_commands = 
{
	-- primary selection commands (derived and issued ONLY to the primary selection)
	{
		bind = "group_selection_primary",
		name = "primary selection commands",
		content =
		{
			-- retire
			{ 	bind 	= "command_retire", name = "command_retire_squad", hk	= "retire", submenu = "confirm_retire_modal" },

			-- basic commands
			{
				name = "command_stop",
				---------------------------------------------------
				bind = "if_switch",
				check = { bind = "in_hold" },
				dependant =
				{
					{
						bind = "command_stop",
						ui = command_buttons_row1[2], 
						hk = "halt",
						texture = { file = "commands/icon_command_stop", art = "icon" },
						disabled_texture = { file = "commands/icon_command_stop", art = "icon_disabled" },
						hover_texture = { file = "commands/icon_command_stop_hover", art = "icon_hover" },
						tt = tooltip_desc("$40830", "$40831", "$40883"),
					},
				},
				exclusive =
				{
					{
				bind = "command_stop",
				ui = command_buttons_row1[1], 
				hk = "halt",
				texture = { file = "commands/icon_command_stop", art = "icon" },
				disabled_texture = { file = "commands/icon_command_stop", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_stop_hover", art = "icon_hover" },
				tt = tooltip_desc("$40830", "$40831", "$40883"),
			},
				},				
			},
			{
				bind = "modal_attack",
				ui = command_buttons_row1[2], 
				hk = "attack",
				texture = { file = "commands/icon_command_attackmove", art = "icon" },
				disabled_texture = { file = "commands/icon_command_attackmove_hover", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_attackmove_hover", art = "icon_hover" },
				tt = tooltip_desc("$40823", "$40824", "$40825"),
				submenu = "basic_modal",
				good_cursor = "modal_attack", bad_cursor = "modal_attack_cancel", good_alt_cursor = "modal_attack_move",
				
			},

			{
				name = "command_attackground",
				bind = "modal_attackground",
				ui = command_buttons_row1[3],  
				hk = "attackground",
				texture = { file = "commands/icon_command_attackground", art = "icon" },
				disabled_texture = { file = "commands/icon_command_attackground_hover", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_attackground_hover", art = "icon_hover" },
				tt = tooltip_desc("$40828", "$40829", "$40822"),
				submenu = "basic_modal",
				good_cursor = "modal_attack_ground", bad_cursor = "modal_attack_ground_cancel", good_alt_cursor = "modal_attack",
			},
			
			{
				name = "command_retreat",
				bind = "command_retreat",
				ui = command_buttons_row1[4],
				hk = "retreat",
				texture = { file = "commands/icon_command_retreat", art = "icon" },
				disabled_texture = { file = "commands/icon_command_retreat", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_retreat_hover", art = "icon_hover" },
				tt = tooltip_desc("$40838", "$40839", "$40884"),
				submenu = "basic_modal"
			},
			
			-- unload button
			{ bind 	= "command_unload_here", ui = command_buttons[5],
				hk = "unload", submenu = "basic_modal",
				tt = tooltip_desc("$40844", "$40845"),
				texture = { file = "commands/icon_command_unload_here", art = "icon" },
				disabled_texture = { file = "commands/icon_command_unload_here", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_unload_here_hover", art = "icon_hover" },
				good_cursor = "modal_unload", bad_cursor = "modal_unload_cancel" },

			-- abandon
			{ 
				bind = "command_abandon_team_weapon", 
				ui = command_buttons[5], 
				hk = "unload", 
				texture = { file = "commands/icon_command_unload_here", art = "icon" },
				hover_texture = { file = "commands/icon_command_unload_here_hover", art = "icon_hover" },
				disabled_texture = { file = "commands/icon_command_unload_here", art = "icon_disabled" },
				tt = tooltip_desc( "$40860", "$40861" ), 
			},

			-- unconstructed building cancel
			{
				bind 	= "construction_cancel_button", name = "construction_cancel_button", ui = command_buttons[1], hk	= "cancel_construction",
				texture = { file = "commands/icon_command_stop", art = "icon" },
				disabled_texture = { file = "commands/icon_command_stop", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_stop_hover", art = "icon_hover" },
				tt = tooltip_desc("$40848", "$40849")
			},
					
			-- build menu
			{ 
				bind = "build_menu_repeat",
				uilist = { command_buttons[5], command_buttons[6], command_buttons[6] },
				content = 
				{
					{ bind = "build_menu_button", submenu = "build_menu_modal", tt = tt_help_box },
				},
			},

			-- plant demolitions
			{ bind = "command_plant_demolitions", ui = ability_buttons[10],
				hk = "allies_plant_demolitions", submenu = "basic_modal",
				tt = tt_help_box,
				good_cursor = "modal_ability", bad_cursor = "modal_ability_cancel",
				texture = { file = "abilities/ability_allied_demolitions", art = "icon" },
				disabled_texture = { file = "abilities/ability_allied_demolitions", art = "icon_disabled" },
				hover_texture = { file = "", art = "icon_hover" }
			},
			{ bind = "plant_demolitions_progress", ui = recharge_progress[10] },
				
			-- camouflage
			{ bind = "command_toggle_camouflage", ui = command_buttons[6], hk = "hold_fire_toggle", tt = tt_help_box },

			-- squad abilities
			{ 
				bind = "abilities_repeat",
				caster = "squad",
				binder	= { type = "context_list", uilist = use( ability_buttons ){} },
				content = 
				{
					{ bind = "ability_button", tt = tt_help_box,
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						submenu = "basic_modal",
						active_ui = "command_activated_progress",
						recharge_ui = "command_recharge_progress" },
				},
			},
			
			-- squad items, production buttons and progress bars (in command panels)
			{
				bind = "production_repeat",
				name = "command panel upgrades",
				target = "squad",
				type = "sq_upgrade",
				group = "command_panel",
				binder	= { type = "context_list", uilist = use( production_buttons ){} },
				content =
				{
					{ bind = "production_button",
					  hover_texture = { file = "", art = "icon_hover" },
					  disabled_texture = { file = "", art = "icon_disabled" },
					  tt = tt_help_box },
				},
			},
	
			-- squad items, production buttons and progress bars
			{
				bind = "production_repeat",
				name = "unit upgrades",
				target = "squad",
				type = "sq_upgrade",
				group = "unit_upgrade_panel",
				binder	= { type = "context_list", uilist = use( upgrade_buttons ){} },
				content =
				{
					{ bind = "production_button",
					  disabled_texture = { file = "", art = "icon_disabled" },
					  tt = tt_help_box },
				},
			},
			
			-- squad items, production buttons and progress bars
			{
				bind = "production_repeat",
				name = "weapon packages",
				target = "squad",
				type = "sq_upgrade",
				group = "weapon_package",
				binder	= { type = "context_list", uilist = use( upgrade_buttons ){} },
				content =
				{
					{ bind = "production_button",
					  disabled_texture = { file = "", art = "icon_disabled" },
					  tt = tt_help_box },
				},
			},

			-- squad reinforce button and progress bar
			{
				bind = "production_repeat",
				name = "reinforcements",
				target = "squad",
				type = "unit",
				skip_invalid = false,
				uilist =
				{
					"control_max_upgrade_button_01",
					"control_max_upgrade_progress_01",
				},
				content =
				{
					{ bind = "production_button",
					  disabled_texture = { file = "", art = "icon_disabled" },
					  tt = tt_help_box },
				},
			},
			-- squad command-panel production queue (based off of entity spawner_ext & upgrade_ext)
			-- this hack essentially allows putting production item buttons in the command-panel,
			-- and having it be managed by the Squad's production queue (if the squad is flagged as doing
			-- spawner production - allow_spawner_production in squad's ui ext)
			
			-- producible entity upgrades
			{ 
				bind	= "production_repeat", 
				target 	= "squad",
				type	= "upgrade",
				binder = { type = "context_list", uilist = use( production_buttons ){} },
				group 	= "command_panel",
				content	= 
				{
					{ bind = "production_button",
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						tt = tt_help_box },
				},
			},
			
			-- producible entity upgrades
			{ 
				bind	= "production_repeat", 
				target 	= "squad",
				type	= "upgrade",
				binder = { type = "context_list", uilist = use( upgrade_buttons ){} },
				group 	= "unit_upgrade_panel",
				content =
				{
					{ bind = "production_button",
					  disabled_texture = { file = "", art = "icon_disabled" },
					  tt = tt_help_box },
				},
			},
			
			-- producible squads
			{
				bind = "production_repeat",
				target = "squad",
				type = "squad",
				group 	= "command_panel",
				binder = { type = "context_list", uilist = use( command_buttons ){} },
				content	= 
				{
					{ bind = "production_button",
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						tt = tt_help_box },
				},
			},			

			-- production menu --- submenu for production items
			{ 
				bind = "production_menu_button", 
				submenu = "production_menu_modal", 
				tt = tt_help_box, 
				ui = command_buttons[5]  
			},

			-- rally point
			{ name = "command_rally", bind = "modal_rally", ui = command_buttons[12], hk	= "rally",
				texture = { file = "commands/icon_command_rallypoint", art = "icon" },
				disabled_texture = { file = "commands/icon_command_rallypoint", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_rallypoint_hover", art = "icon_hover" },
				good_cursor = "modal_ability", bad_cursor = "modal_ability_cancel",
				submenu	= "basic_modal", tt = tooltip_desc("$40836", "$40837", "$40885"),
			},
			
			-- submenu for spawning veteran squads
			{
				bind = "veterancy_menu_button",
				name = "squad_veterancy_menu_button",
				ui = command_buttons[6], 
				submenu = "build_veteran_squads",
				texture = { file = "commands/icon_command_build_veteran", art = "icon", },
				disabled_texture = { file = "commands/icon_command_build_veteran", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_build_veteran_hover", art = "icon_hover", },
				tt = tooltip_desc("$40890", "$40891"),
			},

		},
	},
	
}


build_menu_commands =
{
	{
		bind = "group_selection_primary",
		content =
		{
				-- fill the list with buildings that can be built by the current selection
			{
				bind = "building_construction_repeat",
				uilist =
				{
					command_buttons[1],
					command_buttons[2],
					command_buttons[3],
					command_buttons[4],
					command_buttons[5],
					command_buttons[6],
					command_buttons[7],
					command_buttons[8],
					command_buttons[10],
					command_buttons[11],
					command_buttons[12],
				},
				content = 
				{
					{ bind = "building_construction_button",
						tt = tt_help_box, submenu = "basic_modal",
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						good_cursor = "nonmodal_build", bad_cursor = "modal_build_cant"
					}
				}
			},
		
			{ bind = "menu_cancel", ui = command_buttons_row3[1], hk = "escape",
				texture = { file = "commands/icon_command_back", art = "icon" },
				disabled_texture = { file = "commands/icon_command_back", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_back_hover", art = "icon_hover" },
				tt = tooltip_desc("$40881", "$40882"),
			}
		}
	}
}

function make_veterancy_menu_commands(target_)

	return
	{
		-- fill the list with buildings that can be built by the current selection
		{
			bind = "production_repeat",
			target = target_,
			type = "veteran_squad",
			group = "veterancy_panel",
			uilist =
			{
				command_buttons[1],
				command_buttons[2],
				command_buttons[3],
				command_buttons[4],
				command_buttons[5],
				command_buttons[6],
				-- no 7
				command_buttons[8],
				command_buttons[9],
			},
			content	= 
			{
				{ bind = "veterancy_production_button",
					hover_texture = { file = "", art = "icon_hover" }, 
					disabled_texture = { file = "", art = "icon_disabled" },
					tt = tt_help_box },
			},
		},
		
		{
			bind = "menu_cancel", ui = command_buttons_row3[1], hk = "escape",
			texture = { file = "commands/icon_command_back", art = "icon" },
			disabled_texture = { file = "commands/icon_command_back", art = "icon_disabled" },
			hover_texture = { file = "commands/icon_command_back_hover", art = "icon_hover" }
		}
		
	}
	
end

basic_modal_commands =
{
	{ bind = "menu_cancel", ui = command_buttons_row3[1], hk = "escape",
		texture = { file =  "commands/icon_command_back", art = "icon" },
		disabled_texture = { file = "commands/icon_command_back", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_back_hover", art = "icon_hover" },
		tt = tooltip_desc("$40881", "$40882"),
	},	
}

confirm_retire_modal_commands =
{
	{ bind = "menu_confirm_retire", ui = command_buttons_row1[1], hk = "retire",
		texture = { file =  "commands/icon_command_cancel", art = "icon" },
		disabled_texture = { file = "commands/icon_command_cancel", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_cancel_hover", art = "icon_hover" },
		tt = tooltip_desc("$40846", "$40847"),
	},
	
	{ bind = "menu_cancel", ui = command_buttons_row3[1], hk = "escape",
		texture = { file =  "commands/icon_command_back", art = "icon" },
		disabled_texture = { file = "commands/icon_command_back", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_back_hover", art = "icon_hover" },
		tt = tooltip_desc("$40879", "$40880"),
	},
}

-- production items that show up in a menu
production_menu_commands =
{
	{
		bind = "group_selection_primary",
		content =
		{
			{
				bind = "production_repeat",
				target = "squad",
				type = "squad",
				group 	= "command_panel",
				binder = { type = "context_list", uilist = use( command_buttons ){} },
				use_menu = true,
				content	= 
				{
					{ bind = "production_button",
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						tt = tt_help_box },
				},
			},

			{ bind = "menu_cancel", ui = command_buttons_row3[1], hk = "escape",
				texture = { file = "commands/icon_command_back", art = "icon" },
				disabled_texture = { file = "commands/icon_command_back", art = "icon_disabled" },
				hover_texture = { file = "commands/icon_command_back_hover", art = "icon_hover" },
				tt = tooltip_desc("$40881", "$40882"),
			}
		}
	}
}


taskbar_squad_cmd_panel =
{
	{
		bind = "group_selection_owner",
		owner = "self",
		content =
		{
			-- show different commands depending on modal mode
			{
				bind = "modal_switch",
				build_menu_modal = build_menu_commands,
				build_veteran_squads = make_veterancy_menu_commands("squad"),
				basic_modal = basic_modal_commands,
				confirm_retire_modal = confirm_retire_modal_commands,
				production_menu_modal = production_menu_commands,
				other = squad_commands,
			},
		}
	}
}


entity_commands =
{
	-- unconstructed building cancel
	{ bind 	= "construction_cancel_button", name = "construction_cancel_button", ui = command_buttons[1], hk	= "cancel_construction",
		texture = { file = "commands/icon_command_stop", art = "icon" },
		disabled_texture = { file = "commands/icon_command_stop", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_stop_hover", art = "icon_hover" },
		tt = tooltip_desc("$40848", "$40849") },
		
	-- basic commands
	{
		name = "command_stop",
		bind = "command_stop",
		ui = command_buttons_row1[2], 
		hk = "halt",
		texture = { file = "commands/icon_command_stop", art = "icon" },
		disabled_texture = { file = "commands/icon_command_stop", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_stop_hover", art = "icon_hover" },
		tt = tooltip_desc("$40830", "$40831", "$40883"),
	},

	-- retire/scuttle buildings and squads
	{ name = "command_retire", bind = "command_retire", uinone = true, hk = "retire",
		submenu = "confirm_retire_modal" },
	
	-- unload button
	{ name = "command_unload_here", bind = "command_unload_here",	ui = command_buttons[5],
		hk = "unload",
		texture = { file = "commands/icon_command_unload_here", art = "icon" },
		disabled_texture = { file = "commands/icon_command_unload_here", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_unload_here_hover", art = "icon_hover" },
		submenu = "basic_modal",
		tt = tooltip_desc("$40842", "$40843"),
		good_cursor = "modal_unload", bad_cursor = "modal_unload_cancel" },

	-- rally point
	{ name = "command_rally", bind = "modal_rally", ui = command_buttons[12], hk	= "rally",
		texture = { file = "commands/icon_command_rallypoint", art = "icon" },
		disabled_texture = { file = "commands/icon_command_rallypoint", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_rallypoint_hover", art = "icon_hover" },
		good_cursor = "modal_ability", bad_cursor = "modal_ability_cancel",
		submenu	= "basic_modal", tt = tooltip_desc("$40836", "$40837", "$40885"),
	},

	-- submenu for spawning veteran squads
	{
		bind = "veterancy_menu_button",
		name = "entity_veterancy_menu_button",
		ui = command_buttons[6], 
		submenu = "build_veteran_squads",
		texture = { file = "commands/icon_command_build_veteran", art = "icon", },
		disabled_texture = { file = "commands/icon_command_build_veteran", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_build_veteran_hover", art = "icon_hover", },
		tt = tooltip_desc("$40890", "$40891"),
	},

	-- build menu
	{ 
		bind = "build_menu_repeat",
		uilist = { command_buttons[5], command_buttons[6], command_buttons[6] },
		content = 
		{
			{ bind = "build_menu_button", submenu = "build_menu_modal", tt = tt_help_box },
		},
	},
			
	{
		name = "command_attackground",
		bind = "modal_attackground",
		ui = command_buttons_row1[3],  
		hk = "attackground",
		texture = { file = "commands/icon_command_attackground", art = "icon" },
		disabled_texture = { file = "commands/icon_command_attackground_hover", art = "icon_disabled" },
		hover_texture = { file = "commands/icon_command_attackground_hover", art = "icon_hover" },
		tt = tooltip_desc("$40828", "$40829", "$40822"),
		submenu = "basic_modal",
		good_cursor = "modal_attack_ground", bad_cursor = "modal_attack_ground_cancel", good_alt_cursor = "modal_attack",
	},

	-- squad spawner production
	-- we use different bindings depending if this is an ambient production building or not!
	{
		bind = "if_switch",
		check = { bind = "is_converted_building" },
		dependant =
		{
			{
				bind = "production_repeat",
				target = "entity",
				type = "squad",
				group 	= "command_panel",
				uilist = converted_building_production_buttons,
				content	= 
				{
					{ bind = "production_button",
						hover_texture = { file = "", art = "icon_hover" }, 
						disabled_texture = { file = "", art = "icon_disabled" },
						tt = tt_help_box },
				},
			},
		},
		exclusive =
		{
			{
				bind = "production_repeat",
				target = "entity",
				type = "squad",
				group 	= "command_panel",
				binder = { type = "context_list", uilist = use( command_buttons ){} },
				content	= 
				{
					{ bind = "production_button",
						hover_texture = { file = "", art = "icon_hover" },
						disabled_texture = { file = "", art = "icon_disabled" },
						tt = tt_help_box },
				},
			},
		},
	},

	-- (addon, upgrades, research)
	{ 
		bind	= "production_repeat", 
		target 	= "entity",
		type	= "upgrade",
		binder = { type = "context_list", uilist = use( production_buttons ){} },
		group 	= "command_panel",
		content	= 
		{
			{ bind = "production_button",
				hover_texture = { file = "", art = "icon_hover" },
				disabled_texture = { file = "", art = "icon_disabled" },
				tt = tt_help_box },
		},
	},
	
	-- entity abilities
	{ 
		bind = "abilities_repeat",
		caster = "entity",
		binder	= { type = "context_list", uilist = use( ability_buttons ){} },
		content = 
		{
			{ bind = "ability_button", tt = tt_help_box,
				hover_texture = { file = "", art = "icon_hover" },
				disabled_texture = { file = "", art = "icon_disabled" },
				submenu = "basic_modal",
				active_ui = "command_activated_progress",
				recharge_ui = "command_recharge_progress"
			},
		},
	},
}

taskbar_entity_cmd_panel =
{
	{
		bind = "modal_switch",
		build_menu_modal = build_menu_commands,
		build_veteran_squads = make_veterancy_menu_commands("entity"),
		basic_modal = basic_modal_commands,
		confirm_retire_modal = confirm_retire_modal_commands,
		other = entity_commands,
	},
}


taskbar_squad_hold_cmd_panel =
{
	{
		bind = "group_selection_owner",
		owner = "self",
		content =
		{
			{
				bind = "group_selection_primary",
				content =
				{
					{
						bind = "modal_switch",
						build_menu_modal = build_menu_commands,
						build_veteran_squads = make_veterancy_menu_commands("squad"),
						basic_modal = basic_modal_commands,
						other =
						{
							{
								bind = "if_switch",
								check = { bind = "in_hold" },
								dependant = squad_hold_commands,
								exclusive = squad_commands,
							}
						}
					},
				},
			},
		}
	},
}


taskbar_hold_cmd_panel =
{
	{
		bind = "group_selection_primary",
		name = "entity hold commands",
		content =
		{
			{
				bind = "modal_switch",
				build_menu_modal = build_menu_commands,
				build_veteran_squads = make_veterancy_menu_commands("entity"),
				basic_modal = basic_modal_commands,
				confirm_retire_modal = confirm_retire_modal_commands,
				other =
				{
					{
						bind = "if_switch",
						name = "if check in hold for commands",
						check = { bind = "in_hold" },
						dependant = squad_hold_commands,
						exclusive = entity_commands,
					}
				}
			},
		},
	},
}


-- Just displays an 'empty' taskbar
taskbar_empty_selection =
{
	{ bind = "empty_portrait_image", ui = "portrait_building_art" },
}


-- Selects bindings valid depending on the various selection states.
selection =
{
	bind = "selection_switch",
	name = "selection bindings",
	-- Multi-squad selection
	selection_squads = use( taskbar_squad_display_panel, taskbar_squad_selection_panel, taskbar_squad_cmd_panel, taskbar_squad_production )
	{
	},
	-- Multi-entity selection
	selection_entities = use( taskbar_entity_display_panel, taskbar_entity_selection_panel, taskbar_entity_cmd_panel )
	{
	},
	-- Single-squad: Squad holds
	selection_squad_hold = use( taskbar_squad_display_panel, taskbar_hold_selection_panel, taskbar_squad_hold_cmd_panel, taskbar_squad_production )
	{
	},
	-- Single-entity: Building holds
	selection_entity_hold = use( taskbar_entity_display_panel, taskbar_hold_selection_panel, taskbar_entity_hold_production, taskbar_hold_cmd_panel )
	{
	},
	-- Single-squad: Buildings
	selection_squad_building = use( taskbar_entity_display_panel, taskbar_squad_selection_panel, taskbar_squad_cmd_panel, taskbar_squad_production )
	{
	},
	-- Single-entity: Buildings
	selection_structure = use( taskbar_entity_display_panel, taskbar_entity_selection_panel, taskbar_entity_production, taskbar_entity_cmd_panel )
	{
	},
	-- Single-entity: Resource
	selection_resources = use ( taskbar_entity_display_panel, taskbar_entity_cmd_panel )
	{
	},
	-- No selection at all.
	selection_empty = use( taskbar_empty_selection )
	{
	},
}


----------------------------------------------------------------------------------------
-- hint point bindings

group_list_hint_points =
{
	bind	= "hint_point_repeat",
	name	= "hint points",
	type	= "ingame",
	binder	= { type = "clone_list", clones = { { prototype = "info_hint_button" } } },
	content	= 
	{
		{ bind = "info_hint_button",  tt = tooltip_desc("$116061", "$116063") },
	},
}

group_list_taskbar_hint_points =
{
	bind	= "hint_point_repeat",
	name	= "taskbar hint points",
	type	= "taskbar",
	binder	= { type = "clone_list", clones = { { prototype = "taskbar_hint_button" } } },
	content	= 
	{
		{ bind = "info_hint_button",  tt = tooltip_desc("$116061", "$116063") },
	},
}

group_list_objective_hint_points =
{
	bind	= "hint_point_repeat",
	name	= "objective hint points",
	type	= "ingame_objectives",
	binder	= { type = "clone_list", clones = { { prototype = "objective_hint_button" } } },
	content	= 
	{
		{ bind = "info_hint_button",  tt = tooltip_desc("$116061", "$116063") },
	},
}

--------------------------------------------------------------------------------
-- in-game objectives

primary_objective_tooltip =
{
	bind = "primary_objective_tooltip",
	name = "primary objectives tooltip",
	ui = "primary_objective_tooltip",
	content =
	{
		{ bind = "objective_detail_title", ui = "txtObjectiveTitle_tt", objective_type = 0, },
		{ bind = "objective_detail_counter", ui = "txtCounter_tt", objective_type = 0, },
	}
}

group_objectives =
{
	bind = "group_objectives",
	name = "objectives",
	content =
	{
		{
			bind = "objectives_repeat",
			binder =
			{
				type = "clone_list",
				skip_invalid = false,
				clones =
				{
					{
						prototype = "group_objective_entry",
						children =
						{
							"btnPrimaryObjectiveIcon",
							"btnSecondaryObjectiveIcon",
							"btnMedalOpportunityIcon",
							"txtObjectiveCounter",
							"txtObjectiveTitle_tt",
							--"objective_hud_arrow",
						},
					},
				},
			},
			content =
			{
				{ bind = "objective_entry_group", },
				{ bind = "objective_icon", texture = { art = "" }, objective_type = 0, },
				{ bind = "objective_icon", texture = { art = "" }, objective_type = 1, },
				{ bind = "objective_icon", texture = { art = "" }, objective_type = 2, },
				{ bind = "objective_counter", },
				{ bind = "objective_tooltip_title", },
			},
		},
	}
}

group_objective_hud_arrow =
{
	bind = "objective_hud_arrow",
	ui = "objective_hud_arrow",
	arrow_n		= "objectives/objective_arrow_n",
	arrow_ne	= "objectives/objective_arrow_ne",
	arrow_e		= "objectives/objective_arrow_e",
	arrow_se	= "objectives/objective_arrow_se",
	arrow_s		= "objectives/objective_arrow_s",
	arrow_sw	= "objectives/objective_arrow_sw",
	arrow_w		= "objectives/objective_arrow_w",
	arrow_nw	= "objectives/objective_arrow_nw",

	secondary_obj_textures =
	{
		arrow_n		= "objectives/sec_objective_arrow_n",
		arrow_ne	= "objectives/sec_objective_arrow_ne",
		arrow_e		= "objectives/sec_objective_arrow_e",
		arrow_se	= "objectives/sec_objective_arrow_se",
		arrow_s		= "objectives/sec_objective_arrow_s",
		arrow_sw	= "objectives/sec_objective_arrow_sw",
		arrow_w		= "objectives/sec_objective_arrow_w",
		arrow_nw	= "objectives/sec_objective_arrow_nw",
	},
	
	corner_ratio = 0.25, -- this means that the "corners" of the bounding box are 25% of the width on each side (and same for height)
}

group_list_threat_arrows =
{
	bind = "threat_arrow_repeat",
	name = "threat arrows",
	binder = { type = "clone_list", clones = { { prototype = "threat_arrow", } } },
	content =
	{
		{
			bind = "threat_arrow",
			
			arrow_n		= "threat_arrows/threat_arrow_n",
			arrow_ne	= "threat_arrows/threat_arrow_ne",
			arrow_e		= "threat_arrows/threat_arrow_e",
			arrow_se	= "threat_arrows/threat_arrow_se",
			arrow_s		= "threat_arrows/threat_arrow_s",
			arrow_sw	= "threat_arrows/threat_arrow_sw",
			arrow_w		= "threat_arrows/threat_arrow_w",
			arrow_nw	= "threat_arrows/threat_arrow_nw",
			corner_ratio = 0.25, -- this means that the "corners" of the bounding box are 25% of the width on each side (and same for height)
		},
	},
}

--------------------------------------------------------------------------------
-- event cues

group_list_event_cues =
{
	bind = "group",
	name = "event cues",
	content =
	{
		{
			bind = "event_cue_repeat",
			name = "event cue buttons",
			binder = { type = "clone_list", clones = { { prototype = "event_cue_button" } } },
			content =
			{
				{ bind = "event_cue_button", texture = { art = "background" },},
			},
		},
	
		{
			bind = "event_cue_repeat",
			name = "event cue labels",
			binder = { type = "clone_list", clones = { { prototype = "event_cue_label" } } },
			content =
			{
				{ bind = "event_cue_label" },
			},
		},
	}
}

group_victory_points =
{
	bind = "group",
	content =
	{
		{ bind = "victory_point_ui", ui = "group_victory_points" },
		
		{ bind = "empty", ui = "victory_point_ticker_player", tt = tooltip_desc("$40773", "$40774") },
		{ bind = "empty", ui = "victory_point_ticker_enemy", tt = tooltip_desc( "$40773", "$40775" ) },
		{ bind = "empty", ui = "victory_point_button", tt = tooltip_desc("$40771", "$40772") },
	}
}

----------------------------------------------------------------------------------------
-- playback controls
playback_sim_rates = {0.25, 0.5, 1, 2, 4, 6, 8}

group_playback =
{
	bind = "playback_group",
	name = "playback",
	ui = "GROUP_playback",
	content =
	{
		{ bind = "playback_timer", ui = "pb_time_display", },
		{ bind = "playback_timeline", ui = "pb_timeline", name = "replay_progress", },					-- ADDED NAME FOR HIDE PROGRESS BAR FUNCTION
		{ bind = "playback_simrate_modifier", modtype = "slower", ui = "pb_slower", sim_rates = playback_sim_rates, },
		{ bind = "playback_simrate_modifier", modtype = "faster", ui = "pb_faster", sim_rates = playback_sim_rates, },
		{ bind = "playback_simrate_display", ui = "pb_simrate", },
		{ bind = "playback_simrate_pause", ui = "pb_playpause", },
		{ bind = "playback_fow_toggle", ui = "pb_fow", },
		{ bind = "playback_camera_follow_toggle", ui = "pb_camera_follow", },
		{ bind = "playback_player_selection", ui = "pb_player_selection", },
		{ bind = "playback_minimize", ui = "pb_minimize_playback", },
		{ bind = "playback_taskbar_toggle", ui = "pb_taskbar", },
		{ bind = "playback_cinematic_toggle", ui = "pb_cinematic_mode", },
		{ bind = "playback_bg_taskbar", ui = "pb_background_tskbr", },
		{ bind = "playback_bg_no_taskbar", ui = "pb_background_no_tskbr", },
	},
}

----------------------------------------------------------------------------------------
-- minimized playback controls
group_playback_min =
{
	bind = "playback_group_min",
	name = "playbackmin",
	ui = "GROUP_playback_min",
	content =
	{
		{ bind = "playback_maximize", ui = "pb_maximize_playback", },
	},
}

----------------------------------------------------------------------------------------
-- The root binding.  Contains all other bindings.

root =
{
    bind = "group",
	name = "ROOT",
    content =
    {
		-- empty binding just to be able to hintpoint/flash the command area
		{
			bind = "empty",
			ui = "group_command",
			name = "command area",
		},
		
		-- all static bindings (generally always valid)
        static,
		
		-- player info; including commands, abilities, upgrades, timers, hero icons
		player_info,

		-- all selection-dependant bindings
		selection,
		
		-- hint point buttons
		group_list_hint_points,
		
		-- event cue buttons
		group_list_event_cues,
		
		-- objective buttonsf
		group_objectives,
		
		-- victory point indicators
		group_victory_points,
		
		-- objective HUD arrow
		group_objective_hud_arrow,
		
		-- SCAR threat arrows
		group_list_threat_arrows,
		
		-- taskbar hintpoints (must come later because it depends on other bindings being active)
		group_list_taskbar_hint_points,
		
		-- in-world hintpoints used for objectives. different binding because they use different widgets
		group_list_objective_hint_points,
		
		-- tooltip bindings for mouseover on widgets, entities, and cover
		-- must be last as tooltip depends on other bindings being active
		{ bind = "tooltip_widget" },
		
		-- playback controls
		group_playback,

		-- minimized playback controls
		group_playback_min,
	}
}

--
----------------------------------------------------------------------------------------

