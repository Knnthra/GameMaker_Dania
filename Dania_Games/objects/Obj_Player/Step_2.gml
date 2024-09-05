/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 02272BBD
event_inherited();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7BD140DD
/// @DnDArgument : "expr" "sprite_index"
var l7BD140DD_0 = sprite_index;
switch(l7BD140DD_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1434CE4C
	/// @DnDParent : 7BD140DD
	/// @DnDArgument : "const" "Player_Walk"
	case Player_Walk:
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 16DC9A8F
		/// @DnDParent : 1434CE4C
		image_speed = 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 056F2775
		/// @DnDParent : 1434CE4C
		/// @DnDArgument : "var" "vel_x"
		if(vel_x == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 039761AE
			/// @DnDParent : 056F2775
			/// @DnDArgument : "value" "Player_Idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = Player_Idle;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B510E58
		/// @DnDParent : 1434CE4C
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(vel_y > 1)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 7677CEC4
			/// @DnDParent : 1B510E58
			/// @DnDArgument : "spriteind" "Player_Fall"
			/// @DnDSaveInfo : "spriteind" "Player_Fall"
			sprite_index = Player_Fall;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 5BED3B8B
			/// @DnDParent : 1B510E58
			image_speed = 1;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 003CD29F
	/// @DnDParent : 7BD140DD
	/// @DnDArgument : "const" "Player_Jump"
	case Player_Jump:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FA038EA
		/// @DnDParent : 003CD29F
		/// @DnDArgument : "var" "vel_y"
		/// @DnDArgument : "op" "4"
		if(vel_y >= 0)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 0A4A3F55
			/// @DnDParent : 3FA038EA
			/// @DnDArgument : "spriteind" "Player_Fall"
			/// @DnDSaveInfo : "spriteind" "Player_Fall"
			sprite_index = Player_Fall;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 04A908CC
			/// @DnDParent : 3FA038EA
			image_speed = 1;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 71F5E3CF
	/// @DnDParent : 7BD140DD
	/// @DnDArgument : "const" "Player_Fall"
	case Player_Fall:
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 23E7452D
		/// @DnDParent : 71F5E3CF
		/// @DnDArgument : "expr" "grounded"
		if(grounded)
		{
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3739E35A
			/// @DnDParent : 23E7452D
			/// @DnDArgument : "value" "Player_Idle"
			/// @DnDArgument : "instvar" "10"
			sprite_index = Player_Idle;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 46333324
			/// @DnDParent : 23E7452D
			image_speed = 1;
		}
		break;
}