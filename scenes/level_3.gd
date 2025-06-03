extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("level_3_timeline")
	Dialogic.timeline_ended.connect(_on_timeline_ended)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pause"):
		$CanvasLayer/PauseMenu.visible=!$CanvasLayer/PauseMenu.visible
		get_tree().paused=!get_tree().paused

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void: 
	pass


func _on_timeline_ended():
	savegame()
	$CanvasLayer/startbar.visible=false
	$CanvasLayer/Victorymenu.visible=true
	pass

func savegame():
	var savedata=SaveData.new()
	var stars=$CanvasLayer/startbar.current_stars
	if savedata.saveexists():
		savedata.starslist=savedata.loaddat()
	savedata.updateStars(3,stars)
	savedata.savedat()
	


func restart():
	Dialogic.clear()
	if get_tree():
		get_tree().reload_current_scene()
