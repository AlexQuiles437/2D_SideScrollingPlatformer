/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 5D94A099
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 54439DE0
/// @DnDApplyTo : other
/// @DnDArgument : "x" "16"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "16"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF0FCBFF"
with(other) effect_create_below(3, x + 16, y + 16, 1, $FF0FCBFF & $ffffff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BE12896
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "coins"
coins += 1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 72FE2E51
/// @DnDArgument : "soundid" "Pickup_Coin"
/// @DnDSaveInfo : "soundid" "Pickup_Coin"
audio_play_sound(Pickup_Coin, 0, 0, 1.0, undefined, 1.0);