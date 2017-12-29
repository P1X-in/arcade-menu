extends "res://scripts/services/bag_aware.gd"


var keyboard_template = preload("res://scripts/services/input/keyboard.gd")
var gamepad_template = preload("res://scripts/services/input/gamepad.gd")
var mouse_template = preload("res://scripts/services/input/mouse.gd")
var arcade_template = preload("res://scripts/services/input/arcade.gd")
var any_device_template = preload("res://scripts/services/input/any_device.gd")

var schemes = {
    "selector" : {
        "keyboard" : self.keyboard_template.new(),
        "any" : self.any_device_template.new(),
    }
}

var active_scheme = "selector"

func _initialize():
    self.load_basic_input()

func handle_event(event):
    for device in self.schemes[self.active_scheme]:
        if self.schemes[self.active_scheme][device].can_handle(event):
            self.schemes[self.active_scheme][device].handle_event(event)

func switch_to_scheme(scheme):
    self.active_scheme = scheme

func load_basic_input():
    self.schemes['selector']['keyboard'].register_handler(preload("res://scripts/services/input/handlers/quit.gd").new())

