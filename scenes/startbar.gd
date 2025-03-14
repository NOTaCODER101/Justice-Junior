extends Control

@onready var stars=[$HBoxContainer/Panel,$HBoxContainer/Panel2,$HBoxContainer/Panel3]
@onready var starsparticle=[$HBoxContainer/Panel/Starparticle,$HBoxContainer/Panel2/Starparticle2,$HBoxContainer/Panel3/Starparticle3]
var current_stars=0



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_text_signal)
	print("stars")
	stars[0].visible=false
	stars[1].visible=false
	stars[2].visible=false
	

# Called every frame. 'delta' is the elapsed time since the previous frame.

func _on_dialogic_text_signal(argument:String):
	
	if argument=="star":
		stars[current_stars].visible=true
		starsparticle[current_stars].emitting=true
		current_stars+=1
