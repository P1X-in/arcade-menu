
var root

# SERVICES
var file_handler = preload('res://scripts/services/file_handler.gd').new()
var processing = preload('res://scripts/services/processing.gd').new()
var timers = preload('res://scripts/services/timers.gd').new()
var input = preload("res://scripts/input/input.gd").new()
var sounds = preload("res://scripts/services/sounds.gd").new()

# FUNCTIONALITIES
var games = preload("res://scripts/functions/games.gd").new()

func _init_bag(root):
    self.root = root

    self.processing._init_bag(self)
    self.timers._init_bag(self)
    self.input._init_bag(self)
    self.sounds._init_bag(self)

    self.games._init_bag(self)

func reset():
    return
