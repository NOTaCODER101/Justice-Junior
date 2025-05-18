extends Control

@export var current_level:String=""
@export var current_timeline:String=""
@export var next_level:String=""

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_resume_button_down() -> void:
	self.visible=!self.visible
	get_tree().paused=!get_tree().paused


func _on_exit_button_down() -> void:
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")


func _on_retry_button_down() -> void:
	$"../..".restart()
