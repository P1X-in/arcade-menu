extends "res://scripts/bag_aware.gd"

const LIST_FILENAME = "games.list"

var games = []

func _initialize():
    self.games = self.bag.file_handler.read_text(self.LIST_FILENAME)
    print(self.games.size())

func get(index):
    if index < 0 or index > self.games.size():
        return null

    return self.games[index]

