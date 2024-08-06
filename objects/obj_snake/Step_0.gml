/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 76A09BCB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
var l76A09BCB_0 = instance_place(x + 0, y + 2, [obj_mine_rock]);
if ((l76A09BCB_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DFD292C
	/// @DnDParent : 76A09BCB
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 116B43CC
	/// @DnDParent : 76A09BCB
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y" "2"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_mine_rock"
	/// @DnDSaveInfo : "object" "obj_mine_rock"
	var l116B43CC_0 = instance_place(x + (25 * sign(move_x)), y + 2, [obj_mine_rock]);
	if ((l116B43CC_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 66BA4FF9
		/// @DnDParent : 116B43CC
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 68E8D88A
	/// @DnDParent : 76A09BCB
	/// @DnDArgument : "x" "x + (50 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "obj_mine_rock"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_mine_rock"
	var l68E8D88A_0 = instance_place(x + (50 * sign(move_x)), y + 50, [obj_mine_rock]);
	if (!(l68E8D88A_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04E909EE
		/// @DnDParent : 68E8D88A
		/// @DnDArgument : "expr" "move_x * -1"
		/// @DnDArgument : "var" "move_x"
		move_x = move_x * -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 00BC7E4A
		/// @DnDParent : 68E8D88A
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 62707873
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18C2A62D
	/// @DnDParent : 62707873
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F062E28
		/// @DnDParent : 18C2A62D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "move_y"
		move_y = 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 21304F6E
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
move_and_collide(move_x, move_y, obj_mine_rock,4,0,0,walk_speed,jump_speed);