extends Node2D

var start: float = 0.0
var stop: float  = 1.0
var alpha: float = 0.0
var duration: float


func _ready():
	duration = randf_range(2.0, 6.0)


func _process(delta_time):
	alpha += delta_time / duration
	
	modulate.s = 1.0
	modulate.v = 0.5
	modulate.h = lerp(start, stop, alpha)
	
	if (alpha > 1.0):
		alpha = 0
		duration = randf_range(2.0, 6.0)
