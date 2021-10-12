extends Node

onready var TOWER = $Node2D/RoamingTower

var time_elapsed = 0.0
var lerp_duration = 4.0
var start_x = 100
var end_x = 500
var going_forward = true

func _process(delta):
	time_elapsed += delta
	
	if time_elapsed > lerp_duration:
		going_forward = !going_forward
		time_elapsed = 0
		
	if going_forward:
		TOWER.position.x = lerp(start_x, end_x, time_elapsed / lerp_duration)
	else:
		TOWER.position.x = lerp(end_x, start_x, time_elapsed / lerp_duration)

