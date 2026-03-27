//class pass reference but struct pass a copy
//struct: immutable, passed by value
//class: passed by reference, inheritance
var skeleton = Enemy(health: 100, attackStrength: 10)
var skeleton2 = skeleton //with struct it's a new one

skeleton.takeDamage(amount: 10)

print(skeleton.health)
print(skeleton2.health)
