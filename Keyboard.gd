extends Node2D
var currentState = false
var currentChar = ""
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func butExitPressed():

	visible = false

func setNum(arg):
	arg.text = currentChar

func Send():
	pass

func clear():
	currentChar = ""

func retrieve():
	var temp = currentChar
	currentChar = ""
	return temp

func but1Pressed():
	currentChar += "1"
	Send()

func but2Pressed():
	currentChar += "2"
	Send()

func but3Pressed():
	currentChar += "3"
	Send()

func but4Pressed():
	currentChar += "4"
	Send()

func but5Pressed():
	currentChar += "5"
	Send()

func but6Pressed():
	currentChar += "6"
	Send()

func but7Pressed():
	currentChar += "7"
	Send()

func but8Pressed():
	currentChar += "8"
	Send()

func but9Pressed():
	currentChar += "9"
	Send()

func but0Pressed():
	currentChar += "0"
	Send()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
