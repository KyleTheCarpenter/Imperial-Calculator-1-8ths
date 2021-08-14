extends Node2D

var Selector = 0
var footinch = false
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func butExitpressed():
	Selector = 0


func buttonInches():
	var foot3 = .get_node("tline3/dataFoot").text as int
	var inch =.get_node("tline3/dataInch").text as int

	if (footinch == false):
		while (foot3 >0 ):
			foot3 -=1
			inch +=12
		.get_node("tline3/dataFoot").text = "0"
		.get_node("tline3/dataInch").text = str (inch)
		footinch = true
		get_node("butInch").set_text("Show Feet")
		
	elif (footinch == true):
		while (inch >12 ):
			foot3 +=1
			inch -=12
		.get_node("tline3/dataFoot").text = str (foot3)
		.get_node("tline3/dataInch").text = str (inch)
		footinch = false
		get_node("butInch").text = "Show Inches"
	


func butClearAllPressed():
	get_node("butInch").visible = false
	get_node("butSend").visible = false
	footinch = false
	get_node("butInch").text = "Show Inches"
	Selector = 0
	.get_node("tline3/dataFrac").text = "0"
	.get_node("tline3/dataInch").text = "0"
	.get_node("tline3/dataFoot").text = "0"
	.get_node("tline2/dataFrac").text = "0"
	.get_node("tline2/dataInch").text = "0"
	.get_node("tline2/dataFoot").text = "0"
	.get_node("line1/dataFrac").text = "0"
	.get_node("line1/dataInch").text = "0"
	.get_node("line1/dataFoot").text = "0"
	get_parent().get_node("Keyboard").clear()

func butSendPressed():
	get_node("butInch").visible = false
	get_node("butSend").visible = false
	.get_node("line1/dataFrac").text = .get_node("tline3/dataFrac").text
	.get_node("line1/dataInch").text = .get_node("tline3/dataInch").text
	.get_node("line1/dataFoot").text = .get_node("tline3/dataFoot").text


	.get_node("tline3/dataFrac").text = "0"
	.get_node("tline3/dataInch").text = "0"
	.get_node("tline3/dataFoot").text = "0"
	.get_node("tline2/dataFrac").text = "0"
	.get_node("tline2/dataInch").text = "0"
	.get_node("tline2/dataFoot").text = "0"

func butAddPressed():
	get_node("butInch").visible = true
	get_node("butSend").visible = true
	var foot1 = (.get_node("line1/dataFoot").text) as int
	var inch1 = (.get_node("line1/dataInch").text) as int
	var fraction1 = (.get_node("line1/dataFrac").text) as int

	var foot2 = (.get_node("tline2/dataFoot").text) as int
	var inch2 = (.get_node("tline2/dataInch").text) as int
	var fraction2 = (.get_node("tline2/dataFrac").text) as int

	var foot3 = 0
	var inch3 = 0
	var fraction3 = 0

	while (foot1 > 0):
		inch1 +=12
		foot1 -=1

	while (inch1 > 0):
		fraction1 +=8
		inch1 -=1


	while (foot2 > 0):
		inch2 +=12
		foot2 -=1

	while (inch2 > 0):
		fraction2 +=8
		inch2 -=1
	
	fraction3 = fraction1 + fraction2

	while (fraction3 >= 8):
		inch3 += 1
		fraction3 -=8

	
	while (inch3 >= 12):
		foot3 +=1
		inch3 -=12

	.get_node("tline3/dataFrac").text = str(fraction3)
	.get_node("tline3/dataInch").text = str(inch3)
	.get_node("tline3/dataFoot").text = str(foot3)

