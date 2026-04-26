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

function has_completed_clubhouse()
    return  has_completed_cardon_forest() and
        has("pick") and
        has("saw")
        -- has("stagbeetle") and
        -- has("beetle") and
        -- has("comicbook")
end

function has_completed_museum()
    return has_completed_clubhouse() and
        -- has("lipstick") and
        has("oldbone") and
        -- has("holdheater") and
        has("olddoll") and
        has("antiquebell") and
        has("gianthorn") and
        has("shinyobject") and
        has("oldshield") and
        has("shinyredstone")
end

function has_cardon_forest_keys()
    return has("cardonkey1") and has("cardonkey2") and has("cardonkey3")
end

function has_lake_jyun_keys()
    return has("lakekey1") and has("lakekey2") and has("lakekey3")
end

function has_clozer_woods_keys()
    return has("clozerkey1") and has("clozerkey2") and has("clozerkey3")
end

function has_sub_city_keys()
    return has("watcherkey") and has("dreamerkey") and has("sleeperkey")
end

function has_completed_cardon_forest()
    return has_cardon_forest_keys()
end

function has_completed_lake_jyun()
    return has_completed_cardon_forest() and has_jump_springs() and has_lake_jyun_keys()
end

function has_completed_clozer_woods()
    return has_completed_cardon_forest() and has_completed_lake_jyun() and has_clozer_woods_keys()
end

function has_main_gate_maze_access()
    return has_drill_arm() or has_completed_clozer_woods()
end
