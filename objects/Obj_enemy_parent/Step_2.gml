/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F7DAB31
/// @DnDComment : are we jumping
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "1"
if(move_y < 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4AFADE59
	/// @DnDParent : 5F7DAB31
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_jump_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_jump_1"
	sprite_index = spr_enemy_jump_1;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 771EDB78
/// @DnDComment : if falling
/// @DnDArgument : "var" "move_y"
/// @DnDArgument : "op" "2"
if(move_y > 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5367C270
	/// @DnDParent : 771EDB78
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_idle_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_idle_1"
	sprite_index = spr_enemy_idle_1;
	image_index += 0;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 72AAFD6D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l72AAFD6D_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l72AAFD6D_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7ED3C40E
	/// @DnDComment : going left
	/// @DnDParent : 72AAFD6D
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "-1"
	if(move_x <= -1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 54B75B18
		/// @DnDParent : 7ED3C40E
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
		sprite_index = spr_enemy_walk_1;
		image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57233896
	/// @DnDComment : going right
	/// @DnDParent : 72AAFD6D
	/// @DnDArgument : "var" "move_x"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(move_x >= 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2255366F
		/// @DnDParent : 57233896
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
		/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
		sprite_index = spr_enemy_walk_1;
		image_index += 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 36B90A42
/// @DnDComment : going left
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-1"
if(move_x <= -1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 478239AC
	/// @DnDParent : 36B90A42
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
	sprite_index = spr_enemy_walk_1;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 3519E530
	/// @DnDParent : 36B90A42
	/// @DnDArgument : "xscale" "-1 * abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = -1 * abs(image_xscale);
	image_yscale = image_yscale;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 255EA6DE
/// @DnDComment : going right
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(move_x >= 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2D7F7158
	/// @DnDParent : 255EA6DE
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_enemy_walk_1"
	/// @DnDSaveInfo : "spriteind" "spr_enemy_walk_1"
	sprite_index = spr_enemy_walk_1;
	image_index += 0;

	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 5ED5360F
	/// @DnDParent : 255EA6DE
	/// @DnDArgument : "xscale" "abs(image_xscale)"
	/// @DnDArgument : "yscale" "image_yscale"
	image_xscale = abs(image_xscale);
	image_yscale = image_yscale;
}