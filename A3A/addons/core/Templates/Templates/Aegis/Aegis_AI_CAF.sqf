/////////////////////////////////
//   Side Information - Occ   //
///////////////////////////////

#include "..\..\script_template_common.hpp" // Do NOT remove or else you will not be able to use any macros such as QPATH

["name", "CAF"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "CAF"]] call _fnc_saveToTemplate;

["flag", DEFAULT_FLAG] call _fnc_saveToTemplate;
["flagTexture", "\CA_Flags\Flags\Flag_CAF_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Canada"] call _fnc_saveToTemplate;

///////////////////////////
//       Vehicles       //
/////////////////////////

/* 
    Reference script_template_common.hpp for these. Change the classes here if you want to use different classes.
    Always ensure that whatever classname you use for these has an A3A_logistics_Cargo entry, otherwise they will not be loadable.
*/
["ammobox", DEFAULT_AMMOBOX] call _fnc_saveToTemplate;
["surrenderCrate", DEFAULT_SURRENDERCRATE] call _fnc_saveToTemplate;
["equipmentBox", DEFAULT_EQUIPMENTBOX] call _fnc_saveToTemplate;

/* Ground Vehicles */
private _vehiclesBasic = ["PUP_CAF_QuadBike_01_F"]; // Absolute basic vehicle. Quadbike, LSV, etc.
private _vehiclesLightUnarmed = ["PUP_CAF_MRAP_03_F"]; // Fundamental vehicle. Think an unarmoured humvee.
private _vehiclesLightArmed = ["PUP_CAF_MRAP_03_hmg_F", "PUP_CAF_MRAP_03_gmg_F"]; // Fundamental vehicle. Think a lightly armoured humvee with an M240.

private _vehiclesTrucks = ["PUP_CAF_Truck_01_transport_F", "PUP_CAF_Truck_01_covered_F", "PUP_CAF_msvs_transport_open_F", "PUP_CAF_msvs_transport_F"]; // Used for troop carrying.
private _vehiclesCargoTrucks = _vehiclesTrucks + ["PUP_CAF_Truck_01_flatbed_F", "PUP_CAF_Truck_01_cargo_F", "PUP_CAF_msvs_flatbed_F"]; // Used for cargo carrying. Must have logistics nodes.
private _vehiclesAmmoTrucks = ["PUP_CAF_Truck_01_ammo_F", "PUP_CAF_msvs_ammo_F"];
private _vehiclesRepairTrucks = ["PUP_CAF_Truck_01_Repair_F", "PUP_CAF_msvs_repair_F", "PUP_CAF_APC_Tracked_01_CRV_F"];
private _vehiclesFuelTrucks = ["PUP_CAF_Truck_01_fuel_F", "PUP_CAF_msvs_fuel_F"];
private _vehiclesMedicalTrucks = ["PUP_CAF_Truck_01_medical_F", "PUP_CAF_msvs_medical_F", "PUP_CAF_APC_Wheeled_01_medical_F"];

private _vehiclesLightAPCs = []; // A light APC is an Armoured Personnel Carrier. Generally, light armoured vehicle + light gun.
private _vehiclesAPCs = ["PUP_CAF_APC_Wheeled_01_cannon_v2_F"]; // An APC is a light APC but bigger. Generally, armoured vehicle + medium gun.
private _vehiclesIFVs = ["PUP_CAF_APC_Wheeled_01_cannon_v2_F"]; // An IFV is an Infantry Fighting Vehicle. Generally, armoured vehicle + big gun.
private _vehiclesAirborne = ["PUP_CAF_MRAP_03_hmg_F", "PUP_CAF_MRAP_03_gmg_F", "PUP_CAF_LSV_01_armed_F", "PUP_CAF_Pickup_mmg_rf", "PUP_CAF_APC_Wheeled_01_cannon_v2_F"]; // Vehicles that can be "paradropped". Not *too* strict, but use common sense.
private _vehiclesAA = ["PUP_CAF_APC_Tracked_01_AA_F"]; // Vehicles that AI crew can use to shoot down aircraft. If they can, it's an AA vehicle!

private _vehiclesLightTanks = ["B_T_AFV_Wheeled_01_cannon_F", "B_T_AFV_Wheeled_01_up_cannon_F"]; // A light tank is a tank that is light... Think an american M60 (the tank).
private _vehiclesTanks = ["PUP_CAF_MBT_03_cannon_F"]; // A tank is a tank. Shocker. Think an M1 Abrams.

/* Sea Vehicles */
private _vehiclesTransportBoats = ["PUP_CAF_Boat_Transport_01_F"];
private _vehiclesGunBoats = ["PUP_CAF_Boat_Armed_01_minigun_F"];

/* Air Vehicles */
private _vehiclesPlanesCAS = ["PUP_CAF_Plane_Fighter_05_F", "PUP_CAF_Plane_Fighter_05_Stealth_F"]; // CAS = Close Air Support, CfgPlaneLoadouts >> CAS and CASDIVE
private _vehiclesPlanesAA = ["PUP_CAF_Plane_Fighter_05_F", "PUP_CAF_Plane_Fighter_05_Stealth_F"]; // AA = Anti-Air, CfgPlaneLoadouts >> AA
private _vehiclesPlanesTransport = ["PUP_CAF_Plane_Transport_01_infantry_F"]; // Troop carriers for paradrop OR VTOL landing

private _vehiclesHelisLight = ["B_T_Heli_light_01_F"]; // A light transport helicopter.
private _vehiclesHelisTransport = ["PUP_CAF_CH160", "PUP_CAF_Heli_Transport_02_F"]; // A transport helicopter.
private _vehiclesHelisLightAttack = ["B_T_Heli_Light_01_dynamicLoadout_F"]; // A light attack helicopter.
private _vehiclesHelisAttack = ["PUP_CAF_Heli_Attack_03_F"]; // An attack helicopter.
private _vehiclesAirPatrol = _vehiclesHelisLightAttack + _vehiclesHelisAttack; // A helicopter that is used to patrol areas.

