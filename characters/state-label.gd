extends Label

const Player = preload("res://characters/player/player.gd")

var _state_text = {
	Player.States.IDLE: "IDLE",
	Player.States.WALK: "WALK",
	Player.States.RUN: "RUN",
	Player.States.BUMP: "BUMP",
	Player.States.JUMP: "JUMP",
	Player.States.FALL: "FALL",
	Player.States.RESPAWN: "RESPAWN"
}

func _on_Character_state_changed(state):
	text = _state_text[state]