local composer = require ("composer")
local scene = composer.newScene()
function scene:create(event)
	local group = self.view
	local background = display.newImage( "title background.jpg" )
	background.x = 160
	background.y = 240
	background.width = 320
	background.height = 480
	group:insert(background)
	local soundEffects = display.newImage( "soundeffects.png" )
	soundEffects.x = 160
	soundEffects.y = 100
	soundEffects.width = 240
	soundEffects.height = 60
	group:insert(soundEffects)
	local on1 = display.newImage( "on.png" )
	on1.x = 100
	on1.y = 160
	on1.width = 60
	on1.height = 35
	group:insert(on1)
	local off1 = display.newImage( "off.png" )
	off1.x = 220
	off1.y = 160
	off1.width = 60
	off1.height = 35
	group:insert(off1)
	local music = display.newImage( "music.png" )
	music.x = 160
	music.y = 225
	music.width = 240
	music.height = 60
	group:insert(music)
	local on2 = display.newImage( "on.png" )
	on2.x = 100
	on2.y = 290
	on2.width = 60
	on2.height = 35
	group:insert(on2)
	local off2 = display.newImage( "off.png" )
	off2.x = 220
	off2.y = 290
	off2.width = 60
	off2.height = 35
	group:insert(off2)
	local credits = display.newImage( "credits.png" )
	credits.x = 160
	credits.y = 380
	credits.width = 240
	credits.height = 120
	group:insert(credits)
	local backToMenu = display.newImage( "back to menu.png" )
	backToMenu.x = 75
	backToMenu.y = 35
	backToMenu.width = 60
	backToMenu.height = 35
	group:insert(backToMenu)
	local function onBackTouch( event )
		if ( event.phase == "began" ) then
			composer.gotoScene("menu")
		end
		return true
	end
    
    local function onCreditsTouch( event )
		if ( event.phase == "began" ) then
			composer.gotoScene("credits")
		end
		return true
	end
    
	backToMenu:addEventListener( "touch", onBackTouch )
	credits:addEventListener( "touch", onCreditsTouch )
end
function scene:show(event)
end
function scene:destroy(event)
end
scene:addEventListener("show", scene)
scene:addEventListener("create", scene)
scene:addEventListener("destroy", scene)
return scene
