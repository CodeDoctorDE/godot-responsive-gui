tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("HiddenControl", "Control", preload("hidden_control.gd"), null)
	pass


func _exit_tree():
	pass
