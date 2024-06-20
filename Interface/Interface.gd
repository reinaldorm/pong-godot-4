extends Control


func update_interface(element, value):
	var child = find_child(element);
	child.text = str(value);