/* Special Vehicles */
private _vehiclesArtillery = ["PUP_CAF_MBT_01_arty_F"]; // If it has an artillery computer and moves, it's probably vehicular artillery.
["magazines", createHashMapFromArray [
    ["PUP_CAF_MBT_01_arty_F", ["32Rnd_155mm_Mo_shells", "2Rnd_155mm_Mo_Cluster"]] // ["vehicle", ["magazine1", "magazine2"]]. You can add multiple vehicles.
]] call _fnc_saveToTemplate;

/* Militia Vehicles */
private _vehiclesMilitiaLightArmed = ["PUP_CAF_MRAP_03_hmg_F"]; // Think: What would a hastily formed militia use?
private _vehiclesMilitiaTrucks = ["PUP_CAF_msvs_transport_F", "PUP_CAF_msvs_transport_open_F"];
private _vehiclesMilitiaCars = ["PUP_CAF_MRAP_03_F"];
private _vehiclesMilitiaAPCs = ["PUP_CAF_MRAP_03_hmg_F"];

/* Police Vehicles */
private _vehiclesPolice = ["PUP_CAF_MRAP_03_F"];

/* Radar and SAM */
private _vehiclesRadar = "B_Radar_System_01_F";
private _vehiclesSam = "PHEN_TurretPack_B_Turret_02";

/* Statics */
private _staticMG = ["PUP_CAF_HMG_02_high_F", "PUP_CAF_GMG_01_high_F"]; // Must fit in a standard Altis defensive tower.
private _staticAT = ["PUP_CAF_Static_AT_F"]; // Must fit in a standard Altis defensive tower.
private _staticAA = ["PUP_CAF_Static_AA_F"]; // Must fit on a standard Altis HQ military building.

