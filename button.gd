extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var count = 0
var duration=0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
    get_node("Decrement").connect("pressed", self, "_on_Decrement_pressed")

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func _process(dt):
	self.duration += dt
	draw()

func draw():
	# experiment: max float is 1e308 here too, and no formatting is included
	#get_node("Label").text = "pressed: "+str(self.count)+" ("+str(self.duration)+"s; e"+(str(pow(10, self.count)))+")"
	get_node("Label").text = "pressed: "+str(self.count)+" ("+str(self.duration)+"s)"

func _on_Increment_pressed():
	self.count += 1
	
func _on_Decrement_pressed():
	self.count -= 1
