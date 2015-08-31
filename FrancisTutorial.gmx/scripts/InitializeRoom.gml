/* Set Screen */

window_set_fullscreen(true)

//Size of screen
global.ScreenWidth = display_get_width()
global.ScreenHeight = display_get_height()

//How much of room to see on-screen
view_wview = global.ScreenWidth
view_hview = global.ScreenHeight

//How much of screen do we want to take up?
view_wport = global.ScreenWidth
view_hport = global.ScreenHeight

//Gamemaker requirement for screen size, view, etc.
surface_resize(application_surface,global.ScreenWidth,global.ScreenHeight)

//LoadInventory() //Load player inventory when room is created
SaveProgress()