local f = CreateFrame("Frame")

f:SetScript("OnEvent", function ()
	local _, instanceType = IsInInstance()
    local mapid = GetCurrentMapAreaID()
    -- Disable Logging in Garrison 7078 = Lunarfall 7004 = Frostwall
    if not IsMapGarrisonMap(mapid) then
	    if instanceType == "raid" or instanceType == "party" then
	    	if not LoggingCombat() then
	    		LoggingCombat(true)
	    		print("ACL: You have entered an instance, combat logging |cff00FF00enabled|r")
	    	end
	    else
	    	if LoggingCombat() then
	    		LoggingCombat(false)
	    		print("ACL: You are not in an instance, combat logging |cffFF0000disabled|r")
	    
	    	end
	    end
    end
end)

f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("ZONE_CHANGED_NEW_AREA")