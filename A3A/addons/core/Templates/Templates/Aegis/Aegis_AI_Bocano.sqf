private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCSLA = "csla" in A3A_enabledDLC;
private _hasRF = "rf" in A3A_enabledDLC;
private _hasSOG = "vn" in A3A_enabledDLC;
private _hasSPE = "spe" in A3A_enabledDLC;
private _hasEF = "ef" in A3A_enabledDLC;

//////////////////////////
//   Side Information   //
//////////////////////////

["name", "Bocano"] call _fnc_saveToTemplate;
["spawnMarkerName", format [localize "STR_supportcorridor", "Bocano"]] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3_Aegis\UI_F_Aegis\Data\CfgMarkers\Bocano_CA.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Bocano"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesSDV", ["O_SDV_01_F"]] call _fnc_saveToTemplate;

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate;

["ammobox", "O_A_supplyCrate_F"] call _fnc_saveToTemplate;     
["surrenderCrate", "Box_W_NATO_Wps_F"] call _fnc_saveToTemplate; 
["equipmentBox", "Box_W_NATO_Equip_F"] call _fnc_saveToTemplate; 

["vehiclesBasic", ["I_BNBRDF_Quad_Bike_01"]] call _fnc_saveToTemplate;

private _lightUnarmed = ["I_BNBRDF_Offroad_01", "I_IBRDF_Strider_01", "I_BNBRDF_Truck_01"];
private _lightArmed = ["I_BNBRDF_Offroad_AT_01", "I_BNBRDF_Offroad_HMG_01", "I_IBRDF_Strider_HMG_01", "I_IBRDF_Strider_GMG_01"];
private _cargoTrucks = ["I_BNBRDF_Zamak_Transport_01", "I_BNBRDF_Zamak_Transport_Covered_01"];
private _vehiclesAA = ["I_BNBRDF_BT_22_Yozhik_AA_01", "I_BNBRDF_Zamak_Zu_32_01"];
private _staticAA = ["I_BNBRDF_Static_Titan_Launcher_AA_01"];
private _Howitzers = [];
if (_hasApex) then {
    _lightUnarmed append ["I_BNBRDF_MB_4WD_01", "I_BNBRDF_Prowler_Unarmed_01", "I_BNBRDF_Prowler_Light_01"];
    _lightArmed append ["I_BNBRDF_MB_4WD_AT_01", "I_BNBRDF_MB_4WD_LMG_01", "I_BNBRDF_Prowler_AT_01", "I_BNBRDF_Prowler_HMG_01"];
};
if (_hasContact) then {
    _lightUnarmed append ["I_BNBRDF_Offroad_Covered_01", "I_BNBRDF_Offroad_Comms_01"];
    _lightArmed append ["Atlas_O_W_LSV_02_AT_F", "Atlas_O_W_LSV_02_armed_F"];
};
if (_hasRF) then {
    _lightUnarmed append ["I_BNBRDF_MB_4WD_01", "I_BNBRDF_Pickup_Comms_01"];
    _lightArmed append ["I_BNBRDF_Pickup_MMG_01", "I_IBRDF_Pickup_RCWS_01", "I_IBRDF_Pickup_Rocket_01"];
    _vehiclesAA append ["I_BNBRDF_Pickup_AA_01"];
    _Howitzers pushBack ["I_BNBRDF_Twin_Mortar_120_mm_01"];
};
if (_hasLawsOfWar) then {
    _lightUnarmed append ["I_BNBRDF_Van_Transport_01", "I_BNBRDF_Van_Cargo_01"];
};
if (_hasWs) then {
    _lightUnarmed append ["I_BNBRDF_Offroad_UP_01"];
    _lightArmed append ["I_BNBRDF_Offroad_UP_AT_01", "I_BNBRDF_Offroad_UP_HMG_01"];
    _cargoTrucks append ["I_BNBRDF_Zamak_Cargo_01", "I_BNBRDF_Zamak_Flatbed_01"];
    _staticAA append ["I_BNBRDF_Zu_32_2_01"];
};
["vehiclesLightUnarmed", _lightUnarmed] call _fnc_saveToTemplate;
["vehiclesLightArmed", _lightArmed] call _fnc_saveToTemplate;

