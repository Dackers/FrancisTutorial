//Accepts an argument (should be a string) to draw
TextToDraw = argument0
//Draw the text
draw_text(x,CurrentY,TextToDraw)
//Set the y coord to the height of the string just drawn plus an extra margin
CurrentY = CurrentY + string_height(TextToDraw) + Margin