extends CanvasLayer


func _ready():
	$AnimationPlayer.play("fade_in")
		

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "fade_in":
		await get_tree().create_timer(2.5).timeout
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
