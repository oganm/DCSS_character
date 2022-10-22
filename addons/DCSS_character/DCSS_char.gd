@tool
extends Node2D


var asset_dir = "res://addons/DCSS_character/player/"

enum barding_enum {none, black_knight, centaur_barding_blue, centaur_barding_magenta, centaur_barding_metal, centaur_barding_red, lightning_scales, naga_barding_blue, naga_barding_magenta, naga_barding_metal, naga_barding_red}
@export var barding:barding_enum = 0:
	set = set_barding
func set_barding(_barding):
	barding = _barding
	if barding != 0:
		get_node('Barding').texture = load(asset_dir + '/barding/' + barding_enum.keys()[barding]+'.png')
	else:
		get_node('Barding').texture = null

enum base_enum {none, centaur_brown_female, centaur_brown_male, centaur_darkbrown_female, centaur_darkbrown_male, centaur_darkgrey_female, centaur_darkgrey_male, centaur_lightbrown_female, centaur_lightbrown_male, centaur_lightgrey_female, centaur_lightgrey_male, deep_dwarf_female, deep_dwarf_male, deep_elf_female, deep_elf_male, demigod_male, demonspawn_black_female, demonspawn_black_male, demonspawn_pink, demonspawn_red_female, demonspawn_red_male, draconian_black_female, draconian_black_male, draconian_female, draconian_gold_female, draconian_gold_male, draconian_gray_female, draconian_gray_male, draconian_green_female, draconian_green_male, draconian_male, draconian_mottled_female, draconian_mottled_male, draconian_pale_female, draconian_pale_male, draconian_purple_female, draconian_purple_male, draconian_red_female, draconian_red_male, draconian_white_female, draconian_white_male, dwarf_female, dwarf_male, elf_female, elf_male, formicid, gargoyle_female, gargoyle_male, ghoul, ghoul_2_female, ghoul_2_male, gnome_female, gnome_male, halfling_female, halfling_male, human_female, human_male, kenku_winged_female, kenku_winged_male, kenku_wingless_female, kenku_wingless_male, kobold_female_new, kobold_female_old, kobold_male_new, kobold_male_old, lorc_female_0, lorc_female_1, lorc_female_2, lorc_female_3, lorc_female_4, lorc_female_5, lorc_female_6, lorc_male_0, lorc_male_1, lorc_male_2, lorc_male_3, lorc_male_4, lorc_male_5, lorc_male_6, merfolk_female, merfolk_male, merfolk_water_female, merfolk_water_male, minotaur_brown_1_male, minotaur_brown_2_male, minotaur_female, minotaur_male, mummy_female, mummy_male, naga_blue_female, naga_blue_male, naga_darkgreen_female, naga_darkgreen_male, naga_female, naga_lightgreen_female, naga_lightgreen_male, naga_male, naga_red_female, naga_red_male, octopode_1, octopode_2, octopode_3, octopode_4, octopode_5, ogre_female, ogre_male, orc_female, orc_male, shadow, spriggan_female, spriggan_male, tengu_wingless_brown_female, tengu_wingless_brown_male, troll_female, troll_male, vampire_female, vampire_male}
@export var base:base_enum = 0:
	set = set_base
func set_base(_base):
	base = _base
	if base != 0:
		get_node('Base').texture = load(asset_dir + '/base/' + base_enum.keys()[base]+'.png')
	else:
		get_node('Base').texture = null

enum beard_enum {none, long_black, long_green, long_red, long_white, long_yellow, pj, short_black, short_green, short_red, short_white, short_yellow}
@export var beard:beard_enum = 0:
	set = set_beard
func set_beard(_beard):
	beard = _beard
	if beard != 0:
		get_node('Beard').texture = load(asset_dir + '/beard/' + beard_enum.keys()[beard]+'.png')
	else:
		get_node('Beard').texture = null

enum body_enum {none, animal_skin, aragorn, aragorn_2, armor_blue_gold, armor_mummy, arwen, banded, banded_2, belt_1, belt_2, bikini_red, bloody, boromir, bplate_green, bplate_metal_1, breast_black, chainmail, chainmail_3, china_red, china_red_2, chunli, coat_black, coat_red, crystal_plate, dragon_armor_blue_new, dragon_armor_blue_old, dragon_armor_brown_new, dragon_armor_brown_old, dragon_armor_cyan_new, dragon_armor_cyan_old, dragon_armor_gold_new, dragon_armor_gold_old, dragon_armor_green, dragon_armor_magenta_new, dragon_armor_magenta_old, dragon_armor_pearl, dragon_armor_quicksilver, dragon_armor_shadow, dragon_armor_white_new, dragon_armor_white_old, dragon_scale_blue_new, dragon_scale_blue_old, dragon_scale_brown_new, dragon_scale_brown_old, dragon_scale_cyan_new, dragon_scale_cyan_old, dragon_scale_gold_new, dragon_scale_gold_old, dragon_scale_green, dragon_scale_magenta_new, dragon_scale_magenta_old, dragon_scale_pearl, dragon_scale_quicksilver, dragon_scale_shadow, dragon_scale_white_new, dragon_scale_white_old, dress_green, dress_white, faerie_dragon_armor, frodo, gandalf_g, gil_galad, gimli, green_chain, green_susp, half_plate, half_plate_2, half_plate_3, isildur, jacket_2, jacket_3, jacket_stud, jessica, karate, karate_2, lears_chain_mail, leather_2, leather_armor, leather_armor_2, leather_armor_3, leather_green, leather_heavy, leather_jacket, leather_metal, leather_red, leather_short, leather_stud, legolas, maxwell_new, maxwell_old, merry, mesh_black, mesh_red, metal_blue, monk_black, monk_blue, neck, orange_crystal, pipin, pj, plate, plate_2, plate_and_cloth, plate_and_cloth_2, plate_black, ringmail, robe_black, robe_black_gold, robe_black_hood, robe_black_red, robe_blue, robe_blue_green, robe_blue_white, robe_brown, robe_brown_2, robe_brown_3, robe_clouds, robe_cyan, robe_gray_2, robe_green, robe_green_gold, robe_jester, robe_misfortune, robe_of_night, robe_purple, robe_rainbow, robe_red, robe_red_2, robe_red_3, robe_red_gold, robe_white, robe_white_2, robe_white_blue, robe_white_green, robe_white_red, robe_yellow, sam, saruman, scalemail, scalemail_2, shirt_black, shirt_black_3, shirt_black_and_cloth, shirt_blue, shirt_check, shirt_hawaii, shirt_vest, shirt_white_1, shirt_white_2, shirt_white_3, shirt_white_yellow, shoulder_pad, skirt_onep_grey, slit_black, susp_black, troll_hide, vanhel_1, vest_red, vest_red_2, zhor}
@export var body:body_enum = 0:
	set = set_body
func set_body(_body):
	body = _body
	if body != 0:
		get_node('Body').texture = load(asset_dir + '/body/' + body_enum.keys()[body]+'.png')
	else:
		get_node('Body').texture = null

enum boots_enum {none, blue_gold, hooves, long_red, long_white, mesh_black, mesh_blue, mesh_red, mesh_white, middle_brown, middle_brown_2, middle_brown_3, middle_gold, middle_gray, middle_green, middle_purple, middle_ybrown, pj, short_brown, short_brown_2, short_purple, short_red, spider}
@export var boots:boots_enum = 0:
	set = set_boots
func set_boots(_boots):
	boots = _boots
	if boots != 0:
		get_node('Boots').texture = load(asset_dir + '/boots/' + boots_enum.keys()[boots]+'.png')
	else:
		get_node('Boots').texture = null

enum cloak_enum {none, black, blue, brown, cyan, dragonskin, gray, green, magenta, ratskin, red, white, yellow}
@export var cloak:cloak_enum = 0:
	set = set_cloak
func set_cloak(_cloak):
	cloak = _cloak
	if cloak != 0:
		get_node('Cloak').texture = load(asset_dir + '/cloak/' + cloak_enum.keys()[cloak]+'.png')
	else:
		get_node('Cloak').texture = null

enum draconic_head_enum {none, draconic_head_black, draconic_head_brown, draconic_head_green, draconic_head_grey, draconic_head_mottled, draconic_head_pale, draconic_head_purple, draconic_head_red, draconic_head_white, draconic_head_yellow}
@export var draconic_head:draconic_head_enum = 0:
	set = set_draconic_head
func set_draconic_head(_draconic_head):
	draconic_head = _draconic_head
	if draconic_head != 0:
		get_node('Draconic Head').texture = load(asset_dir + '/draconic_head/' + draconic_head_enum.keys()[draconic_head]+'.png')
	else:
		get_node('Draconic Head').texture = null

enum draconic_wing_enum {none, draconic_wing_black, draconic_wing_brown, draconic_wing_green, draconic_wing_grey, draconic_wing_mottled, draconic_wing_pale, draconic_wing_purple, draconic_wing_red, draconic_wing_white, draconic_wing_yellow}
@export var draconic_wing:draconic_wing_enum = 0:
	set = set_draconic_wing
func set_draconic_wing(_draconic_wing):
	draconic_wing = _draconic_wing
	if draconic_wing != 0:
		get_node('Draconic Wing').texture = load(asset_dir + '/draconic_wing/' + draconic_wing_enum.keys()[draconic_wing]+'.png')
	else:
		get_node('Draconic Wing').texture = null

enum enchantment_enum {none, sticky_flame}
@export var enchantment:enchantment_enum = 0:
	set = set_enchantment
func set_enchantment(_enchantment):
	enchantment = _enchantment
	if enchantment != 0:
		get_node('Enchantment').texture = load(asset_dir + '/enchantment/' + enchantment_enum.keys()[enchantment]+'.png')
	else:
		get_node('Enchantment').texture = null

enum felids_enum {none, cat_10, cat_6, cat_7, cat_8, cat_9}
@export var felids:felids_enum = 0:
	set = set_felids
func set_felids(_felids):
	felids = _felids
	if felids != 0:
		get_node('Felids').texture = load(asset_dir + '/felids/' + felids_enum.keys()[felids]+'.png')
	else:
		get_node('Felids').texture = null

enum form_enum {none, bat_form, dragon_form, dragon_form_black, dragon_form_green, dragon_form_grey, dragon_form_mottled, dragon_form_pale, dragon_form_purple, dragon_form_red, dragon_form_white, dragon_form_yellow, ice_form, lich_form, lich_form_octopode, mushroom_form, pig_form_new, pig_form_old, shadow_form, statue_form_centaur, statue_form_felid, statue_form_humanoid, statue_form_naga, tree_form}
@export var form:form_enum = 0:
	set = set_form
func set_form(_form):
	form = _form
	if form != 0:
		get_node('Form').texture = load(asset_dir + '/form/' + form_enum.keys()[form]+'.png')
	else:
		get_node('Form').texture = null

enum gloves_enum {none, claws, gauntlet_blue, glove_black, glove_black_2, glove_blue, glove_brown, glove_chunli, glove_gold, glove_gray, glove_grayfist, glove_orange, glove_purple, glove_red, glove_short_blue, glove_short_gray, glove_short_green, glove_short_red, glove_short_white, glove_short_yellow, glove_white, glove_wrist_purple}
@export var gloves:gloves_enum = 0:
	set = set_gloves
func set_gloves(_gloves):
	gloves = _gloves
	if gloves != 0:
		get_node('Gloves').texture = load(asset_dir + '/gloves/' + gloves_enum.keys()[gloves]+'.png')
	else:
		get_node('Gloves').texture = null

