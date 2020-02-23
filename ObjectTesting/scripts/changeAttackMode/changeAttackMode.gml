// @func: changeAttackMode
// @description: This is called whenever a unit switches from 'Inactive' to 'Attacking' or vis versa
// @Author: Kai Mizuno
// Date Created: 2/22/19
// Last Updated: 2/22/19

isAttacking = !isAttacking


if (name == RUDRA) {
	if (isAttacking)
		rudraAttackSetup()
	else
		rudraSetup()
}