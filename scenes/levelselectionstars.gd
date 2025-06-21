extends Control

@export var level:int
var stars:int=0
var locked=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	loadgame()

func loadgame():
	var savedata=SaveData.new()
	if savedata.saveexists():
		savedata.starslist=savedata.loaddat()
	stars=savedata.starslist[level-1]
	if stars==-1:
		$lock.visible=true
		locked=true
	else:
		displaystars(stars)
	

func displaystars(stars):
	if stars>=1:
		$HBoxContainer/star1.visible=true
	if stars>=2:
		$HBoxContainer/star2.visible=true
	if stars==3:
		$HBoxContainer/star3.visible=true
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
