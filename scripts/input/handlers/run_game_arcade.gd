extends "res://scripts/services/input/handlers/gamepad_handler.gd"

var selector

func _init(key, selector):
    self.type = InputEvent.JOYSTICK_BUTTON
    self.button_index = key
    self.selector = selector

func handle(event):
    if event.is_pressed():
        self.selector.run_game()
