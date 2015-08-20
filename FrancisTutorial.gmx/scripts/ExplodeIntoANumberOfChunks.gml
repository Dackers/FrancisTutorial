NumberOfBitsToCreate = argument0
TypeOfChunk = argument1

BitsCreatedSoFar = 0

//Create the bits of player after explosion/death - loops until all bits have been created
while BitsCreatedSoFar < NumberOfBitsToCreate
{
    //Create a bit
    instance_create(x,y,TypeOfChunk)
    //Count that bit instance as created
    BitsCreatedSoFar = BitsCreatedSoFar + 1
}