extends "res://scripts/bag_aware.gd"

const TOP = 250
const LEFT = 200
const WIDTH = 400
const HEIGHT = 400


var games = null

var game_cover_template = preload("res://scenes/game.tscn")
var covers = []
var index = 0

var covers_mount = null

func _initialize():
    self.games = self.bag.games
    self.covers_mount = self.bag.root.get_node('Viewport')
    self.build_covers()
    self.place_covers()


func build_covers():
    var cover
    var cover_image

    for game_path in self.games.games:
        cover = self.game_cover_template.instance()
        cover_image = ImageTexture.new()
        cover_image.load(game_path + "/cover.png")
        cover.get_node("cover").set_texture(cover_image)

        self.covers.append(cover)


func place_covers():
    var index = 0
    var x
    var y = self.TOP

    for cover in self.covers:
        self.covers_mount.add_child(cover)
        x = self.LEFT * (index + 1) + self.WIDTH * index
        cover.set_pos(Vector2(x, y))

        index = index + 1


