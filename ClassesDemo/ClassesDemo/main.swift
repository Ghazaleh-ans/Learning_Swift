
let skeleton = Enemy(health: 100, attackStrength: 10)
let skeleton2 = skeleton //another reference to the same object

skeleton.takeDamage(amount: 10)

print(skeleton2.health)
