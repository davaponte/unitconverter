extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass



func _on_TmpCelsius_value_changed(value: float) -> void:
	$ColorRect/TmpFarenheit.value = $ColorRect/TmpCelsius.value * 9 / 5 + 32


func _on_TmpFarenheit_value_changed(value: float) -> void:
	$ColorRect/TmpCelsius.value = ($ColorRect/TmpFarenheit.value - 32) * 5 / 9
