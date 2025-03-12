/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43ED1171
/// @DnDComment : 1 would be pressing right $(13_10)-1 would be pressing left$(13_10)0 would be no input
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "keyboard_check(vk_right) - keyboard_check(vk_left)"
/// @DnDArgument : "var" "move_x"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 0D6664EE
/// @DnDArgument : "msg" "move_x"
show_debug_message(string(move_x));

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 36E0EDC3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "collision_tilemap"
var l36E0EDC3_0 = instance_place(x + 0, y + 2, [collision_tilemap]);
if ((l36E0EDC3_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0FEAF20B
	/// @DnDComment : Reset the falling speed$(13_10)on movement y$(13_10)when you land on ground
	/// @DnDParent : 36E0EDC3
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0E4855EF
	/// @DnDParent : 36E0EDC3
	/// @DnDArgument : "x" "x + (25 * sign(move_x))"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "collision_tilemap"
	var l0E4855EF_0 = instance_place(x + (25 * sign(move_x)), y + 0, [collision_tilemap]);
	if ((l0E4855EF_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E1C70EA
		/// @DnDComment : Jump
		/// @DnDParent : 0E4855EF
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 0634CF2B
	/// @DnDParent : 36E0EDC3
	/// @DnDArgument : "x" "x + (30 * sign(move_x))"
	/// @DnDArgument : "y" "y + 50"
	/// @DnDArgument : "object" "collision_tilemap"
	/// @DnDArgument : "not" "1"
	var l0634CF2B_0 = instance_place(x + (30 * sign(move_x)), y + 50, [collision_tilemap]);
	if (!(l0634CF2B_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75D2EEA3
		/// @DnDComment : Jump
		/// @DnDParent : 0634CF2B
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 40D168D0
	/// @DnDDisabled : 1
	/// @DnDParent : 36E0EDC3
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 43F21E1E
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45C58001
	/// @DnDParent : 43F21E1E
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 24C9C24C
		/// @DnDComment : Add gravity
		/// @DnDParent : 45C58001
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 439EB5BE
/// @DnDApplyTo : {Obj_Player}
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "maxxmove" "walk_speed"
/// @DnDArgument : "maxymove" "jump_speed"
/// @DnDArgument : "object" "collision_tilemap"
move_and_collide(move_x, move_y, collision_tilemap,4,0,0,walk_speed,jump_speed);