private _staticMortars = ["PUP_CAF_Mortar_01_F"]; // Must fit in a ~2x2 sandbag emplacement.
["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate; // Use `magazines cursorObject` whilst looking at your mortar.
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

private _staticHowitzers = [];
["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF"] call _fnc_saveToTemplate; // Use `magazines cursorObject` whilst looking at your howitzer.

if (_hasJets) then {
    _vehiclesPlanesCAS pushBack "PUP_CAF_Plane_Fighter_04_F";
    _vehiclesPlanesAA pushBack "PUP_CAF_Plane_Fighter_04_F";
};

if (_hasApex) then {
    _vehiclesBasic append ["PUP_CAF_LSV_01_light_F", "PUP_CAF_LSV_01_unarmed_F"];
    _vehiclesLightArmed append ["PUP_CAF_LSV_01_AT_F", "PUP_CAF_LSV_01_armed_F"];
    _vehiclesTransportBoats pushBack "PUP_CAF_Boat_Transport_02_F";

    _vehiclesMilitiaLightArmed pushBack "PUP_CAF_LSV_01_armed_F";
    _vehiclesMilitiaCars append ["PUP_CAF_LSV_01_light_F", "PUP_CAF_LSV_01_unarmed_F"];
};

if (_hasHelicopters) then {
    _vehiclesHelisTransport pushBack "PUP_CAF_Heli_Transport_03_F";
};

if (_hasTanks) then {};

if (_hasRF) then {
    _vehiclesLightUnarmed append ["PUP_CAF_Pickup_rf", "PUP_CAF_Pickup_Comms_rf"];
    _vehiclesLightArmed pushBack "PUP_CAF_Pickup_mmg_rf";
    _vehiclesAA pushBack "PUP_CAF_Pickup_aat_rf";

    _vehiclesMilitiaCars append ["PUP_CAF_Pickup_rf", "PUP_CAF_Pickup_Comms_rf"];

    _vehiclesPolice append ["PUP_CAF_Pickup_mpPatrol_rf", "PUP_CAF_Pickup_mp_rf"];

    _vehiclesPolice pushBack "PUP_CAF_TwinMortar_RF";
};

if (_hasEF) then {
    _vehiclesTransportBoats pushBack "PUP_CAF_CombatBoat_Unarmed_EF";
    _vehiclesGunBoats pushBack "PUP_CAF_CombatBoat_HMG_EF";
};

if (_hasWS) then {
    _vehiclesIFVs pushBack "PUP_CAF_APC_Wheeled_01_atgm_lxWS_v2";
};

if (isClass (configFile >> "CfgPatches" >> "qav_marshall")) then {
    _vehiclesLightAPCs pushBack "PUP_CAF_APC_Wheeled_01_apc_qav_F";
    _vehiclesAA pushBack "PUP_CAF_APC_Wheeled_01_shorad_qav_F";
};

/* UAV's */
private _uavsPortable = ["PUP_CAF_UAV_01_F"]; // A UAV that is packable into a backpack.
private _uavsAttack = ["PUP_CAF_UAV_07_F", "PUP_CAF_UAV_02_dynamicLoadout_F"]; // A UAV that is capable of attacking. Think a reaper drone.

/* Mines */
private _minefieldAT = ["ATMine"]; // Mine used for Anti Tank fields.
private _minefieldAPERS = ["APERSMine"]; // Mine used for Anti Personnel fields.

/////////////////////
///  Identities   ///
/////////////////////

// These are the "Military" identities by default. 
// They also encompass any tier you *don't* define, so these are "fallback" entries too.
private _faces = [
    "WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07",
    "WhiteHead_08","WhiteHead_09","WhiteHead_11","WhiteHead_12","WhiteHead_14",
    "WhiteHead_15","WhiteHead_16","WhiteHead_18","WhiteHead_19","WhiteHead_20",
    "WhiteHead_21","WhiteHead_23", "WhiteHead_24", "WhiteHead_25","WhiteHead_26", 
    "WhiteHead_27", "WhiteHead_28", "WhiteHead_29", "WhiteHead_30", "WhiteHead_31",
    "TanoanHead_A3_02","TanoanHead_A3_04","TanoanHead_A3_03","TanoanHead_A3_05",
    "TanoanHead_A3_07","TanoanHead_A3_01","TanoanHead_A3_06","TanoanHead_A3_09",
    "LivonianHead_5","LivonianHead_2","LivonianHead_9","LivonianHead_6","LivonianHead_3",
    "LivonianHead_1","LivonianHead_10","LivonianHead_8","LivonianHead_4","LivonianHead_7"
];
private _voices = [
    "Male01ENG","Male02ENG","Male03ENG","Male04ENG","Male05ENG","Male06ENG",
    "Male07ENG","Male08ENG","Male09ENG","Male10ENG","Male11ENG","Male12ENG"
];
private _insignia = [];

["faces", _faces] call _fnc_saveToTemplate;
["voices", _voices] call _fnc_saveToTemplate;
["insignia", _insignia] call _fnc_saveToTemplate;

/* Police identities | Falls back to the default if not uncommented. */

private _polFaces = [];
private _polVoices = [];
private _polInsignia = [];

/*
["polFaces", _polFaces] call _fnc_saveToTemplate;
["polVoices", _polVoices] call _fnc_saveToTemplate;
["polInsignia", _polInsignia] call _fnc_saveToTemplate;
*/

/* Militia identities | Falls back to the default if not uncommented. */

private _milFaces = [];
private _milVoices = [];
private _milInsignia = [];

/*
["milFaces", _milFaces] call _fnc_saveToTemplate;
["milVoices", _milVoices] call _fnc_saveToTemplate;
["milInsignia", _milInsignia] call _fnc_saveToTemplate;
*/

/* Elite identities | Falls back to the default if not uncommented. */

private _eliteFaces = [];
private _eliteVoices = [];
private _eliteInsignia = ["PUP_CA_Patch_NTOG", "PUP_CA_Patch_JTF2", "PUP_CA_Patch_JTF2alt"];

["eliteInsignia", _eliteInsignia] call _fnc_saveToTemplate;

/*
["eliteFaces", _eliteFaces] call _fnc_saveToTemplate;
["eliteVoices", _eliteVoices] call _fnc_saveToTemplate;
["eliteInsignia", _eliteInsignia] call _fnc_saveToTemplate;
*/

/* Special Forces identities | Falls back to the default if not uncommented. */
private _sfFaces = [];
private _sfVoices = [];
private _sfInsignia = ["PUP_CA_Patch_NTOG", "PUP_CA_Patch_JTF2", "PUP_CA_Patch_JTF2alt"];

["sfInsignia", _sfInsignia] call _fnc_saveToTemplate;

/*
["sfFaces", _sfFaces] call _fnc_saveToTemplate;
["sfVoices", _sfVoices] call _fnc_saveToTemplate;
*/

//////////////////////////
//       Loadouts       //
//////////////////////////

/* 
    Example Weapon:

    ["Weapon", "muzzle", "side mount", "optic", ["ammo"], ["GL ammo"], "bipod"], weight

    OR

    ["Weapon", ["muzzle", weight], ["side mount", weight], ["optic", weight], ["ammo"], ["GL ammo"], ["bipod", weight]], weight

    If a given loadoutData variable has a weighted array (like the above), make sure all additive statements also have a weighted array.

    Fun fact: Everything under _loadoutData can be overwritten by a specific tier. 
    E.g if you want every tier to have a map EXCEPT militia, put maps in _loadoutData.
    However, under _militiaLoadoutData, add a new entry: _militiaLoadoutData set ["maps", []];
    Militia will no longer get maps!
*/

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", []];
_loadoutData set ["riflesSL", []]; // Rifle given to Squad Leaders
_loadoutData set ["riflesAuto", []]; // An LMG or machine gun
_loadoutData set ["riflesMarksman", []]; // Accurate long barrel rifle
_loadoutData set ["riflesSniper", []]; // Designated sniper rifle
_loadoutData set ["riflesCarbine", []]; // A rifle with a shorter barrel length
_loadoutData set ["launchersGrenade", []]; // A (usually) rifle mounted grenade launcher
_loadoutData set ["launchersGrenadeDesignated", []]; // A standalone grenade launcher

_loadoutData set ["launchersLightAT", []]; // Light launcher that fires a non-missile projectile
_loadoutData set ["launchersAT", []]; // Launcher that fires a non-missile projectile
_loadoutData set ["launchersMissileAT", []]; // Launcher that fires a missile projectile
_loadoutData set ["launchersAA", []]; // Launcher that fires an AA guided missile projectile
_loadoutData set ["sidearms", ["PUP_hgun_P320_sand_F"]];

_loadoutData set ["minesAT", ["ATMine_Range_Mag"]]; // Anti-tank
_loadoutData set ["minesAP", ["APERSMine_Range_Mag"]]; // Anti-personnel
_loadoutData set ["explosivesLight", ["DemoCharge_Remote_Mag"]]; // Found on explosive expert units
_loadoutData set ["explosivesHeavy", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

/* Basic equipment. Shouldn't need touching most of the time. */
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["GPS", ["ItemGPS"]];
_loadoutData set ["NVG", ["", "NVGoggles_INDEP", "NVGoggles", "NVGoggles_OPFOR"]]; // NVG's given to all units PROVIDED they have no tier-specific overwrites
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder", "Laserdesignator", "Laserdesignator_04"]];

/* Traitor: A rebel traitor who has defected to *this* faction. */
_loadoutData set ["uniformsTraitor", ["PUP_CA_U_Field_Uniform_TW_F", "PUP_CA_U_Field_Uniform_RS_G_TW_F", "PUP_CA_U_Field_Uniform_RS_TW_F"]];
_loadoutData set ["vestsTraitor", ["V_Rangemaster_belt", "V_Chestrig_rgr", "V_Chestrig_oli", "V_TacVest_oli", "Aegis_V_CarrierRigKBT_01_holster_olive_F"]];
_loadoutData set ["helmetsTraitor", ["", "H_Watchcap_camo", "H_Cap_grn", "H_Cap_oli", "H_Cap_oli_hs", "PUP_CA_H_cap_cadpatTW_F", "PUP_CA_H_capHS_cadpatTW_F"]];

/* Officer: An official who is present at places like Military Administration. */
_loadoutData set ["uniformsOfficer", ["PUP_CA_U_Field_Uniform_RS_G_TW_F", 0.5, "PUP_CA_U_Field_Uniform_TW_F", 0.5]];
_loadoutData set ["vestsOfficer", ["PUP_CAF_AssaultCarrier_RGR_F", 0.33, "PUP_CAF_AssaultCarrier_TW_F", 0.33, "PUP_CA_V_ntogVest2a_tl", 0.1]];
_loadoutData set ["helmetsOfficer", ["PUP_CAF_Beret_Forces_F"]];

/* Cloak: Basically a small patrol sniper team. */
_loadoutData set ["uniformsCloak", ["PUP_CA_U_Ghillie_F"]];
_loadoutData set ["vestsCloak", ["PUP_CAF_AssaultCarrier_TW_F", 0.33, "PUP_CAF_AssaultCarrier_RGR_F", 0.33, "PUP_CAF_AssaultCarrier_Lite_RGR_F", 0.33]];
_loadoutData set ["helmetsCloak", ["PUP_CA_H_NTOGa_F", 0.5, "PUP_CA_H_NTOGb_F", 0.5]];

/* Core: Shared loadout data. If not overwritten by _tierLoadoutData, it uses these instead. */
_loadoutData set ["uniforms", ["PUP_CA_U_Field_Uniform_TW_F", "PUP_CA_U_Field_Uniform_RS_G_TW_F", "PUP_CA_U_Field_Uniform_RS_TW_F"]];
_loadoutData set ["uniformsSL", ["PUP_CAF_SOF_TW_F", "PUP_CAF_SOF_Rolled_TW_F"]];

_loadoutData set ["vests", []];
_loadoutData set ["vestsSL", []];
_loadoutData set ["vestsHeavy", []];
_loadoutData set ["vestsSniper", []];
_loadoutData set ["vestsMedic", []];
_loadoutData set ["vestsGrenadier", []];
_loadoutData set ["vestsMachineGunner", []];

_loadoutData set ["backpacks", ["B_AssaultPack_rgr", "B_AssaultPack_khk", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_TacticalPack_oli", "B_TacticalPack_rgr"]];
_loadoutData set ["backpacksRadio", ["B_RadioBag_01_green_F", "B_RadioBag_01_sage_F"]];
_loadoutData set ["backpacksAT", ["B_Carryall_oli"]];

_loadoutData set ["helmets", []];
_loadoutData set ["helmetsSL", ["PUP_CAF_Beret_Forces_F", "PUP_CA_H_capHS_cadpatTW_F", "PUP_CA_H_NTOGa_F"]];

_loadoutData set ["facewear", ["", "G_Balaclava_oli", "G_Bandanna_oli", "G_Combat", "G_Lowprofile", "G_Tactical_Clear", "G_Tactical_Black", "G_Combat_Goggles_blk_F", "Aegis_G_Condor_EyePro_F", "JCA_G_shemagh_01_olive_F", "JCA_G_shemagh_01_glasses_olive_F", "JCA_G_shemagh_01_goggles_olive_F", "JCA_G_shemagh_01_headset_olive_F", "JCA_G_shemagh_01_headset_glasses_olive_F", "JCA_G_shemagh_01_headset_goggles_olive_F", "JCA_G_balaclava_01_olive_F", "JCA_G_balaclava_01_glasses_olive_F", "JCA_G_balaclava_01_goggles_olive_F", "JCA_G_balaclava_01_headset_olive_F", "JCA_G_balaclava_01_headset_glasses_olive_F", "JCA_G_balaclava_01_headset_goggles_olive_F", "JCA_G_FaceMask_01_olive_F", "JCA_G_FaceMask_01_glasses_olive_F", "JCA_G_FaceMask_01_goggles_olive_F", "JCA_G_FaceMask_01_headset_olive_F", "JCA_G_FaceMask_01_headset_glasses_olive_F", "JCA_G_FaceMask_01_headset_goggles_olive_F"]];

/* Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied. */
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; // Basic medical items
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; // Standard medical items
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; // Medic items
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

/* Unit type specific item sets. Feel free to add or remove data. */
private _coreItems = []; // Shared with every item set
private _slItems = ["Laserbatteries"];
private _expItems = ["ToolKit", "MineDetector"];
private _sniperItems = [];

if (A3A_hasACE) then {
    _coreItems append ["ACE_microDAGR", "ACE_DAGR"];
    _expItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _sniperItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _coreItems + _slItems];
_loadoutData set ["items_rifleman_extras", _coreItems];
_loadoutData set ["items_medic_extras", _coreItems];
_loadoutData set ["items_grenadier_extras", _coreItems];
_loadoutData set ["items_explosivesExpert_extras", _coreItems + _expItems];
_loadoutData set ["items_engineer_extras", _coreItems];
_loadoutData set ["items_lat_extras", _coreItems];
_loadoutData set ["items_at_extras", _coreItems];
_loadoutData set ["items_aa_extras", _coreItems];
_loadoutData set ["items_machineGunner_extras", _coreItems];
_loadoutData set ["items_marksman_extras", _coreItems + _sniperItems];
_loadoutData set ["items_sniper_extras", _coreItems + _sniperItems];
_loadoutData set ["items_police_extras", _coreItems];
_loadoutData set ["items_crew_extras", _coreItems];
_loadoutData set ["items_unarmed_extras", _coreItems];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["PUP_CA_U_Coveralls_F"]];
_crewLoadoutData set ["vests", ["PUP_CAF_AssaultCarrier_RGR_F"]];
_crewLoadoutData set ["helmets", ["PUP_CA_H_CrewHelmet"]];
_crewLoadoutData set ["rifles", [
    ["PUP_arifle_C8A3_IUR_F", "", "", "", ["JCA_30Rnd_556x45_PMAG", "JCA_30Rnd_556x45_Red_PMAG"], [], ""],
    ["PUP_arifle_SPAR_01_F", "", , "", ["PUP_EMAG_65x39", "PUP_EMAG_65x39_T"], [], ""]
]];
// _crewLoadoutData set ["sidearms", []];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["PUP_CA_U_Coveralls_F"]];
_pilotLoadoutData set ["vests", ["V_TacVest_oli"]];
_pilotLoadoutData set ["helmets", ["PUP_CA_H_PilotHelmet"]];
_pilotLoadoutData set ["rifles", [
    ["PUP_arifle_C8A3_IUR_F", "", "", "", ["JCA_30Rnd_556x45_PMAG", "JCA_30Rnd_556x45_Red_PMAG"], [], ""],
    ["PUP_arifle_SPAR_01_F", "", , "", ["PUP_EMAG_65x39", "PUP_EMAG_65x39_T"], [], ""]
]];
// _pilotLoadoutData set ["sidearms", []];

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F"]];
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE", "Aegis_V_CarrierRigKBT_01_holster_black_F", "V_Rangemaster_belt_blk"]];
_policeLoadoutData set ["helmets", ["H_Beret_blk_POLICE", "H_Cap_police"]];

_policeRails = [ "acc_flashlight", "JCA_acc_flashlight_tactical_black", ""];

_policeLoadoutData set ["rifles", [
    ["JCA_smg_MP5_FL_black_F", "", _policeRails, "", ["JCA_30Rnd_9x19_MP5_Mag", "JCA_30Rnd_9x19_MP5_Red_Mag"], [], ""],
    ["JCA_smg_MP5_AFG_black_F", "", _policeRails, "", ["JCA_30Rnd_9x19_MP5_Mag", "JCA_30Rnd_9x19_MP5_Red_Mag"], [], ""],
    ["JCA_smg_MP5_VFG_black_F", "", _policeRails, "", ["JCA_30Rnd_9x19_MP5_Mag", "JCA_30Rnd_9x19_MP5_Red_Mag"], [], ""],

    ["sgun_M4_F", "", "acc_flashlight_pistol", "", ["8Rnd_12Gauge_Pellets", "8Rnd_12Gauge_Slug"], [], ""]
]];
// _policeLoadoutData set ["sidearms", []];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

/* Unit Gear */
private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["vests", [
    "TKE_GenVest1PV1FEDRA", 0.25,
    "TKE_GenVest1FEDRA", 0.25,
    "TKE_FlakJacketPV1FEDRA", 0.25,
    "TKE_FlakJacketFEDRA", 0.25
]];
_militiaLoadoutData set ["vestsSL", ["TKE_GenVest1PV2FEDRA", 1]];
_militiaLoadoutData set ["vestsHeavy", ["TKE_FedraArmour_Camo", 0.5, "TKE_FedraArmour2_Camo", 0.5]];
_militiaLoadoutData set ["vestsSniper", ["TKE_FlakJacketFEDRA", 1]];
_militiaLoadoutData set ["vestsMedic", ["TKE_FlakJacketFEDRA", 1]];
_militiaLoadoutData set ["vestsGrenadier", ["TKE_FlakJacketPV1FEDRA", 0.5, "TKE_FedraArmour2_Camo", 0.5]];
_militiaLoadoutData set ["vestsMachineGunner", ["TKE_FedraArmour_Camo", 0.5, "TKE_FedraArmour2_Camo", 0.5]];
_militiaLoadoutData set ["backpacks", ["TKE_CamelBakV2UCN", 0.33, "TKE_UCNFaceWear1FW", 0.33, "TKE_BackPack1", 0.33]];
_militiaLoadoutData set ["helmets", ["TKE_PatrolCapCFEDRA", 0.33, "TKE_MercHelmV2FEDRA", 0.33, "TKE_MercHelmV2VisorFEDRA", 0.33]];
_militiaLoadoutData set ["helmetsSL", ["TKE_UCMCHelmClosedFEDRA", 1]];
_militiaLoadoutData set ["helmetsHeavy", ["TKE_UCMCHelmFEDRA", 0.33, "TKE_UCMCHelmClosedFEDRAV2", 0.33, "TKE_MercHelmClosedFEDRA", 0.33]];
_militiaLoadoutData set ["helmetsSniper", ["TKE_MercHelmClosedFEDRA", 0.33, "TKE_MercHelmNVG1FEDRA", 0.33, "TKE_FaceCoverEPGrey", 0.33]];
_militiaLoadoutData set ["helmetsMedic", ["TKE_MercHelmV2VisorFEDRA", 0.5, "TKE_MercHelmClosedFEDRA", 0.5]];
_militiaLoadoutData set ["helmetsGrenadier", ["TKE_UCMCHelmFEDRA", 0.5, "TKE_UCMCHelmClosedFEDRAV2", 0.5]];
_militiaLoadoutData set ["helmetsMachineGunner", ["TKE_MercHelmClosedFEDRA", 0.5, "TKE_UCMCHelmFEDRA", 0.5]];

/* Unit Misc Gear */
_militiaLoadoutData set ["facewear", [
    "TKE_UCMCLegPouch", 0.2,
    "TKE_UCNFaceWear1", 0.2,
    "TKE_UCMCGogglesDown", 0.2,
    "TKE_FaceCoverGrey", 0.4
]];

/* Unit Weapons */
_militiaLoadoutData set ["rifles", [
    ["TKE_ARX12FEDRA", "", "", _opticsShared, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTG"], [], ""], 5
    // ["TKE_UCNRifle2", "", "", _opticsShared, ["TKE_35rnd_62x35_mag", "TKE_35rnd_62x35_magTG"], [], ""], 2,
    // ["WRS_Weapon_AR", "", "", _opticsShared, ["WRS_Ar_Magazine"], [], ""], 1
]];
_militiaLoadoutData set ["riflesSL", [
    ["TKE_ARX12FEDRA", "", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTG"], [], ""], 6,
    ["TKE_UCNBPRifle", "", _mountsShared, _opticsSharedSL, ["TKE_30rnd_575x45_mag", "TKE_30rnd_575x45_magTG"], [], ""], 1,
    ["TKE_BPRA5", "", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTG"], [], ""], 3,
    ["TKE_UCNRifle2", "", _mountsShared, _opticsSharedSL, ["TKE_35rnd_62x35_mag", "TKE_35rnd_62x35_magTG"], [], ""], 2,
    ["TKE_UCNRifle", "", _mountsShared, _opticsSharedSL, ["TKE_25rnd_762x51_mag"], [], ""], 1
]];
_militiaLoadoutData set ["riflesAuto", [
    ["TKE_UCNLMG", "", _mountsShared, _opticsShared, ["TKE_150rnd_62x35_magUCN"], [], ""], 1
]];

// We're going to let the default _loadoutData handle weapons from here, militia has like... 2 unique guns?
// _militiaLoadoutData set ["riflesMarksman", []];
// _militiaLoadoutData set ["riflesSniper", []];
// _militiaLoadoutData set ["riflesCarbine", []];
// _militiaLoadoutData set ["launchersGrenade", []];
// _militiaLoadoutData set ["sidearms", []];
// _militiaLoadoutData set ["binoculars", []];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

/* Unit Gear */
private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["uniforms", [
    "TKE_CombatUniArmyV2_U_B", 0.2, 
    "TKE_CombatUniRolledV1ArmyV2_U_B", 0.2, 
    "TKE_CombatUniRolledV2ArmyV2_U_B", 0.2, 
    "TKE_CombatUniNARolledArmyV2_U_B", 0.2
]];
_militaryLoadoutData set ["uniformsSL", ["TKE_CombatUniRolledV1ArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_militaryLoadoutData set ["uniformsHeavy", ["TKE_VoidSuitArmyV2_U_B", 1]];
_militaryLoadoutData set ["uniformsSniper", ["TKE_CombatShirtArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_militaryLoadoutData set ["uniformsMedic", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV1ArmyV2_U_B", 0.5]];
_militaryLoadoutData set ["uniformsGrenadier", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_militaryLoadoutData set ["uniformsMachineGunner", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_militaryLoadoutData set ["vests", [
    "TKE_UCMCArmour6_1Army", 0.25,
    "TKE_UCMCArmour6_2Army", 0.25,
    "TKE_UCMCArmour2_2Army", 0.25,
    "TKE_UCMCArmour3_1Army", 0.25
]];
_militaryLoadoutData set ["vestsSL", ["TKE_UCMCArmour4_2Army", 0.5, "TKE_UCMCArmour6_3Army", 0.5]];
_militaryLoadoutData set ["vestsHeavy", ["TKE_UCMCArmour6_2Army", 0.5, "TKE_UCMCArmour3_2Army", 0.5]];
_militaryLoadoutData set ["vestsSniper", ["TKE_UCMCArmour2_2Army", 1]];
_militaryLoadoutData set ["vestsMedic", ["TKE_UCMCArmour3_1Army", 1]];
_militaryLoadoutData set ["vestsGrenadier", ["TKE_UCMCArmour6_2Army", 0.5, "TKE_UCMCArmour3_2Army", 0.5]];
_militaryLoadoutData set ["vestsMachineGunner", ["TKE_UCMCArmour6_4Army", 0.5, "TKE_UCMCArmour5_1Army", 0.5]];
_militaryLoadoutData set ["backpacks", ["TKE_CamelBakV2UCNCamo2", 0.33, "TKE_UCMCLegPouchFWCamo2V2", 0.33, "TKE_BackPack1UCN2", 0.33]];
_militaryLoadoutData set ["helmets", ["TKE_UCMCHelm_Army", 0.33, "TKE_UCMCHelmClosedArmyV2", 0.33, "TKE_UCMRHelmOpen_ArmyV2", 0.33]];
_militaryLoadoutData set ["helmetsSL", ["TKE_UCMCHelmClosedArmy", 1]];
_militaryLoadoutData set ["helmetsHeavy", ["TKE_UCMCHelm_Army", 0.33, "TKE_UCMCHelmClosedArmyV2", 0.33, "TKE_UCMCHelmClosedArmyV2", 0.33]];
_militaryLoadoutData set ["helmetsSniper", ["TKE_UCMCHelmScrim_Army", 0.33, "TKE_UCMRHelmOpenScrim_ArmyV2", 0.33, "TKE_UCMCHelmClosedArmyV2", 0.33]];
_militaryLoadoutData set ["helmetsMedic", ["TKE_UCMCHelmMaskV2_Army", 0.5, "TKE_UCMCHelm_Army", 0.5]];
_militaryLoadoutData set ["helmetsGrenadier", ["TKE_UCMCHelm_Army", 0.5, "TKE_UCMCHelmClosedArmyV2", 0.5]];
_militaryLoadoutData set ["helmetsMachineGunner", ["TKE_UCMCHelm_Army", 0.5, "TKE_UCMCHelmClosedArmyV2", 0.5]];

/* Unit Misc Gear */
_militaryLoadoutData set ["facewear", [
    "TKE_FaceCoverGrey", 0.33,
    "TKE_UCNFaceWear1", 0.33,
    "", 0.33
]];

_militaryLoadoutData set ["NVGs", ["TKE_UCMCNvgArmy"]];

/* Unit Weapons */

_militaryLoadoutData set ["rifles", [
    ["WRS_Weapon_AR", "", _mountsShared, _opticsShared, ["WRS_Ar_Magazine"], [], ""], 1,
    ["TKE_BPRA5", "", _mountsShared, _opticsShared, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTG"], [], ""], 1,
    ["TKE_UCNBPRifle", "", _mountsShared, _opticsShared, ["TKE_30rnd_575x45_mag", "TKE_30rnd_575x45_magTG"], [], ""], 2,
    ["TKE_UCNRifle2", "", _mountsShared, _opticsShared, ["TKE_35rnd_62x35_mag", "TKE_35rnd_62x35_magTG"], [], ""], 3
]];
_militaryLoadoutData set ["riflesCarbine", [
    ["TKE_UCNBPRifle", "", _mountsShared, _opticsShared, ["TKE_30rnd_575x45_mag", "TKE_30rnd_575x45_magTG"], [], ""], 1,
    ["TKE_UCNRifle3", "", _mountsShared, "TKE_ReflexSight", ["TKE_35rnd_62x35_mag", "TKE_35rnd_62x35_magTG"], [], ""], 1
]];

// We're going to let the default _loadoutData handle weapons from here (we could use the green camo weapons but...)
// _militaryLoadoutData set ["rifles", []];
// _militaryLoadoutData set ["riflesSL", []];
// _militaryLoadoutData set ["riflesAuto", []];
// _militaryLoadoutData set ["riflesMarksman", []];
// _militaryLoadoutData set ["riflesSniper", []];
// _militaryLoadoutData set ["riflesCarbine", []];
// _militaryLoadoutData set ["launchersGrenade", []];
// _militaryLoadoutData set ["sidearms", []];
// _militaryLoadoutData set ["binoculars", []];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

/* Unit Gear */
private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["uniforms", [
    "TKE_CombatUniArmyV2_U_B", 0.2, 
    "TKE_CombatUniRolledV1ArmyV2_U_B", 0.2, 
    "TKE_CombatUniRolledV2ArmyV2_U_B", 0.2, 
    "TKE_CombatUniNARolledArmyV2_U_B", 0.2, 
    "TKE_CombatUniNARolledArmyV2_U_B", 0.2
]];
_eliteLoadoutData set ["uniformsSL", ["TKE_CombatUniRolledV1ArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_eliteLoadoutData set ["uniformsHeavy", ["TKE_VoidSuitArmyV2_U_B", 1]];
_eliteLoadoutData set ["uniformsSniper", ["TKE_CombatShirtArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_eliteLoadoutData set ["uniformsMedic", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV1ArmyV2_U_B", 0.5]];
_eliteLoadoutData set ["uniformsGrenadier", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_eliteLoadoutData set ["uniformsMachineGunner", ["TKE_CombatUniArmyV2_U_B", 0.5, "TKE_CombatUniRolledV2ArmyV2_U_B", 0.5]];
_eliteLoadoutData set ["vests", [
    "TKE_UCMCArmour6_1Army", 0.25,
    "TKE_UCMCArmour6_2Army", 0.25,
    "TKE_UCMCArmour2_1Army", 0.25,
    "TKE_UCMCArmour3_2Army", 0.25
]];
_eliteLoadoutData set ["vestsSL", ["TKE_UCMCArmour6_3Army", 0.5, "TKE_UCMCArmour4_1Army", 0.5]];
_eliteLoadoutData set ["vestsHeavy", ["TKE_UCMCArmour6_2Army", 0.5, "TKE_UCMCArmour3_2Army", 0.5]];
_eliteLoadoutData set ["vestsSniper", ["TKE_UCMCArmour6_1Army", 1]];
_eliteLoadoutData set ["vestsMedic", ["TKE_UCMCArmour6_2Army", 1]];
_eliteLoadoutData set ["vestsGrenadier", ["TKE_UCMCArmour6_2Army", 0.5, "TKE_UCMCArmour3_2Army", 0.5]];
_eliteLoadoutData set ["vestsMachineGunner", ["TKE_UCMCArmour6_4Army", 0.5, "TKE_UCMCArmour5_1Army", 0.5]];
_eliteLoadoutData set ["backpacks", ["TKE_CamelBakV2UCNCamo2", 0.5, "TKE_BackPack1UCN2", 0.5]];
_eliteLoadoutData set ["helmets", ["TKE_UCMCHelmClosedArmy", 0.5, "TKE_UCMRHelmOpenScrim_ArmyV2", 0.5]];
_eliteLoadoutData set ["helmetsSL", ["TKE_UCMCHelmClosedArmy", 1]];
_eliteLoadoutData set ["helmetsHeavy", ["TKE_UCMCHelmClosedArmy", 1]];
_eliteLoadoutData set ["helmetsSniper", ["TKE_UCMCHelmScrim_Army", 0.33, "TKE_UCMRHelmOpenScrim_ArmyV2", 0.33, "TKE_UCMCHelmClosedArmy", 0.33]];
_eliteLoadoutData set ["helmetsMedic", ["TKE_UCMCHelmClosedArmy", 1]];
_eliteLoadoutData set ["helmetsGrenadier", ["TKE_UCMCHelmClosedArmy", 1]];
_eliteLoadoutData set ["helmetsMachineGunner", ["TKE_UCMCHelmClosedArmy", 1]];

/* Unit Misc Gear */
_eliteLoadoutData set ["facewear", [
    "TKE_FaceCoverGrey", 0.33,
    "TKE_UCNChestPouches1Camo2V2", 0.33,
    "TKE_UCNFaceWear2Camo2V2", 0.33
]];

/* Unit Weapons */

// We're going to let the default _loadoutData handle weapons from here
// _eliteLoadoutData set ["rifles", []];
// _eliteLoadoutData set ["riflesSL", []];
// _eliteLoadoutData set ["riflesAuto", []];
// _eliteLoadoutData set ["riflesMarksman", []];
// _eliteLoadoutData set ["riflesSniper", []];
// _eliteLoadoutData set ["riflesCarbine", []];
// _eliteLoadoutData set ["launchersGrenade", []];
// _eliteLoadoutData set ["sidearms", []];
// _eliteLoadoutData set ["binoculars", []];

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

#define GEAR_SF_VEST "TKE_CSTRArmour", "TKE_CSTRArmourNP"

/* Unit Gear */
private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["uniforms", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsSL", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsHeavy", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsSniper", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsMedic", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsGrenadier", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["uniformsMachineGunner", ["TKE_CSTRUni_U_B"]];
_sfLoadoutData set ["vests", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsSL", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsHeavy", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsSniper", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsMedic", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsGrenadier", [GEAR_SF_VEST]];
_sfLoadoutData set ["vestsMachineGunner", [GEAR_SF_VEST]];
_sfLoadoutData set ["backpacks", ["TKE_EVAPack", "TKE_JammerPackUCN"]];
_sfLoadoutData set ["helmets", ["TKE_CSTRHelm"]];
_sfLoadoutData set ["helmetsSL", ["TKE_CSTRHelmVD"]];
_sfLoadoutData set ["helmetsHeavy", ["TKE_CSTRHelmVD"]];
_sfLoadoutData set ["helmetsSniper", ["TKE_CSTRHelm"]];
_sfLoadoutData set ["helmetsMedic", ["TKE_CSTRHelmVU"]];
_sfLoadoutData set ["helmetsGrenadier", ["TKE_CSTRHelmVU"]];
_sfLoadoutData set ["helmetsMachineGunner", ["TKE_CSTRHelmVU"]];

/* Unit Misc Gear */
_sfLoadoutData set ["facewear", []];
_sfLoadoutData set ["NVGs", ["TKE_ReconNVGUCN"]];

/* Unit Weapons */
_sfLoadoutData set ["rifles", [
    ["TKE_BPRA5", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTR"], [], ""], 1
]];
_sfLoadoutData set ["riflesSL", [
    ["TKE_BPRA5", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTR"], [], ""], 1
]]; // Rifle given to Squad Leaders
_sfLoadoutData set ["riflesAuto", [
    ["TKE_UCNLMG", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_150rnd_62x35_magUCN"], [], ""], 1,
    ["TKE_UCNMMG", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_100rnd_ucnmmg_mag"], [], ""], 2
]]; // An LMG or machine gun
_sfLoadoutData set ["riflesMarksman", [
    ["TKE_UCNDMR", "muzzle_snds_65_TI_blk_F", _mountsShared, "TKE_10xSight", ["TKE_20rnd_969x51_magUCN"], [], "bipod_03_F_blk"], 1
]]; // Accurate long barrel rifle
_sfLoadoutData set ["riflesSniper", [
    ["TKE_UCNSniper", "muzzle_snds_65_TI_blk_F", "", ["TKE_10xSight", 0.7, "TKE_ThermScope", 0.3], ["5Rnd_127x108_Mag", "5Rnd_127x108_APDS_Mag"], [], "bipod_01_F_blk"], 1
]]; // Designated sniper rifle
_sfLoadoutData set ["riflesCarbine", [
    ["TKE_BPRA5", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTR"], [], ""], 21
]]; // A rifle with a shorter barrel length
_sfLoadoutData set ["launchersGrenade", [
    ["TKE_UCNRifle4", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_35rnd_62x35_mag", "TKE_35rnd_62x35_magTR"], ["1Rnd_HE_Grenade_shell", "UGL_FlareRed_F"], ""], 0.5,
    ["TKE_BPRA5GL", "muzzle_snds_65_TI_blk_F", _mountsShared, _opticsSharedSL, ["TKE_ARX12_62x35_mag", "TKE_ARX12_62x35_magTR"], ["1Rnd_HE_Grenade_shell", "UGL_FlareRed_F"], ""], 0.5
]]; // A (usually) rifle mounted grenade launcher

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////

private _squadLeaderTemplate = {
    [selectRandomWeighted ["helmets", 2, "helmetsSL", 1]] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    [selectRandomWeighted ["vestsSL", 2, "vests", 1]] call _fnc_setVest;
    [selectRandomWeighted ["uniformsSL", 2, "uniforms", 1]] call _fnc_setUniform;

    [["riflesSL", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["GPS"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacksRadio"] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _medicTemplate = {
    [["helmetsMedic", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    [["vestsMedic", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsMedic", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    [["helmetsGrenadier", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    [["vestsGrenadier", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsGrenadier", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    if (random 1 < 0.3) then {
        [["launchersGrenadeDesignated", "launchersGrenade"] call _fnc_fallback] call _fnc_setPrimary;
        ["backpacks"] call _fnc_setBackpack;
    } else {
        ["launchersGrenade"] call _fnc_setPrimary;
    };
    
    ["primary", 6] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    [["helmetsHeavy", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    [["vestsHeavy", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsHeavy", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["explosivesLight", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["explosivesHeavy", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["minesAT", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["minesAP", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["explosivesLight", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["backpacksAT", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    [["launchersLightAT", "launchersAT"] call _fnc_fallback] call _fnc_setLauncher;
    ["launcher", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["backpacksAT", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["launchersAT", "launchersMissileAT"]] call _fnc_setLauncher;
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["backpacksAT", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandom ["rifles", "riflesCarbine"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["launchersAA"] call _fnc_setLauncher;
    ["launcher", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    [["helmetsMachineGunner", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    [["vestsMachineGunner", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsMachineGunner", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["riflesAuto"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    [["helmetsSniper", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1, "facewear", 1]] call _fnc_setFacewear;
    [["vestsSniper", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsSniper", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

    ["riflesMarksman"] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    [["helmetsSniper", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1, "facewear", 1]] call _fnc_setFacewear;
    [["vestsSniper","vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsSniper","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["riflesSniper", "riflesMarksman"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["riflesCarbine"] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["riflesCarbine", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["GPS"] call _fnc_addGPS;
    ["NVG"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["helmetsTraitor"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vestsTraitor"] call _fnc_setVest;
    ["uniformsTraitor"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["helmetsOfficer"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
    ["vestsOfficer"] call _fnc_setVest;
    ["uniformsOfficer"] call _fnc_setUniform;

    [["riflesCarbine", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    [["helmetsSniper", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1, "facewear", 1]] call _fnc_setFacewear;
    [["vestsCloak","vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsCloak","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["riflesSniper", "riflesMarksman"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVG"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    [["helmetsSniper", "helmets"] call _fnc_fallback] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1, "facewear", 1]] call _fnc_setFacewear;
    [["vestsCloak","vests"] call _fnc_fallback] call _fnc_setVest;
    [["uniformsCloak","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "riflesCarbine", "riflesMarksman"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVG"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.     //
//  Things below here can and will break the gamemode if improperly changed.                //
/////////////////////////////////////////////////////////////////////////////////////////////

#include "definitions\Main_Definitions.sqf"