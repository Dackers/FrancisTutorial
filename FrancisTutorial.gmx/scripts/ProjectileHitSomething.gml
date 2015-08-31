ThisProjectile = argument0

if ThisProjectile.object_index != obj_PlayerChunk
{
    with ThisProjectile {instance_destroy()}
}