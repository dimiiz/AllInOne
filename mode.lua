----------------------------- setups ------------------------------------
local DMGItem1, DMGSlot1 = 3052, SlotFinger
local DMGItem2, DMGSlot2 = 14921, SlotNeck

local DefItem1, DefSlot1 = 3098, SlotFinger
local DefItem2, DefSlot2 = 12507, SlotNeck

local SpeedItem1, SpeedSlot1 = 3097, SlotFinger
local SpeedItem2, SpeedSlot2 = 12511, SlotNeck

local SetupItem1, SetupSlot1 = 3052, SlotFinger
local SetupItem2, SetupSlot2 = 14929, SlotNeck

------------------------------------------------------------------------

local function indexUpValue()
  storage.uzu.index = (not storage.uzu.index or storage.uzu.index < 4) and storage.uzu.index + 1 or 1;
  return storage.uzu.index;
end

UI.Label("PVP MODE:"):setColor("#70c281")
local belial = UI.Button("teste", function() 
  indexUpValue()
  end)



local uzu = {}

 uzu.HpMode = function()
    belial:setText("DAMAGE")
    belial:setColor("red")
    moveToSlot(DMGItem1, DMGSlot1)
    moveToSlot(DMGItem2, DMGSlot2)
end

uzu.SpeedMode = function()
    belial:setText("SPEED")
    belial:setColor("yellow")
    moveToSlot(SpeedItem1, SpeedSlot1)
    moveToSlot(SpeedItem2, SpeedSlot2)
end

uzu.DefMode = function()
    belial:setText("TANK")
    belial:setColor("blue")
    moveToSlot(DefItem1, DefSlot1)
    moveToSlot(DefItem2, DefSlot2)
end

 uzu.SetupMode = function()
    belial:setText("MANUAL")
    belial:setColor("white")
end

macro(100, function()
    if not storage.uzu.index then return end
    local index = storage.uzu.index
    if index == 1 then
        uzu.HpMode()
    elseif index == 2 then
         uzu.DefMode()
    elseif index == 3 then
        uzu.SpeedMode()
    else
        uzu.SetupMode()
    end
end)
