extends "res://scripts/services/bag.gd"

var games = preload("res://scripts/functions/games.gd").new()
var selector = preload("res://scripts/functions/selector.gd").new()
var camera = preload("res://scripts/functions/camera.gd").new()

func _initialize():
    self.games._init_bag(self)
    self.selector._init_bag(self)
    self.camera._init_bag(self)

