extends "res://scripts/bag_aware.gd"


var games = null

var game_cover_template = preload("res://scenes/game.tscn")
var covers = []
var index = 0

func _initialize():
    self.games = self.bag.games
    self.build_covers()


func build_covers():
    var cover
    var cover_image

    for game_path in self.games.games:
        cover = self.game_cover_template.instance()
        cover_image = ImageTexture.new()
        cover_image.load(game_path + "/cover.png")
        cover.get_node("cover").set_texture(cover_image)

        self.covers.append(cover)


