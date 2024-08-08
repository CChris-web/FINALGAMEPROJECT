/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5EFB3CE1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
var l5EFB3CE1_0 = instance_place(x + 0, y + 2, [obj_mine_rock]);
if ((l5EFB3CE1_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20C56D14
	/// @DnDComment : reset when jit the ground
	/// @DnDParent : 5EFB3CE1
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61497422
	/// @DnDParent : 5EFB3CE1
	/// @DnDArgument : "var" "alarming"
	if(alarming == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 541261E4
		/// @DnDParent : 61497422
		/// @DnDArgument : "steps" "50"
		alarm_set(0, 50);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D9B8B22
		/// @DnDParent : 61497422
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "alarming"
		alarming = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 798881BA
/// @DnDComment : gravity
/// @DnDArgument : "expr" "0.05"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "move_y"
move_y += 0.05;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 6DE6BA3E
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
move_and_collide(move_x, move_y, obj_mine_rock,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 48D5CCD7
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "move_y"