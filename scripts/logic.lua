-- Item Development
function has_machine_buster()
    return has("blumebearparts")
end

function has_powered_buster()
    return has("cannonkit")
end

function has_drill_arm()
    return has("blunteddrill")
end

function has_grenade_arm()
    return has("grenadekit")
end

function has_spread_buster()
    return has("ancientbook") and has("oldlauncher") and has("armsupporter")
end

function has_vacuum_arm()
    return has("brokenmotor") and has("brokencleaner") and has("brokenpropeller")
end

function has_active_buster()
    return has("guidanceunit")
end

function has_blade_arm()
    return has("penlight") and has("zetsabre")
end

function has_grand_grenade()
    return has("bombschematic")
end

function has_splash_mine()
    return has("minepartskit")
end

function has_shield_arm()
    return has("mysticorb") and has("marlwolfshell")
end

function has_shining_laser()
    return has("prismcrystal") and has("xbuster") and has("weaponplans")
end

function has_helmet()
    return has("safetyhelmet")
end

function has_jet_skates()
    return has("rollerboard") and has("oldhoverjets")
end

function has_jump_springs()
    return has("springset")
end

function has_adapter_plug()
    return has("jointplug")
end

-- Location Logic
function can_destroy_cracked_walls()
    return has_drill_arm() or has_grand_grenade()
end

function has_explosive_weapon()
    return has_powered_buster() or has_grand_grenade() or has_active_buster() or has_spread_buster()
end
