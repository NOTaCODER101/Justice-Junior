extends Control

@export var nextlevel:PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_next_button_down() -> void:
	get_tree().change_scene_to_packed(nextlevel)


func _on_exit_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")


func _on_retry_button_down() -> void:
	$"../../".restart()
