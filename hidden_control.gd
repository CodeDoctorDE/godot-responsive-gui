tool
extends Control


export(float) var min_x_size = -1
export(float) var max_x_size = -1

export(float) var min_y_size = -1
export(float) var max_y_size = -1
export(bool) var run_in_editor = false

func _enter_tree():
	connect("resized", self, "_set_show")
	pass # Replace with function body.

func _set_show():
	print("set_show")
	if ((not Engine.editor_hint) or run_in_editor):
		visible = _should_show()
func _should_show():
	var size = rect_size
	if (min_x_size > 0 && min_x_size > size.x || max_x_size > 0 && max_x_size < size.x):
		return false
	if (min_y_size > 0 && min_y_size > size.y || max_y_size > 0 && max_y_size < size.y):
		return false
	return true

