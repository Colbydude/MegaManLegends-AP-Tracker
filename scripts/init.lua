ENABLE_DEBUG_LOG = true -- Disable before any releases

local variant = Tracker.ActiveVariantUID
IS_STANDARD = variant:find("standard")
IS_ITEMS_ONLY = variant:find("itemsonly")

if ENABLE_DEBUG_LOG then
    print("Debug logging is enabled!")
end

ScriptHost:LoadScript("scripts/utils.lua")
ScriptHost:LoadScript("scripts/logic.lua")
ScriptHost:LoadScript("scripts/regions.lua")
ScriptHost:LoadScript("scripts/items.lua")

if IS_STANDARD then
    Tracker:AddMaps("maps/maps.jsonc")
    Tracker:AddLayouts("layouts/tabs.jsonc")
    ScriptHost:LoadScript("scripts/locations.lua")
    ScriptHost:LoadScript("scripts/layouts.lua")
end

if PopVersion and PopVersion >= "0.18.0" then
    ScriptHost:LoadScript("scripts/autotracking.lua")
end
