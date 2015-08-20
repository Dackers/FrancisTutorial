ButtonText = argument0
Result = false

//Set the top and bottom of the text box, using a Margin between each one
BoxTop = CurrentY
TextTop = BoxTop + Margin //Move text down by Margin in the text box
BoxBottom = BoxTop + Margin + string_height(ButtonText) + Margin

//Store 1/2 the size of the width of the string
HalfTextWidth = string_width(ButtonText) / 2
//Set left and right sides of the text box (x is already center of view so we just subtract
//the size of the string to get the left side, and add for the right side
BoxLeft = x - HalfTextWidth - (Margin * 2)
BoxRight = x + HalfTextWidth + (Margin * 2)

//Set color of text box
draw_set_color(make_color_hsv(0,200,128))

//See if the cursor is hovering over it
//Have to use the "device_mouse_x_to_gui" command else the cursor may adhere to room
//size or view instead of port. This sets the cursor to the GUI layer
if device_mouse_x_to_gui(0) > BoxLeft and device_mouse_x_to_gui(0) < BoxRight and device_mouse_y_to_gui(0) > BoxTop and device_mouse_y_to_gui(0) < BoxBottom
{
    //Set box completely opaque
    draw_set_alpha(1)
    if mouse_check_button_pressed(mb_left)
    {
        Result = true
    }
}else
{
    //Set alpha to 1/2
    draw_set_alpha(0.5)
}

//Draw the text box
draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false)
//Set alpha back to 1 before drawing other parts of the screen
draw_set_alpha(1)

//Set color of font of the button
draw_set_color(c_white)
//Set a margin between the buttons
CurrentY = TextTop //Set the y coord now to the top of the box plus the margin
//Draw the text of the button
DrawTextAndUpdateCurrentY(ButtonText)
//Margin between buttons
CurrentY = CurrentY + (Margin * 2)

return Result