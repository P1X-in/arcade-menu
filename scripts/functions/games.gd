extends "res://scripts/bag_aware.gd"

const LIST_FILENAME = "games.list"

var games = ["test"]

func _initialize():
    self.games = self.bag.file_handler.read_text(self.LIST_FILENAME)
    print(self.games)
