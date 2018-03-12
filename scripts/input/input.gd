extends "res://scripts/services/input/input.gd"

func load_input():
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/shift_left_keyboard.gd").new(self.bag.selector))
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/shift_right_keyboard.gd").new(self.bag.selector))
    self.register_handler('default', self.DEVICE_KEYBOARD, preload("res://scripts/input/handlers/run_game_keyboard.gd").new(self.bag.selector))

    self.register_device('default', self.DEVICE_ARCADE)

    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/shift_left_arcade.gd").new(self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/shift_right_arcade.gd").new(self.bag.selector))

    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(15, self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(16, self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(17, self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(18, self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(19, self.bag.selector))
    self.register_handler('default', self.DEVICE_ARCADE, preload("res://scripts/input/handlers/run_game_arcade.gd").new(20, self.bag.selector))

    self.create_scheme("empty")
    self.register_device('empty', self.DEVICE_ARCADE)
    self.register_device('empty', self.DEVICE_KEYBOARD)


func lock_input():
    self.switch_to_scheme("empty")

func unlock_input():
    self.switch_to_scheme("default")

func temp_lock_input():
    self.lock_input()
    self.bag.timers.set_timeout(1, self, "unlock_input")
