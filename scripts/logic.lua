-- Item Development
function has_machine_buster()
    return can_fix_support_car() and has("blumebearparts")
end

function has_powered_buster()
    return can_fix_support_car() and has("cannonkit")
end

function has_drill_arm()
    return can_fix_support_car() and has("blunteddrill")
end

function has_grenade_arm()
    return can_fix_support_car() and has("grenadekit")
end

function has_spread_buster()
    return can_fix_support_car() and has("ancientbook") and has("oldlauncher") and has("armsupporter")
end

function has_vacuum_arm()
    return can_fix_support_car() and has("brokenmotor") and has("brokencleaner") and has("brokenpropeller")
end

function has_active_buster()
    return can_fix_support_car() and has("guidanceunit")
end

function has_blade_arm()
    return can_fix_support_car() and has("penlight") and has("zetsabre")
end

function has_grand_grenade()
    return can_fix_support_car() and has("bombschematic")
end

function has_splash_mine()
    return can_fix_support_car() and has("minepartskit")
end

function has_shield_arm()
    return can_fix_support_car() and has("mysticorb") and has("marlwolfshell")
end

function has_shining_laser()
    return can_fix_support_car() and has("prismcrystal") and has("xbuster") and has("weaponplans")
end

function has_helmet()
    return can_fix_support_car() and has("safetyhelmet")
end

function has_jet_skates()
    return can_fix_support_car() and has("rollerboard") and has("oldhoverjets")
end

function has_jump_springs()
    return has("jumpsprings")
end

function has_adapter_plug()
    return can_fix_support_car() and has("jointplug")
end

-- Location Logic
function is_main_gate_accessible()
    return has("maingateunlock") or
        get_setting("shuffle_main_gate_unlock") == 2 or
        (get_setting("shuffle_main_gate_unlock") == 0 and can_activate_emergency_system())
end

function is_downtown_sub_city_accessible()
    return is_citizens_card_accessible() and
        (
            has("subcityunlock") or
            get_setting("shuffle_sub_cities_unlock") == 2 or
            (get_setting("shuffle_sub_cities_unlock") == 0 and is_main_gate_accessible())
        )
end

function is_uptown_sub_city_accessible()
    return is_citizens_card_accessible() and
        (
            has("subcityunlock") or
            get_setting("shuffle_sub_cities_unlock") == 2 or
            (get_setting("shuffle_sub_cities_unlock") == 0 and is_main_gate_accessible())
        )
end

function is_old_city_sub_city_accessible()
    return is_citizens_card_accessible() and
        is_main_gate_accessible() and
        (
            has("subcityunlock") or
            get_setting("shuffle_sub_cities_unlock") == 2 or
            (get_setting("shuffle_sub_cities_unlock") == 0 and is_main_gate_accessible())
        )
end

function can_destroy_cracked_walls()
    return has_drill_arm() or has_grand_grenade()
end

function has_explosive_weapon()
    return can_fix_support_car() and (has_powered_buster() or has_grand_grenade() or has_active_buster() or has_spread_buster())
end

function has_clubhouse_items()
    return can_steal_yellow_refractor() and
        has("pick") and
        has("saw")
        -- has("stagbeetle") and
        -- has("beetle") and
        -- has("comicbook")
end

function has_museum_items()
    return has_clubhouse_items() and
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

function is_class_a_license_accessible()
    return has("classalicense") or
        get_setting("shuffle_class_a_license") == 2 or
        (get_setting("shuffle_class_a_license") == 0 and is_citizens_card_accessible())
end

function is_class_b_license_accessible()
    return has("classblicense") or
        get_setting("shuffle_class_b_license") == 2 or
        (get_setting("shuffle_class_b_license") == 0 and is_citizens_card_accessible())
end

function is_citizens_card_accessible()
    return has("citizenscard") or
        get_setting("shuffle_citizens_card") == 2 or
        get_setting("shuffle_citizens_card") == 0
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

function can_fix_support_car()
    return is_citizens_card_accessible()
end

function can_defeat_bon_bonne()
    return is_citizens_card_accessible()
end

function can_defeat_marlwolf()
    return is_citizens_card_accessible()
end

function can_steal_yellow_refractor()
    return has_cardon_forest_keys() and has("classalicense")
end

function can_steal_red_refractor()
    return has_lake_jyun_keys() and
        is_class_a_license_accessible() and
        (
            (is_citizens_card_accessible() and has("yellowrefractor") and has_jump_springs()) or
            (has_jump_springs() and can_destroy_cracked_walls())
        )
end

function can_fix_boat()
    return has("yellowrefractor") and is_citizens_card_accessible()
end

function can_fix_flutter()
    return has("redrefractor") and can_fix_support_car()
end

function has_main_gate_maze_access()
    return is_main_gate_accessible() or (has_drill_arm() and is_class_b_license_accessible())
end

function can_activate_emergency_system()
    return is_class_a_license_accessible() and
        has_clozer_woods_keys() and
        (
            -- Fix flutter and go through there
            can_fix_flutter() or
            -- Go through underground ruins
            (is_class_b_license_accessible() and has_drill_arm())
        )
end

-- @TEMP?
function has_pick()
    return has("pick")
end

function has_saw()
    return has("saw")
end

function has_old_bone()
    return has("oldbone")
end

function has_old_doll()
    return has("olddoll")
end

function has_antique_bell()
    return has("antiquebell")
end

function has_giant_horn()
    return has("gianthorn")
end

function has_shiny_object()
    return has("shinyobject")
end

function has_old_shield()
    return has("oldshield")
end

function has_shiny_red_stone()
    return has("shinyredstone")
end

function has_music_box()
    return has("musicbox")
end

function has_ring()
    return has("ring")
end

function has_bag()
    return has("bag")
end

function has_yellow_refractor()
    return has("yellowrefractor")
end
