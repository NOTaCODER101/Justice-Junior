extends Node2D

var restarted=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused=false
	Dialogic.start("level_1_timeline")
	Dialogic.timeline_ended.connect(_on_timeline_ended)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		$CanvasLayer/PauseMenu.visible=!$CanvasLayer/PauseMenu.visible
		get_tree().paused=!get_tree().paused

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timeline_ended():
	if !restarted:
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func restart():
	restarted=true
	Dialogic.clear()
	Dialogic.end_timeline()
	if get_tree():
		get_tree().reload_current_scene()
	
