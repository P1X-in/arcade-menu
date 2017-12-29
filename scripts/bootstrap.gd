
var bag = preload("res://scripts/bag.gd").new()

func _input(event):
    self.bag.input.handle_event(event)


func _ready():
    self.bag._init_bag(self)
    self.set_process_input(true)

    #self.bag.sound.play_soundtrack("menu")



#var button
#var path = "Games/RiF.bin"
#
#func _button_pressed():
#    var output = []
#
#    OS.execute(self.path, [], true, output)
#    for line in output:
#        print(line)

