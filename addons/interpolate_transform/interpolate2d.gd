extends Node2D

var parent_previous_transform: Transform2D
var previous_transform: Transform2D

signal processed

func _ready():
	Engine.physics_jitter_fix = 0
	force()

func _physics_process(delta):
	previous_transform = parent_previous_transform
	parent_previous_transform = get_parent().global_transform

func _process(delta):
	global_transform = previous_transform.interpolate_with(get_parent().global_transform, Engine.get_physics_interpolation_fraction())
	processed.emit()

func force():
	parent_previous_transform = get_parent().global_transform
	previous_transform = global_transform
