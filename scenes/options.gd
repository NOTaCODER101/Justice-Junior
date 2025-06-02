extends Control

var path:String="user://Options.txt"
# Called when the node enters the scene tree for the first time.
@onready var music=$audiobg/VBoxContainer/Music/HSlider
@onready var sound=$audiobg/VBoxContainer/Sound/HSlider
@onready var SFX=$audiobg/VBoxContainer/SFX/CheckBox
@onready var sfx:int=1

func saveoptions():
	var file=FileAccess.open(path,FileAccess.WRITE)
	file.store_var([music.value,sound.value,sfx])
	

func saveexists():
	return FileAccess.file_exists(path)

func loadoptions():
	var file=FileAccess.open(path,FileAccess.READ)
	return file.get_var()


func _ready() -> void:
	if saveexists():
		var olist=loadoptions()
		music.value=olist[0];
		sound.value=olist[1];
		SFX.button_pressed=olist[2]
		

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


func _on_music_h_slider_drag_ended(value_changed: bool) -> void:
	var bus_index=AudioServer.get_bus_index("Music")
	AudioServer.set_bus_volume_linear(bus_index,music.value)
	saveoptions()


func _on_sound_h_slider_drag_ended(value_changed: bool) -> void:
	var bus_index=AudioServer.get_bus_index("Sound")
	AudioServer.set_bus_volume_linear(bus_index,sound.value)
	saveoptions()


func _on_sfx_check_box_toggled(toggled_on: bool) -> void:
	var bus_index=AudioServer.get_bus_index("SFX")
	sfx=toggled_on
	AudioServer.set_bus_volume_linear(bus_index,sfx)
	saveoptions()
