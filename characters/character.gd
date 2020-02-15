extends KinematicBody2D

signal state_changed(state)

var state = 0
var _transitions = {}


func _ready():
	connect("state_changed", $StateLabel, "_on_Character_state_changed")

func enter_state():
	pass

func change_state(event):
	var transition = [state, event]
	if not transition in _transitions:
		return
		
	state = _transitions[transition]
	enter_state()
	
	emit_signal("state_changed", state)	


	