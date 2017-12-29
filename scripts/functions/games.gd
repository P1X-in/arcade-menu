extends "res://scripts/bag_aware.gd"

const LIST_FILENAME = "games.list"
const LIST_DIRECTORY = "/games/"

var games = []

func _initialize():
    self._from_file()

func _from_file():
    self.games = self.bag.file_handler.read_text(self.LIST_FILENAME)

func _from_dir():
    var current_dir = self._get_current_dir()
    var subdir
    var dir = Directory.new()

    print(current_dir)
    dir.open("/")
    dir.change_dir(current_dir)
    print(dir.get_current_dir())
    dir.list_dir_begin()
    subdir = dir.get_next()

    while subdir != "":
        if subdir == "." or subdir == "..":
            subdir = dir.get_next()
            continue

        self.games.append(self.LIST_DIRECTORY + subdir)
        subdir = dir.get_next()
    dir.list_dir_end()

func _get_current_dir():
    var output = []

    OS.execute("pwd", [], true, output)

    return output[0]

func get(index):
    if index < 0 or index > self.games.size():
        return null

    return self.games[index]

