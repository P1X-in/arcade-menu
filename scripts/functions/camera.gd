extends "res://scripts/bag_aware.gd"

var camera = null
var selector_area = null

func _initialize():
    self.camera = self.bag.root.get_node('Viewport/camera')
    self.selector_area = self.bag.selector
    self.go_to_cover(0)


func go_to_cover(index):
    var x = self.selector_area.LEFT * (index + 1) + self.selector_area.WIDTH * index# + self.selector_area.WIDTH / 2
    var y = self.selector_area.TOP + self.selector_area.HEIGHT / 3

    self.camera.set_offset(Vector2(x, y))

