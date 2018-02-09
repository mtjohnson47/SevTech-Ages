#priority -2

import crafttweaker.item.IIngredient;

var STAGE = STAGES.five;

//Entire Mods into Stage five
var modIDs as string[] = [
	"compactmachines3",
	"environmentaltech",
	"extraplanets",
	"ironjetpacks",
	"quantumstorage",
	"scannable"
];

for id in modIDs {
    for item in loadedMods[id].items {
        mods.recipestages.Recipes.setRecipeStage(STAGE, item);
    }
}

var itemsForStage as IIngredient[] = [
	//Oredict
	<ore:gearDiamond>,

	//Misc
	<betterbuilderswands:wanddiamond>,
	<betterwithaddons:diamond_carpentersaw>,
	<betterwithaddons:diamond_kukri>,
	<betterwithaddons:diamond_machete>,
	<betterwithaddons:diamond_masonpick>,
	<betterwithaddons:diamond_matchpick>,
	<betterwithaddons:diamond_spade>,
	<betterwithmods:material:45>,
	<betterwithmods:material:46>,
	<chisel:chisel_diamond>,
	<chisel:chisel_hitech>,
	<chiselsandbits:bitsaw_diamond>,
	<chiselsandbits:chisel_diamond>,
	<cyclicmagic:horse_upgrade_health>,
	<cyclicmagic:spikes_diamond>,
	<extendedcrafting:table_ultimate>,
	<ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}),
	<jaff:diamond_fishing_rod>,
	<minecraft:diamond_boots>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_leggings>,
	<pickletweaks:diamond_apple>,
	<pickletweaks:repair_kit:4>,
	<rangedpumps:pump>,

	/*
		Items by "type"
	*/
	//Emerald
	<extendedcrafting:material:129>,
	<extendedcrafting:trimmed:3>,
	<minecraft:emerald>,
	<minecraft:emerald_block>,
	<minecraft:emerald_ore>,
	<pickletweaks:emerald_apple>,
	<primal:emerald_axe>,
	<primal:emerald_hatchet>,
	<primal:emerald_hoe>,
	<primal:emerald_pickaxe>,
	<primal:emerald_shovel>,
	<primal:emerald_workblade>,

	//Diamond Stuff
	<cyclicmagic:block_anvil>,
	<minecraft:diamond_horse_armor>,

	//Shulker
	<minecraft:purple_shulker_box>,

	//End
	<minecraft:chorus_flower>,
	<minecraft:chorus_fruit>,
	<minecraft:chorus_fruit_popped>,
	<minecraft:chorus_plant>,
	<minecraft:dragon_breath>,
	<minecraft:dragon_egg>,
	<minecraft:elytra>,
	<minecraft:end_bricks>,
	<minecraft:end_crystal>,
	<minecraft:end_rod>,
	<minecraft:end_stone>,
	<minecraft:purpur_block>,
	<minecraft:purpur_pillar>,
	<minecraft:purpur_slab>,
	<quark:end_bricks_slab>,
	<quark:end_bricks_stairs>,
	<quark:end_bricks_wall>,

	/*
		Items by mod
	*/
	//Primal Core
	<primal:diamond_axe>,
	<primal:diamond_hatchet>,
	<primal:diamond_hoe>,
	<primal:diamond_pickaxe>,
	<primal:diamond_saw>,
	<primal:diamond_shovel>,
	<primal:diamond_workblade>,

	//Iron Chest
	<ironchest:diamond_crystal_chest_upgrade>,
	<ironchest:gold_diamond_chest_upgrade>,
	<ironchest:iron_chest:2>,
	<ironchest:iron_chest:5>,

	//Actually Additions
	<actuallyadditions:block_atomic_reconstructor>,
	<actuallyadditions:block_breaker>,
	<actuallyadditions:block_colored_lamp:2>,
	<actuallyadditions:block_colored_lamp:*>,
	<actuallyadditions:block_crystal:1>,
	<actuallyadditions:block_crystal:2>,
	<actuallyadditions:block_crystal:3>,
	<actuallyadditions:block_crystal:4>,
	<actuallyadditions:block_crystal:5>,
	<actuallyadditions:block_crystal>,
	<actuallyadditions:block_crystal_empowered:1>,
	<actuallyadditions:block_crystal_empowered:2>,
	<actuallyadditions:block_crystal_empowered:3>,
	<actuallyadditions:block_crystal_empowered:4>,
	<actuallyadditions:block_crystal_empowered:5>,
	<actuallyadditions:block_crystal_empowered>,
	<actuallyadditions:block_display_stand>,
	<actuallyadditions:block_dropper>,
	<actuallyadditions:block_empowerer>,
	<actuallyadditions:block_energizer>,
	<actuallyadditions:block_enervator>,
	<actuallyadditions:block_firework_box>,
	<actuallyadditions:block_fluid_collector>,
	<actuallyadditions:block_fluid_placer>,
	<actuallyadditions:block_inputter>,
	<actuallyadditions:block_inputter_advanced>,
	<actuallyadditions:block_item_repairer>,
	<actuallyadditions:block_item_viewer>,
	<actuallyadditions:block_lamp_powerer>,
	<actuallyadditions:block_laser_relay>,
	<actuallyadditions:block_laser_relay_advanced>,
	<actuallyadditions:block_laser_relay_extreme>,
	<actuallyadditions:block_laser_relay_fluids>,
	<actuallyadditions:block_laser_relay_item>,
	<actuallyadditions:block_laser_relay_item_whitelist>,
	<actuallyadditions:block_lava_factory_controller>,
	<actuallyadditions:block_leaf_generator>,
	<actuallyadditions:block_miner>,
	<actuallyadditions:block_phantom_booster>,
	<actuallyadditions:block_phantom_breaker>,
	<actuallyadditions:block_phantom_energyface>,
	<actuallyadditions:block_phantom_liquiface>,
	<actuallyadditions:block_phantom_placer>,
	<actuallyadditions:block_phantom_redstoneface>,
	<actuallyadditions:block_phantomface>,
	<actuallyadditions:block_placer>,
	<actuallyadditions:block_player_interface>,
	<actuallyadditions:block_ranged_collector>,
	<actuallyadditions:block_shock_suppressor>,
	<actuallyadditions:block_testifi_bucks_green_fence>,
	<actuallyadditions:block_testifi_bucks_green_slab>,
	<actuallyadditions:block_testifi_bucks_green_stairs>,
	<actuallyadditions:block_testifi_bucks_green_wall>,
	<actuallyadditions:block_testifi_bucks_white_fence>,
	<actuallyadditions:block_testifi_bucks_white_slab>,
	<actuallyadditions:block_testifi_bucks_white_stairs>,
	<actuallyadditions:block_testifi_bucks_white_wall>,
	<actuallyadditions:block_xp_solidifier>,
	<actuallyadditions:diamond_paxel>,
	<actuallyadditions:emerald_paxel>,
	<actuallyadditions:item_axe_crystal_black>,
	<actuallyadditions:item_axe_crystal_blue>,
	<actuallyadditions:item_axe_crystal_green>,
	<actuallyadditions:item_axe_crystal_light_blue>,
	<actuallyadditions:item_axe_crystal_red>,
	<actuallyadditions:item_axe_crystal_white>,
	<actuallyadditions:item_axe_emerald>,
	<actuallyadditions:item_boots_crystal_black>,
	<actuallyadditions:item_boots_crystal_blue>,
	<actuallyadditions:item_boots_crystal_green>,
	<actuallyadditions:item_boots_crystal_light_blue>,
	<actuallyadditions:item_boots_crystal_red>,
	<actuallyadditions:item_boots_crystal_white>,
	<actuallyadditions:item_boots_emerald>,
	<actuallyadditions:item_chest_crystal_black>,
	<actuallyadditions:item_chest_crystal_blue>,
	<actuallyadditions:item_chest_crystal_green>,
	<actuallyadditions:item_chest_crystal_light_blue>,
	<actuallyadditions:item_chest_crystal_red>,
	<actuallyadditions:item_chest_crystal_white>,
	<actuallyadditions:item_chest_emerald>,
	<actuallyadditions:item_color_lens>,
	<actuallyadditions:item_crystal:1>,
	<actuallyadditions:item_crystal:2>,
	<actuallyadditions:item_crystal:3>,
	<actuallyadditions:item_crystal:4>,
	<actuallyadditions:item_crystal:5>,
	<actuallyadditions:item_crystal>,
	<actuallyadditions:item_crystal_empowered:1>,
	<actuallyadditions:item_crystal_empowered:2>,
	<actuallyadditions:item_crystal_empowered:3>,
	<actuallyadditions:item_crystal_empowered:4>,
	<actuallyadditions:item_crystal_empowered:5>,
	<actuallyadditions:item_crystal_empowered>,
	<actuallyadditions:item_crystal_shard:1>,
	<actuallyadditions:item_crystal_shard:2>,
	<actuallyadditions:item_crystal_shard:3>,
	<actuallyadditions:item_crystal_shard:4>,
	<actuallyadditions:item_crystal_shard:5>,
	<actuallyadditions:item_crystal_shard>,
	<actuallyadditions:item_damage_lens>,
	<actuallyadditions:item_disenchanting_lens>,
	<actuallyadditions:item_dust:2>,
	<actuallyadditions:item_engineer_goggles>,
	<actuallyadditions:item_engineer_goggles_advanced>,
	<actuallyadditions:item_explosion_lens>,
	<actuallyadditions:item_filling_wand>,
	<actuallyadditions:item_helm_crystal_black>,
	<actuallyadditions:item_helm_crystal_blue>,
	<actuallyadditions:item_helm_crystal_green>,
	<actuallyadditions:item_helm_crystal_light_blue>,
	<actuallyadditions:item_helm_crystal_red>,
	<actuallyadditions:item_helm_crystal_white>,
	<actuallyadditions:item_helm_emerald>,
	<actuallyadditions:item_hoe_crystal_black>,
	<actuallyadditions:item_hoe_crystal_blue>,
	<actuallyadditions:item_hoe_crystal_green>,
	<actuallyadditions:item_hoe_crystal_light_blue>,
	<actuallyadditions:item_hoe_crystal_red>,
	<actuallyadditions:item_hoe_crystal_white>,
	<actuallyadditions:item_hoe_emerald>,
	<actuallyadditions:item_laser_upgrade_invisibility>,
	<actuallyadditions:item_laser_upgrade_range>,
	<actuallyadditions:item_leaf_blower_advanced>,
	<actuallyadditions:item_mining_lens>,
	<actuallyadditions:item_misc:18>,
	<actuallyadditions:item_misc:19>,
	<actuallyadditions:item_misc:23>,
	<actuallyadditions:item_misc:24>,
	<actuallyadditions:item_more_damage_lens>,
	<actuallyadditions:item_pants_crystal_black>,
	<actuallyadditions:item_pants_crystal_blue>,
	<actuallyadditions:item_pants_crystal_green>,
	<actuallyadditions:item_pants_crystal_light_blue>,
	<actuallyadditions:item_pants_crystal_red>,
	<actuallyadditions:item_pants_crystal_white>,
	<actuallyadditions:item_pants_emerald>,
	<actuallyadditions:item_paxel_crystal_black>,
	<actuallyadditions:item_paxel_crystal_blue>,
	<actuallyadditions:item_paxel_crystal_green>,
	<actuallyadditions:item_paxel_crystal_light_blue>,
	<actuallyadditions:item_paxel_crystal_red>,
	<actuallyadditions:item_paxel_crystal_white>,
	<actuallyadditions:item_phantom_connector>,
	<actuallyadditions:item_pickaxe_crystal_black>,
	<actuallyadditions:item_pickaxe_crystal_blue>,
	<actuallyadditions:item_pickaxe_crystal_green>,
	<actuallyadditions:item_pickaxe_crystal_light_blue>,
	<actuallyadditions:item_pickaxe_crystal_red>,
	<actuallyadditions:item_pickaxe_crystal_white>,
	<actuallyadditions:item_pickaxe_emerald>,
	<actuallyadditions:item_player_probe>,
	<actuallyadditions:item_potion_ring_advanced:*>,
	<actuallyadditions:item_shovel_crystal_black>,
	<actuallyadditions:item_shovel_crystal_blue>,
	<actuallyadditions:item_shovel_crystal_green>,
	<actuallyadditions:item_shovel_crystal_light_blue>,
	<actuallyadditions:item_shovel_crystal_red>,
	<actuallyadditions:item_shovel_crystal_white>,
	<actuallyadditions:item_shovel_emerald>,
	<actuallyadditions:item_spawner_changer>,
	<actuallyadditions:item_suction_ring>,
	<actuallyadditions:item_sword_crystal_black>,
	<actuallyadditions:item_sword_crystal_blue>,
	<actuallyadditions:item_sword_crystal_green>,
	<actuallyadditions:item_sword_crystal_light_blue>,
	<actuallyadditions:item_sword_crystal_red>,
	<actuallyadditions:item_sword_crystal_white>,
	<actuallyadditions:item_sword_emerald>,
	<actuallyadditions:item_tele_staff>,
	<actuallyadditions:item_water_removal_ring>,

	//Steve's Factory Manager
	<stevesfactorymanager:blockcablebudname>,
	<stevesfactorymanager:blockcablecamouflagename:1>,
	<stevesfactorymanager:blockcablecamouflagename:2>,
	<stevesfactorymanager:blockcablecamouflagename>,
	<stevesfactorymanager:blockcableclustername:8>,
	<stevesfactorymanager:blockcableclustername>,
	<stevesfactorymanager:blockcableinputname>,
	<stevesfactorymanager:blockcableintakename:8>,
	<stevesfactorymanager:blockcableintakename>,
	<stevesfactorymanager:blockcablename>,
	<stevesfactorymanager:blockcableoutputname>,
	<stevesfactorymanager:blockcablerelayname:8>,
	<stevesfactorymanager:blockcablerelayname>,
	<stevesfactorymanager:blockcablesignname>,
	<stevesfactorymanager:blockmachinemanagername>,
	<stevesfactorymanager:memorydisk>,

	//Ender Storage
	<enderstorage:ender_pouch>,
	<enderstorage:ender_storage:1>,
	<enderstorage:ender_storage>,

	//Extended Crafting
	<extendedcrafting:compressor>,
	<extendedcrafting:material:11>,
	<extendedcrafting:material:12>,
	<extendedcrafting:material:13>,
	<extendedcrafting:material:17>,
	<extendedcrafting:material:18>,
	<extendedcrafting:material:19>,
	<extendedcrafting:material:24>,
	<extendedcrafting:material:25>,
	<extendedcrafting:material:32>,
	<extendedcrafting:material:33>,
	<extendedcrafting:material:140>,
	<extendedcrafting:storage:2>,
	<extendedcrafting:storage:3>,

	//Applied Energistics
	<appliedenergistics2:cell_workbench>,
	<appliedenergistics2:charged_staff>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:chest>,
	<appliedenergistics2:color_applicator>,
	<appliedenergistics2:condenser>,
	<appliedenergistics2:controller>,
	<appliedenergistics2:crafting_accelerator>,
	<appliedenergistics2:crafting_monitor>,
	<appliedenergistics2:crafting_storage_1k>,
	<appliedenergistics2:crafting_storage_4k>,
	<appliedenergistics2:crafting_storage_16k>,
	<appliedenergistics2:crafting_storage_64k>,
	<appliedenergistics2:crafting_unit>,
	<appliedenergistics2:creative_energy_cell>,
	<appliedenergistics2:creative_storage_cell>,
	<appliedenergistics2:crystal_seed:*>,
	<appliedenergistics2:dense_energy_cell>,
	<appliedenergistics2:drive>,
	<appliedenergistics2:encoded_pattern>,
	<appliedenergistics2:energy_cell>,
	<appliedenergistics2:entropy_manipulator>,
	<appliedenergistics2:io_port>,
	<appliedenergistics2:material:6>,
	<appliedenergistics2:material:9>,
	<appliedenergistics2:material:10>,
	<appliedenergistics2:material:11>,
	<appliedenergistics2:material:12>,
	<appliedenergistics2:material:14>,
	<appliedenergistics2:material:17>,
	<appliedenergistics2:material:24>,
	<appliedenergistics2:material:25>,
	<appliedenergistics2:material:26>,
	<appliedenergistics2:material:27>,
	<appliedenergistics2:material:28>,
	<appliedenergistics2:material:29>,
	<appliedenergistics2:material:30>,
	<appliedenergistics2:material:31>,
	<appliedenergistics2:material:32>,
	<appliedenergistics2:material:33>,
	<appliedenergistics2:material:34>,
	<appliedenergistics2:material:35>,
	<appliedenergistics2:material:36>,
	<appliedenergistics2:material:37>,
	<appliedenergistics2:material:38>,
	<appliedenergistics2:material:39>,
	<appliedenergistics2:material:41>,
	<appliedenergistics2:material:42>,
	<appliedenergistics2:material:47>,
	<appliedenergistics2:material:48>,
	<appliedenergistics2:material:52>,
	<appliedenergistics2:material:53>,
	<appliedenergistics2:matter_cannon>,
	<appliedenergistics2:memory_card>,
	<appliedenergistics2:molecular_assembler>,
	<appliedenergistics2:network_tool>,
	<appliedenergistics2:portable_cell>,
	<appliedenergistics2:quantum_link>,
	<appliedenergistics2:quantum_ring>,
	<appliedenergistics2:quartz_growth_accelerator>,
	<appliedenergistics2:security_station>,
	<appliedenergistics2:sky_compass>,
	<appliedenergistics2:sky_stone_block>,
	<appliedenergistics2:sky_stone_brick>,
	<appliedenergistics2:sky_stone_brick_slab>,
	<appliedenergistics2:sky_stone_brick_stairs>,
	<appliedenergistics2:sky_stone_slab>,
	<appliedenergistics2:sky_stone_small_brick>,
	<appliedenergistics2:sky_stone_small_brick_slab>,
	<appliedenergistics2:sky_stone_small_brick_stairs>,
	<appliedenergistics2:sky_stone_stairs>,
	<appliedenergistics2:smooth_sky_stone_block>,
	<appliedenergistics2:smooth_sky_stone_slab>,
	<appliedenergistics2:smooth_sky_stone_stairs>,
	<appliedenergistics2:spatial_io_port>,
	<appliedenergistics2:spatial_pylon>,
	<appliedenergistics2:spatial_storage_cell_2_cubed>,
	<appliedenergistics2:spatial_storage_cell_16_cubed>,
	<appliedenergistics2:spatial_storage_cell_128_cubed>,
	<appliedenergistics2:storage_cell_1k>,
	<appliedenergistics2:storage_cell_4k>,
	<appliedenergistics2:storage_cell_16k>,
	<appliedenergistics2:storage_cell_64k>,
	<appliedenergistics2:tiny_tnt>,
	<appliedenergistics2:view_cell>,
	<appliedenergistics2:wireless_access_point>,
	<appliedenergistics2:wireless_terminal>,

	//Cable "accessories"/panels etc
	<appliedenergistics2:part:80>,
	<appliedenergistics2:part:100>,
	<appliedenergistics2:part:160>,
	<appliedenergistics2:part:200>,
	<appliedenergistics2:part:280>,
	<appliedenergistics2:part:300>,
	<appliedenergistics2:part:301>,
	<appliedenergistics2:part:320>,
	<appliedenergistics2:part:340>,
	<appliedenergistics2:part:400>,
	<appliedenergistics2:part:420>,
	<appliedenergistics2:part:440>,
	<appliedenergistics2:part:460>,
	<appliedenergistics2:part:461>,
	<appliedenergistics2:part:462>,
	<appliedenergistics2:part:463>,
	<appliedenergistics2:part:467>,
	<appliedenergistics2:part:469>,
	<appliedenergistics2:part:480>,

	//Cables
	<appliedenergistics2:part:20>,
	<appliedenergistics2:part:21>,
	<appliedenergistics2:part:22>,
	<appliedenergistics2:part:23>,
	<appliedenergistics2:part:24>,
	<appliedenergistics2:part:25>,
	<appliedenergistics2:part:26>,
	<appliedenergistics2:part:27>,
	<appliedenergistics2:part:28>,
	<appliedenergistics2:part:29>,
	<appliedenergistics2:part:30>,
	<appliedenergistics2:part:31>,
	<appliedenergistics2:part:32>,
	<appliedenergistics2:part:33>,
	<appliedenergistics2:part:34>,
	<appliedenergistics2:part:35>,
	<appliedenergistics2:part:36>,
	<appliedenergistics2:part:40>,
	<appliedenergistics2:part:41>,
	<appliedenergistics2:part:42>,
	<appliedenergistics2:part:43>,
	<appliedenergistics2:part:44>,
	<appliedenergistics2:part:45>,
	<appliedenergistics2:part:46>,
	<appliedenergistics2:part:47>,
	<appliedenergistics2:part:48>,
	<appliedenergistics2:part:49>,
	<appliedenergistics2:part:50>,
	<appliedenergistics2:part:51>,
	<appliedenergistics2:part:52>,
	<appliedenergistics2:part:53>,
	<appliedenergistics2:part:54>,
	<appliedenergistics2:part:55>,
	<appliedenergistics2:part:56>,
	<appliedenergistics2:part:60>,
	<appliedenergistics2:part:61>,
	<appliedenergistics2:part:62>,
	<appliedenergistics2:part:63>,
	<appliedenergistics2:part:64>,
	<appliedenergistics2:part:65>,
	<appliedenergistics2:part:66>,
	<appliedenergistics2:part:67>,
	<appliedenergistics2:part:68>,
	<appliedenergistics2:part:69>,
	<appliedenergistics2:part:70>,
	<appliedenergistics2:part:71>,
	<appliedenergistics2:part:72>,
	<appliedenergistics2:part:73>,
	<appliedenergistics2:part:74>,
	<appliedenergistics2:part:75>,
	<appliedenergistics2:part:76>,
	<appliedenergistics2:part:500>,
	<appliedenergistics2:part:501>,
	<appliedenergistics2:part:502>,
	<appliedenergistics2:part:503>,
	<appliedenergistics2:part:504>,
	<appliedenergistics2:part:505>,
	<appliedenergistics2:part:506>,
	<appliedenergistics2:part:507>,
	<appliedenergistics2:part:508>,
	<appliedenergistics2:part:509>,
	<appliedenergistics2:part:510>,
	<appliedenergistics2:part:511>,
	<appliedenergistics2:part:512>,
	<appliedenergistics2:part:513>,
	<appliedenergistics2:part:514>,
	<appliedenergistics2:part:515>,
	<appliedenergistics2:part:516>,

	//Refined Storage
	<refinedstorage:constructor>,
	<refinedstorage:controller:1>,
	<refinedstorage:crafter>,
	<refinedstorage:crafting_monitor>,
	<refinedstorage:destructor>,
	<refinedstorage:detector>,
	<refinedstorage:disk_drive>,
	<refinedstorage:disk_manipulator>,
	<refinedstorage:filter>,
	<refinedstorage:fluid_interface>,
	<refinedstorage:fluid_storage:1>,
	<refinedstorage:fluid_storage:2>,
	<refinedstorage:fluid_storage:3>,
	<refinedstorage:fluid_storage:4>,
	<refinedstorage:fluid_storage>,
	<refinedstorage:fluid_storage_disk:1>,
	<refinedstorage:fluid_storage_disk:2>,
	<refinedstorage:fluid_storage_disk:3>,
	<refinedstorage:fluid_storage_disk:4>,
	<refinedstorage:fluid_storage_disk>,
	<refinedstorage:fluid_storage_part:1>,
	<refinedstorage:fluid_storage_part:2>,
	<refinedstorage:fluid_storage_part:3>,
	<refinedstorage:fluid_storage_part>,
	<refinedstorage:grid:2>,
	<refinedstorage:grid:3>,
	<refinedstorage:network_receiver>,
	<refinedstorage:network_transmitter>,
	<refinedstorage:pattern>,
	<refinedstorage:portable_grid:1>,
	<refinedstorage:portable_grid>,
	<refinedstorage:reader>,
	<refinedstorage:relay>,
	<refinedstorage:security_manager>,
	<refinedstorage:storage:1>,
	<refinedstorage:storage:2>,
	<refinedstorage:storage:3>,
	<refinedstorage:storage:4>,
	<refinedstorage:storage>,
	<refinedstorage:storage_disk:1>,
	<refinedstorage:storage_disk:2>,
	<refinedstorage:storage_disk:3>,
	<refinedstorage:storage_disk:4>,
	<refinedstorage:storage_disk>,
	<refinedstorage:storage_housing>,
	<refinedstorage:storage_monitor>,
	<refinedstorage:storage_part:1>,
	<refinedstorage:storage_part:2>,
	<refinedstorage:storage_part:3>,
	<refinedstorage:storage_part>,
	<refinedstorage:upgrade:1>,
	<refinedstorage:upgrade:2>,
	<refinedstorage:upgrade:3>,
	<refinedstorage:upgrade:4>,
	<refinedstorage:upgrade:5>,
	<refinedstorage:upgrade:6>,
	<refinedstorage:upgrade:7>,
	<refinedstorage:upgrade:8>,
	<refinedstorage:upgrade:9>,
	<refinedstorage:upgrade>,
	<refinedstorage:wireless_crafting_monitor:1>,
	<refinedstorage:wireless_crafting_monitor>,
	<refinedstorage:wireless_fluid_grid:1>,
	<refinedstorage:wireless_fluid_grid>,
	<refinedstorage:wireless_grid:1>,
	<refinedstorage:wireless_grid>,
	<refinedstorage:wireless_transmitter>,
	<refinedstorage:wrench>,
	<refinedstorage:writer>,
	<refinedstorageaddons:infinite_wireless_transmitter>,
	<refinedstorageaddons:network_bag:1>,
	<refinedstorageaddons:network_bag>,
	<refinedstorageaddons:network_picker:1>,
	<refinedstorageaddons:network_picker>,
	<refinedstorageaddons:wireless_crafting_grid:1>,
	<refinedstorageaddons:wireless_crafting_grid>,

	//Buildcraft
	<buildcrafttransport:pipe_daizuli_item>,
	<buildcrafttransport:pipe_diamond_fluid>,
	<buildcrafttransport:pipe_diamond_item>,
	<buildcrafttransport:pipe_diamond_wood_fluid>,
	<buildcrafttransport:pipe_diamond_wood_item>,
	<buildcrafttransport:pipe_emzuli_item>,

	//Industrial Foregoing
	<industrialforegoing:black_hole_controller>,
	<industrialforegoing:black_hole_tank>,
	<industrialforegoing:black_hole_unit>,

	//Xnet
	<xnet:advanced_connector:1>,
	<xnet:advanced_connector:2>,
	<xnet:advanced_connector:3>,
	<xnet:advanced_connector>,
	<xnet:connector:1>,
	<xnet:connector:2>,
	<xnet:connector:3>,
	<xnet:connector:4>,
	<xnet:connector>,
	<xnet:connector_upgrade>,
	<xnet:controller>,
	<xnet:facade>,
	<xnet:netcable:1>,
	<xnet:netcable:2>,
	<xnet:netcable:3>,
	<xnet:netcable:4>,
	<xnet:netcable>,
	<xnet:redstone_proxy>,
	<xnet:redstone_proxy_upd>,
	<xnet:router>,
	<xnet:xnet_manual>,

	//Galacticraft
	<galacticraftcore:air_fan>,
	<galacticraftcore:aluminum_wire:1>,
	<galacticraftcore:aluminum_wire:2>,
	<galacticraftcore:aluminum_wire:3>,
	<galacticraftcore:aluminum_wire>,
	<galacticraftcore:arclamp>,
	<galacticraftcore:basic_block_core:3>,
	<galacticraftcore:basic_block_core:12>,
	<galacticraftcore:basic_block_core:13>,
	<galacticraftcore:basic_item:1>,
	<galacticraftcore:basic_item:2>,
	<galacticraftcore:basic_item:15>,
	<galacticraftcore:basic_item:16>,
	<galacticraftcore:basic_item:17>,
	<galacticraftcore:basic_item:18>,
	<galacticraftcore:basic_item:19>,
	<galacticraftcore:basic_item:20>,
	<galacticraftcore:basic_item>,
	<galacticraftcore:battery:100>,
	<galacticraftcore:battery>,
	<galacticraftcore:buggymat:1>,
	<galacticraftcore:buggymat:2>,
	<galacticraftcore:buggymat>,
	<galacticraftcore:canister:1>,
	<galacticraftcore:canister>,
	<galacticraftcore:cargo:4>,
	<galacticraftcore:cargo>,
	<galacticraftcore:cheese>,
	<galacticraftcore:concealed_redstone>,
	<galacticraftcore:concealed_repeater>,
	<galacticraftcore:dishbase>,
	<galacticraftcore:distributor>,
	<galacticraftcore:enclosed:1>,
	<galacticraftcore:enclosed:7>,
	<galacticraftcore:enclosed:8>,
	<galacticraftcore:enclosed:9>,
	<galacticraftcore:enclosed:10>,
	<galacticraftcore:enclosed:13>,
	<galacticraftcore:enclosed:14>,
	<galacticraftcore:enclosed:15>,
	<galacticraftcore:engine:1>,
	<galacticraftcore:fluid_pipe>,
	<galacticraftcore:fluid_tank>,
	<galacticraftcore:item_basic_moon>,
	<galacticraftcore:landing_pad:1>,
	<galacticraftcore:machine2:4>,
	<galacticraftcore:machine2:8>,
	<galacticraftcore:machine2:12>,
	<galacticraftcore:machine2>,
	<galacticraftcore:machine3>,
	<galacticraftcore:machine_tiered:4>,
	<galacticraftcore:machine_tiered:8>,
	<galacticraftcore:machine_tiered:12>,
	<galacticraftcore:machine_tiered>,
	<galacticraftcore:magnetic_table>,
	<galacticraftcore:meteor_chunk>,
	<galacticraftcore:moon_stairs_brick>,
	<galacticraftcore:moon_stairs_stone>,
	<galacticraftcore:oil_canister_partial:1001>,
	<galacticraftcore:oxygen_compressor:4>,
	<galacticraftcore:oxygen_detector>,
	<galacticraftcore:oxygen_tank_heavy_full:2700>,
	<galacticraftcore:oxygen_tank_heavy_full>,
	<galacticraftcore:oxygen_tank_med_full:1800>,
	<galacticraftcore:oxygen_tank_med_full>,
	<galacticraftcore:panel_lighting:1>,
	<galacticraftcore:panel_lighting:2>,
	<galacticraftcore:panel_lighting:3>,
	<galacticraftcore:panel_lighting:4>,
	<galacticraftcore:panel_lighting>,
	<galacticraftcore:prelaunch_checklist>,
	<galacticraftcore:sealer>,
	<galacticraftcore:sensor_glasses>,
	<galacticraftcore:sensor_lens>,
	<galacticraftcore:slab_gc_half:1>,
	<galacticraftcore:slab_gc_half:2>,
	<galacticraftcore:slab_gc_half:3>,
	<galacticraftcore:slab_gc_half:4>,
	<galacticraftcore:slab_gc_half:5>,
	<galacticraftcore:slab_gc_half>,
	<galacticraftcore:solar:4>,
	<galacticraftcore:solar>,
	<galacticraftcore:space_glass_strong:1>,
	<galacticraftcore:space_glass_strong>,
	<galacticraftcore:space_glass_vanilla:1>,
	<galacticraftcore:space_glass_vanilla>,
	<galacticraftcore:spin_thruster>,
	<galacticraftcore:steel_axe>,
	<galacticraftcore:steel_boots>,
	<galacticraftcore:steel_chestplate>,
	<galacticraftcore:steel_helmet>,
	<galacticraftcore:steel_hoe>,
	<galacticraftcore:steel_leggings>,
	<galacticraftcore:steel_pickaxe>,
	<galacticraftcore:steel_shovel>,
	<galacticraftcore:steel_sword>,
	<galacticraftcore:telemetry>,
	<galacticraftcore:tin_stairs_1>,
	<galacticraftcore:tin_stairs_2>,
	<galacticraftcore:view_screen>,
	<galacticraftcore:wall_gc:1>,
	<galacticraftcore:wall_gc:2>,
	<galacticraftcore:wall_gc:3>,
	<galacticraftcore:wall_gc:4>,
	<galacticraftcore:wall_gc:5>,
	<galacticraftcore:wall_gc>,
	<galacticraftplanets:asteroids_block:7>,
	<galacticraftplanets:atmospheric_valve>,
	<galacticraftplanets:atomic_battery>,
	<galacticraftplanets:basic_item_venus:1>,
	<galacticraftplanets:basic_item_venus:3>,
	<galacticraftplanets:beam_receiver>,
	<galacticraftplanets:beam_reflector>,
	<galacticraftplanets:carbon_fragments>,
	<galacticraftplanets:desh_axe>,
	<galacticraftplanets:desh_boots>,
	<galacticraftplanets:desh_chestplate>,
	<galacticraftplanets:desh_helmet>,
	<galacticraftplanets:desh_hoe>,
	<galacticraftplanets:desh_leggings>,
	<galacticraftplanets:desh_pick>,
	<galacticraftplanets:desh_pick_slime>,
	<galacticraftplanets:desh_spade>,
	<galacticraftplanets:desh_sword>,
	<galacticraftplanets:geothermal_generator>,
	<galacticraftplanets:grapple>,
	<galacticraftplanets:heavy_nose_cone>,
	<galacticraftplanets:item_basic_asteroids:1>,
	<galacticraftplanets:item_basic_asteroids:2>,
	<galacticraftplanets:item_basic_asteroids:7>,
	<galacticraftplanets:item_basic_asteroids:8>,
	<galacticraftplanets:item_basic_asteroids>,
	<galacticraftplanets:item_basic_mars:1>,
	<galacticraftplanets:item_basic_mars:2>,
	<galacticraftplanets:item_basic_mars:4>,
	<galacticraftplanets:item_basic_mars:6>,
	<galacticraftplanets:mars:8>,
	<galacticraftplanets:mars_machine:4>,
	<galacticraftplanets:mars_machine:8>,
	<galacticraftplanets:mars_machine>,
	<galacticraftplanets:mars_machine_t2:4>,
	<galacticraftplanets:mars_machine_t2:8>,
	<galacticraftplanets:mars_machine_t2>,
	<galacticraftplanets:mars_stairs_brick>,
	<galacticraftplanets:mars_stairs_cobblestone>,
	<galacticraftplanets:miner_base>,
	<galacticraftplanets:orion_drive>,
	<galacticraftplanets:telepad_short>,
	<galacticraftplanets:thermal_padding:1>,
	<galacticraftplanets:thermal_padding:2>,
	<galacticraftplanets:thermal_padding:3>,
	<galacticraftplanets:thermal_padding>,
	<galacticraftplanets:thermal_padding_t2:1>,
	<galacticraftplanets:thermal_padding_t2:2>,
	<galacticraftplanets:thermal_padding_t2:3>,
	<galacticraftplanets:thermal_padding_t2>,
	<galacticraftplanets:titanium_axe>,
	<galacticraftplanets:titanium_boots>,
	<galacticraftplanets:titanium_chestplate>,
	<galacticraftplanets:titanium_helmet>,
	<galacticraftplanets:titanium_hoe>,
	<galacticraftplanets:titanium_leggings>,
	<galacticraftplanets:titanium_pickaxe>,
	<galacticraftplanets:titanium_shovel>,
	<galacticraftplanets:titanium_sword>,
	<galacticraftplanets:venus:12>,
	<galacticraftplanets:volcanic_pickaxe>,
	<galacticraftplanets:walkway:1>,
	<galacticraftplanets:walkway:2>,
	<galacticraftplanets:walkway>,

	//Extra Planets
	<extraplanets:advanced_launch_pad:1>,
	<extraplanets:advanced_launch_pad:2>,
	<extraplanets:advanced_launch_pad:3>,
	<extraplanets:advanced_launch_pad>,
	<extraplanets:advanced_oxygen_compressor:4>,
	<extraplanets:advanced_oxygen_compressor>,
	<extraplanets:ultimate_oxygen_compressor:4>,
	<extraplanets:ultimate_oxygen_compressor>,

	//Mekanism
	<mekanism:anchorupgrade>,
	<mekanism:armoredjetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
	<mekanism:armoredjetpack>.withTag({mekData: {}}),
	<mekanism:atomicdisassembler>.withTag({mekData: {energyStored: 1000000.0}}),
	<mekanism:atomicdisassembler>.withTag({mekData: {}}),
	<mekanism:basicblock2:1>,
	<mekanism:basicblock2:2>,
	<mekanism:basicblock2:3>.withTag({tier: 0, mekData: {}}),
	<mekanism:basicblock2:3>.withTag({tier: 1, mekData: {}}),
	<mekanism:basicblock2:3>.withTag({tier: 2, mekData: {}}),
	<mekanism:basicblock2:3>.withTag({tier: 3, mekData: {}}),
	<mekanism:basicblock2:4>.withTag({tier: 0}),
	<mekanism:basicblock2:4>.withTag({tier: 1}),
	<mekanism:basicblock2:4>.withTag({tier: 2}),
	<mekanism:basicblock2:4>.withTag({tier: 3}),
	<mekanism:basicblock2:5>,
	<mekanism:basicblock2:6>,
	<mekanism:basicblock2:7>,
	<mekanism:basicblock2:8>,
	<mekanism:basicblock2:9>,
	<mekanism:basicblock2>,
	<mekanism:basicblock:2>,
	<mekanism:basicblock:4>,
	<mekanism:basicblock:6>.withTag({tier: 0, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 1, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 2, mekData: {}}),
	<mekanism:basicblock:6>.withTag({tier: 3, mekData: {}}),
	<mekanism:basicblock:7>,
	<mekanism:basicblock:8>,
	<mekanism:basicblock:9>,
	<mekanism:basicblock:10>,
	<mekanism:basicblock:11>,
	<mekanism:basicblock:14>,
	<mekanism:basicblock:15>,
	<mekanism:cardboardbox>.withTag({mekData: {}}),
	<mekanism:configurationcard>.withTag({mekData: {}}),
	<mekanism:controlcircuit:1>,
	<mekanism:controlcircuit:2>,
	<mekanism:controlcircuit:3>,
	<mekanism:craftingformula>.withTag({mekData: {}}),
	<mekanism:dictionary>,
	<mekanism:electricbow>.withTag({mekData: {energyStored: 120000.0}}),
	<mekanism:electricbow>.withTag({mekData: {}}),
	<mekanism:energycube>.withTag({tier: 0, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 1, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 2, mekData: {}}),
	<mekanism:energycube>.withTag({tier: 3, mekData: {}}),
	<mekanism:energyupgrade>,
	<mekanism:filterupgrade>,
	<mekanism:flamethrower>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
	<mekanism:flamethrower>.withTag({mekData: {}}),
	<mekanism:freerunners>.withTag({mekData: {energyStored: 64000.0}}),
	<mekanism:freerunners>.withTag({mekData: {}}),
	<mekanism:gasmask>,
	<mekanism:gasupgrade>,
	<mekanism:gaugedropper>.withTag({mekData: {}}),
	<mekanism:glowpanel:*>,
	<mekanism:glowplasticblock:*>,
	<mekanism:ingot:3>,
	<mekanism:ingot>,
	<mekanism:jetpack>.withTag({mekData: {stored: {amount: 24000, gasName: "hydrogen"}}}),
	<mekanism:jetpack>.withTag({mekData: {}}),
	<mekanism:machineblock2:1>,
	<mekanism:machineblock2:2>,
	<mekanism:machineblock2:3>,
	<mekanism:machineblock2:5>,
	<mekanism:machineblock2:6>,
	<mekanism:machineblock2:7>,
	<mekanism:machineblock2:8>,
	<mekanism:machineblock2:9>,
	<mekanism:machineblock2:10>,
	<mekanism:machineblock2:12>,
	<mekanism:machineblock2:13>,
	<mekanism:machineblock2:14>,
	<mekanism:machineblock2:15>,
	<mekanism:machineblock3:1>,
	<mekanism:machineblock3:3>,
	<mekanism:machineblock3:4>,
	<mekanism:machineblock3:5>,
	<mekanism:machineblock3:6>,
	<mekanism:machineblock3>.withTag({mekData: {}}),
	<mekanism:machineblock:1>,
	<mekanism:machineblock:2>,
	<mekanism:machineblock:3>,
	<mekanism:machineblock:4>,
	<mekanism:machineblock:5>.withTag({recipeType: 0}),
	<mekanism:machineblock:5>.withTag({recipeType: 1}),
	<mekanism:machineblock:5>.withTag({recipeType: 2}),
	<mekanism:machineblock:5>.withTag({recipeType: 3}),
	<mekanism:machineblock:5>.withTag({recipeType: 4}),
	<mekanism:machineblock:5>.withTag({recipeType: 5}),
	<mekanism:machineblock:5>.withTag({recipeType: 6}),
	<mekanism:machineblock:5>.withTag({recipeType: 7}),
	<mekanism:machineblock:6>.withTag({recipeType: 0}),
	<mekanism:machineblock:6>.withTag({recipeType: 1}),
	<mekanism:machineblock:6>.withTag({recipeType: 2}),
	<mekanism:machineblock:6>.withTag({recipeType: 3}),
	<mekanism:machineblock:6>.withTag({recipeType: 4}),
	<mekanism:machineblock:6>.withTag({recipeType: 5}),
	<mekanism:machineblock:6>.withTag({recipeType: 6}),
	<mekanism:machineblock:6>.withTag({recipeType: 7}),
	<mekanism:machineblock:7>.withTag({recipeType: 0}),
	<mekanism:machineblock:7>.withTag({recipeType: 1}),
	<mekanism:machineblock:7>.withTag({recipeType: 2}),
	<mekanism:machineblock:7>.withTag({recipeType: 3}),
	<mekanism:machineblock:7>.withTag({recipeType: 4}),
	<mekanism:machineblock:7>.withTag({recipeType: 5}),
	<mekanism:machineblock:7>.withTag({recipeType: 6}),
	<mekanism:machineblock:7>.withTag({recipeType: 7}),
	<mekanism:machineblock:9>,
	<mekanism:machineblock:10>,
	<mekanism:machineblock:11>,
	<mekanism:machineblock:12>,
	<mekanism:machineblock:13>,
	<mekanism:machineblock:14>,
	<mekanism:machineblock:15>,
	<mekanism:machineblock>,
	<mekanism:networkreader>.withTag({mekData: {energyStored: 60000.0}}),
	<mekanism:networkreader>.withTag({mekData: {}}),
	<mekanism:nugget:3>,
	<mekanism:nugget>,
	<mekanism:obsidiantnt>,
	<mekanism:plasticblock:*>,
	<mekanism:plasticfence:*>,
	<mekanism:polyethene:1>,
	<mekanism:polyethene:2>,
	<mekanism:polyethene:3>,
	<mekanism:portableteleporter>.withTag({mekData: {energyStored: 1000000.0}}),
	<mekanism:portableteleporter>.withTag({mekData: {}}),
	<mekanism:reinforcedplasticblock:*>,
	<mekanism:roadplasticblock:*>,
	<mekanism:robit>.withTag({mekData: {energyStored: 100000.0}}),
	<mekanism:robit>.withTag({mekData: {}}),
	<mekanism:saltblock>,
	<mekanism:scubatank>.withTag({mekData: {stored: {amount: 24000, gasName: "oxygen"}}}),
	<mekanism:scubatank>.withTag({mekData: {}}),
	<mekanism:seismicreader>.withTag({mekData: {energyStored: 12000.0}}),
	<mekanism:seismicreader>.withTag({mekData: {}}),
	<mekanism:slickplasticblock:*>,
	<mekanism:speedupgrade>,
	<mekanism:teleportationcore>,
	<mekanism:tierinstaller:1>,
	<mekanism:tierinstaller:2>,
	<mekanism:tierinstaller:3>,
	<mekanism:tierinstaller>,
	<mekanism:transmitter:3>.withTag({tier: 0}),
	<mekanism:transmitter:3>.withTag({tier: 1}),
	<mekanism:transmitter:3>.withTag({tier: 2}),
	<mekanism:transmitter:3>.withTag({tier: 3}),
	<mekanism:transmitter:4>.withTag({tier: 0}),
	<mekanism:transmitter:5>.withTag({tier: 0}),
	<mekanism:transmitter:6>.withTag({tier: 0}),
	<mekanism:transmitter:6>.withTag({tier: 1}),
	<mekanism:transmitter:6>.withTag({tier: 2}),
	<mekanism:transmitter:6>.withTag({tier: 3}),
	<mekanism:transmitter>.withTag({tier: 0}),
	<mekanism:transmitter>.withTag({tier: 1}),
	<mekanism:transmitter>.withTag({tier: 2}),
	<mekanism:transmitter>.withTag({tier: 3}),
	<mekanism:walkietalkie>.withTag({mekData: {channel: 1}}),

	//Translocators
	<translocator:diamondnugget>,
	<translocator:translocator_part:1>,
	<translocator:translocator_part>
];

