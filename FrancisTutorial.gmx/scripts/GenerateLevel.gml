/* Solid Objects */
NumberOfBlocks = irandom_range(5,20)
NumberOfAttempts = NumberOfBlocks * 100 //Needed to prevent possible infinite loop
Attempt = 0
BlockSize = 128
SafetyMargin = BlockSize
BlockColor = make_color_rgb(random(255),random(255),random(255))

//So long as we haven't exceeded number of blocks we want, AND we haven't exceeded our max attempts
while instance_number(obj_Solid) < NumberOfBlocks and Attempt < NumberOfAttempts
{
    //...spawn blocks
    NewBlock = instance_create(random_range(SafetyMargin, room_width - SafetyMargin),random_range(SafetyMargin, room_height - SafetyMargin),obj_Solid)
    //Make x and y coords multiple of BlockSize, which is 128
    //x/y = x/y divided by 128 (throw out the remainder) times 128
    NewBlock.x = (NewBlock.x div BlockSize) * BlockSize
    NewBlock.y = (NewBlock.y div BlockSize) * BlockSize
    NewBlock.image_blend = BlockColor
    //...but if going to spawn on the player, delete the block
    with NewBlock
    {
        if place_meeting(x,y,obj_Player) { instance_destroy() }
    }
    Attempt = Attempt + 1
}

/* Boomers */
NumberOfBoomers = irandom_range(3,7)
NumberOfAttempts = NumberOfBoomers * 100 //Needed to prevent possible infinite loop
Attempt = 0

//So long as we haven't exceeded number of blocks we want, AND we haven't exceeded our max attempts
while instance_number(obj_Boomer) < NumberOfBoomers and Attempt < NumberOfAttempts
{
    //...spawn blocks
    NewBoomer = instance_create(random(room_width),random(room_height),obj_Boomer)
    //...but if going to spawn on the player, delete the block
    with NewBoomer
    {
        if place_meeting(x,y,obj_Player) { instance_destroy() }
        if place_meeting(x,y,obj_Solid) { instance_destroy() }
    }
    Attempt = Attempt + 1
}

/* Tint */
NumberOfTints = 30
Color1 = make_color_rgb(random(255),random(255),random(255))
Color2 = make_color_rgb(random(255),random(255),random(255))

while instance_number(obj_Tint) < NumberOfTints
{
    NewTint = instance_create(random(room_width),random(room_height),obj_Tint)
    NewTint.image_blend = choose(Color1,Color2)
}