["vehiclesTrucks", ["I_BNBRDF_Zamak_Transport_01", "I_BNBRDF_Zamak_Transport_Covered_01"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", _cargoTrucks] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["I_BNBRDF_Zamak_Ammo_01"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["I_BNBRDF_Zamak_Repair_01"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["I_BNBRDF_Zamak_Fuel_01"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["I_BNBRDF_Zamak_Medical_01", "I_BNBRDF_UGV_Stomper_Medical_01"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["I_BNBRDF_MSE_3Marid_01"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["I_BNBRDF_BTR_100_Bogatyr_01"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["I_BNBRDF_BTR_WVoyn_01"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["I_BNBRDF_UGV_Stomper_RCWS_01", "I_BNBRDF_BT_24_Yozhik_Autocannon_01", "I_BNBRDF_BT_21_Yozhik_AT_01"]] call _fnc_saveToTemplate;
["vehiclesLightTanks", ["I_BNBRDF_UGV_Stomper_RCWS_01", "I_BNBRDF_BT_24_Yozhik_Autocannon_01", "I_BNBRDF_BT_21_Yozhik_AT_01"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["I_BNBRDF_T100_Varsuk_01"]] call _fnc_saveToTemplate;
["vehiclesAA", _vehiclesAA] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["I_BNBRDF_Assault_Boat_01", "I_BNBRDF_RHIB_01"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["I_BNBRDF_Speedboat_HMG_01"]] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["Atlas_O_T_Plane_Fighter_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["Atlas_O_T_Plane_Fighter_03_dynamicLoadout_F"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["I_BNBRDF_C192_Samson_Infantry_Transport_01"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["I_BNBRDF_PO_9Kolibri_01"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["I_BNBRDF_PO_9Kolibri_01", "I_BNBRDF_PO_30_Orca_Unarmed_01", "I_BNBRDF_Mi_490E_Irokez_01"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["I_BNBRDF_PO_9A_Strazha_01", "I_BNBRDF_PO_30_Orca_01"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["I_BNBRDF_Mi_35_Krokodil_01"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["I_BNBRDF_Zamak_MRL_01", "I_BNBRDF_2S9_Sochor_01"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["I_BNBRDF_Zamak_MRL_01", ["12Rnd_230mm_rockets"]],
["I_BNBRDF_2S9_Sochor_01",["32Rnd_155mm_Mo_shells_O", "2Rnd_155mm_Mo_Cluster_O"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["I_BNBRDF_MQ_4A_Greyhawk_01"]] call _fnc_saveToTemplate;
["uavsPortable", ["I_BNBRDF_AR_2Darter_01"]] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["I_BNBRDF_Offroad_HMG_01", "I_BNBRDF_Offroad_AT_01"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["I_BNBRDF_Truck_01"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["I_BNBRDF_Offroad_01"]] call _fnc_saveToTemplate;

["vehiclesMilitiaAPCs", ["I_IBRDF_Strider_HMG_01"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["I_BNBRDF_Offroad_01"]] call _fnc_saveToTemplate;

["staticMGs", ["I_BNBRDF_M2_HMG_50_Raised_01", "I_BNBRDF_Mk30_HMG_50_Raised_01", "I_BNBRDF_Mk32_GMG_25_mm_Raised_01"]] call _fnc_saveToTemplate;
["staticAT", ["I_BNBRDF_Static_Titan_Launcher_AT_01"]] call _fnc_saveToTemplate;
["staticAA", _staticAA] call _fnc_saveToTemplate;
["staticMortars", ["I_BNBRDF_Mk6_Mortar_01"]] call _fnc_saveToTemplate;
["staticHowitzers", _Howitzers] call _fnc_saveToTemplate;

["vehicleRadar", "I_BNBRDF_AN_MPQ_105_Radar_01"] call _fnc_saveToTemplate;
["vehicleSam", "I_BNBRDF_MIM_145_Defender_01"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "6Rnd_120mm_HE_shells_RF"] call _fnc_saveToTemplate;


["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["animations", []] call _fnc_saveToTemplate;

["variants", []] call _fnc_saveToTemplate;
/////////////////////
///  Identities   ///
/////////////////////

["voices", ["Male01GRE", "Male05GRE", "Male06GRE"]] call _fnc_saveToTemplate;
["faces", ["AfricanHead_02", "AfricanHead_03", "AfricanHead_01"]] call _fnc_saveToTemplate;
"AfroMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////

private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["designatedGrenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", []];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade_Guer", "HandGrenade_East"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_OPFOR", "NVGoggles", "NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder", "Laserdesignator_04"]];

_loadoutData set ["officerUniforms", ["U_I_Bocano_CombatUniform_jacket"]];
_loadoutData set ["officerVests", ["V_Rangemaster_belt"]];
_loadoutData set ["officerHats", ["H_Beret_PRB_01_F"]];

_loadoutData set ["traitorUniforms", ["U_I_Bocano_CombatUniform"]];
_loadoutData set ["traitorVests", ["V_lxWS_HarnessO_oli"]];
_loadoutData set ["traitorHats", ["H_milcap_m81_F"]];

_loadoutData set ["cloakUniforms", ["U_B_T_FullGhillie_tna_F"]];
_loadoutData set ["cloakVests", ["V_lxWS_HarnessO_oli"]];

_loadoutData set ["uniforms", ["U_I_Bocano_CombatUniform", "U_I_Bocano_CombatUniform_jacket", "U_I_Bocano_CombatUniform_shortsleeve", "U_I_Bocano_CombatUniform_tanktop", "U_I_Bocano_CombatUniform_tee"]];
_loadoutData set ["slUniforms", ["U_I_Bocano_CombatUniform_shortsleeve"]];
_loadoutData set ["vests", []];
_loadoutData set ["Hvests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["atBackpacks", ["B_Carryall_khk", "B_Carryall_oli", "B_Carryall_jungle", "Aegis_B_patrolBackpack_khk_F"]];
_loadoutData set ["longRangeRadios", ["B_RadioBag_01_m81_F", "B_RadioBag_01_green_F", "B_RadioBag_01_jungle_F"]];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["H_Beret_PRB_01_F"]];
_loadoutData set ["sniHats", ["H_Booniehat_m81_F"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

private _glItems = [];

if (_hasRF) then {
    _glItems append ["1Rnd_RC40_HE_shell_RF", 1];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", _glItems];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_sfLoadoutData set ["uniforms", ["Rev_U_I_CDB_CombatUniform_F", "Rev_U_I_CDB_CombatUniform_shortsleeve_F"]];
_sfLoadoutData set ["vests", ["Aegis_V_CarrierRigKBT_01_cqb_olive_F", "Aegis_V_CarrierRigKBT_01_recon_olive_F"]];
_sfLoadoutData set ["glVests", ["Aegis_V_CarrierRigKBT_01_tac_olive_F"]];
_sfLoadoutData set ["backpacks", ["B_AssaultPackSpec_rgr", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Kitbag_wdl_F", "B_TacticalPack_sgg"]];
_sfLoadoutData set ["helmets", ["Aegis_H_Helmet_FASTMT_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_rgr_F", "Aegis_H_Helmet_FASTMT_Cover_rgr_F"]];
_sfLoadoutData set ["binoculars", ["Rangefinder", "Laserdesignator_04"]];
_sfLoadoutData set ["NVGs", ["Aegis_NVG_IVAS_01_blk_F", "Aegis_NVG_IVAS_01_grn_F", "O_NVGoggles_blk_F"]];

_sfLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_black_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["Aegis_launch_RPG7M_F", "", "", "", ["RPG7_F"], [], ""]
]];
_sfLoadoutData set ["missileATLaunchers", [
    ["launch_Titan_short_blk_F", "", "", "", ["Titan_AT"], [], ""]
]];
_sfLoadoutData set ["AALaunchers", [
    ["launch_Titan_blk_F", "", "", "", ["Titan_AA"], [], ""]
]];

_sfLoadoutData set ["slRifles", [
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],

    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData set ["rifles", [
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_sfLoadoutData set ["carbines", [
    ["arifle_SA80_C_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_C_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_C_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HEDP_Grenade_shell", 6], ""],
    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HEDP_Grenade_shell", 6], ""],
    ["arifle_SA80_GL_blk_F", "muzzle_snds_H", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HEDP_Grenade_shell", 6], ""]
]];

_sfLoadoutData set ["machineGuns", [
    ["LMG_Mk200_black_F", "muzzle_mzls_H", "acc_pointer_IR", "optic_Arco_blk_F", ["200Rnd_65x39_cased_Box"], [], ""],
    ["LMG_Mk200_black_F", "muzzle_mzls_H", "acc_pointer_IR", "Aegis_optic_ACOG", ["200Rnd_65x39_cased_Box"], [], ""],
    ["LMG_Mk200_black_F", "muzzle_mzls_H", "acc_pointer_IR", "", ["200Rnd_65x39_cased_Box"], [], ""]
]];

_sfLoadoutData set ["marksmanRifles", [
    ["srifle_EBR_blk_F", "muzzle_snds_B", "", "optic_LRPS", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_blk_F", "muzzle_snds_B", "", "optic_KHS_blk", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_blk_F", "muzzle_snds_B", "", "optic_AMS", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"]
]];
_sfLoadoutData set ["sniperRifles", [
    ["Aegis_srifle_GM6B_F", "", "", "optic_KHS_blk", ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_F", "", "", "optic_LRPS", ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""],
    ["Aegis_srifle_GM6B_F", "", "", "optic_SOS", ["Aegis_5Rnd_127x99_Mag", "Aegis_5Rnd_127x99_AP_Mag"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["hgun_Pistol_heavy_01_black_F", "muzzle_snds_acp", "Aegis_acc_LightModule_Pistol_black", "optic_MRD_black", ["11Rnd_45ACP_Mag"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_eliteLoadoutData set ["uniforms", ["U_I_Bocano_CombatUniform", "U_I_Bocano_CombatUniform_shortsleeve"]];
_eliteLoadoutData set ["vests", ["V_CarrierRigKBT_01_Olive_F", "V_CarrierRigKBT_01_light_Olive_F", "Aegis_V_CarrierRigKBT_01_recon_olive_F"]];
_eliteLoadoutData set ["glVests", ["V_CarrierRigKBT_01_heavy_Olive_F", "Aegis_V_CarrierRigKBT_01_tac_olive_F","Aegis_V_CarrierRigKBT_01_cqb_olive_F"]];
_eliteLoadoutData set ["backpacks", ["B_AssaultPackSpec_rgr", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Kitbag_wdl_F", "B_TacticalPack_sgg"]];
_eliteLoadoutData set ["helmets", ["Aegis_H_Helmet_FASTMT_rgr_F", "Aegis_H_Helmet_FASTMT_Headset_rgr_F", "Aegis_H_Helmet_FASTMT_Cover_rgr_F", "H_HelmetSpecter_F", "H_HelmetSpecter_headset_F"]];
_eliteLoadoutData set ["binoculars", ["Rangefinder"]];

_eliteLoadoutData set ["lightATLaunchers", [
    ["launch_MRAWS_black_F", "", "", "", ["MRAWS_HEAT_F"], [], ""],
    ["Aegis_launch_RPG7M_F", "", "", "", ["RPG7_F"], [], ""]
]];
_eliteLoadoutData set ["missileATLaunchers", [
    ["launch_Titan_short_blk_F", "", "", "", ["Titan_AT"], [], ""]
]];
_eliteLoadoutData set ["AALaunchers", [
    ["launch_Titan_blk_F", "", "", "", ["Titan_AA"], [], ""]
]];

_M4Muzzles = ["muzzle_mzls_M", 5, "", 3, "muzzle_snds_M", 1];
_M4Optics = ["Aegis_optic_ICO", 2, "Aegis_optic_ACOG", 2, "optic_ERCO_blk_F", 2, "", 2];
_M4Attachments = ["Aegis_acc_pointer_DM", 2, "acc_pointer_IR", 2, "acc_flashlight", 2, "acc_flashlight_ir", 2];

if (_hasWs) then {
    _M4Optics append ["optic_r1_high_lxWS", 2, "optic_r1_high_black_sand_lxWS", 2];
    _M4Muzzles append ["suppressor_l_lxWS", 1];
    _M4Attachments append ["saber_light_lxWS", 2, "saber_light_ir_lxWS", 2];
};
if (_hasRF) then {
    _M4Optics append ["optic_VRCO_RF", 2, "optic_VRCO_tan_RF", 2];
};

_eliteLoadoutData set ["slRifles", [
    ["Aegis_arifle_M4A1_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],

    ["Aegis_arifle_M4A1_GL_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_Smoke_Grenade_shell"], ""],

    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],

    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["rifles", [
    ["Aegis_arifle_M4A1_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
    ["Aegis_arifle_M4A1_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],

    ["Aegis_arifle_M4A1_grip_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
    ["Aegis_arifle_M4A1_grip_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],

    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""],
    ["arifle_SA80_blk_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], [], ""]
]];
_eliteLoadoutData set ["carbines", [
    ["Aegis_arifle_M4A1_short_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""],
    ["Aegis_arifle_M4A1_short_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], [], ""]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
    ["Aegis_arifle_M4A1_GL_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell"], ""],
    ["Aegis_arifle_M4A1_GL_sand_F", _M4Muzzles, _M4Attachments, _M4Optics, ["30Rnd_556x45_Stanag_Tracer_Yellow"], ["1Rnd_HE_Grenade_shell"], ""],

    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_Arco_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_ERCO_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell"], ""],
    ["arifle_SA80_GL_blk_F", "", "acc_pointer_IR", "optic_Holosight_blk_F", ["30Rnd_65x39_caseless_black_mag","30Rnd_65x39_caseless_black_mag_Tracer"], ["1Rnd_HE_Grenade_shell"], ""]
]];

_eliteLoadoutData set ["machineGuns", [
    ["MMG_02_black_F", "", "", "", ["130Rnd_338_Mag"], [], ""],

    ["MMG_02_sand_F", "", "", "", ["130Rnd_338_Mag"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["srifle_EBR_blk_F", "", "", "optic_AMS", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_blk_F", "", "", "optic_KHS_blk", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_blk_F", "", "", "optic_KHS_old", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],

    ["srifle_EBR_F", "", "", "optic_AMS", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "", "optic_KHS_blk", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],
    ["srifle_EBR_F", "", "", "optic_KHS_old", ["20Rnd_Mk14_762x51_Mag"], [], "bipod_01_F_blk"],

    ["Aegis_arifle_SR25_blk_F", "", "", "optic_AMS", ["Aegis_20Rnd_762x51_SMAG"], [], "bipod_01_F_blk"],

    ["Aegis_arifle_SR25_snd_F", "", "", "optic_AMS", ["Aegis_20Rnd_762x51_SMAG"], [], "bipod_01_F_blk"]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["Aegis_srifle_LRR_sand_F", "", "", "optic_LRPS", ["7Rnd_408_Mag"], [], ""],

    ["srifle_LRR_F", "", "", "optic_LRPS", ["7Rnd_408_Mag"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////
private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militaryLoadoutData set ["uniforms", ["U_I_Bocano_CombatUniform", "U_I_Bocano_CombatUniform_shortsleeve"]];
_militaryLoadoutData set ["vests", ["V_TacVest_camo", "V_TacVest_oli", "V_HarnessOSpec_brn", "V_HarnessOSpec_whex_F"]];
_militaryLoadoutData set ["backpacks", ["B_AssaultPackSpec_rgr", "B_FieldPack_oli", "B_Kitbag_rgr", "B_Kitbag_sgg", "B_Kitbag_wdl_F", "B_TacticalPack_sgg"]];
_militaryLoadoutData set ["helmets", ["H_PASGT_basic_green_F", "H_pasgt_basic_camo_F", "lxWS_H_PASGT_goggles_green_F", "H_PASGT_basic_sand_F", "H_PASGT_goggles_sand_F"]];

_militaryLoadoutData set ["slRifles", [
    ["arifle_SLR_lxWS", "", "", "optic_LRPS", ["7Rnd_408_Mag"], [], ""]
]];
_militaryLoadoutData set ["rifles", []];
_militaryLoadoutData set ["carbines", []];
_militaryLoadoutData set ["grenadeLaunchers", []];
_militaryLoadoutData set ["SMGs", []];

_militaryLoadoutData set ["machineGuns", []];

_militaryLoadoutData set ["marksmanRifles", []];
_militaryLoadoutData set ["sniperRifles", []];


///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////
private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];
_policeLoadoutData set ["vests", ["V_TacVest_gen_F"]];
private _helmets = ["H_MilCap_gen_F", "H_Beret_gen_F"];
if (_hasLawsOfWar) then {
    _helmets pushBack "H_PASGT_basic_blue_F";
};
_policeLoadoutData set ["helmets", _helmets];

_policeLoadoutData set ["SMGs", [
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco", [], [], ""],
["SMG_01_F", "", "acc_flashlight_smg_01", "optic_Aco_smg", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_ACO_grn", [], [], ""],
["SMG_03C_TR_black", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_ACO_grn", [], [], ""],
["SMG_02_F", "", "acc_flashlight", "optic_Aco_smg", [], [], ""],
["arifle_AKSM_F", "", "", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["arifle_AKSM_alt_F", "", "", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""]
]];
_policeLoadoutData set ["sidearms", ["hgun_Rook40_F"]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; 
_militiaLoadoutData set ["uniforms", ["Atlas_U_O_Afghanka_01_whex_F", "Atlas_U_O_Afghanka_02_whex_F"]];
_militiaLoadoutData set ["slUniforms", ["Atlas_U_O_officer_noInsignia_whex_F"]];
_militiaLoadoutData set ["vests", ["V_HarnessO_whex_F", "V_HarnessO_whex_F", "Atlas_V_OCarrierLuchnik_Lite_whex_F", "Aegis_V_OCarrierLuchnik_Lite_khk_F", "Atlas_V_OCarrierLuchnik_CQB_whex_F", "Aegis_V_OCarrierLuchnik_CQB_khk_F"]];
_militiaLoadoutData set ["glVests", ["V_HarnessOGL_whex_F", "V_HarnessOGL_whex_F", "Atlas_V_OCarrierLuchnik_Lite_whex_F", "Aegis_V_OCarrierLuchnik_Lite_khk_F", "Atlas_V_OCarrierLuchnik_CQB_whex_F", "Aegis_V_OCarrierLuchnik_CQB_khk_F"]];
_militiaLoadoutData set ["backpacks", ["B_Carryall_owcamo", "B_FieldPack_owcamo", "B_FieldPack_khk"]];
_militiaLoadoutData set ["helmets", ["H_Beret_ocamo", "H_Bandanna_khk", "H_O_Helmet_canvas_owcamo", "lxWS_H_PASGT_goggles_olive_F", "H_PASGT_basic_olive_F"]];

_militiaLoadoutData set ["lightATLaunchers", [
["Aegis_launch_RPG7M_F", "", "", "", ["RPG7_F"], [], ""]
]];
_militiaLoadoutData set ["ATLaunchers", [
["launch_RPG32_camo_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""],
["launch_RPG32_green_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""],
["launch_RPG32_black_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""]
]];
_militiaLoadoutData set ["missileATLaunchers", [
["launch_RPG32_camo_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""],
["launch_RPG32_green_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""],
["launch_RPG32_black_F", "", "", "", ["RPG32_F", "RPG32_F","RPG32_HE_F"], [], ""]
]];

_militiaLoadoutData set ["slRifles", [
["Aegis_arifle_AK103_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AK103_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "optic_MRCO", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "optic_MRCO", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "optic_MRCO", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "optic_MRCO", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["UGL_FlareWhite_F", "UGL_FlareWhite_F", "1Rnd_SmokeRed_Grenade_shell", "1Rnd_SmokeGreen_Grenade_shell", "1Rnd_SmokeBlue_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
["Aegis_arifle_AK103_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AK103_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_F", "", "acc_flashlight_pistol", "optic_ACO_grn", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "acc_flashlight_pistol", "optic_ACO_grn", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
["Aegis_arifle_AKM74_F", "", "", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["Aegis_arifle_AKM74_plum_F", "", "", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""],
["arifle_AKSM_F", "", "", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], [], ""],
["arifle_AKSM_alt_F", "", "", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["Aegis_arifle_AK103_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AK103_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_polymer_Black_Mag_Green_F", "30Rnd_762x39_AK12_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_plum_F", "", "acc_flashlight_pistol", "optic_ACO_grn", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "Aegis_optic_ROS", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""],
["Aegis_arifle_AKM74_GL_F", "", "acc_flashlight_pistol", "optic_ACO_grn", ["30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_F", "30Rnd_545x39_Black_Mag_Tracer_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["srifle_DMR_01_black_F", "", "", "optic_MRCO", [], [], "bipod_02_F_blk"],
["srifle_DMR_01_black_F", "", "", "optic_Arco_blk_F", [], [], "bipod_02_F_blk"]
]];

private _mgs = if (_hasWs) then {
    [
        ["LMG_S77_lxWS", "", "acc_flashlight", "", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_ACO_grn", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_MRCO", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""],
        ["LMG_S77_lxWS", "", "acc_flashlight", "optic_Arco_blk_F", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""]
    ];
} else {
    [
        ["Atlas_LMG_Negev_black_F", "", "acc_flashlight", "", ["150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Tracer_Yellow"], [], ""],
        ["Atlas_LMG_Negev_black_F", "", "acc_flashlight", "optic_ACO_grn", ["150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Tracer_Yellow"], [], ""],
        ["Atlas_LMG_Negev_black_F", "", "acc_flashlight", "optic_MRCO", ["150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Tracer_Yellow"], [], ""],
        ["Atlas_LMG_Negev_black_F", "", "acc_flashlight", "optic_Arco_blk_F", ["150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Yellow", "150Rnd_762x51_Box_Tracer_Yellow"], [], ""]
    ];
};

_militiaLoadoutData set ["machineGuns", _mgs];
_militiaLoadoutData set ["sniperRifles", [
["srifle_GM6_F", "", "", "optic_LRPS", ["5Rnd_127x108_Mag"], [], ""],
["srifle_GM6_F", "", "", "optic_SOS", ["5Rnd_127x108_Mag"], [], ""]
]];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; 
_crewLoadoutData set ["uniforms", ["Atlas_U_O_LightCombatFatigues_whex_F"]];
_crewLoadoutData set ["vests", ["Atlas_V_OCarrierLuchnik_whex_F", "Atlas_V_OCarrierRig_whex_F"]];
_crewLoadoutData set ["helmets", ["H_Tank_black_F"]];

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["Atlas_U_O_W_PilotCoveralls"]];
_pilotLoadoutData set ["vests", ["V_Rangemaster_belt"]];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_O", "H_PilotHelmetHeli_O_visor_up", "H_CrewHelmetHeli_O"]];

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [["slVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    [["slUniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;
    [["slBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
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
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["medVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

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
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["glSidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["antiTankGrenades", 3] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [selectRandomWeighted ["carbines", 0.4, "SMGs", 0.6]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["lightATLaunchers"] call _fnc_setLauncher;
    ["launcher", 1] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["missileATLaunchers", "ATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 2] call _fnc_addMagazines;
    ["launcher", 2] call _fnc_addAdditionalMuzzleMagazines;
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    [selectRandomWeighted ["rifles", 0.2, "carbines", 0.5, "SMGs", 0.3]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    ["launcher", 2] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["mgVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["sniperRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    [selectRandom ["SMGs", "shotGuns"]] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

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
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
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
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

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
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
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
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
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
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
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
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout of the pilots
["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _SquadLeaderTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