for item in itemsForStage {
	mods.recipestages.Recipes.setRecipeStage(STAGE, item);
}

//Set stage by recipe name
var recipesForStage as string[] = [
	//Mystical Agriculture
	"mysticalagriculture:.*",

	//Mystical Agradditions
	"mysticalagradditions:.*"
];

for recipeRegex in recipesForStage {
	mods.recipestages.Recipes.setRecipeStageByRegex(STAGE, recipeRegex);
}

//TODO: Handle better
//Set soulstone recipes to stage 3
var soulstoneRecipes as string[] = [
	"mysticalagriculture:cobbled_soulstone_slab",
	"mysticalagriculture:cobbled_soulstone_stairs",
	"mysticalagriculture:cobbled_soulstone_wall",
	"mysticalagriculture:soulstone",
	"mysticalagriculture:soulstone_1",
	"mysticalagriculture:soulstone_2",
	"mysticalagriculture:soulstone_3",
	"mysticalagriculture:soulstone_4",
	"mysticalagriculture:soulstone_brick_slab",
	"mysticalagriculture:soulstone_brick_stairs",
	"mysticalagriculture:soulstone_brick_wall",
	"mysticalagriculture:soulstone_slab"
];

for recipeName in soulstoneRecipes {
	mods.recipestages.Recipes.setRecipeStage(STAGES.three, recipeName);
}
