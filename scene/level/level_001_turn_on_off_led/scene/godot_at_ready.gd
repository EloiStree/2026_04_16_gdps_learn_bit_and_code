## NEED TO BE TESTING 
extends Node

func _ready() -> void:
	print("Hello Micro:Bit")

func mod_in_set_button_a(value:bool):
	print("Button A:",value)
	mod_out_on_request_image_command.emit("9999 90009  90009 90009 99999")
	
func mod_in_set_button_b(value:bool):
	print("Button B:",value)
	mod_out_on_request_image_command.emit("01234567890123456789012345678900")
	
@export var pin_as_button_0:bool
signal mod_out_on_request_image_command(text_image_action:String)
signal mod_out_set_led_2d_percent_0_1(x_left_right_0_4:int, y_top_down_0_4:int, percent:float)
