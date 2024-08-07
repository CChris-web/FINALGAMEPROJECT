/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5866214D
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"
move_x = keyboard_check(vk_right) - keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2C4F399E
/// @DnDArgument : "expr" "move_x * walk_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * walk_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3E410A32
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target_temp" "1"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
var l3E410A32_0 = instance_place(x + 0, y + 2, [obj_mine_rock]);
if ((l3E410A32_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15F34115
	/// @DnDComment : reset when jit the ground
	/// @DnDParent : 3E410A32
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 77CB3C0C
	/// @DnDParent : 3E410A32
	/// @DnDArgument : "key" "vk_up"
	var l77CB3C0C_0;
	l77CB3C0C_0 = keyboard_check(vk_up);
	if (l77CB3C0C_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A53CB44
		/// @DnDParent : 77CB3C0C
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1F1F4B25
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35C8EF49
	/// @DnDParent : 1F1F4B25
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6E3359A5
		/// @DnDComment : gravity
		/// @DnDParent : 35C8EF49
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 29D15642
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "obj_mine_rock"
/// @DnDSaveInfo : "object" "obj_mine_rock"
move_and_collide(move_x, move_y, obj_mine_rock,4,0,0,walk_speed,jump_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E20891B
/// @DnDArgument : "expr" "x "
/// @DnDArgument : "var" "obj_pickaxe.x"
obj_pickaxe.x = x ;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 567328D9
/// @DnDArgument : "expr" "y-10"
/// @DnDArgument : "var" "obj_pickaxe.y"
obj_pickaxe.y = y-10;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F48B764
/// @DnDArgument : "var" "using_light"
/// @DnDArgument : "op" "2"
if(using_light > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B1107B3
	/// @DnDParent : 2F48B764
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "var" "obj_light.x"
	obj_light.x = x;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A6E16E0
	/// @DnDParent : 2F48B764
	/// @DnDArgument : "expr" "y - 35"
	/// @DnDArgument : "var" "obj_light.y"
	obj_light.y = y - 35;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 68696695
	/// @DnDParent : 2F48B764
	/// @DnDArgument : "key" "ord("Q")"
	var l68696695_0;
	l68696695_0 = keyboard_check_pressed(ord("Q"));
	if (l68696695_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28CB7614
		/// @DnDParent : 68696695
		/// @DnDArgument : "var" "using_light"
		using_light = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7E114FB6
		/// @DnDApplyTo : {obj_light}
		/// @DnDParent : 68696695
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_light_off"
		/// @DnDSaveInfo : "spriteind" "spr_light_off"
		with(obj_light) {
		sprite_index = spr_light_off;
		image_index += 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 217B6DAF
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 065EBF3D
	/// @DnDParent : 217B6DAF
	/// @DnDArgument : "var" "using_light"
	if(using_light == 0)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 2DBFC027
		/// @DnDParent : 065EBF3D
		/// @DnDArgument : "key" "ord("Q")"
		var l2DBFC027_0;
		l2DBFC027_0 = keyboard_check_pressed(ord("Q"));
		if (l2DBFC027_0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C7D6DF2
			/// @DnDParent : 2DBFC027
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "using_light"
			using_light = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 448F533E
			/// @DnDApplyTo : {obj_light}
			/// @DnDParent : 2DBFC027
			/// @DnDArgument : "imageind_relative" "1"
			/// @DnDArgument : "spriteind" "spr_light"
			/// @DnDSaveInfo : "spriteind" "spr_light"
			with(obj_light) {
			sprite_index = spr_light;
			image_index += 0;
			}
		}
	}
}