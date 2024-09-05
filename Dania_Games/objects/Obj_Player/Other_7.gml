/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6EC49E83
/// @DnDArgument : "expr" "sprite_index"
var l6EC49E83_0 = sprite_index;
switch(l6EC49E83_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 17C97F67
	/// @DnDParent : 6EC49E83
	/// @DnDArgument : "const" "Player_Jump"
	case Player_Jump:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 791D15C0
		/// @DnDParent : 17C97F67
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 723318CC
		/// @DnDParent : 17C97F67
		/// @DnDArgument : "value" "image_number-1"
		/// @DnDArgument : "instvar" "11"
		image_index = image_number-1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4A74F1FE
	/// @DnDParent : 6EC49E83
	/// @DnDArgument : "const" "Player_Fall"
	case Player_Fall:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6CE1AC9E
		/// @DnDParent : 4A74F1FE
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 31FCD32E
		/// @DnDParent : 4A74F1FE
		/// @DnDArgument : "value" "image_number-1"
		/// @DnDArgument : "instvar" "11"
		image_index = image_number-1;
		break;
}