enum hair_enum {none, aragorn, arwen, boromir, brown_1, brown_2, djinn_1, djinn_2, elf_black, elf_red, elf_white, elf_yellow, fem_black, fem_red, fem_white, fem_yellow, frodo, green, knot_red, legolas, long_black, long_red, long_white, long_yellow, merry, pigtails_brown, pigtails_yellow, pigtail_red, pj, ponytail_yellow, sam, short_black, short_red, short_white, short_yellow, tengu_comb}
@export var hair:hair_enum = 0:
	set = set_hair
func set_hair(_hair):
	hair = _hair
	if hair != 0:
		get_node('Hair').texture = load(asset_dir + '/hair/' + hair_enum.keys()[hair]+'.png')
	else:
		get_node('Hair').texture = null

enum halo_enum {none, halo_player}
@export var halo:halo_enum = 0:
	set = set_halo
func set_halo(_halo):
	halo = _halo
	if halo != 0:
		get_node('Halo').texture = load(asset_dir + '/halo/' + halo_enum.keys()[halo]+'.png')
	else:
		get_node('Halo').texture = null

enum hand_left_enum {none, book_black, book_blue, book_blue_dim, book_cyan, book_cyan_dim, book_green, book_green_dim, book_magenta, book_magenta_dim, book_red, book_red_dim, book_sky, book_white, book_yellow, book_yellow_dim, boromir, buckler_green, buckler_rb, buckler_round_2, buckler_round_3, buckler_spiral, bullseye, dagger_new, dagger_old, fire_cyan, fire_dark, fire_green, fire_white, fire_white_2, flail_great, flail_great_2, giant_club, giant_club_plain, giant_club_slant, giant_club_spike, giant_club_spike_slant, gil_galad, gong, great_mace, great_mace_2, lantern, light_blue, light_red, light_yellow, lshield_gold, lshield_green, lshield_long_red, lshield_louise, lshield_quartered, lshield_spiral, lshield_teal, pj, rapier_2, sabre, shield_dd, shield_dd_scion, shield_diamond_yellow, shield_donald, shield_draconic_knight, shield_goblin, shield_holy, shield_kite_1, shield_kite_2, shield_kite_3, shield_kite_4, shield_knight_blue, shield_knight_gray, shield_knight_rw, shield_large_dd_dk, shield_long_cross, shield_long_red, shield_middle_black, shield_middle_brown, shield_middle_cyan, shield_middle_ethn, shield_middle_gray, shield_middle_round, shield_middle_unicorn, shield_of_ignorance, shield_of_resistance, shield_round_1, shield_round_2, shield_round_3, shield_round_4, shield_round_5, shield_round_6, shield_round_7, shield_round_small, shield_round_white, shield_shaman, shield_skull, shield_spriggan, short_sword_slant_2, short_sword_slant_new, short_sword_slant_old, spark, torch, torch_2}
@export var hand_left:hand_left_enum = 0:
	set = set_hand_left
func set_hand_left(_hand_left):
	hand_left = _hand_left
	if hand_left != 0:
		get_node('Hand Left').texture = load(asset_dir + '/hand_left/' + hand_left_enum.keys()[hand_left]+'.png')
	else:
		get_node('Hand Left').texture = null

