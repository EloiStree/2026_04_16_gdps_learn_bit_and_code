extends Node

func _ready() -> void:
	print("Hello Micro:Bit")

func mod_in_set_button_a(value:bool):
	set_led_on_off(value)
	
func mod_in_set_button_b(value:bool):
	set_led_on_off(value)

func set_led_on_off(value:bool):
	if value==true:
		mod_out_on_request_image_command.emit("0123456789012345678901234")
		mod_out_set_pin_state_as_high_low.emit(0,true)
		mod_out_set_pin_as_write_mode.emit(0,true)
		mod_out_set_pin_as_digital_mode.emit(0,true)
		mod_out_set_pin_as_pull_up_mode.emit(0,true)
	else:
		mod_out_on_request_image_command.emit("9999999999999999999999999")
		mod_out_set_pin_state_as_high_low.emit(0,false)
		mod_out_set_pin_as_write_mode.emit(0,false)
		mod_out_set_pin_as_digital_mode.emit(0,false)
		mod_out_set_pin_as_pull_up_mode.emit(0,false)
		
		
		
@export var pin_as_button_0:bool
signal mod_out_on_request_image_command(text_image_action:String)
signal mod_out_set_led_2d_percent_0_1(x_left_right_0_4:int, y_top_down_0_4:int, percent:float)

signal mod_out_set_pin_state_as_high_low(index_0_20:int,true_hight_false_low:bool)

#signal mod_out_set_pin_state_as_percent(index_0_20:int,state_as_percent:float)
#signal mod_out_set_pin_state_as_analog_0_1023(index_0_20:int,analog_value_0_1023:int)
signal mod_out_set_pin_as_write_mode(index_0_20:int,true_write_false_read:bool)
signal mod_out_set_pin_as_digital_mode(index_0_20:int,true_digit_false_analog:bool)
signal mod_out_set_pin_as_pull_up_mode(index_0_20:int,true_pull_up_false_down:bool)
