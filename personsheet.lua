--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:bbd21b3444b6a3542dbd4481b252d13c:1/1$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- person1
            x=174,
            y=288,
            width=167,
            height=287,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 193,
            sourceHeight = 295
        },
        {
            -- person2
            x=2,
            y=2,
            width=170,
            height=285,

            sourceX = 19,
            sourceY = 0,
            sourceWidth = 228,
            sourceHeight = 293
        },
        {
            -- person3
            x=344,
            y=2,
            width=141,
            height=287,

            sourceX = 30,
            sourceY = 0,
            sourceWidth = 205,
            sourceHeight = 293
        },
        {
            -- person4
            x=174,
            y=2,
            width=168,
            height=284,

            sourceX = 39,
            sourceY = 0,
            sourceWidth = 228,
            sourceHeight = 288
        },
    },
    
    sheetContentWidth = 512,
    sheetContentHeight = 1024
}

SheetInfo.frameIndex =
{

    ["person1"] = 1,
    ["person2"] = 2,
    ["person3"] = 3,
    ["person4"] = 4,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo
