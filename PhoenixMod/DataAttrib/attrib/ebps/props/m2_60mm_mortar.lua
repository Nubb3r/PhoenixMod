GameData = Inherit([[]])
GameData["ability_ext"] = Reference([[ebpextensions\ability_ext.lua]])
GameData["ability_ext"]["abilities"]["ability_01"] = [[abilities\ally_sync_mortar_barrage.lua]]
GameData["ability_ext"]["abilities"]["ability_02"] = [[abilities\ally_mortar_smoke_barrage.lua]]
GameData["ability_ext"]["abilities"]["ability_03"] = [[abilities\axis_mortar_smoke_barrage.lua]]
GameData["ability_ext"]["abilities"]["ability_17"] = [[abilities\mortar_hold_fire.lua]]
GameData["action_apply_ext"] = Reference([[ebpextensions\action_apply_ext.lua]])
GameData["action_apply_ext"]["actions"]["critical_actions"]["action_01"] = Reference([[action\critical_action\animator_set_action.lua]])
GameData["action_apply_ext"]["actions"]["critical_actions"]["action_01"]["action_name"] = [[UI\Selection\selectover_allies_ally]]
GameData["combat_ext"] = Reference([[ebpextensions\combat_ext.lua]])
GameData["combat_ext"]["hardpoints"]["hardpoint_01"]["weapon_table"]["weapon_01"]["origin"]["y"] = 6
GameData["combat_ext"]["hardpoints"]["hardpoint_01"]["weapon_table"]["weapon_01"]["weapon"] = [[weapon\allies\ballistic_weapon\mortar\m2_60mm_mortar.lua]]
GameData["combat_ext"]["hardpoints"]["hardpoint_02"]["parent_hardpoint"] = 1
GameData["combat_ext"]["hardpoints"]["hardpoint_02"]["weapon_table"]["weapon_01"]["origin"]["y"] = 6
GameData["combat_ext"]["hardpoints"]["hardpoint_02"]["weapon_table"]["weapon_01"]["weapon"] = [[weapon\allies\ballistic_weapon\mortar\m2_60mm_mortar_barrage.lua]]
GameData["combat_ext"]["hardpoints"]["hardpoint_03"]["parent_hardpoint"] = 1
GameData["combat_ext"]["hardpoints"]["hardpoint_03"]["weapon_table"]["weapon_01"]["origin"]["y"] = 6
GameData["combat_ext"]["hardpoints"]["hardpoint_03"]["weapon_table"]["weapon_01"]["weapon"] = [[weapon\allies\ballistic_weapon\mortar\smoke_m2_60mm_mortar.lua]]
GameData["combat_ext"]["hardpoints"]["hardpoint_04"]["weapon_table"]["weapon_01"]["origin"]["y"] = 6
GameData["cover_ext"] = Reference([[ebpextensions\cover_ext.lua]])
GameData["entity_blueprint_ext"] = Reference([[ebpextensions\entity_blueprint_ext.lua]])
GameData["entity_blueprint_ext"]["animator"] = [[Races\Allies\Soldiers\Weapons\60mmMortar]]
GameData["entity_blueprint_ext"]["simbox"] = Reference([[]])
GameData["entity_blueprint_ext"]["simbox"]["offset"] = Reference([[]])
GameData["entity_blueprint_ext"]["simbox"]["offset"]["x"] = 0.002490000101
GameData["entity_blueprint_ext"]["simbox"]["offset"]["y"] = 0.509469986
GameData["entity_blueprint_ext"]["simbox"]["offset"]["z"] = -0.03050000034
GameData["entity_blueprint_ext"]["simbox"]["scale"] = Reference([[]])
GameData["entity_blueprint_ext"]["simbox"]["scale"]["x"] = 0.5081999898
GameData["entity_blueprint_ext"]["simbox"]["scale"]["y"] = 0.5694000125
GameData["entity_blueprint_ext"]["simbox"]["scale"]["z"] = 0.57427001
GameData["entity_blueprint_ext"]["suaTimeStamp"] = Reference([[]])
GameData["entity_blueprint_ext"]["suaTimeStamp"]["filename"] = [[Data:Art\Models\Races\Allies\Soldiers\Weapons\60mmMortar.sua]]
GameData["entity_blueprint_ext"]["suaTimeStamp"]["fileTime"] = "$1154286313"
GameData["health_ext"] = Reference([[ebpextensions\health_ext.lua]])
GameData["health_ext"]["hitpoints"] = 300
GameData["hit_object_ext"] = Reference([[ebpextensions\hit_object_ext.lua]])
GameData["hit_object_ext"]["hit_material"] = [[hit_material\metal.lua]]
GameData["hit_object_ext"]["hit_percentage"] = 0.5
GameData["hit_object_ext"]["pass_through"] = true 
GameData["hit_object_ext"]["projectile_pass_through"]["tp_homing"] = true 
GameData["hit_object_ext"]["projectile_pass_through"]["tp_homing_inf"] = true 
GameData["hit_object_ext"]["projectile_pass_through"]["tp_sticky"] = true 
GameData["hit_object_ext"]["projectile_pass_through"]["tp_throw"] = true 
GameData["marker_ext"] = Reference([[ebpextensions\marker_ext.lua]])
GameData["marker_ext"]["Markers"] = Reference([[]])
GameData["marker_ext"]["Markers"]["file_timestamp"] = Reference([[]])
GameData["marker_ext"]["Markers"]["file_timestamp"]["filename"] = [[Data:Art\Models\Races\Allies\Soldiers\Weapons\60mmMortar.muax]]
GameData["marker_ext"]["Markers"]["file_timestamp"]["fileTime"] = "$1154307981"
GameData["marker_ext"]["Markers"]["Marker000"] = Reference([[]])
GameData["marker_ext"]["Markers"]["Marker000"]["destructibleBuildingPanelID"] = -1
GameData["marker_ext"]["Markers"]["Marker000"]["loadingSlotTypeID"] = -1
GameData["marker_ext"]["Markers"]["Marker000"]["name"] = [[mortar_sync]]
GameData["marker_ext"]["Markers"]["Marker000"]["subtype"] = [[]]
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m00"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m01"] = -7.89264802e-025
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m02"] = 1
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m10"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m11"] = 1
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m12"] = -1.910685465e-015
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m20"] = -1
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m21"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m22"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m30"] = 0
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m31"] = 0
GameData["marker_ext"]["Markers"]["Marker000"]["transform_m32"] = 0
GameData["marker_ext"]["Markers"]["Marker000"]["type"] = [[]]
GameData["marker_ext"]["Markers"]["Marker001"] = Reference([[]])
GameData["marker_ext"]["Markers"]["Marker001"]["destructibleBuildingPanelID"] = -1
GameData["marker_ext"]["Markers"]["Marker001"]["loadingSlotTypeID"] = -1
GameData["marker_ext"]["Markers"]["Marker001"]["name"] = [[loader_sync]]
GameData["marker_ext"]["Markers"]["Marker001"]["subtype"] = [[]]
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m00"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m01"] = -7.89264802e-025
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m02"] = 1
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m10"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m11"] = 1
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m12"] = -1.910685465e-015
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m20"] = -1
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m21"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m22"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m30"] = 0.6412779689
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m31"] = 0
GameData["marker_ext"]["Markers"]["Marker001"]["transform_m32"] = -0.001131471945
GameData["marker_ext"]["Markers"]["Marker001"]["type"] = [[]]
GameData["marker_ext"]["Markers"]["Marker002"] = Reference([[]])
GameData["marker_ext"]["Markers"]["Marker002"]["destructibleBuildingPanelID"] = -1
GameData["marker_ext"]["Markers"]["Marker002"]["loadingSlotTypeID"] = -1
GameData["marker_ext"]["Markers"]["Marker002"]["name"] = [[gunner_sync]]
GameData["marker_ext"]["Markers"]["Marker002"]["subtype"] = [[]]
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m00"] = 1.311341578e-007
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m01"] = 5.199785366e-022
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m02"] = -1
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m10"] = 4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m11"] = 1
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m12"] = 5.732056607e-015
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m20"] = 1
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m21"] = -4.371138829e-008
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m22"] = 1.311341578e-007
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m30"] = -0.7816929221
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m31"] = 0
GameData["marker_ext"]["Markers"]["Marker002"]["transform_m32"] = -0.006237503607
GameData["marker_ext"]["Markers"]["Marker002"]["type"] = [[]]
GameData["modifier_apply_ext"] = Reference([[ebpextensions\modifier_apply_ext.lua]])
GameData["modifier_ext"] = Reference([[ebpextensions\modifier_ext.lua]])
GameData["moving_ext"] = Reference([[ebpextensions\moving_ext.lua]])
GameData["moving_ext"]["turn_plan"] = [[turn_plan\human.lua]]
GameData["obj_cover_ext"] = Reference([[ebpextensions\obj_cover_ext.lua]])
GameData["obj_cover_ext"]["cover_type"] = [[type_cover\tp_light.lua]]
GameData["obj_cover_ext"]["is_obj_cover"] = true 
GameData["obj_cover_ext"]["use_simbox_range_plus_spots"] = true 
GameData["sim_entity_ext"] = Reference([[ebpextensions\sim_entity_ext.lua]])
GameData["sim_entity_ext"]["is_in_spatial_bucket"] = true 
GameData["team_weapon_ext"] = Reference([[ebpextensions\team_weapon_ext.lua]])
GameData["team_weapon_ext"]["attach_state_name"] = [[Mortar_Attachment]]
GameData["team_weapon_ext"]["capture_squad_blueprint_allied"] = [[sbps\races\allies\soldiers\heavy_weapon_capture_squad_mortar.lua]]
GameData["team_weapon_ext"]["capture_squad_blueprint_allied_commonwealth"] = [[sbps\races\allies_commonwealth\soldiers\heavy_weapon_capture_squad_mortar.lua]]
GameData["team_weapon_ext"]["capture_squad_blueprint_axis"] = [[sbps\races\axis\soldiers\heavy_weapon_capture_squad_mortar_axis.lua]]
GameData["team_weapon_ext"]["capture_squad_blueprint_axis_panzer_elite"] = [[sbps\races\axis_panzer_elite\soldiers\heavy_weapon_capture_squad_mortar_axis.lua]]
GameData["team_weapon_ext"]["max_capture_crew_size"] = 3
GameData["team_weapon_ext"]["min_capture_crew_size"] = 2
GameData["team_weapon_ext"]["on_abandon_action"]["critical_actions"]["action_01"] = Reference([[action\critical_action\make_dead.lua]])
GameData["team_weapon_ext"]["ownership_state_name"] = [[Mortar_Ownership]]
GameData["team_weapon_ext"]["role_list"]["role_01"]["join_sync_marker"] = [[Gunner_Sync]]
GameData["team_weapon_ext"]["role_list"]["role_01"]["leave_sync_marker"] = [[Gunner_Sync]]
GameData["team_weapon_ext"]["role_list"]["role_01"]["required"] = true 
GameData["team_weapon_ext"]["role_list"]["role_01"]["role_name"] = [[Gunner]]
GameData["team_weapon_ext"]["role_list"]["role_02"]["join_sync_marker"] = [[Loader_Sync]]
GameData["team_weapon_ext"]["role_list"]["role_02"]["leave_sync_marker"] = [[Loader_Sync]]
GameData["team_weapon_ext"]["role_list"]["role_02"]["required"] = true 
GameData["team_weapon_ext"]["role_list"]["role_02"]["role_name"] = [[Loader]]
GameData["team_weapon_ext"]["role_state_name"] = [[Mortar_Role]]
GameData["team_weapon_ext"]["sync_target_name"] = [[Mortar_Target]]
GameData["team_weapon_ext"]["team_weapon_type"] = [[tp_carried]]
GameData["team_weapon_ext"]["weapon_usage_state_name"] = [[Mortar_Manned]]
GameData["type_ext"] = Reference([[ebpextensions\type_ext.lua]])
GameData["type_ext"]["type_target_assault"] = Reference([[type_target_assault\tp_vehicle.lua]])
GameData["type_ext"]["type_target_critical"] = Reference([[type_target_critical\tp_weapon_crew.lua]])
GameData["type_ext"]["type_target_weapon"] = Reference([[type_target_weapon\tp_team_weapon.lua]])
GameData["ui_ext"] = Reference([[ebpextensions\ui_ext.lua]])
GameData["ui_ext"]["cullsphere_selectable"] = true 
GameData["ui_ext"]["help_text"] = "$153050" -- M2 60mm Mortar
GameData["ui_ext"]["icon_name"] = [[portraits\weapon_blank]]
GameData["ui_ext"]["screen_name"] = "$153051" -- M2 60mm Mortar
GameData["ui_ext"]["selection_name"] = [[prop]]
GameData["ui_ext"]["selection_type"] = [[single_entity_select]]
GameData["ui_ext"]["speech_code_2"]["code_1"] = [[mr]]
GameData["ui_ext"]["speech_code_3"]["code_1"] = [[mtr]]
