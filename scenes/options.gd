extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_close_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_audio_close_button_pressed() -> void:
	$audiobg.visible=false


func _on_video_close_button_pressed() -> void:
	$videobg.visible=false


func _on_policy_close_button_pressed() -> void:
	$policybg.visible=false


func _on_audio_pressed() -> void:
	$audiobg.visible=true


func _on_video_pressed() -> void:
	$videobg.visible=true

func _on_policy_pressed() -> void:
	$policybg.visible=true
