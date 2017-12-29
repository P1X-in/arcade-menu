extends "res://scripts/services/input/input.gd"

func load_input():
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/shift_left_keyboard.gd").new(self.bag.selector))
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/shift_right_keyboard.gd").new(self.bag.selector))
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/run_game_keyboard.gd").new(self.bag.selector))
