extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(get_tree().paused)
	pass


func _on_level_1_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")


func _on_level_2_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")


func _on_level_3_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")


func _on_level_4_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_4.tscn")


func _on_level_5_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_5.tscn")