func butCenterPressed():
	get_node("butInch").visible = true
	get_node("butSend").visible = true
	var foot1 = (.get_node("line1/dataFoot").text) as int
	var inch1 = (.get_node("line1/dataInch").text) as int
	var fraction1 = (.get_node("line1/dataFrac").text) as int

	var foot2 = (.get_node("tline2/dataFoot").text) as int
	var inch2 = (.get_node("tline2/dataInch").text) as int
	var fraction2 = (.get_node("tline2/dataFrac").text) as int

	var foot3 = 0
	var inch3 = 0
	var fraction3 = 0

	while (foot1 > 0):
		inch1 +=12
		foot1 -=1

	while (inch1 > 0):
		fraction1 +=8
		inch1 -=1


	while (foot2 > 0):
		inch2 +=12
		foot2 -=1

	while (inch2 > 0):
		fraction2 +=8
		inch2 -=1
	if (fraction1 > fraction2):
		fraction3 = fraction1 /2- fraction2/2

	else :
		fraction3 = fraction2 /2 - fraction1/2

	while (fraction3 >= 8):
		inch3 += 1
		fraction3 -=8

	while (inch3 >= 12):
		foot3 +=1
		inch3 -=12

	.get_node("tline3/dataFrac").text = str(fraction3)
	.get_node("tline3/dataInch").text = str(inch3)
	.get_node("tline3/dataFoot").text = str(foot3)



func butSubPressed():
	get_node("butInch").visible = true
	get_node("butSend").visible = true
	var foot1 = (.get_node("line1/dataFoot").text) as int
	var inch1 = (.get_node("line1/dataInch").text) as int
	var fraction1 = (.get_node("line1/dataFrac").text) as int

	var foot2 = (.get_node("tline2/dataFoot").text) as int
	var inch2 = (.get_node("tline2/dataInch").text) as int
	var fraction2 = (.get_node("tline2/dataFrac").text) as int

	var foot3 = 0
	var inch3 = 0
	var fraction3 = 0

	while (foot1 > 0):
		inch1 +=12
		foot1 -=1

	while (inch1 > 0):
		fraction1 +=8
		inch1 -=1


	while (foot2 > 0):
		inch2 +=12
		foot2 -=1

	while (inch2 > 0):
		fraction2 +=8
		inch2 -=1
	if (fraction1 > fraction2):
		fraction3 = fraction1 - fraction2

	else :
		fraction3 = fraction2 - fraction1

	while (fraction3 >= 8):
		inch3 += 1
		fraction3 -=8

	while (inch3 >= 12):
		foot3 +=1
		inch3 -=12

	.get_node("tline3/dataFrac").text = str(fraction3)
	.get_node("tline3/dataInch").text = str(inch3)
	.get_node("tline3/dataFoot").text = str(foot3)



func butSet1Pressed():
	get_parent().get_node("Keyboard").visible = true
	get_parent().get_node("Keyboard").clear()
	Selector = 1

func butSet2Pressed():
	get_parent().get_node("Keyboard").visible = true
	get_parent().get_node("Keyboard").clear()
	Selector = 5

func butBackPressed():

	if (Selector == 2):
		Selector -= 1
		get_parent().get_node("Keyboard").clear()
	if (Selector == 3):
		Selector -= 1
		get_parent().get_node("Keyboard").clear()

	if (Selector == 6):
		Selector -= 1
		get_parent().get_node("Keyboard").clear()
	if (Selector == 7):
		Selector -= 1
		get_parent().get_node("Keyboard").clear()
	

func butClearPressed():
	get_parent().get_node("Keyboard").clear()

func butEnterPressed():
	Selector+=1	
	get_parent().get_node("Keyboard").clear()
	if (Selector == 4):
		get_parent().get_node("Keyboard").visible = false

	if (Selector == 8):
		get_parent().get_node("Keyboard").visible = false
	
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	match (Selector):
		1:
			get_parent().get_node("Keyboard").setNum(.get_node("line1/dataFoot") )
			get_node("arrow").set_position(Vector2(64,85)) 
	

		2:
			get_parent().get_node("Keyboard").setNum(.get_node("line1/dataInch") )
			get_node("arrow").set_position(Vector2(124,85)) 

		3:
			get_parent().get_node("Keyboard").setNum(.get_node("line1/dataFrac") )
			get_node("arrow").set_position(Vector2(160,85)) 

		5:
			get_parent().get_node("Keyboard").setNum(.get_node("tline2/dataFoot") )
			get_node("arrow").set_position(Vector2(64,216)) 
	

		6:
			get_parent().get_node("Keyboard").setNum(.get_node("tline2/dataInch") )
			get_node("arrow").set_position(Vector2(124,216)) 

		7:
			get_parent().get_node("Keyboard").setNum(.get_node("tline2/dataFrac") )
			get_node("arrow").set_position(Vector2(160,216)) 

		_: 
			get_node("arrow").set_position(Vector2(-100,-100))