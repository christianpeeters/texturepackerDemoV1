-- You can see the tutorial at christianpeeters --- 
local xCenter = display.contentWidth * .5
local yCenter = display.contentHeight * .5

---------------
local physics = require ("physics")
physics.start()
physics.setGravity( 0, 9.8 )
physics.setDrawMode( "hybrid" ) -- comment out in case you dont want to see the physics shapes
local physicsData = (require "shapedefs").physicsData(1.0)
--------------

local background = display.newRect(  0, 0, display.contentWidth, display.contentHeight )
background:setFillColor(227, 238, 255)

local sheetInfo = require("personsheet")

local mySheet = graphics.newImageSheet( "personSheet.png", sheetInfo:getSheet() )

local spriteOrderData = 
{
{name = "animate", frames={1,2,3,4},  count=4, time=1000, loopCount = 12} 
}

local personSprite = display.newSprite( mySheet, spriteOrderData)
personSprite.x = xCenter
personSprite.y = yCenter
personSprite:setSequence("animate") 
personSprite:play()

physics.addBody(personSprite, "static", physicsData:get("person1"))