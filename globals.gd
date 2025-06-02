extends Node

var stars=0
var path:String="user://Options.txt"
@onready var overall_music=preload("res://assets/sounds/Background Music for Visual Novels vol.1/acoustic chill.mp3")

func saveexists():
	return FileAccess.file_exists(path)

func loadoptions():
	var file=FileAccess.open(path,FileAccess.READ)
	return file.get_var()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if saveexists():
		var olist=loadoptions()
		var music_index=AudioServer.get_bus_index("Music")
		var sound_index=AudioServer.get_bus_index("Sound")
		var sfx_index=AudioServer.get_bus_index("SFX")
		AudioServer.set_bus_volume_linear(music_index,olist[0])
		AudioServer.set_bus_volume_linear(sound_index,olist[1])
		AudioServer.set_bus_volume_linear(sfx_index,olist[2])