enum hand_right_enum {none, aragorn, arc_blade, arga_new, arga_old, arwen, asmodeus_new, asmodeus_old, axe, axe_blood, axe_double, axe_executioner_2, axe_executioner_new, axe_executioner_old, axe_of_woe, axe_short, axe_small, axe_trog, battleaxe, battleaxe_2, black_sword, black_whip_new, black_whip_old, bladehands_fe, bladehands_new, bladehands_old, bladehands_op, blessed_blade, bloodbane_new, bloodbane_old, blowgun, blowgun_assassin, bone_lantern, boromir, botono, bottle, bow, bow_2, bow_3, bow_blue, box, broadsword, broad_axe, chilly_death_new, chilly_death_old, club, club_2, club_3, club_slant, crossbow, crossbow_2, crossbow_3, crossbow_4, crossbow_fire, crystal, crystal_spear_new, crystal_spear_old, cutlass, dagger_new, dagger_old, dagger_slant_2, dagger_slant_new, dagger_slant_old, dart, deck, dire_lajatang, disc, dispater_new, dispater_old, doom_knight_new, doom_knight_old, double_sword_2, double_sword_3, double_sword_new, double_sword_old, d_glaive, elemental_staff, enchantress_dagger, eos, eveningstar_2, eveningstar_new, eveningstar_old, falchion_2, falchion_new, falchion_old, fan, finisher, firestarter, fire_blue, fire_cyan, fire_dark, fire_green, fire_red, fire_white, fire_white_2, flail_balls, flail_ball_2_new, flail_ball_2_old, flail_ball_3, flail_ball_4, flail_ball_new, flail_ball_old, flail_great, flail_great_2, flail_spike, flail_spike_2, flail_stick, flail_stick_slant, flaming_death_new, flaming_death_old, fork_2, frodo, gandalf, giant_club, giant_club_plain, giant_club_slant, giant_club_spike, giant_club_spike_slant, gimli, glaive_2, glaive_3, glaive_new, glaive_of_prune_new, glaive_of_prune_old, glaive_of_the_guard_new, glaive_of_the_guard_old, glaive_old, glaive_three, glaive_three_2, greatsling, great_axe, great_bow, great_mace, great_mace_2, great_staff, great_sword, great_sword_slant_2, great_sword_slant_new, great_sword_slant_old, gyre, halberd_new, halberd_old, hammer_2_new, hammer_2_old, hammer_3, hammer_new, hammer_old, hand_axe_2, hand_axe_new, hand_axe_old, hand_crossbow, head, heavy_sword, holy_scourge_1, holy_scourge_2, hook, horn, jihad, katana, katana_slant, knife, knife_of_accuracy, krishna, lance, lance_2, lantern, large_mace, leech, legolas, light_blue, light_red, light_yellow, long_sword, long_sword_slant_2, long_sword_slant_new, long_sword_slant_old, mace_2_new, mace_2_old, mace_3, mace_new, mace_of_brilliance, mace_of_variability, mace_old, mace_ruby_new, mace_ruby_old, majin, morg, morningstar_2_new, morningstar_2_old, morningstar_new, morningstar_old, nunchaku, olgreb, orb, order, pick_axe, pike, plutonium_sword_new, plutonium_sword_old, pole_forked, punk, quarterstaff, quarterstaff_1, quarterstaff_2_new, quarterstaff_2_old, quarterstaff_3, quarterstaff_4, quarterstaff_jester, rapier, rapier_2, rod_aries_new, rod_aries_old, rod_blue_new, rod_blue_old, rod_brown_new, rod_brown_old, rod_emerald_new, rod_emerald_old, rod_forked_new, rod_forked_old, rod_hammer_new, rod_hammer_old, rod_magenta_new, rod_magenta_old, rod_moon_new, rod_moon_old, rod_ruby_new, rod_ruby_old, rod_thick_new, rod_thick_old, sabre, saruman, scepter, scimitar_new, scimitar_old, scythe_2, scythe_new, scythe_old, scythe_slant, serpent_scourge, shillelagh, short_sword, short_sword_2, short_sword_slant_2, short_sword_slant_3, short_sword_slant_new, short_sword_slant_old, sickle, singing_sword, skull, sling, sniper, spark, spear, spear_1, spear_2_new, spear_2_old, spear_3, spear_4, spear_5, spriggans_knife_new, spriggans_knife_old, staff_evil, staff_fancy, staff_fork, staff_large, staff_mage, staff_mage_2, staff_mummy, staff_organic, staff_plain, staff_ring_blue, staff_ruby, staff_scepter, staff_skull, stick, stone, sword_2, sword_3, sword_black, sword_breaker, sword_jag, sword_of_power_new, sword_of_power_old, sword_seven, sword_thief, sword_tri, sword_twist, trident, trident_2, trident_3, trident_demon, trident_elec, trident_octopus_king, trident_two, trident_two_2, triple_sword_2, triple_sword_new, triple_sword_old, trishula, undeadhunter, vampires_tooth, war_axe_new, war_axe_old, whip_2, whip_new, whip_old, wucad_mu, wyrmbane, zonguldrok}
@export var hand_right:hand_right_enum = 0:
	set = set_hand_right
