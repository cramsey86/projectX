const ACCELERATION = 250
const DECELERATION = -250
const STEERING = 20

static func go(direction, speed, max_speed, velocity, delta):
	if direction == Vector2():
		speed += DECELERATION * delta
	else:
		speed += ACCELERATION * delta
	speed = clamp(speed, 0, max_speed)
	var target_velocity = speed * direction
	var steering_velocity = (target_velocity - velocity).normalized() * STEERING
	velocity += steering_velocity
	return {
		velocity = velocity,
		speed = speed
	}