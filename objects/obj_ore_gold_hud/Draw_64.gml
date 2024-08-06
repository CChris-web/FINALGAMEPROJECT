/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1C2B2379
/// @DnDArgument : "obj" "obj_miner_player"
/// @DnDSaveInfo : "obj" "obj_miner_player"
var l1C2B2379_0 = false;
l1C2B2379_0 = instance_exists(obj_miner_player);
if(l1C2B2379_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 3CDB97F9
	/// @DnDParent : 1C2B2379
	exit;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2F4E58D3
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0CFC60EA
/// @DnDArgument : "font" "OpenSans"
/// @DnDSaveInfo : "font" "OpenSans"
draw_set_font(OpenSans);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5FB8DDB3
/// @DnDArgument : "x" "30"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-15"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Gold Ore ""
/// @DnDArgument : "var" "obj_miner_player.gold_ore"
draw_text(x + 30, y + -15, string("Gold Ore ") + string(obj_miner_player.gold_ore));