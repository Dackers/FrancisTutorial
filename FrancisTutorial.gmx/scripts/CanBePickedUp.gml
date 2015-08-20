/* Pick up weapons */
if instance_exists(Owner) = false //Check that not already picked up
{
    if instance_exists(instance_place(x,y,obj_Player))
    {
        //Remember who owns us (use ".id" to make sure the name of the instance of the player object is passed rather than the object name. Avoids issue later when player dies and new player tries to pick up a weapon)
        Owner = obj_Player.id
        //Add us to a new owner's weapon array
        Owner.Weapon[Owner.WeaponCount] = self.id
        //Tell our owner they have one more weapon than before
        Owner.WeaponCount = Owner.WeaponCount + 1
        visible = 0
    }
}