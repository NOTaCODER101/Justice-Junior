extends Control

@export var nextlevel:PackedScene

var endtextcontent=[
	"You’re getting there! Next time, try to speak up when something feels wrong. Everyone deserves to feel safe and heard — even in front of friends.",
	"Great job! You stood up for what’s right and showed true courage. Your voice matters!",
	"Almost there! Remember, if someone makes you feel uncomfortable, it’s okay to say no and tell a trusted adult. Trust your feelings.",
	"Well done! You knew how to spot unsafe touch and made the right choices. You’re a safety superstar!",
	"You’re on the right path! Remember, all children have the right to learn and play. Try to speak up or seek help when something’s unfair.",
	"Fantastic work! You helped protect children from harm. You’re making the world a better place!",
	"Nice try! Don’t forget — everyone deserves a fair chance, no matter their gender. Stand up for fairness next time!",
	"Awesome! You showed that fairness and equality always win. Keep being a champion for everyone!",
	"Keep going! Everyone has the right to celebrate their beliefs. Try supporting others to be proud of who they are next time.",
	"Excellent! You respected everyone’s right to believe and celebrate. That’s what true kindness looks like!"
]
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


func updateEndText(level,stars):
	if level==1:
		if stars<3:
			$TextureRect/Control/endtext.text=endtextcontent[0]
		else :
			$TextureRect/Control/endtext.text=endtextcontent[1]
	elif level==2:
		if stars<3:
			$TextureRect/Control/endtext.text=endtextcontent[2]
		else :
			$TextureRect/Control/endtext.text=endtextcontent[3]
	elif level==3:
		if stars<3:
			$TextureRect/Control/endtext.text=endtextcontent[4]
		else :
			$TextureRect/Control/endtext.text=endtextcontent[5]
	elif level==4:
		if stars<3:
			$TextureRect/Control/endtext.text=endtextcontent[6]
		else :
			$TextureRect/Control/endtext.text=endtextcontent[7]
	else:
		if stars<3:
			$TextureRect/Control/endtext.text=endtextcontent[8]
		else :
			$TextureRect/Control/endtext.text=endtextcontent[9]
