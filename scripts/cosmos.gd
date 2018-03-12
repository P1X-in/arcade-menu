extends Control

var SEED = 0.123
export var MAX_STARS = 100000
export var POS_X_MIN = 0
export var POS_X_MAX = 10
export var POS_Y_MIN = 0
export var POS_Y_MAX = 10

var star_master = preload("res://scenes/star.tscn")
var star
var random_pos

func _ready():
    rand_seed(self.SEED)
    randomize()
    for i in range(0,self.MAX_STARS):
        self.star = self.star_master.instance()
        self.random_pos = Vector2(rand_range(self.POS_X_MIN,self.POS_X_MAX),rand_range(self.POS_Y_MIN,self.POS_Y_MAX))
        self.star.set_pos(self.random_pos)
        self.add_child(self.star)
