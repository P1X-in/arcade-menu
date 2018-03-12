extends "res://scripts/services/bag_aware.gd"

var camera = null
var selector_area = null
var background = null

func _initialize():
    self.camera = self.bag.root.get_node('Viewport/camera')
    self.selector_area = self.bag.selector
    self.background = self.bag.root.get_node('Viewport/background')
    self.go_to_cover(0)


func go_to_cover(index):
    var x = self.selector_area.LEFT * (index + 1) + self.selector_area.WIDTH * index
    var y = self.selector_area.TOP

    self.camera.set_offset(Vector2(x, y))
    self.background.set_pos(Vector2(x - self.selector_area.WIDTH, y - self.selector_area.HEIGHT))

