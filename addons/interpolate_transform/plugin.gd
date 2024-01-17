@tool
extends EditorPlugin

func _enter_tree():
	add_custom_type("InterpolateTransform2D", "Node2D", preload("interpolate2d.gd"), preload("Interpolate2D.svg"))
	add_custom_type("InterpolateTransform3D", "Node3D", preload("interpolate3d.gd"), preload("Interpolate3D.svg"))

func _exit_tree():
	remove_custom_type("InterpolateTransform2D")
	remove_custom_type("InterpolateTransform3D")
