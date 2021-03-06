tool
extends EditorPlugin

# getting the script for custom node
const getinput = preload("res://addons/vs_custom_nodes/GetInputDirection2D.gd")
const floatvecmath = preload("res://addons/vs_custom_nodes/FloatVectorMath.gd")
const globalvar = preload("res://addons/vs_custom_nodes/AccessGlobalVariable.gd")

func _enter_tree():
	# add the custom node to the Visual Script Editor on start-up
	VisualScriptEditor.add_custom_node("GetInputDirection2D", "Input", getinput)
	VisualScriptEditor.add_custom_node("FloatVectorMath", "Math", floatvecmath)
	VisualScriptEditor.add_custom_node("AccessGlobalVariable", "Access", globalvar)
	# the add_custom_node() takes the "name" and "category" as index that will be used to later remove the node
	
func _exit_tree():
	# remove the custom node to the Visual Script Editor on exit
	VisualScriptEditor.remove_custom_node("GetInputDirection2D", "Input")
	VisualScriptEditor.remove_custom_node("FloatVectorMath", "Math")
	VisualScriptEditor.remove_custom_node("AccessGlobalVariable", "Access")
