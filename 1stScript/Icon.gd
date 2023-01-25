extends Sprite


# Declare member variables here. Examples:
var speed = 400
var angular_speed = PI

func _init():
	print("Hello World!")

# Called when the node enters the scene tree for the first time.
func _ready():
	var timer = get_node("Timer")
	timer.connect("timeout", self, "_on_Timer_timeout")
 # Replace with function body.

func _on_Timer_timeout():
	visible = not visible

func _process(delta):
	# var direction = 0
	# if Input.is_action_pressed("ui_right"):
	# 	direction = 1
	# if Input.is_action_pressed("ui_left"):
	# 	direction = -1
	# rotation += angular_speed * direction * delta

	# var velocity = Vector2.ZERO
	# if Input.is_action_pressed("ui_up"):
	# 	velocity = Vector2.UP.rotated(rotation) * speed
	# position += velocity * delta
	rotation += angular_speed * delta
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	set_process(not is_processing())
