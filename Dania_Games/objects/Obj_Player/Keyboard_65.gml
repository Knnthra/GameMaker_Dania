/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44329A00
/// @DnDArgument : "expr" "-move_speed"
/// @DnDArgument : "var" "vel_x"
vel_x = -move_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 66F9FEE1
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "value" "Player_Fall"
if(sprite_index == Player_Fall)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2914C3A8
	/// @DnDParent : 66F9FEE1
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 61286D1F
/// @DnDArgument : "expr" "grounded"
if(grounded)
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0A4FFB78
	/// @DnDParent : 61286D1F
	/// @DnDArgument : "value" "Player_Walk"
	/// @DnDArgument : "instvar" "10"
	sprite_index = Player_Walk;
}