extends "res://scripts/services/input/handlers/gamepad_handler.gd"

var selector

func _init(selector):
    self.type = InputEvent.JOYSTICK_BUTTON
    self.button_index = 10
    self.selector = selector

func handle(event):
    if event.is_pressed():
        self.selector.shift_right()