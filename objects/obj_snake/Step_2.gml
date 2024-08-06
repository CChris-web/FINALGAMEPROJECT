/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 532FF7FC
/// @DnDComment : move_y > 0 ||$(13_10)(FALLING)
/// @DnDArgument : "expr" "move_y < 0"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 57180FE7
	/// @DnDParent : 532FF7FC
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_snake_jump"
	/// @DnDSaveInfo : "spriteind" "spr_snake_jump"
	sprite_index = spr_snake_jump;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 09086ADB
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7DD4A138
	/// @DnDParent : 09086ADB
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 06401963
		/// @DnDParent : 7DD4A138
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_snake_slither"
		/// @DnDSaveInfo : "spriteind" "spr_snake_slither"
		sprite_index = spr_snake_slither;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 534087CD
		/// @DnDParent : 7DD4A138
		/// @DnDArgument : "xscale" "-1*abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = -1*abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70C15E25
	/// @DnDParent : 09086ADB
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 235091F3
		/// @DnDParent : 70C15E25
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_snake_slither"
		/// @DnDSaveInfo : "spriteind" "spr_snake_slither"
		sprite_index = spr_snake_slither;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 2E62A221
		/// @DnDParent : 70C15E25
		/// @DnDArgument : "xscale" "abs(image_xscale)"
		/// @DnDArgument : "yscale" "image_yscale"
		image_xscale = abs(image_xscale);
		image_yscale = image_yscale;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31C147A3
	/// @DnDParent : 09086ADB
	/// @DnDArgument : "var" "move_x"
	if(move_x == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3A0B6BE4
		/// @DnDParent : 31C147A3
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_snake_idle"
		/// @DnDSaveInfo : "spriteind" "spr_snake_idle"
		sprite_index = spr_snake_idle;
		image_index += 0;
	}
}