func set_hand_right(_hand_right):
	hand_right = _hand_right
	if hand_right != 0:
		get_node('Hand Right').texture = load(asset_dir + '/hand_right/' + hand_right_enum.keys()[hand_right]+'.png')
	else:
		get_node('Hand Right').texture = null

enum head_enum {none, art_dragonhelm, bandana_ybrown, band_blue, band_magenta, band_red, band_white, band_yellow, bear, black_horn, black_horn_2, blue_horn_gold, brown_gold, cap_black_1, cap_blue, chain, cheek_red, clown_1, clown_2, cone_blue, cone_red, crown_gold_1, crown_gold_2, crown_gold_3, dyrovepreva_new, dyrovepreva_old, eternal_torment, etheric_cage, feather_blue, feather_green, feather_red, feather_white, feather_yellow, fhelm_gray_3, fhelm_horn_2, fhelm_horn_yellow, full_black, full_gold, gandalf, hat_black, healer, helm_gimli, helm_green, helm_plume, helm_red, hood_black_2, hood_cyan, hood_gray, hood_green, hood_green_2, hood_orange, hood_red, hood_red_2, hood_white, hood_white_2, hood_ybrown, horned, horns_1, horns_2, horns_3, horn_evil, horn_gray, iron_1, iron_2, iron_3, iron_red, isildur, mummy, ninja_black, straw, taiso_blue, taiso_magenta, taiso_red, taiso_white, taiso_yellow, turban_brown, turban_purple, turban_white, viking_brown_1, viking_brown_2, viking_gold, wizard_blackgold, wizard_blackred, wizard_blue, wizard_bluegreen, wizard_brown, wizard_darkgreen, wizard_lightgreen, wizard_purple, wizard_red, wizard_white, yellow_wing}
@export var head:head_enum = 0:
	set = set_head
func set_head(_head):
	head = _head
	if head != 0:
		get_node('Head').texture = load(asset_dir + '/head/' + head_enum.keys()[head]+'.png')
	else:
		get_node('Head').texture = null

enum legs_enum {none, belt_gray, belt_redbrown, bikini_red, chunli, garter, leg_armor_0, leg_armor_1, leg_armor_2, leg_armor_3, leg_armor_4, leg_armor_5, loincloth_red, long_red, metal_gray, metal_green, pants_16, pants_black, pants_blue, pants_brown, pants_darkgreen, pants_l_white, pants_orange, pants_red, pants_short_brown, pants_short_brown_3, pants_short_darkbrown, pants_short_gray, pj, skirt_blue, skirt_green, skirt_red, skirt_white, skirt_white_2, trouser_green}
@export var legs:legs_enum = 0:
	set = set_legs
func set_legs(_legs):
	legs = _legs
	if legs != 0:
		get_node('Legs').texture = load(asset_dir + '/legs/' + legs_enum.keys()[legs]+'.png')
	else:
		get_node('Legs').texture = null

enum mutations_enum {none, cat_10, cat_6, cat_7, cat_8, cat_9, octopode_1}
@export var mutations:mutations_enum = 0:
	set = set_mutations
func set_mutations(_mutations):
	mutations = _mutations
	if mutations != 0:
		get_node('Mutations').texture = load(asset_dir + '/mutations/' + mutations_enum.keys()[mutations]+'.png')
	else:
		get_node('Mutations').texture = null

