class E22_Base
{
    requiredAddons[] = {"Weapons_1_F_lxWS", "Data_F_Levi"};
    basepath = QPATHTOFOLDER(Templates\Templates\E22);
    logo = QPATHTOFOLDER(Templates\Templates\E22\e22_logo.paa);
    priority = 32;
    equipFlags[] = {"vanilla"};
    forceDLC[] = {"ws"};
};

class E22_Northstar_Temperate : E22_Base
{
    side = "Occ";
    name = "Northstar";
    flagTexture = QPATHTOFOLDER(Templates\Templates\WS\flags\CSAT_SFIA.paa);
    file = "E22_AI_Northstar_Temperate";
    climate[] = {"temperate", "tropical"};
};
