extends "res://scripts/services/input/handlers/keyboard_handler.gd"

var selector

func _init(selector):
    self.scancode = KEY_LEFT
    self.selector = selector

func handle(event):
    if event.is_pressed():
        self.selector.shift_left()

