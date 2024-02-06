/*
	Vice City Stories map converted from GTA Vice City Stories .ISO for open.mp(0.3DL too if youre dedicated enough)
	by Chris St.P '[SkR]SpicyBung'
*/

#include <a_samp> //Credits to Kalcor & Team
#include <streamer> //Credits to Incognito
#include <zcmd>

#define DEBUG_MODE    

//Redefine this according to the max player slots of your server
#undef MAX_PLAYERS
#define MAX_PLAYERS                     25

//Path for custom objects; their .DFF and .TXD files

#define GetDynamicObjectModel(%0) Streamer_GetIntData(STREAMER_TYPE_OBJECT, %0, E_STREAMER_MODEL_ID) // Streamer defines

#define STREAMER_VISIBLEITENS           3500 //How many objects appear simultaneously for the player. Note: max objects in 0.3DL is 2000. As I am using open.mp this is unlimited

new rotX=0;

new wheel;//MAINWHEEL

public OnFilterScriptInit()
{
	
	print("--- Greetings from Vice City(Stories!)Enjoy your stay.");
	
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, STREAMER_VISIBLEITENS); //Amount of visible objects allowed on the screen
	
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 4000); //MAX_OBJECTS open.mp server allows for unlimited objects - this test is 4000
	AddVcsModels();
	CreateDynamicObjects();

	wheel = CreateDynamicObject(-2321, 6309.04, -243.15, 36.90, rotX, 180.0, 0.0);//MAINWHEEL

	printf("Vice City Stories | Total Objects: %d", Streamer_CountItems(STREAMER_TYPE_OBJECT, 0));
	return 1;
}

 forward Turn(playerid);
 public Turn(playerid)
 {
 MoveDynamicObject(wheel, 6309.04, -243.15, 36.90,12.0, rotX, 180.0, 0.0);//MAINWHEEL


 rotX ++;
 }

 public OnPlayerConnect(playerid)
 {
 SetTimer("Turn",80,1);
 PlayerPlaySound(playerid, 6000, 6309.04, -243.15, 36.90);
 return 1;
 }

AddVcsModels()
{
AddSimpleModel(-1, 19379, -1000, "vcs2samp/mainla9.dff", "vcs2samp/mainla9.txd");
AddSimpleModel(-1, 19379, -1001, "vcs2samp/mainla10.dff", "vcs2samp/mainla10.txd");
AddSimpleModel(-1, 19379, -1002, "vcs2samp/mainla27.dff", "vcs2samp/mainla27.txd");
AddSimpleModel(-1, 19379, -1003, "vcs2samp/mainla48.dff", "vcs2samp/mainla48.txd");
AddSimpleModel(-1, 19379, -1004, "vcs2samp/mainla52.dff", "vcs2samp/mainla52.txd");
AddSimpleModel(-1, 19379, -1005, "vcs2samp/mainla66.dff", "vcs2samp/mainla66.txd");
AddSimpleModel(-1, 19379, -1006, "vcs2samp/mainla71.dff", "vcs2samp/mainla71.txd");
AddSimpleModel(-1, 19379, -1007, "vcs2samp/mainla86.dff", "vcs2samp/mainla86.txd");
AddSimpleModel(-1, 19379, -1008, "vcs2samp/mainla92.dff", "vcs2samp/mainla92.txd");
AddSimpleModel(-1, 19379, -1009, "vcs2samp/mainla93.dff", "vcs2samp/mainla93.txd");
AddSimpleModel(-1, 19379, -1010, "vcs2samp/mainla94.dff", "vcs2samp/mainla94.txd");
AddSimpleModel(-1, 19379, -1011, "vcs2samp/mainla95.dff", "vcs2samp/mainla95.txd");
AddSimpleModel(-1, 19379, -1012, "vcs2samp/mainla101.dff", "vcs2samp/mainla101.txd");
AddSimpleModel(-1, 19379, -1013, "vcs2samp/mainla106.dff", "vcs2samp/mainla106.txd");
AddSimpleModel(-1, 19379, -1014, "vcs2samp/mainla112.dff", "vcs2samp/mainla112.txd");
AddSimpleModel(-1, 19379, -1015, "vcs2samp/mainla117.dff", "vcs2samp/mainla117.txd");
AddSimpleModel(-1, 19379, -1016, "vcs2samp/mainla119.dff", "vcs2samp/mainla119.txd");
AddSimpleModel(-1, 19379, -1017, "vcs2samp/mainla130.dff", "vcs2samp/mainla130.txd");
AddSimpleModel(-1, 19379, -1018, "vcs2samp/mainla131.dff", "vcs2samp/mainla131.txd");
AddSimpleModel(-1, 19379, -1019, "vcs2samp/mainla132.dff", "vcs2samp/mainla132.txd");
AddSimpleModel(-1, 19379, -1020, "vcs2samp/mainla133.dff", "vcs2samp/mainla133.txd");
AddSimpleModel(-1, 19379, -1021, "vcs2samp/mainla134.dff", "vcs2samp/mainla134.txd");
AddSimpleModel(-1, 19379, -1022, "vcs2samp/mainla140.dff", "vcs2samp/mainla140.txd");
AddSimpleModel(-1, 19379, -1023, "vcs2samp/mainla143.dff", "vcs2samp/mainla143.txd");
AddSimpleModel(-1, 19379, -1024, "vcs2samp/mainla162.dff", "vcs2samp/mainla162.txd");
AddSimpleModel(-1, 19379, -1025, "vcs2samp/mainla164.dff", "vcs2samp/mainla164.txd");
AddSimpleModel(-1, 19379, -1026, "vcs2samp/mainla170.dff", "vcs2samp/mainla170.txd");
AddSimpleModel(-1, 19379, -1027, "vcs2samp/mainla172.dff", "vcs2samp/mainla172.txd");
AddSimpleModel(-1, 19379, -1028, "vcs2samp/mainla173.dff", "vcs2samp/mainla173.txd");
AddSimpleModel(-1, 19379, -1029, "vcs2samp/mainla178.dff", "vcs2samp/mainla178.txd");
AddSimpleModel(-1, 19379, -1030, "vcs2samp/mainla179.dff", "vcs2samp/mainla179.txd");
AddSimpleModel(-1, 19379, -1031, "vcs2samp/mainla185.dff", "vcs2samp/mainla185.txd");
AddSimpleModel(-1, 19379, -1032, "vcs2samp/mainla188.dff", "vcs2samp/mainla188.txd");
AddSimpleModel(-1, 19379, -1033, "vcs2samp/mainla201.dff", "vcs2samp/mainla201.txd");
AddSimpleModel(-1, 19379, -1034, "vcs2samp/mainla219.dff", "vcs2samp/mainla219.txd");
AddSimpleModel(-1, 19379, -1035, "vcs2samp/mainla221.dff", "vcs2samp/mainla221.txd");
AddSimpleModel(-1, 19379, -1036, "vcs2samp/mainla231.dff", "vcs2samp/mainla231.txd");
AddSimpleModel(-1, 19379, -1037, "vcs2samp/mainla238.dff", "vcs2samp/mainla238.txd");
AddSimpleModel(-1, 19379, -1038, "vcs2samp/mainla241.dff", "vcs2samp/mainla241.txd");
AddSimpleModel(-1, 19379, -1039, "vcs2samp/mainla253.dff", "vcs2samp/mainla253.txd");
AddSimpleModel(-1, 19379, -1040, "vcs2samp/mainla255.dff", "vcs2samp/mainla255.txd");
AddSimpleModel(-1, 19379, -1041, "vcs2samp/mainla256.dff", "vcs2samp/mainla256.txd");
AddSimpleModel(-1, 19379, -1042, "vcs2samp/mainla258.dff", "vcs2samp/mainla258.txd");
AddSimpleModel(-1, 19379, -1043, "vcs2samp/mainla265.dff", "vcs2samp/mainla265.txd");
AddSimpleModel(-1, 19379, -1044, "vcs2samp/mainla267.dff", "vcs2samp/mainla267.txd");
AddSimpleModel(-1, 19379, -1045, "vcs2samp/mainla268.dff", "vcs2samp/mainla268.txd");
AddSimpleModel(-1, 19379, -1046, "vcs2samp/mainla269.dff", "vcs2samp/mainla269.txd");
AddSimpleModel(-1, 19379, -1047, "vcs2samp/mainla270.dff", "vcs2samp/mainla270.txd");
AddSimpleModel(-1, 19379, -1048, "vcs2samp/mainla275.dff", "vcs2samp/mainla275.txd");
AddSimpleModel(-1, 19379, -1049, "vcs2samp/mainla282.dff", "vcs2samp/mainla282.txd");
AddSimpleModel(-1, 19379, -1050, "vcs2samp/mainla284.dff", "vcs2samp/mainla284.txd");
AddSimpleModel(-1, 19379, -1051, "vcs2samp/mainla286.dff", "vcs2samp/mainla286.txd");
AddSimpleModel(-1, 19379, -1052, "vcs2samp/mainla288.dff", "vcs2samp/mainla288.txd");
AddSimpleModel(-1, 19379, -1053, "vcs2samp/mainla289.dff", "vcs2samp/mainla289.txd");
AddSimpleModel(-1, 19379, -1054, "vcs2samp/mainla290.dff", "vcs2samp/mainla290.txd");
AddSimpleModel(-1, 19379, -1055, "vcs2samp/mainla291.dff", "vcs2samp/mainla291.txd");
AddSimpleModel(-1, 19379, -1056, "vcs2samp/mainla293.dff", "vcs2samp/mainla293.txd");
AddSimpleModel(-1, 19379, -1057, "vcs2samp/mainla294.dff", "vcs2samp/mainla294.txd");
AddSimpleModel(-1, 19379, -1058, "vcs2samp/mainla302.dff", "vcs2samp/mainla302.txd");
AddSimpleModel(-1, 19379, -1059, "vcs2samp/mainla300.dff", "vcs2samp/mainla300.txd");
AddSimpleModel(-1, 19379, -1060, "vcs2samp/mainla307.dff", "vcs2samp/mainla307.txd");
AddSimpleModel(-1, 19379, -1061, "vcs2samp/mainla314.dff", "vcs2samp/mainla314.txd");
AddSimpleModel(-1, 19379, -1062, "vcs2samp/mainla324.dff", "vcs2samp/mainla324.txd");
AddSimpleModel(-1, 19379, -1063, "vcs2samp/mainla327.dff", "vcs2samp/mainla327.txd");
AddSimpleModel(-1, 19379, -1064, "vcs2samp/mainla330.dff", "vcs2samp/mainla330.txd");
AddSimpleModel(-1, 19379, -1065, "vcs2samp/mainla333.dff", "vcs2samp/mainla333.txd");
AddSimpleModel(-1, 19379, -1066, "vcs2samp/mainla335.dff", "vcs2samp/mainla335.txd");
AddSimpleModel(-1, 19379, -1067, "vcs2samp/mainla337.dff", "vcs2samp/mainla337.txd");
AddSimpleModel(-1, 19379, -1068, "vcs2samp/mainla339.dff", "vcs2samp/mainla339.txd");
AddSimpleModel(-1, 19379, -1069, "vcs2samp/mainla348.dff", "vcs2samp/mainla348.txd");
AddSimpleModel(-1, 19379, -1070, "vcs2samp/mainla355.dff", "vcs2samp/mainla355.txd");
AddSimpleModel(-1, 19379, -1071, "vcs2samp/mainla357.dff", "vcs2samp/mainla357.txd");
AddSimpleModel(-1, 19379, -1072, "vcs2samp/mainla362.dff", "vcs2samp/mainla362.txd");
AddSimpleModel(-1, 19379, -1073, "vcs2samp/mainla367.dff", "vcs2samp/mainla367.txd");
AddSimpleModel(-1, 19379, -1074, "vcs2samp/mainla369.dff", "vcs2samp/mainla369.txd");
AddSimpleModel(-1, 19379, -1075, "vcs2samp/mainla378.dff", "vcs2samp/mainla378.txd");
AddSimpleModel(-1, 19379, -1076, "vcs2samp/mainla381.dff", "vcs2samp/mainla381.txd");
AddSimpleModel(-1, 19379, -1077, "vcs2samp/mainla382.dff", "vcs2samp/mainla382.txd");
AddSimpleModel(-1, 19379, -1078, "vcs2samp/mainla384.dff", "vcs2samp/mainla384.txd");
AddSimpleModel(-1, 19379, -1079, "vcs2samp/mainla390.dff", "vcs2samp/mainla390.txd");
AddSimpleModel(-1, 19379, -1080, "vcs2samp/mainla400.dff", "vcs2samp/mainla400.txd");
AddSimpleModel(-1, 19379, -1081, "vcs2samp/mainla408.dff", "vcs2samp/mainla408.txd");
AddSimpleModel(-1, 19379, -1082, "vcs2samp/mainla409.dff", "vcs2samp/mainla409.txd");
AddSimpleModel(-1, 19379, -1083, "vcs2samp/mainla411.dff", "vcs2samp/mainla411.txd");
AddSimpleModel(-1, 19379, -1084, "vcs2samp/mainla412.dff", "vcs2samp/mainla412.txd");
AddSimpleModel(-1, 19379, -1085, "vcs2samp/mainla414.dff", "vcs2samp/mainla414.txd");
AddSimpleModel(-1, 19379, -1086, "vcs2samp/mainla416.dff", "vcs2samp/mainla416.txd");
AddSimpleModel(-1, 19379, -1087, "vcs2samp/mainla418.dff", "vcs2samp/mainla418.txd");
AddSimpleModel(-1, 19379, -1088, "vcs2samp/mainla420.dff", "vcs2samp/mainla420.txd");
AddSimpleModel(-1, 19379, -1089, "vcs2samp/mainla422.dff", "vcs2samp/mainla422.txd");
AddSimpleModel(-1, 19379, -1090, "vcs2samp/mainla425.dff", "vcs2samp/mainla425.txd");
AddSimpleModel(-1, 19379, -1091, "vcs2samp/mainla426.dff", "vcs2samp/mainla426.txd");
AddSimpleModel(-1, 19379, -1092, "vcs2samp/mainla427.dff", "vcs2samp/mainla427.txd");
AddSimpleModel(-1, 19379, -1093, "vcs2samp/mainla429.dff", "vcs2samp/mainla429.txd");
AddSimpleModel(-1, 19379, -1094, "vcs2samp/mainla434.dff", "vcs2samp/mainla434.txd");
AddSimpleModel(-1, 19379, -1095, "vcs2samp/mainla436.dff", "vcs2samp/mainla436.txd");
AddSimpleModel(-1, 19379, -1096, "vcs2samp/mainla438.dff", "vcs2samp/mainla438.txd");
AddSimpleModel(-1, 19379, -1097, "vcs2samp/mainla441.dff", "vcs2samp/mainla441.txd");
AddSimpleModel(-1, 19379, -1098, "vcs2samp/mainla444.dff", "vcs2samp/mainla444.txd");
AddSimpleModel(-1, 19379, -1099, "vcs2samp/mainla447.dff", "vcs2samp/mainla447.txd");
AddSimpleModel(-1, 19379, -1100, "vcs2samp/mainla449.dff", "vcs2samp/mainla449.txd");
AddSimpleModel(-1, 19379, -1101, "vcs2samp/mainla451.dff", "vcs2samp/mainla451.txd");
AddSimpleModel(-1, 19379, -1102, "vcs2samp/mainla453.dff", "vcs2samp/mainla453.txd");
AddSimpleModel(-1, 19379, -1103, "vcs2samp/mainla455.dff", "vcs2samp/mainla455.txd");
AddSimpleModel(-1, 19379, -1104, "vcs2samp/mainla458.dff", "vcs2samp/mainla458.txd");
AddSimpleModel(-1, 19379, -1105, "vcs2samp/mainla461.dff", "vcs2samp/mainla461.txd");
AddSimpleModel(-1, 19379, -1106, "vcs2samp/mainla469.dff", "vcs2samp/mainla469.txd");
AddSimpleModel(-1, 19379, -1107, "vcs2samp/mainla473.dff", "vcs2samp/mainla473.txd");
AddSimpleModel(-1, 19379, -1108, "vcs2samp/mainla477.dff", "vcs2samp/mainla477.txd");
AddSimpleModel(-1, 19379, -1109, "vcs2samp/mainla478.dff", "vcs2samp/mainla478.txd");
AddSimpleModel(-1, 19379, -1110, "vcs2samp/mainla483.dff", "vcs2samp/mainla483.txd");
AddSimpleModel(-1, 19379, -1111, "vcs2samp/mainla486.dff", "vcs2samp/mainla486.txd");
AddSimpleModel(-1, 19379, -1112, "vcs2samp/mainla495.dff", "vcs2samp/mainla495.txd");
AddSimpleModel(-1, 19379, -1113, "vcs2samp/mainla497.dff", "vcs2samp/mainla497.txd");
AddSimpleModel(-1, 19379, -1114, "vcs2samp/mainla498.dff", "vcs2samp/mainla498.txd");
AddSimpleModel(-1, 19379, -1115, "vcs2samp/mainla499.dff", "vcs2samp/mainla499.txd");
AddSimpleModel(-1, 19379, -1116, "vcs2samp/mainla500.dff", "vcs2samp/mainla500.txd");
AddSimpleModel(-1, 19379, -1117, "vcs2samp/mainla501.dff", "vcs2samp/mainla501.txd");
AddSimpleModel(-1, 19379, -1118, "vcs2samp/mainla503.dff", "vcs2samp/mainla503.txd");
AddSimpleModel(-1, 19379, -1119, "vcs2samp/mainla505.dff", "vcs2samp/mainla505.txd");
AddSimpleModel(-1, 19379, -1120, "vcs2samp/mainla506.dff", "vcs2samp/mainla506.txd");
AddSimpleModel(-1, 19379, -1121, "vcs2samp/mainla509.dff", "vcs2samp/mainla509.txd");
AddSimpleModel(-1, 19379, -1122, "vcs2samp/mainla510.dff", "vcs2samp/mainla510.txd");
AddSimpleModel(-1, 19379, -1123, "vcs2samp/mainla512.dff", "vcs2samp/mainla512.txd");
AddSimpleModel(-1, 19379, -1124, "vcs2samp/mainla513.dff", "vcs2samp/mainla513.txd");
AddSimpleModel(-1, 19379, -1125, "vcs2samp/mainla514.dff", "vcs2samp/mainla514.txd");
AddSimpleModel(-1, 19379, -1126, "vcs2samp/mainla515.dff", "vcs2samp/mainla515.txd");
AddSimpleModel(-1, 19379, -1127, "vcs2samp/mainla518.dff", "vcs2samp/mainla518.txd");
AddSimpleModel(-1, 19379, -1128, "vcs2samp/mainla519.dff", "vcs2samp/mainla519.txd");
AddSimpleModel(-1, 19379, -1129, "vcs2samp/mainla520.dff", "vcs2samp/mainla520.txd");
AddSimpleModel(-1, 19379, -1130, "vcs2samp/mainla521.dff", "vcs2samp/mainla521.txd");
AddSimpleModel(-1, 19379, -1131, "vcs2samp/mainla538.dff", "vcs2samp/mainla538.txd");
AddSimpleModel(-1, 19379, -1132, "vcs2samp/mainla539.dff", "vcs2samp/mainla539.txd");
AddSimpleModel(-1, 19379, -1133, "vcs2samp/mainla540.dff", "vcs2samp/mainla540.txd");
AddSimpleModel(-1, 19379, -1134, "vcs2samp/mainla543.dff", "vcs2samp/mainla543.txd");
AddSimpleModel(-1, 19379, -1135, "vcs2samp/mainla544.dff", "vcs2samp/mainla544.txd");
AddSimpleModel(-1, 19379, -1136, "vcs2samp/mainla557.dff", "vcs2samp/mainla557.txd");
AddSimpleModel(-1, 19379, -1137, "vcs2samp/mainla558.dff", "vcs2samp/mainla558.txd");
AddSimpleModel(-1, 19379, -1138, "vcs2samp/mainla560.dff", "vcs2samp/mainla560.txd");
AddSimpleModel(-1, 19379, -1139, "vcs2samp/mainla571.dff", "vcs2samp/mainla571.txd");
AddSimpleModel(-1, 19379, -1140, "vcs2samp/mainla572.dff", "vcs2samp/mainla572.txd");
AddSimpleModel(-1, 19379, -1141, "vcs2samp/mainla574.dff", "vcs2samp/mainla574.txd");
AddSimpleModel(-1, 19379, -1142, "vcs2samp/mainla575.dff", "vcs2samp/mainla575.txd");
AddSimpleModel(-1, 19379, -1143, "vcs2samp/mainla588.dff", "vcs2samp/mainla588.txd");
AddSimpleModel(-1, 19379, -1144, "vcs2samp/mainla594.dff", "vcs2samp/mainla594.txd");
AddSimpleModel(-1, 19379, -1145, "vcs2samp/mainla599.dff", "vcs2samp/mainla599.txd");
AddSimpleModel(-1, 19379, -1146, "vcs2samp/mainla600.dff", "vcs2samp/mainla600.txd");
AddSimpleModel(-1, 19379, -1147, "vcs2samp/mainla602.dff", "vcs2samp/mainla602.txd");
AddSimpleModel(-1, 19379, -1148, "vcs2samp/mainla604.dff", "vcs2samp/mainla604.txd");
AddSimpleModel(-1, 19379, -1149, "vcs2samp/mainla606.dff", "vcs2samp/mainla606.txd");
AddSimpleModel(-1, 19379, -1150, "vcs2samp/mainla608.dff", "vcs2samp/mainla608.txd");
AddSimpleModel(-1, 19379, -1151, "vcs2samp/mainla610.dff", "vcs2samp/mainla610.txd");
AddSimpleModel(-1, 19379, -1152, "vcs2samp/mainla612.dff", "vcs2samp/mainla612.txd");
AddSimpleModel(-1, 19379, -1153, "vcs2samp/mainla614.dff", "vcs2samp/mainla614.txd");
AddSimpleModel(-1, 19379, -1154, "vcs2samp/mainla618.dff", "vcs2samp/mainla618.txd");
AddSimpleModel(-1, 19379, -1155, "vcs2samp/mainla621.dff", "vcs2samp/mainla621.txd");
AddSimpleModel(-1, 19379, -1156, "vcs2samp/mainla622.dff", "vcs2samp/mainla622.txd");
AddSimpleModel(-1, 19379, -1157, "vcs2samp/mainla624.dff", "vcs2samp/mainla624.txd");
AddSimpleModel(-1, 19379, -1158, "vcs2samp/mainla628.dff", "vcs2samp/mainla628.txd");
AddSimpleModel(-1, 19379, -1159, "vcs2samp/mainla629.dff", "vcs2samp/mainla629.txd");
AddSimpleModel(-1, 19379, -1160, "vcs2samp/mainla631.dff", "vcs2samp/mainla631.txd");
AddSimpleModel(-1, 19379, -1161, "vcs2samp/mainla633.dff", "vcs2samp/mainla633.txd");
AddSimpleModel(-1, 19379, -1162, "vcs2samp/mainla634.dff", "vcs2samp/mainla634.txd");
AddSimpleModel(-1, 19379, -1163, "vcs2samp/mainla641.dff", "vcs2samp/mainla641.txd");
AddSimpleModel(-1, 19379, -1164, "vcs2samp/mainla644.dff", "vcs2samp/mainla644.txd");
AddSimpleModel(-1, 19379, -1165, "vcs2samp/mainla653.dff", "vcs2samp/mainla653.txd");
AddSimpleModel(-1, 19379, -1166, "vcs2samp/mainla663.dff", "vcs2samp/mainla663.txd");
AddSimpleModel(-1, 19379, -1167, "vcs2samp/mainla675.dff", "vcs2samp/mainla675.txd");
AddSimpleModel(-1, 19379, -1168, "vcs2samp/mainla681.dff", "vcs2samp/mainla681.txd");
AddSimpleModel(-1, 19379, -1169, "vcs2samp/mainla685.dff", "vcs2samp/mainla685.txd");
AddSimpleModel(-1, 19379, -1170, "vcs2samp/mainla693.dff", "vcs2samp/mainla693.txd");
AddSimpleModel(-1, 19379, -1171, "vcs2samp/mainla695.dff", "vcs2samp/mainla695.txd");
AddSimpleModel(-1, 19379, -1172, "vcs2samp/mainla697.dff", "vcs2samp/mainla697.txd");
AddSimpleModel(-1, 19379, -1173, "vcs2samp/mainla700.dff", "vcs2samp/mainla700.txd");
AddSimpleModel(-1, 19379, -1174, "vcs2samp/mainla702.dff", "vcs2samp/mainla702.txd");
AddSimpleModel(-1, 19379, -1175, "vcs2samp/mainla705.dff", "vcs2samp/mainla705.txd");
AddSimpleModel(-1, 19379, -1176, "vcs2samp/mainla707.dff", "vcs2samp/mainla707.txd");
AddSimpleModel(-1, 19379, -1177, "vcs2samp/mainla713.dff", "vcs2samp/mainla713.txd");
AddSimpleModel(-1, 19379, -1178, "vcs2samp/mainla715.dff", "vcs2samp/mainla715.txd");
AddSimpleModel(-1, 19379, -1179, "vcs2samp/mainla716.dff", "vcs2samp/mainla716.txd");
AddSimpleModel(-1, 19379, -1180, "vcs2samp/mainla717.dff", "vcs2samp/mainla717.txd");
AddSimpleModel(-1, 19379, -1181, "vcs2samp/mainla720.dff", "vcs2samp/mainla720.txd");
AddSimpleModel(-1, 19379, -1182, "vcs2samp/mainla723.dff", "vcs2samp/mainla723.txd");
AddSimpleModel(-1, 19379, -1183, "vcs2samp/mainla724.dff", "vcs2samp/mainla724.txd");
AddSimpleModel(-1, 19379, -1184, "vcs2samp/mainla729.dff", "vcs2samp/mainla729.txd");
AddSimpleModel(-1, 19379, -1185, "vcs2samp/mainla731.dff", "vcs2samp/mainla731.txd");
AddSimpleModel(-1, 19379, -1186, "vcs2samp/mainla732.dff", "vcs2samp/mainla732.txd");
AddSimpleModel(-1, 19379, -1187, "vcs2samp/mainla734.dff", "vcs2samp/mainla734.txd");
AddSimpleModel(-1, 19379, -1188, "vcs2samp/mainla735.dff", "vcs2samp/mainla735.txd");
AddSimpleModel(-1, 19379, -1189, "vcs2samp/mainla736.dff", "vcs2samp/mainla736.txd");
AddSimpleModel(-1, 19379, -1190, "vcs2samp/mainla739.dff", "vcs2samp/mainla739.txd");
AddSimpleModel(-1, 19379, -1191, "vcs2samp/mainla741.dff", "vcs2samp/mainla741.txd");
AddSimpleModel(-1, 19379, -1192, "vcs2samp/mainla742.dff", "vcs2samp/mainla742.txd");
AddSimpleModel(-1, 19379, -1193, "vcs2samp/mainla743.dff", "vcs2samp/mainla743.txd");
AddSimpleModel(-1, 19379, -1194, "vcs2samp/mainla744.dff", "vcs2samp/mainla744.txd");
AddSimpleModel(-1, 19379, -1195, "vcs2samp/mainla745.dff", "vcs2samp/mainla745.txd");
AddSimpleModel(-1, 19379, -1196, "vcs2samp/mainla746.dff", "vcs2samp/mainla746.txd");
AddSimpleModel(-1, 19379, -1197, "vcs2samp/mainla754.dff", "vcs2samp/mainla754.txd");
AddSimpleModel(-1, 19379, -1198, "vcs2samp/mainla761.dff", "vcs2samp/mainla761.txd");
AddSimpleModel(-1, 19379, -1199, "vcs2samp/mainla764.dff", "vcs2samp/mainla764.txd");
AddSimpleModel(-1, 19379, -1200, "vcs2samp/mainla767.dff", "vcs2samp/mainla767.txd");
AddSimpleModel(-1, 19379, -1201, "vcs2samp/mainla768.dff", "vcs2samp/mainla768.txd");
AddSimpleModel(-1, 19379, -1202, "vcs2samp/mainla774.dff", "vcs2samp/mainla774.txd");
AddSimpleModel(-1, 19379, -1203, "vcs2samp/mainla775.dff", "vcs2samp/mainla775.txd");
AddSimpleModel(-1, 19379, -1204, "vcs2samp/mainla777.dff", "vcs2samp/mainla777.txd");
AddSimpleModel(-1, 19379, -1205, "vcs2samp/mainla779.dff", "vcs2samp/mainla779.txd");
AddSimpleModel(-1, 19379, -1206, "vcs2samp/mainla781.dff", "vcs2samp/mainla781.txd");
AddSimpleModel(-1, 19379, -1207, "vcs2samp/mainla783.dff", "vcs2samp/mainla783.txd");
AddSimpleModel(-1, 19379, -1208, "vcs2samp/mainla792.dff", "vcs2samp/mainla792.txd");
AddSimpleModel(-1, 19379, -1209, "vcs2samp/mainla793.dff", "vcs2samp/mainla793.txd");
AddSimpleModel(-1, 19379, -1210, "vcs2samp/mainla794.dff", "vcs2samp/mainla794.txd");
AddSimpleModel(-1, 19379, -1211, "vcs2samp/mainla796.dff", "vcs2samp/mainla796.txd");
AddSimpleModel(-1, 19379, -1212, "vcs2samp/mainla797.dff", "vcs2samp/mainla797.txd");
AddSimpleModel(-1, 19379, -1213, "vcs2samp/mainla801.dff", "vcs2samp/mainla801.txd");
AddSimpleModel(-1, 19379, -1214, "vcs2samp/mainla802.dff", "vcs2samp/mainla802.txd");
AddSimpleModel(-1, 19379, -1215, "vcs2samp/mainla803.dff", "vcs2samp/mainla803.txd");
AddSimpleModel(-1, 19379, -1216, "vcs2samp/mainla804.dff", "vcs2samp/mainla804.txd");
AddSimpleModel(-1, 19379, -1217, "vcs2samp/mainla805.dff", "vcs2samp/mainla805.txd");
AddSimpleModel(-1, 19379, -1218, "vcs2samp/mainla806.dff", "vcs2samp/mainla806.txd");
AddSimpleModel(-1, 19379, -1219, "vcs2samp/mainla807.dff", "vcs2samp/mainla807.txd");
AddSimpleModel(-1, 19379, -1220, "vcs2samp/mainla808.dff", "vcs2samp/mainla808.txd");
AddSimpleModel(-1, 19379, -1221, "vcs2samp/mainla810.dff", "vcs2samp/mainla810.txd");
AddSimpleModel(-1, 19379, -1222, "vcs2samp/mainla811.dff", "vcs2samp/mainla811.txd");
AddSimpleModel(-1, 19379, -1223, "vcs2samp/mainla812.dff", "vcs2samp/mainla812.txd");
AddSimpleModel(-1, 19379, -1224, "vcs2samp/mainla813.dff", "vcs2samp/mainla813.txd");
AddSimpleModel(-1, 19379, -1225, "vcs2samp/mainla814.dff", "vcs2samp/mainla814.txd");
AddSimpleModel(-1, 19379, -1226, "vcs2samp/mainla815.dff", "vcs2samp/mainla815.txd");
AddSimpleModel(-1, 19379, -1227, "vcs2samp/mainla816.dff", "vcs2samp/mainla816.txd");
AddSimpleModel(-1, 19379, -1228, "vcs2samp/mainla818.dff", "vcs2samp/mainla818.txd");
AddSimpleModel(-1, 19379, -1229, "vcs2samp/mainla819.dff", "vcs2samp/mainla819.txd");
AddSimpleModel(-1, 19379, -1230, "vcs2samp/mainla820.dff", "vcs2samp/mainla820.txd");
AddSimpleModel(-1, 19379, -1231, "vcs2samp/mainla822.dff", "vcs2samp/mainla822.txd");
AddSimpleModel(-1, 19379, -1232, "vcs2samp/mainla824.dff", "vcs2samp/mainla824.txd");
AddSimpleModel(-1, 19379, -1233, "vcs2samp/mainla826.dff", "vcs2samp/mainla826.txd");
AddSimpleModel(-1, 19379, -1234, "vcs2samp/mainla828.dff", "vcs2samp/mainla828.txd");
AddSimpleModel(-1, 19379, -1235, "vcs2samp/mainla834.dff", "vcs2samp/mainla834.txd");
AddSimpleModel(-1, 19379, -1236, "vcs2samp/mainla838.dff", "vcs2samp/mainla838.txd");
AddSimpleModel(-1, 19379, -1237, "vcs2samp/mainla844.dff", "vcs2samp/mainla844.txd");
AddSimpleModel(-1, 19379, -1238, "vcs2samp/mainla845.dff", "vcs2samp/mainla845.txd");
AddSimpleModel(-1, 19379, -1239, "vcs2samp/mainla850.dff", "vcs2samp/mainla850.txd");
AddSimpleModel(-1, 19379, -1240, "vcs2samp/mainla852.dff", "vcs2samp/mainla852.txd");
AddSimpleModel(-1, 19379, -1241, "vcs2samp/mainla853.dff", "vcs2samp/mainla853.txd");
AddSimpleModel(-1, 19379, -1242, "vcs2samp/mainla859.dff", "vcs2samp/mainla859.txd");
AddSimpleModel(-1, 19379, -1243, "vcs2samp/mainla862.dff", "vcs2samp/mainla862.txd");
AddSimpleModel(-1, 19379, -1244, "vcs2samp/mainla863.dff", "vcs2samp/mainla863.txd");
AddSimpleModel(-1, 19379, -1245, "vcs2samp/mainla878.dff", "vcs2samp/mainla878.txd");
AddSimpleModel(-1, 19379, -1246, "vcs2samp/mainla879.dff", "vcs2samp/mainla879.txd");
AddSimpleModel(-1, 19379, -1247, "vcs2samp/mainla889.dff", "vcs2samp/mainla889.txd");
AddSimpleModel(-1, 19379, -1248, "vcs2samp/mainla896.dff", "vcs2samp/mainla896.txd");
AddSimpleModel(-1, 19379, -1249, "vcs2samp/mainla900.dff", "vcs2samp/mainla900.txd");
AddSimpleModel(-1, 19379, -1250, "vcs2samp/mainla904.dff", "vcs2samp/mainla904.txd");
AddSimpleModel(-1, 19379, -1251, "vcs2samp/mainla908.dff", "vcs2samp/mainla908.txd");
AddSimpleModel(-1, 19379, -1252, "vcs2samp/mainla915.dff", "vcs2samp/mainla915.txd");
AddSimpleModel(-1, 19379, -1253, "vcs2samp/mainla919.dff", "vcs2samp/mainla919.txd");
AddSimpleModel(-1, 19379, -1254, "vcs2samp/mainla923.dff", "vcs2samp/mainla923.txd");
AddSimpleModel(-1, 19379, -1255, "vcs2samp/mainla930.dff", "vcs2samp/mainla930.txd");
AddSimpleModel(-1, 19379, -1256, "vcs2samp/mainla931.dff", "vcs2samp/mainla931.txd");
AddSimpleModel(-1, 19379, -1257, "vcs2samp/mainla933.dff", "vcs2samp/mainla933.txd");
AddSimpleModel(-1, 19379, -1258, "vcs2samp/mainla936.dff", "vcs2samp/mainla936.txd");
AddSimpleModel(-1, 19379, -1259, "vcs2samp/mainla937.dff", "vcs2samp/mainla937.txd");
AddSimpleModel(-1, 19379, -1260, "vcs2samp/mainla938.dff", "vcs2samp/mainla938.txd");
AddSimpleModel(-1, 19379, -1261, "vcs2samp/mainla943.dff", "vcs2samp/mainla943.txd");
AddSimpleModel(-1, 19379, -1262, "vcs2samp/mainla946.dff", "vcs2samp/mainla946.txd");
AddSimpleModel(-1, 19379, -1263, "vcs2samp/mainla948.dff", "vcs2samp/mainla948.txd");
AddSimpleModel(-1, 19379, -1264, "vcs2samp/mainla949.dff", "vcs2samp/mainla949.txd");
AddSimpleModel(-1, 19379, -1265, "vcs2samp/mainla958.dff", "vcs2samp/mainla958.txd");
AddSimpleModel(-1, 19379, -1266, "vcs2samp/mainla959.dff", "vcs2samp/mainla959.txd");
AddSimpleModel(-1, 19379, -1267, "vcs2samp/mainla960.dff", "vcs2samp/mainla960.txd");
AddSimpleModel(-1, 19379, -1268, "vcs2samp/mainla961.dff", "vcs2samp/mainla961.txd");
AddSimpleModel(-1, 19379, -1269, "vcs2samp/mainla965.dff", "vcs2samp/mainla965.txd");
AddSimpleModel(-1, 19379, -1270, "vcs2samp/mainla967.dff", "vcs2samp/mainla967.txd");
AddSimpleModel(-1, 19379, -1271, "vcs2samp/mainla968.dff", "vcs2samp/mainla968.txd");
AddSimpleModel(-1, 19379, -1272, "vcs2samp/mainla970.dff", "vcs2samp/mainla970.txd");
AddSimpleModel(-1, 19379, -1273, "vcs2samp/mainla975.dff", "vcs2samp/mainla975.txd");
AddSimpleModel(-1, 19379, -1274, "vcs2samp/mainla982.dff", "vcs2samp/mainla982.txd");
AddSimpleModel(-1, 19379, -1275, "vcs2samp/mainla983.dff", "vcs2samp/mainla983.txd");
AddSimpleModel(-1, 19379, -1276, "vcs2samp/mainla992.dff", "vcs2samp/mainla992.txd");
AddSimpleModel(-1, 19379, -1277, "vcs2samp/mainla993.dff", "vcs2samp/mainla993.txd");
AddSimpleModel(-1, 19379, -1278, "vcs2samp/mainla994.dff", "vcs2samp/mainla994.txd");
AddSimpleModel(-1, 19379, -1279, "vcs2samp/mainla995.dff", "vcs2samp/mainla995.txd");
AddSimpleModel(-1, 19379, -1280, "vcs2samp/mainla996.dff", "vcs2samp/mainla996.txd");
AddSimpleModel(-1, 19379, -1281, "vcs2samp/mainla997.dff", "vcs2samp/mainla997.txd");
AddSimpleModel(-1, 19379, -1282, "vcs2samp/mainla998.dff", "vcs2samp/mainla998.txd");
AddSimpleModel(-1, 19379, -1283, "vcs2samp/mainla999.dff", "vcs2samp/mainla999.txd");
AddSimpleModel(-1, 19379, -1284, "vcs2samp/mainla1000.dff", "vcs2samp/mainla1000.txd");
AddSimpleModel(-1, 19379, -1285, "vcs2samp/mainla1003.dff", "vcs2samp/mainla1003.txd");
AddSimpleModel(-1, 19379, -1286, "vcs2samp/mainla1006.dff", "vcs2samp/mainla1006.txd");
AddSimpleModel(-1, 19379, -1287, "vcs2samp/mainla1009.dff", "vcs2samp/mainla1009.txd");
AddSimpleModel(-1, 19379, -1288, "vcs2samp/mainla1011.dff", "vcs2samp/mainla1011.txd");
AddSimpleModel(-1, 19379, -1289, "vcs2samp/mainla1012.dff", "vcs2samp/mainla1012.txd");
AddSimpleModel(-1, 19379, -1290, "vcs2samp/mainla1014.dff", "vcs2samp/mainla1014.txd");
AddSimpleModel(-1, 19379, -1291, "vcs2samp/mainla1015.dff", "vcs2samp/mainla1015.txd");
AddSimpleModel(-1, 19379, -1292, "vcs2samp/mainla1016.dff", "vcs2samp/mainla1016.txd");
AddSimpleModel(-1, 19379, -1293, "vcs2samp/mainla1017.dff", "vcs2samp/mainla1017.txd");
AddSimpleModel(-1, 19379, -1294, "vcs2samp/mainla1018.dff", "vcs2samp/mainla1018.txd");
AddSimpleModel(-1, 19379, -1295, "vcs2samp/mainla1019.dff", "vcs2samp/mainla1019.txd");
AddSimpleModel(-1, 19379, -1296, "vcs2samp/mainla1020.dff", "vcs2samp/mainla1020.txd");
AddSimpleModel(-1, 19379, -1297, "vcs2samp/mainla1021.dff", "vcs2samp/mainla1021.txd");
AddSimpleModel(-1, 19379, -1298, "vcs2samp/mainla1022.dff", "vcs2samp/mainla1022.txd");
AddSimpleModel(-1, 19379, -1299, "vcs2samp/mainla1023.dff", "vcs2samp/mainla1023.txd");
AddSimpleModel(-1, 19379, -1300, "vcs2samp/mainla1024.dff", "vcs2samp/mainla1024.txd");
AddSimpleModel(-1, 19379, -1301, "vcs2samp/mainla1025.dff", "vcs2samp/mainla1025.txd");
AddSimpleModel(-1, 19379, -1302, "vcs2samp/mainla1027.dff", "vcs2samp/mainla1027.txd");
AddSimpleModel(-1, 19379, -1303, "vcs2samp/mainla1029.dff", "vcs2samp/mainla1029.txd");
AddSimpleModel(-1, 19379, -1304, "vcs2samp/mainla1031.dff", "vcs2samp/mainla1031.txd");
AddSimpleModel(-1, 19379, -1305, "vcs2samp/mainla1035.dff", "vcs2samp/mainla1035.txd");
AddSimpleModel(-1, 19379, -1306, "vcs2samp/mainla1037.dff", "vcs2samp/mainla1037.txd");
AddSimpleModel(-1, 19379, -1307, "vcs2samp/mainla1039.dff", "vcs2samp/mainla1039.txd");
AddSimpleModel(-1, 19379, -1308, "vcs2samp/mainla1040.dff", "vcs2samp/mainla1040.txd");
AddSimpleModel(-1, 19379, -1309, "vcs2samp/mainla1041.dff", "vcs2samp/mainla1041.txd");
AddSimpleModel(-1, 19379, -1310, "vcs2samp/mainla1046.dff", "vcs2samp/mainla1046.txd");
AddSimpleModel(-1, 19379, -1311, "vcs2samp/mainla1047.dff", "vcs2samp/mainla1047.txd");
AddSimpleModel(-1, 19379, -1312, "vcs2samp/mainla1048.dff", "vcs2samp/mainla1048.txd");
AddSimpleModel(-1, 19379, -1313, "vcs2samp/mainla1049.dff", "vcs2samp/mainla1049.txd");
AddSimpleModel(-1, 19379, -1314, "vcs2samp/mainla1050.dff", "vcs2samp/mainla1050.txd");
AddSimpleModel(-1, 19379, -1315, "vcs2samp/mainla1051.dff", "vcs2samp/mainla1051.txd");
AddSimpleModel(-1, 19379, -1316, "vcs2samp/mainla1052.dff", "vcs2samp/mainla1052.txd");
AddSimpleModel(-1, 19379, -1317, "vcs2samp/mainla1061.dff", "vcs2samp/mainla1061.txd");
AddSimpleModel(-1, 19379, -1318, "vcs2samp/mainla1068.dff", "vcs2samp/mainla1068.txd");
AddSimpleModel(-1, 19379, -1319, "vcs2samp/mainla1070.dff", "vcs2samp/mainla1070.txd");
AddSimpleModel(-1, 19379, -1320, "vcs2samp/mainla1074.dff", "vcs2samp/mainla1074.txd");
AddSimpleModel(-1, 19379, -1321, "vcs2samp/mainla1076.dff", "vcs2samp/mainla1076.txd");
AddSimpleModel(-1, 19379, -1322, "vcs2samp/mainla1077.dff", "vcs2samp/mainla1077.txd");
AddSimpleModel(-1, 19379, -1323, "vcs2samp/mainla1080.dff", "vcs2samp/mainla1080.txd");
AddSimpleModel(-1, 19379, -1324, "vcs2samp/mainla1084.dff", "vcs2samp/mainla1084.txd");
AddSimpleModel(-1, 19379, -1325, "vcs2samp/mainla1085.dff", "vcs2samp/mainla1085.txd");
AddSimpleModel(-1, 19379, -1326, "vcs2samp/mainla1086.dff", "vcs2samp/mainla1086.txd");
AddSimpleModel(-1, 19379, -1327, "vcs2samp/mainla1089.dff", "vcs2samp/mainla1089.txd");
AddSimpleModel(-1, 19379, -1328, "vcs2samp/mainla1092.dff", "vcs2samp/mainla1092.txd");
AddSimpleModel(-1, 19379, -1329, "vcs2samp/mainla1097.dff", "vcs2samp/mainla1097.txd");
AddSimpleModel(-1, 19379, -1330, "vcs2samp/mainla1099.dff", "vcs2samp/mainla1099.txd");
AddSimpleModel(-1, 19379, -1331, "vcs2samp/mainla1101.dff", "vcs2samp/mainla1101.txd");
AddSimpleModel(-1, 19379, -1332, "vcs2samp/mainla1102.dff", "vcs2samp/mainla1102.txd");
AddSimpleModel(-1, 19379, -1333, "vcs2samp/mainla1104.dff", "vcs2samp/mainla1104.txd");
AddSimpleModel(-1, 19379, -1334, "vcs2samp/mainla1108.dff", "vcs2samp/mainla1108.txd");
AddSimpleModel(-1, 19379, -1335, "vcs2samp/mainla1113.dff", "vcs2samp/mainla1113.txd");
AddSimpleModel(-1, 19379, -1336, "vcs2samp/mainla1114.dff", "vcs2samp/mainla1114.txd");
AddSimpleModel(-1, 19379, -1337, "vcs2samp/mainla1115.dff", "vcs2samp/mainla1115.txd");
AddSimpleModel(-1, 19379, -1338, "vcs2samp/mainla1122.dff", "vcs2samp/mainla1122.txd");
AddSimpleModel(-1, 19379, -1339, "vcs2samp/mainla1123.dff", "vcs2samp/mainla1123.txd");
AddSimpleModel(-1, 19379, -1340, "vcs2samp/mainla1125.dff", "vcs2samp/mainla1125.txd");
AddSimpleModel(-1, 19379, -1341, "vcs2samp/mainla1128.dff", "vcs2samp/mainla1128.txd");
AddSimpleModel(-1, 19379, -1342, "vcs2samp/mainla1130.dff", "vcs2samp/mainla1130.txd");
AddSimpleModel(-1, 19379, -1343, "vcs2samp/mainla1132.dff", "vcs2samp/mainla1132.txd");
AddSimpleModel(-1, 19379, -1344, "vcs2samp/mainla1134.dff", "vcs2samp/mainla1134.txd");
AddSimpleModel(-1, 19379, -1345, "vcs2samp/mainla1138.dff", "vcs2samp/mainla1138.txd");
AddSimpleModel(-1, 19379, -1346, "vcs2samp/mainla1139.dff", "vcs2samp/mainla1139.txd");
AddSimpleModel(-1, 19379, -1347, "vcs2samp/mainla1141.dff", "vcs2samp/mainla1141.txd");
AddSimpleModel(-1, 19379, -1348, "vcs2samp/mainla1144.dff", "vcs2samp/mainla1144.txd");
AddSimpleModel(-1, 19379, -1349, "vcs2samp/mainla1145.dff", "vcs2samp/mainla1145.txd");
AddSimpleModel(-1, 19379, -1350, "vcs2samp/mainla1146.dff", "vcs2samp/mainla1146.txd");
AddSimpleModel(-1, 19379, -1351, "vcs2samp/mainla1148.dff", "vcs2samp/mainla1148.txd");
AddSimpleModel(-1, 19379, -1352, "vcs2samp/mainla1150.dff", "vcs2samp/mainla1150.txd");
AddSimpleModel(-1, 19379, -1353, "vcs2samp/mainla1152.dff", "vcs2samp/mainla1152.txd");
AddSimpleModel(-1, 19379, -1354, "vcs2samp/mainla1165.dff", "vcs2samp/mainla1165.txd");
AddSimpleModel(-1, 19379, -1355, "vcs2samp/mainla1169.dff", "vcs2samp/mainla1169.txd");
AddSimpleModel(-1, 19379, -1356, "vcs2samp/mainla1170.dff", "vcs2samp/mainla1170.txd");
AddSimpleModel(-1, 19379, -1357, "vcs2samp/mainla1171.dff", "vcs2samp/mainla1171.txd");
AddSimpleModel(-1, 19379, -1358, "vcs2samp/mainla1172.dff", "vcs2samp/mainla1172.txd");
AddSimpleModel(-1, 19379, -1359, "vcs2samp/mainla1178.dff", "vcs2samp/mainla1178.txd");
AddSimpleModel(-1, 19379, -1360, "vcs2samp/mainla1180.dff", "vcs2samp/mainla1180.txd");
AddSimpleModel(-1, 19379, -1361, "vcs2samp/mainla1186.dff", "vcs2samp/mainla1186.txd");
AddSimpleModel(-1, 19379, -1362, "vcs2samp/mainla1191.dff", "vcs2samp/mainla1191.txd");
AddSimpleModel(-1, 19379, -1363, "vcs2samp/mainla1197.dff", "vcs2samp/mainla1197.txd");
AddSimpleModel(-1, 19379, -1364, "vcs2samp/mainla1198.dff", "vcs2samp/mainla1198.txd");
AddSimpleModel(-1, 19379, -1365, "vcs2samp/mainla1199.dff", "vcs2samp/mainla1199.txd");
AddSimpleModel(-1, 19379, -1366, "vcs2samp/mainla1200.dff", "vcs2samp/mainla1200.txd");
AddSimpleModel(-1, 19379, -1367, "vcs2samp/mainla1204.dff", "vcs2samp/mainla1204.txd");
AddSimpleModel(-1, 19379, -1368, "vcs2samp/mainla1211.dff", "vcs2samp/mainla1211.txd");
AddSimpleModel(-1, 19379, -1369, "vcs2samp/mainla1215.dff", "vcs2samp/mainla1215.txd");
AddSimpleModel(-1, 19379, -1370, "vcs2samp/mainla1216.dff", "vcs2samp/mainla1216.txd");
AddSimpleModel(-1, 19379, -1371, "vcs2samp/mainla1219.dff", "vcs2samp/mainla1219.txd");
AddSimpleModel(-1, 19379, -1372, "vcs2samp/mainla1221.dff", "vcs2samp/mainla1221.txd");
AddSimpleModel(-1, 19379, -1373, "vcs2samp/mainla1223.dff", "vcs2samp/mainla1223.txd");
AddSimpleModel(-1, 19379, -1374, "vcs2samp/mainla1225.dff", "vcs2samp/mainla1225.txd");
AddSimpleModel(-1, 19379, -1375, "vcs2samp/mainla1226.dff", "vcs2samp/mainla1226.txd");
AddSimpleModel(-1, 19379, -1376, "vcs2samp/mainla1227.dff", "vcs2samp/mainla1227.txd");
AddSimpleModel(-1, 19379, -1377, "vcs2samp/mainla1228.dff", "vcs2samp/mainla1228.txd");
AddSimpleModel(-1, 19379, -1378, "vcs2samp/mainla1229.dff", "vcs2samp/mainla1229.txd");
AddSimpleModel(-1, 19379, -1379, "vcs2samp/mainla1230.dff", "vcs2samp/mainla1230.txd");
AddSimpleModel(-1, 19379, -1380, "vcs2samp/mainla1231.dff", "vcs2samp/mainla1231.txd");
AddSimpleModel(-1, 19379, -1381, "vcs2samp/mainla1232.dff", "vcs2samp/mainla1232.txd");
AddSimpleModel(-1, 19379, -1382, "vcs2samp/mainla1234.dff", "vcs2samp/mainla1234.txd");
AddSimpleModel(-1, 19379, -1383, "vcs2samp/mainla1235.dff", "vcs2samp/mainla1235.txd");
AddSimpleModel(-1, 19379, -1384, "vcs2samp/mainla1242.dff", "vcs2samp/mainla1242.txd");
AddSimpleModel(-1, 19379, -1385, "vcs2samp/mainla1244.dff", "vcs2samp/mainla1244.txd");
AddSimpleModel(-1, 19379, -1386, "vcs2samp/mainla1246.dff", "vcs2samp/mainla1246.txd");
AddSimpleModel(-1, 19379, -1387, "vcs2samp/mainla1247.dff", "vcs2samp/mainla1247.txd");
AddSimpleModel(-1, 19379, -1388, "vcs2samp/mainla1248.dff", "vcs2samp/mainla1248.txd");
AddSimpleModel(-1, 19379, -1389, "vcs2samp/mainla1249.dff", "vcs2samp/mainla1249.txd");
AddSimpleModel(-1, 19379, -1390, "vcs2samp/mainla1250.dff", "vcs2samp/mainla1250.txd");
AddSimpleModel(-1, 19379, -1391, "vcs2samp/mainla1251.dff", "vcs2samp/mainla1251.txd");
AddSimpleModel(-1, 19379, -1392, "vcs2samp/mainla1252.dff", "vcs2samp/mainla1252.txd");
AddSimpleModel(-1, 19379, -1393, "vcs2samp/mainla1255.dff", "vcs2samp/mainla1255.txd");
AddSimpleModel(-1, 19379, -1394, "vcs2samp/mainla1256.dff", "vcs2samp/mainla1256.txd");
AddSimpleModel(-1, 19379, -1395, "vcs2samp/mainla1257.dff", "vcs2samp/mainla1257.txd");
AddSimpleModel(-1, 19379, -1396, "vcs2samp/mainla1261.dff", "vcs2samp/mainla1261.txd");
AddSimpleModel(-1, 19379, -1397, "vcs2samp/mainla1262.dff", "vcs2samp/mainla1262.txd");
AddSimpleModel(-1, 19379, -1398, "vcs2samp/mainla1267.dff", "vcs2samp/mainla1267.txd");
AddSimpleModel(-1, 19379, -1399, "vcs2samp/mainla1268.dff", "vcs2samp/mainla1268.txd");
AddSimpleModel(-1, 19379, -1400, "vcs2samp/mainla1269.dff", "vcs2samp/mainla1269.txd");
AddSimpleModel(-1, 19379, -1401, "vcs2samp/mainla1272.dff", "vcs2samp/mainla1272.txd");
AddSimpleModel(-1, 19379, -1402, "vcs2samp/mainla1273.dff", "vcs2samp/mainla1273.txd");
AddSimpleModel(-1, 19379, -1403, "vcs2samp/mainla1276.dff", "vcs2samp/mainla1276.txd");
AddSimpleModel(-1, 19379, -1404, "vcs2samp/mainla1277.dff", "vcs2samp/mainla1277.txd");
AddSimpleModel(-1, 19379, -1405, "vcs2samp/mainla1280.dff", "vcs2samp/mainla1280.txd");
AddSimpleModel(-1, 19379, -1406, "vcs2samp/mainla1282.dff", "vcs2samp/mainla1282.txd");
AddSimpleModel(-1, 19379, -1407, "vcs2samp/mainla1284.dff", "vcs2samp/mainla1284.txd");
AddSimpleModel(-1, 19379, -1408, "vcs2samp/mainla1286.dff", "vcs2samp/mainla1286.txd");
AddSimpleModel(-1, 19379, -1409, "vcs2samp/mainla1287.dff", "vcs2samp/mainla1287.txd");
AddSimpleModel(-1, 19379, -1410, "vcs2samp/mainla1296.dff", "vcs2samp/mainla1296.txd");
AddSimpleModel(-1, 19379, -1411, "vcs2samp/mainla1297.dff", "vcs2samp/mainla1297.txd");
AddSimpleModel(-1, 19379, -1412, "vcs2samp/mainla1299.dff", "vcs2samp/mainla1299.txd");
AddSimpleModel(-1, 19379, -1413, "vcs2samp/mainla1302.dff", "vcs2samp/mainla1302.txd");
AddSimpleModel(-1, 19379, -1414, "vcs2samp/mainla1308.dff", "vcs2samp/mainla1308.txd");
AddSimpleModel(-1, 19379, -1415, "vcs2samp/mainla1310.dff", "vcs2samp/mainla1310.txd");
AddSimpleModel(-1, 19379, -1416, "vcs2samp/mainla1311.dff", "vcs2samp/mainla1311.txd");
AddSimpleModel(-1, 19379, -1417, "vcs2samp/mainla1312.dff", "vcs2samp/mainla1312.txd");
AddSimpleModel(-1, 19379, -1418, "vcs2samp/mainla1313.dff", "vcs2samp/mainla1313.txd");
AddSimpleModel(-1, 19379, -1419, "vcs2samp/mainla1321.dff", "vcs2samp/mainla1321.txd");
AddSimpleModel(-1, 19379, -1420, "vcs2samp/mainla1324.dff", "vcs2samp/mainla1324.txd");
AddSimpleModel(-1, 19379, -1421, "vcs2samp/mainla1326.dff", "vcs2samp/mainla1326.txd");
AddSimpleModel(-1, 19379, -1422, "vcs2samp/mainla1329.dff", "vcs2samp/mainla1329.txd");
AddSimpleModel(-1, 19379, -1423, "vcs2samp/mainla1331.dff", "vcs2samp/mainla1331.txd");
AddSimpleModel(-1, 19379, -1424, "vcs2samp/mainla1332.dff", "vcs2samp/mainla1332.txd");
AddSimpleModel(-1, 19379, -1425, "vcs2samp/mainla1333.dff", "vcs2samp/mainla1333.txd");
AddSimpleModel(-1, 19379, -1426, "vcs2samp/mainla1334.dff", "vcs2samp/mainla1334.txd");
AddSimpleModel(-1, 19379, -1427, "vcs2samp/mainla1341.dff", "vcs2samp/mainla1341.txd");
AddSimpleModel(-1, 19379, -1428, "vcs2samp/mainla1344.dff", "vcs2samp/mainla1344.txd");
AddSimpleModel(-1, 19379, -1429, "vcs2samp/mainla1346.dff", "vcs2samp/mainla1346.txd");
AddSimpleModel(-1, 19379, -1430, "vcs2samp/mainla1348.dff", "vcs2samp/mainla1348.txd");
AddSimpleModel(-1, 19379, -1431, "vcs2samp/mainla1350.dff", "vcs2samp/mainla1350.txd");
AddSimpleModel(-1, 19379, -1432, "vcs2samp/mainla1352.dff", "vcs2samp/mainla1352.txd");
AddSimpleModel(-1, 19379, -1433, "vcs2samp/mainla1353.dff", "vcs2samp/mainla1353.txd");
AddSimpleModel(-1, 19379, -1434, "vcs2samp/mainla1355.dff", "vcs2samp/mainla1355.txd");
AddSimpleModel(-1, 19379, -1435, "vcs2samp/mainla1357.dff", "vcs2samp/mainla1357.txd");
AddSimpleModel(-1, 19379, -1436, "vcs2samp/mainla1359.dff", "vcs2samp/mainla1359.txd");
AddSimpleModel(-1, 19379, -1437, "vcs2samp/mainla1361.dff", "vcs2samp/mainla1361.txd");
AddSimpleModel(-1, 19379, -1438, "vcs2samp/mainla1363.dff", "vcs2samp/mainla1363.txd");
AddSimpleModel(-1, 19379, -1439, "vcs2samp/mainla1365.dff", "vcs2samp/mainla1365.txd");
AddSimpleModel(-1, 19379, -1440, "vcs2samp/mainla1367.dff", "vcs2samp/mainla1367.txd");
AddSimpleModel(-1, 19379, -1441, "vcs2samp/mainla1369.dff", "vcs2samp/mainla1369.txd");
AddSimpleModel(-1, 19379, -1442, "vcs2samp/mainla1371.dff", "vcs2samp/mainla1371.txd");
AddSimpleModel(-1, 19379, -1443, "vcs2samp/mainla1372.dff", "vcs2samp/mainla1372.txd");
AddSimpleModel(-1, 19379, -1444, "vcs2samp/mainla1373.dff", "vcs2samp/mainla1373.txd");
AddSimpleModel(-1, 19379, -1445, "vcs2samp/mainla1374.dff", "vcs2samp/mainla1374.txd");
AddSimpleModel(-1, 19379, -1446, "vcs2samp/mainla1375.dff", "vcs2samp/mainla1375.txd");
AddSimpleModel(-1, 19379, -1447, "vcs2samp/mainla1376.dff", "vcs2samp/mainla1376.txd");
AddSimpleModel(-1, 19379, -1448, "vcs2samp/mainla1377.dff", "vcs2samp/mainla1377.txd");
AddSimpleModel(-1, 19379, -1449, "vcs2samp/mainla1378.dff", "vcs2samp/mainla1378.txd");
AddSimpleModel(-1, 19379, -1450, "vcs2samp/mainla1393.dff", "vcs2samp/mainla1393.txd");
AddSimpleModel(-1, 19379, -1451, "vcs2samp/mainla1394.dff", "vcs2samp/mainla1394.txd");
AddSimpleModel(-1, 19379, -1452, "vcs2samp/mainla1395.dff", "vcs2samp/mainla1395.txd");
AddSimpleModel(-1, 19379, -1453, "vcs2samp/mainla1396.dff", "vcs2samp/mainla1396.txd");
AddSimpleModel(-1, 19379, -1454, "vcs2samp/mainla1397.dff", "vcs2samp/mainla1397.txd");
AddSimpleModel(-1, 19379, -1455, "vcs2samp/mainla1398.dff", "vcs2samp/mainla1398.txd");
AddSimpleModel(-1, 19379, -1456, "vcs2samp/mainla1400.dff", "vcs2samp/mainla1400.txd");
AddSimpleModel(-1, 19379, -1457, "vcs2samp/mainla1401.dff", "vcs2samp/mainla1401.txd");
AddSimpleModel(-1, 19379, -1458, "vcs2samp/mainla1402.dff", "vcs2samp/mainla1402.txd");
AddSimpleModel(-1, 19379, -1459, "vcs2samp/mainla1405.dff", "vcs2samp/mainla1405.txd");
AddSimpleModel(-1, 19379, -1460, "vcs2samp/mainla1406.dff", "vcs2samp/mainla1406.txd");
AddSimpleModel(-1, 19379, -1461, "vcs2samp/mainla1414.dff", "vcs2samp/mainla1414.txd");
AddSimpleModel(-1, 19379, -1462, "vcs2samp/mainla1416.dff", "vcs2samp/mainla1416.txd");
AddSimpleModel(-1, 19379, -1463, "vcs2samp/mainla1417.dff", "vcs2samp/mainla1417.txd");
AddSimpleModel(-1, 19379, -1464, "vcs2samp/mainla1419.dff", "vcs2samp/mainla1419.txd");
AddSimpleModel(-1, 19379, -1465, "vcs2samp/mainla1420.dff", "vcs2samp/mainla1420.txd");
AddSimpleModel(-1, 19379, -1466, "vcs2samp/mainla1421.dff", "vcs2samp/mainla1421.txd");
AddSimpleModel(-1, 19379, -1467, "vcs2samp/mainla1424.dff", "vcs2samp/mainla1424.txd");
AddSimpleModel(-1, 19379, -1468, "vcs2samp/mainla1425.dff", "vcs2samp/mainla1425.txd");
AddSimpleModel(-1, 19379, -1469, "vcs2samp/mainla1426.dff", "vcs2samp/mainla1426.txd");
AddSimpleModel(-1, 19379, -1470, "vcs2samp/mainla1428.dff", "vcs2samp/mainla1428.txd");
AddSimpleModel(-1, 19379, -1471, "vcs2samp/mainla1432.dff", "vcs2samp/mainla1432.txd");
AddSimpleModel(-1, 19379, -1472, "vcs2samp/mainla1448.dff", "vcs2samp/mainla1448.txd");
AddSimpleModel(-1, 19379, -1473, "vcs2samp/mainla1457.dff", "vcs2samp/mainla1457.txd");
AddSimpleModel(-1, 19379, -1474, "vcs2samp/mainla1459.dff", "vcs2samp/mainla1459.txd");
AddSimpleModel(-1, 19379, -1475, "vcs2samp/mainla1467.dff", "vcs2samp/mainla1467.txd");
AddSimpleModel(-1, 19379, -1476, "vcs2samp/mainla1472.dff", "vcs2samp/mainla1472.txd");
AddSimpleModel(-1, 19379, -1477, "vcs2samp/mainla1480.dff", "vcs2samp/mainla1480.txd");
AddSimpleModel(-1, 19379, -1478, "vcs2samp/mainla1486.dff", "vcs2samp/mainla1486.txd");
AddSimpleModel(-1, 19379, -1479, "vcs2samp/mainla1501.dff", "vcs2samp/mainla1501.txd");
AddSimpleModel(-1, 19379, -1480, "vcs2samp/mainla1502.dff", "vcs2samp/mainla1502.txd");
AddSimpleModel(-1, 19379, -1481, "vcs2samp/mainla1504.dff", "vcs2samp/mainla1504.txd");
AddSimpleModel(-1, 19379, -1482, "vcs2samp/mainla1506.dff", "vcs2samp/mainla1506.txd");
AddSimpleModel(-1, 19379, -1483, "vcs2samp/mainla1510.dff", "vcs2samp/mainla1510.txd");
AddSimpleModel(-1, 19379, -1484, "vcs2samp/mainla1514.dff", "vcs2samp/mainla1514.txd");
AddSimpleModel(-1, 19379, -1485, "vcs2samp/mainla1516.dff", "vcs2samp/mainla1516.txd");
AddSimpleModel(-1, 19379, -1486, "vcs2samp/mainla1523.dff", "vcs2samp/mainla1523.txd");
AddSimpleModel(-1, 19379, -1487, "vcs2samp/mainla1535.dff", "vcs2samp/mainla1535.txd");
AddSimpleModel(-1, 19379, -1488, "vcs2samp/mainla1543.dff", "vcs2samp/mainla1543.txd");
AddSimpleModel(-1, 19379, -1489, "vcs2samp/mainla1548.dff", "vcs2samp/mainla1548.txd");
AddSimpleModel(-1, 19379, -1490, "vcs2samp/mainla1550.dff", "vcs2samp/mainla1550.txd");
AddSimpleModel(-1, 19379, -1491, "vcs2samp/mainla1552.dff", "vcs2samp/mainla1552.txd");
AddSimpleModel(-1, 19379, -1492, "vcs2samp/mainla1554.dff", "vcs2samp/mainla1554.txd");
AddSimpleModel(-1, 19379, -1493, "vcs2samp/mainla1556.dff", "vcs2samp/mainla1556.txd");
AddSimpleModel(-1, 19379, -1494, "vcs2samp/mainla1558.dff", "vcs2samp/mainla1558.txd");
AddSimpleModel(-1, 19379, -1495, "vcs2samp/mainla1564.dff", "vcs2samp/mainla1564.txd");
AddSimpleModel(-1, 19379, -1496, "vcs2samp/mainla1566.dff", "vcs2samp/mainla1566.txd");
AddSimpleModel(-1, 19379, -1497, "vcs2samp/mainla1568.dff", "vcs2samp/mainla1568.txd");
AddSimpleModel(-1, 19379, -1498, "vcs2samp/mainla1569.dff", "vcs2samp/mainla1569.txd");
AddSimpleModel(-1, 19379, -1499, "vcs2samp/mainla1579.dff", "vcs2samp/mainla1579.txd");
AddSimpleModel(-1, 19379, -1500, "vcs2samp/mainla1581.dff", "vcs2samp/mainla1581.txd");
AddSimpleModel(-1, 19379, -1501, "vcs2samp/mainla1587.dff", "vcs2samp/mainla1587.txd");
AddSimpleModel(-1, 19379, -1502, "vcs2samp/mainla1594.dff", "vcs2samp/mainla1594.txd");
AddSimpleModel(-1, 19379, -1503, "vcs2samp/mainla1597.dff", "vcs2samp/mainla1597.txd");
AddSimpleModel(-1, 19379, -1504, "vcs2samp/mainla1599.dff", "vcs2samp/mainla1599.txd");
AddSimpleModel(-1, 19379, -1505, "vcs2samp/mainla1606.dff", "vcs2samp/mainla1606.txd");
AddSimpleModel(-1, 19379, -1506, "vcs2samp/mainla1607.dff", "vcs2samp/mainla1607.txd");
AddSimpleModel(-1, 19379, -1507, "vcs2samp/mainla1609.dff", "vcs2samp/mainla1609.txd");
AddSimpleModel(-1, 19379, -1508, "vcs2samp/mainla1611.dff", "vcs2samp/mainla1611.txd");
AddSimpleModel(-1, 19379, -1509, "vcs2samp/mainla1617.dff", "vcs2samp/mainla1617.txd");
AddSimpleModel(-1, 19379, -1510, "vcs2samp/mainla1620.dff", "vcs2samp/mainla1620.txd");
AddSimpleModel(-1, 19379, -1511, "vcs2samp/mainla1622.dff", "vcs2samp/mainla1622.txd");
AddSimpleModel(-1, 19379, -1512, "vcs2samp/mainla1623.dff", "vcs2samp/mainla1623.txd");
AddSimpleModel(-1, 19379, -1513, "vcs2samp/mainla1624.dff", "vcs2samp/mainla1624.txd");
AddSimpleModel(-1, 19379, -1514, "vcs2samp/mainla1628.dff", "vcs2samp/mainla1628.txd");
AddSimpleModel(-1, 19379, -1515, "vcs2samp/mainla1639.dff", "vcs2samp/mainla1639.txd");
AddSimpleModel(-1, 19379, -1516, "vcs2samp/mainla1640.dff", "vcs2samp/mainla1640.txd");
AddSimpleModel(-1, 19379, -1517, "vcs2samp/mainla1641.dff", "vcs2samp/mainla1641.txd");
AddSimpleModel(-1, 19379, -1518, "vcs2samp/mainla1642.dff", "vcs2samp/mainla1642.txd");
AddSimpleModel(-1, 19379, -1519, "vcs2samp/mainla1643.dff", "vcs2samp/mainla1643.txd");
AddSimpleModel(-1, 19379, -1520, "vcs2samp/mainla1644.dff", "vcs2samp/mainla1644.txd");
AddSimpleModel(-1, 19379, -1521, "vcs2samp/mainla1646.dff", "vcs2samp/mainla1646.txd");
AddSimpleModel(-1, 19379, -1522, "vcs2samp/mainla1648.dff", "vcs2samp/mainla1648.txd");
AddSimpleModel(-1, 19379, -1523, "vcs2samp/mainla1654.dff", "vcs2samp/mainla1654.txd");
AddSimpleModel(-1, 19379, -1524, "vcs2samp/mainla1663.dff", "vcs2samp/mainla1663.txd");
AddSimpleModel(-1, 19379, -1525, "vcs2samp/mainla1664.dff", "vcs2samp/mainla1664.txd");
AddSimpleModel(-1, 19379, -1526, "vcs2samp/mainla1666.dff", "vcs2samp/mainla1666.txd");
AddSimpleModel(-1, 19379, -1527, "vcs2samp/mainla1667.dff", "vcs2samp/mainla1667.txd");
AddSimpleModel(-1, 19379, -1528, "vcs2samp/mainla1668.dff", "vcs2samp/mainla1668.txd");
AddSimpleModel(-1, 19379, -1529, "vcs2samp/mainla1669.dff", "vcs2samp/mainla1669.txd");
AddSimpleModel(-1, 19379, -1530, "vcs2samp/mainla1677.dff", "vcs2samp/mainla1677.txd");
AddSimpleModel(-1, 19379, -1531, "vcs2samp/mainla1679.dff", "vcs2samp/mainla1679.txd");
AddSimpleModel(-1, 19379, -1532, "vcs2samp/mainla1690.dff", "vcs2samp/mainla1690.txd");
AddSimpleModel(-1, 19379, -1533, "vcs2samp/mainla1692.dff", "vcs2samp/mainla1692.txd");
AddSimpleModel(-1, 19379, -1534, "vcs2samp/mainla1703.dff", "vcs2samp/mainla1703.txd");
AddSimpleModel(-1, 19379, -1535, "vcs2samp/mainla1709.dff", "vcs2samp/mainla1709.txd");
AddSimpleModel(-1, 19379, -1536, "vcs2samp/mainla1710.dff", "vcs2samp/mainla1710.txd");
AddSimpleModel(-1, 19379, -1537, "vcs2samp/mainla1711.dff", "vcs2samp/mainla1711.txd");
AddSimpleModel(-1, 19379, -1538, "vcs2samp/mainla1712.dff", "vcs2samp/mainla1712.txd");
AddSimpleModel(-1, 19379, -1539, "vcs2samp/mainla1713.dff", "vcs2samp/mainla1713.txd");
AddSimpleModel(-1, 19379, -1540, "vcs2samp/mainla1715.dff", "vcs2samp/mainla1715.txd");
AddSimpleModel(-1, 19379, -1541, "vcs2samp/mainla1717.dff", "vcs2samp/mainla1717.txd");
AddSimpleModel(-1, 19379, -1542, "vcs2samp/mainla1720.dff", "vcs2samp/mainla1720.txd");
AddSimpleModel(-1, 19379, -1543, "vcs2samp/mainla1722.dff", "vcs2samp/mainla1722.txd");
AddSimpleModel(-1, 19379, -1544, "vcs2samp/mainla1723.dff", "vcs2samp/mainla1723.txd");
AddSimpleModel(-1, 19379, -1545, "vcs2samp/mainla1725.dff", "vcs2samp/mainla1725.txd");
AddSimpleModel(-1, 19379, -1546, "vcs2samp/mainla1726.dff", "vcs2samp/mainla1726.txd");
AddSimpleModel(-1, 19379, -1547, "vcs2samp/mainla1727.dff", "vcs2samp/mainla1727.txd");
AddSimpleModel(-1, 19379, -1548, "vcs2samp/mainla1729.dff", "vcs2samp/mainla1729.txd");
AddSimpleModel(-1, 19379, -1549, "vcs2samp/mainla1731.dff", "vcs2samp/mainla1731.txd");
AddSimpleModel(-1, 19379, -1550, "vcs2samp/mainla1733.dff", "vcs2samp/mainla1733.txd");
AddSimpleModel(-1, 19379, -1551, "vcs2samp/mainla1734.dff", "vcs2samp/mainla1734.txd");
AddSimpleModel(-1, 19379, -1552, "vcs2samp/mainla1735.dff", "vcs2samp/mainla1735.txd");
AddSimpleModel(-1, 19379, -1553, "vcs2samp/mainla1736.dff", "vcs2samp/mainla1736.txd");
AddSimpleModel(-1, 19379, -1554, "vcs2samp/mainla1737.dff", "vcs2samp/mainla1737.txd");
AddSimpleModel(-1, 19379, -1555, "vcs2samp/mainla1739.dff", "vcs2samp/mainla1739.txd");
AddSimpleModel(-1, 19379, -1556, "vcs2samp/mainla1741.dff", "vcs2samp/mainla1741.txd");
AddSimpleModel(-1, 19379, -1557, "vcs2samp/mainla1747.dff", "vcs2samp/mainla1747.txd");
AddSimpleModel(-1, 19379, -1558, "vcs2samp/mainla1753.dff", "vcs2samp/mainla1753.txd");
AddSimpleModel(-1, 19379, -1559, "vcs2samp/mainla1755.dff", "vcs2samp/mainla1755.txd");
AddSimpleModel(-1, 19379, -1560, "vcs2samp/mainla1759.dff", "vcs2samp/mainla1759.txd");
AddSimpleModel(-1, 19379, -1561, "vcs2samp/mainla1762.dff", "vcs2samp/mainla1762.txd");
AddSimpleModel(-1, 19379, -1562, "vcs2samp/mainla1763.dff", "vcs2samp/mainla1763.txd");
AddSimpleModel(-1, 19379, -1563, "vcs2samp/mainla1765.dff", "vcs2samp/mainla1765.txd");
AddSimpleModel(-1, 19379, -1564, "vcs2samp/mainla2013.dff", "vcs2samp/mainla2013.txd");
AddSimpleModel(-1, 19379, -1565, "vcs2samp/mainla2015.dff", "vcs2samp/mainla2015.txd");
AddSimpleModel(-1, 19379, -1566, "vcs2samp/mainla2016.dff", "vcs2samp/mainla2016.txd");
AddSimpleModel(-1, 19379, -1567, "vcs2samp/mainla2024.dff", "vcs2samp/mainla2024.txd");
AddSimpleModel(-1, 19379, -1568, "vcs2samp/mainla2025.dff", "vcs2samp/mainla2025.txd");
AddSimpleModel(-1, 19379, -1569, "vcs2samp/mainla2026.dff", "vcs2samp/mainla2026.txd");
AddSimpleModel(-1, 19379, -1570, "vcs2samp/mainla2082.dff", "vcs2samp/mainla2082.txd");
AddSimpleModel(-1, 19379, -1571, "vcs2samp/mainla2457.dff", "vcs2samp/mainla2457.txd");
AddSimpleModel(-1, 19379, -1572, "vcs2samp/mainla2473.dff", "vcs2samp/mainla2473.txd");
AddSimpleModel(-1, 19379, -1573, "vcs2samp/mainla2876.dff", "vcs2samp/mainla2876.txd");
AddSimpleModel(-1, 19379, -1574, "vcs2samp/mainla2920.dff", "vcs2samp/mainla2920.txd");
AddSimpleModel(-1, 19379, -1575, "vcs2samp/mainla2991.dff", "vcs2samp/mainla2991.txd");
AddSimpleModel(-1, 19379, -1576, "vcs2samp/mainla2998.dff", "vcs2samp/mainla2998.txd");
AddSimpleModel(-1, 19379, -1577, "vcs2samp/mainla3000.dff", "vcs2samp/mainla3000.txd");
AddSimpleModel(-1, 19379, -1578, "vcs2samp/mainla3001.dff", "vcs2samp/mainla3001.txd");
AddSimpleModel(-1, 19379, -1579, "vcs2samp/mainla3006.dff", "vcs2samp/mainla3006.txd");
AddSimpleModel(-1, 19379, -1580, "vcs2samp/mainla3008.dff", "vcs2samp/mainla3008.txd");
AddSimpleModel(-1, 19379, -1581, "vcs2samp/mainla3012.dff", "vcs2samp/mainla3012.txd");
AddSimpleModel(-1, 19379, -1582, "vcs2samp/mainla3024.dff", "vcs2samp/mainla3024.txd");
AddSimpleModel(-1, 19379, -1583, "vcs2samp/mainla3027.dff", "vcs2samp/mainla3027.txd");
AddSimpleModel(-1, 19379, -1584, "vcs2samp/mainla3029.dff", "vcs2samp/mainla3029.txd");
AddSimpleModel(-1, 19379, -1585, "vcs2samp/mainla3030.dff", "vcs2samp/mainla3030.txd");
AddSimpleModel(-1, 19379, -1586, "vcs2samp/mainla3031.dff", "vcs2samp/mainla3031.txd");
AddSimpleModel(-1, 19379, -1587, "vcs2samp/mainla3034.dff", "vcs2samp/mainla3034.txd");
AddSimpleModel(-1, 19379, -1588, "vcs2samp/mainla3035.dff", "vcs2samp/mainla3035.txd");
AddSimpleModel(-1, 19379, -1589, "vcs2samp/mainla3047.dff", "vcs2samp/mainla3047.txd");
AddSimpleModel(-1, 19379, -1590, "vcs2samp/mainla3051.dff", "vcs2samp/mainla3051.txd");
AddSimpleModel(-1, 19379, -1591, "vcs2samp/mainla3054.dff", "vcs2samp/mainla3054.txd");
AddSimpleModel(-1, 19379, -1592, "vcs2samp/mainla3055.dff", "vcs2samp/mainla3055.txd");
AddSimpleModel(-1, 19379, -1593, "vcs2samp/mainla3057.dff", "vcs2samp/mainla3057.txd");
AddSimpleModel(-1, 19379, -1594, "vcs2samp/mainla3062.dff", "vcs2samp/mainla3062.txd");
AddSimpleModel(-1, 19379, -1595, "vcs2samp/mainla3064.dff", "vcs2samp/mainla3064.txd");
AddSimpleModel(-1, 19379, -1596, "vcs2samp/mainla3068.dff", "vcs2samp/mainla3068.txd");
AddSimpleModel(-1, 19379, -1597, "vcs2samp/mainla3071.dff", "vcs2samp/mainla3071.txd");
AddSimpleModel(-1, 19379, -1598, "vcs2samp/mainla3074.dff", "vcs2samp/mainla3074.txd");
AddSimpleModel(-1, 19379, -1599, "vcs2samp/mainla3081.dff", "vcs2samp/mainla3081.txd");
AddSimpleModel(-1, 19379, -1600, "vcs2samp/mainla3082.dff", "vcs2samp/mainla3082.txd");
AddSimpleModel(-1, 19379, -1601, "vcs2samp/mainla3084.dff", "vcs2samp/mainla3084.txd");
AddSimpleModel(-1, 19379, -1602, "vcs2samp/mainla3088.dff", "vcs2samp/mainla3088.txd");
AddSimpleModel(-1, 19379, -1603, "vcs2samp/mainla3090.dff", "vcs2samp/mainla3090.txd");
AddSimpleModel(-1, 19379, -1604, "vcs2samp/mainla3092.dff", "vcs2samp/mainla3092.txd");
AddSimpleModel(-1, 19379, -1605, "vcs2samp/mainla3094.dff", "vcs2samp/mainla3094.txd");
AddSimpleModel(-1, 19379, -1606, "vcs2samp/mainla3095.dff", "vcs2samp/mainla3095.txd");
AddSimpleModel(-1, 19379, -1607, "vcs2samp/mainla3096.dff", "vcs2samp/mainla3096.txd");
AddSimpleModel(-1, 19379, -1608, "vcs2samp/mainla3097.dff", "vcs2samp/mainla3097.txd");
AddSimpleModel(-1, 19379, -1609, "vcs2samp/mainla3098.dff", "vcs2samp/mainla3098.txd");
AddSimpleModel(-1, 19379, -1610, "vcs2samp/mainla3099.dff", "vcs2samp/mainla3099.txd");
AddSimpleModel(-1, 19379, -1611, "vcs2samp/mainla3100.dff", "vcs2samp/mainla3100.txd");
AddSimpleModel(-1, 19379, -1612, "vcs2samp/mainla3101.dff", "vcs2samp/mainla3101.txd");
AddSimpleModel(-1, 19379, -1613, "vcs2samp/mainla3106.dff", "vcs2samp/mainla3106.txd");
AddSimpleModel(-1, 19379, -1614, "vcs2samp/mainla3107.dff", "vcs2samp/mainla3107.txd");
AddSimpleModel(-1, 19379, -1615, "vcs2samp/mainla3114.dff", "vcs2samp/mainla3114.txd");
AddSimpleModel(-1, 19379, -1616, "vcs2samp/mainla3115.dff", "vcs2samp/mainla3115.txd");
AddSimpleModel(-1, 19379, -1617, "vcs2samp/mainla3116.dff", "vcs2samp/mainla3116.txd");
AddSimpleModel(-1, 19379, -1618, "vcs2samp/mainla3117.dff", "vcs2samp/mainla3117.txd");
AddSimpleModel(-1, 19379, -1619, "vcs2samp/mainla3118.dff", "vcs2samp/mainla3118.txd");
AddSimpleModel(-1, 19379, -1620, "vcs2samp/mainla3119.dff", "vcs2samp/mainla3119.txd");
AddSimpleModel(-1, 19379, -1621, "vcs2samp/mainla3120.dff", "vcs2samp/mainla3120.txd");
AddSimpleModel(-1, 19379, -1622, "vcs2samp/mainla3121.dff", "vcs2samp/mainla3121.txd");
AddSimpleModel(-1, 19379, -1623, "vcs2samp/mainla3122.dff", "vcs2samp/mainla3122.txd");
AddSimpleModel(-1, 19379, -1624, "vcs2samp/mainla3124.dff", "vcs2samp/mainla3124.txd");
AddSimpleModel(-1, 19379, -1625, "vcs2samp/mainla3125.dff", "vcs2samp/mainla3125.txd");
AddSimpleModel(-1, 19379, -1626, "vcs2samp/mainla3126.dff", "vcs2samp/mainla3126.txd");
AddSimpleModel(-1, 19379, -1627, "vcs2samp/mainla3127.dff", "vcs2samp/mainla3127.txd");
AddSimpleModel(-1, 19379, -1628, "vcs2samp/mainla3129.dff", "vcs2samp/mainla3129.txd");
AddSimpleModel(-1, 19379, -1629, "vcs2samp/mainla3131.dff", "vcs2samp/mainla3131.txd");
AddSimpleModel(-1, 19379, -1630, "vcs2samp/mainla3133.dff", "vcs2samp/mainla3133.txd");
AddSimpleModel(-1, 19379, -1631, "vcs2samp/mainla3138.dff", "vcs2samp/mainla3138.txd");
AddSimpleModel(-1, 19379, -1632, "vcs2samp/mainla3143.dff", "vcs2samp/mainla3143.txd");
AddSimpleModel(-1, 19379, -1633, "vcs2samp/mainla3145.dff", "vcs2samp/mainla3145.txd");
AddSimpleModel(-1, 19379, -1634, "vcs2samp/mainla3147.dff", "vcs2samp/mainla3147.txd");
AddSimpleModel(-1, 19379, -1635, "vcs2samp/mainla3148.dff", "vcs2samp/mainla3148.txd");
AddSimpleModel(-1, 19379, -1636, "vcs2samp/mainla3149.dff", "vcs2samp/mainla3149.txd");
AddSimpleModel(-1, 19379, -1637, "vcs2samp/mainla3151.dff", "vcs2samp/mainla3151.txd");
AddSimpleModel(-1, 19379, -1638, "vcs2samp/mainla3152.dff", "vcs2samp/mainla3152.txd");
AddSimpleModel(-1, 19379, -1639, "vcs2samp/mainla3156.dff", "vcs2samp/mainla3156.txd");
AddSimpleModel(-1, 19379, -1640, "vcs2samp/mainla3157.dff", "vcs2samp/mainla3157.txd");
AddSimpleModel(-1, 19379, -1641, "vcs2samp/mainla3158.dff", "vcs2samp/mainla3158.txd");
AddSimpleModel(-1, 19379, -1642, "vcs2samp/mainla3159.dff", "vcs2samp/mainla3159.txd");
AddSimpleModel(-1, 19379, -1643, "vcs2samp/mainla3160.dff", "vcs2samp/mainla3160.txd");
AddSimpleModel(-1, 19379, -1644, "vcs2samp/mainla3161.dff", "vcs2samp/mainla3161.txd");
AddSimpleModel(-1, 19379, -1645, "vcs2samp/mainla3162.dff", "vcs2samp/mainla3162.txd");
AddSimpleModel(-1, 19379, -1646, "vcs2samp/mainla3163.dff", "vcs2samp/mainla3163.txd");
AddSimpleModel(-1, 19379, -1647, "vcs2samp/mainla3164.dff", "vcs2samp/mainla3164.txd");
AddSimpleModel(-1, 19379, -1648, "vcs2samp/mainla3165.dff", "vcs2samp/mainla3165.txd");
AddSimpleModel(-1, 19379, -1649, "vcs2samp/mainla3166.dff", "vcs2samp/mainla3166.txd");
AddSimpleModel(-1, 19379, -1650, "vcs2samp/mainla3167.dff", "vcs2samp/mainla3167.txd");
AddSimpleModel(-1, 19379, -1651, "vcs2samp/mainla3168.dff", "vcs2samp/mainla3168.txd");
AddSimpleModel(-1, 19379, -1652, "vcs2samp/mainla3170.dff", "vcs2samp/mainla3170.txd");
AddSimpleModel(-1, 19379, -1653, "vcs2samp/mainla3172.dff", "vcs2samp/mainla3172.txd");
AddSimpleModel(-1, 19379, -1654, "vcs2samp/mainla3174.dff", "vcs2samp/mainla3174.txd");
AddSimpleModel(-1, 19379, -1655, "vcs2samp/mainla3175.dff", "vcs2samp/mainla3175.txd");
AddSimpleModel(-1, 19379, -1656, "vcs2samp/mainla3176.dff", "vcs2samp/mainla3176.txd");
AddSimpleModel(-1, 19379, -1657, "vcs2samp/mainla3177.dff", "vcs2samp/mainla3177.txd");
AddSimpleModel(-1, 19379, -1658, "vcs2samp/mainla3181.dff", "vcs2samp/mainla3181.txd");
AddSimpleModel(-1, 19379, -1659, "vcs2samp/mainla3184.dff", "vcs2samp/mainla3184.txd");
AddSimpleModel(-1, 19379, -1660, "vcs2samp/mainla3185.dff", "vcs2samp/mainla3185.txd");
AddSimpleModel(-1, 19379, -1661, "vcs2samp/mainla3190.dff", "vcs2samp/mainla3190.txd");
AddSimpleModel(-1, 19379, -1662, "vcs2samp/mainla3195.dff", "vcs2samp/mainla3195.txd");
AddSimpleModel(-1, 19379, -1663, "vcs2samp/mainla3197.dff", "vcs2samp/mainla3197.txd");
AddSimpleModel(-1, 19379, -1664, "vcs2samp/mainla3200.dff", "vcs2samp/mainla3200.txd");
AddSimpleModel(-1, 19379, -1665, "vcs2samp/mainla3201.dff", "vcs2samp/mainla3201.txd");
AddSimpleModel(-1, 19379, -1666, "vcs2samp/mainla3202.dff", "vcs2samp/mainla3202.txd");
AddSimpleModel(-1, 19379, -1667, "vcs2samp/mainla3203.dff", "vcs2samp/mainla3203.txd");
AddSimpleModel(-1, 19379, -1668, "vcs2samp/mainla3204.dff", "vcs2samp/mainla3204.txd");
AddSimpleModel(-1, 19379, -1669, "vcs2samp/mainla3205.dff", "vcs2samp/mainla3205.txd");
AddSimpleModel(-1, 19379, -1670, "vcs2samp/mainla3206.dff", "vcs2samp/mainla3206.txd");
AddSimpleModel(-1, 19379, -1671, "vcs2samp/mainla3207.dff", "vcs2samp/mainla3207.txd");
AddSimpleModel(-1, 19379, -1672, "vcs2samp/mainla3211.dff", "vcs2samp/mainla3211.txd");
AddSimpleModel(-1, 19379, -1673, "vcs2samp/mainla3213.dff", "vcs2samp/mainla3213.txd");
AddSimpleModel(-1, 19379, -1674, "vcs2samp/mainla3214.dff", "vcs2samp/mainla3214.txd");
AddSimpleModel(-1, 19379, -1675, "vcs2samp/mainla3215.dff", "vcs2samp/mainla3215.txd");
AddSimpleModel(-1, 19379, -1676, "vcs2samp/mainla3216.dff", "vcs2samp/mainla3216.txd");
AddSimpleModel(-1, 19379, -1677, "vcs2samp/mainla3217.dff", "vcs2samp/mainla3217.txd");
AddSimpleModel(-1, 19379, -1678, "vcs2samp/mainla3218.dff", "vcs2samp/mainla3218.txd");
AddSimpleModel(-1, 19379, -1679, "vcs2samp/mainla3219.dff", "vcs2samp/mainla3219.txd");
AddSimpleModel(-1, 19379, -1680, "vcs2samp/mainla3220.dff", "vcs2samp/mainla3220.txd");
AddSimpleModel(-1, 19379, -1681, "vcs2samp/mainla3227.dff", "vcs2samp/mainla3227.txd");
AddSimpleModel(-1, 19379, -1682, "vcs2samp/mainla3228.dff", "vcs2samp/mainla3228.txd");
AddSimpleModel(-1, 19379, -1683, "vcs2samp/mainla3229.dff", "vcs2samp/mainla3229.txd");
AddSimpleModel(-1, 19379, -1684, "vcs2samp/mainla3243.dff", "vcs2samp/mainla3243.txd");
AddSimpleModel(-1, 19379, -1685, "vcs2samp/mainla2404.dff", "vcs2samp/mainla2404.txd");
AddSimpleModel(-1, 19379, -1686, "vcs2samp/mainla3245.dff", "vcs2samp/mainla3245.txd");
AddSimpleModel(-1, 19379, -1687, "vcs2samp/mainla3246.dff", "vcs2samp/mainla3246.txd");
AddSimpleModel(-1, 19379, -1688, "vcs2samp/mainla3247.dff", "vcs2samp/mainla3247.txd");
AddSimpleModel(-1, 19379, -1689, "vcs2samp/mainla3248.dff", "vcs2samp/mainla3248.txd");
AddSimpleModel(-1, 19379, -1690, "vcs2samp/mainla3258.dff", "vcs2samp/mainla3258.txd");
AddSimpleModel(-1, 19379, -1691, "vcs2samp/mainla3260.dff", "vcs2samp/mainla3260.txd");
AddSimpleModel(-1, 19379, -1692, "vcs2samp/sjmpalmbig.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -1693, "vcs2samp/mainla3262.dff", "vcs2samp/mainla3262.txd");
AddSimpleModel(-1, 19379, -1694, "vcs2samp/mainla3265.dff", "vcs2samp/mainla3265.txd");
AddSimpleModel(-1, 19379, -1695, "vcs2samp/mainla3266.dff", "vcs2samp/mainla3266.txd");
AddSimpleModel(-1, 19379, -1696, "vcs2samp/mainla3267.dff", "vcs2samp/mainla3267.txd");
AddSimpleModel(-1, 19379, -1697, "vcs2samp/mainla3270.dff", "vcs2samp/mainla3270.txd");
AddSimpleModel(-1, 19379, -1698, "vcs2samp/sjmpalmtall.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -1699, "vcs2samp/mainla3272.dff", "vcs2samp/mainla3272.txd");
AddSimpleModel(-1, 19379, -1700, "vcs2samp/mainla3273.dff", "vcs2samp/mainla3273.txd");
AddSimpleModel(-1, 19379, -1701, "vcs2samp/mainla3274.dff", "vcs2samp/mainla3274.txd");
AddSimpleModel(-1, 19379, -1702, "vcs2samp/mainla3275.dff", "vcs2samp/mainla3275.txd");
AddSimpleModel(-1, 19379, -1703, "vcs2samp/mainla3276.dff", "vcs2samp/mainla3276.txd");
AddSimpleModel(-1, 19379, -1704, "vcs2samp/mainla3277.dff", "vcs2samp/mainla3277.txd");
AddSimpleModel(-1, 19379, -1705, "vcs2samp/mainla3278.dff", "vcs2samp/mainla3278.txd");
AddSimpleModel(-1, 19379, -1706, "vcs2samp/mainla3280.dff", "vcs2samp/mainla3280.txd");
AddSimpleModel(-1, 19379, -1707, "vcs2samp/mainla3281.dff", "vcs2samp/mainla3281.txd");
AddSimpleModel(-1, 19379, -1708, "vcs2samp/mainla3282.dff", "vcs2samp/mainla3282.txd");
AddSimpleModel(-1, 19379, -1709, "vcs2samp/mainla3283.dff", "vcs2samp/mainla3283.txd");
AddSimpleModel(-1, 19379, -1710, "vcs2samp/mainla3284.dff", "vcs2samp/mainla3284.txd");
AddSimpleModel(-1, 19379, -1711, "vcs2samp/mainla3285.dff", "vcs2samp/mainla3285.txd");
AddSimpleModel(-1, 19379, -1712, "vcs2samp/mainla3286.dff", "vcs2samp/mainla3286.txd");
AddSimpleModel(-1, 19379, -1713, "vcs2samp/mainla3287.dff", "vcs2samp/mainla3287.txd");
AddSimpleModel(-1, 19379, -1714, "vcs2samp/mainla3288.dff", "vcs2samp/mainla3288.txd");
AddSimpleModel(-1, 19379, -1715, "vcs2samp/mainla3289.dff", "vcs2samp/mainla3289.txd");
AddSimpleModel(-1, 19379, -1716, "vcs2samp/mainla3290.dff", "vcs2samp/mainla3290.txd");
AddSimpleModel(-1, 19379, -1717, "vcs2samp/mainla3291.dff", "vcs2samp/mainla3291.txd");
AddSimpleModel(-1, 19379, -1718, "vcs2samp/mainla3293.dff", "vcs2samp/mainla3293.txd");
AddSimpleModel(-1, 19379, -1719, "vcs2samp/mainla3294.dff", "vcs2samp/mainla3294.txd");
AddSimpleModel(-1, 19379, -1720, "vcs2samp/mainla3295.dff", "vcs2samp/mainla3295.txd");
AddSimpleModel(-1, 19379, -1721, "vcs2samp/mainla3296.dff", "vcs2samp/mainla3296.txd");
AddSimpleModel(-1, 19379, -1722, "vcs2samp/mainla3300.dff", "vcs2samp/mainla3300.txd");
AddSimpleModel(-1, 19379, -1723, "vcs2samp/mainla3303.dff", "vcs2samp/mainla3303.txd");
AddSimpleModel(-1, 19379, -1724, "vcs2samp/mainla3304.dff", "vcs2samp/mainla3304.txd");
AddSimpleModel(-1, 19379, -1725, "vcs2samp/mainla3310.dff", "vcs2samp/mainla3310.txd");
AddSimpleModel(-1, 19379, -1726, "vcs2samp/mainla3311.dff", "vcs2samp/mainla3311.txd");
AddSimpleModel(-1, 19379, -1727, "vcs2samp/mainla3312.dff", "vcs2samp/mainla3312.txd");
AddSimpleModel(-1, 19379, -1728, "vcs2samp/mainla3314.dff", "vcs2samp/mainla3314.txd");
AddSimpleModel(-1, 19379, -1729, "vcs2samp/mainla3315.dff", "vcs2samp/mainla3315.txd");
AddSimpleModel(-1, 19379, -1730, "vcs2samp/mainla3316.dff", "vcs2samp/mainla3316.txd");
AddSimpleModel(-1, 19379, -1731, "vcs2samp/mainla3317.dff", "vcs2samp/mainla3317.txd");
AddSimpleModel(-1, 19379, -1732, "vcs2samp/mainla3318.dff", "vcs2samp/mainla3318.txd");
AddSimpleModel(-1, 19379, -1733, "vcs2samp/mainla3319.dff", "vcs2samp/mainla3319.txd");
AddSimpleModel(-1, 19379, -1734, "vcs2samp/mainla3320.dff", "vcs2samp/mainla3320.txd");
AddSimpleModel(-1, 19379, -1735, "vcs2samp/mainla3322.dff", "vcs2samp/mainla3322.txd");
AddSimpleModel(-1, 19379, -1736, "vcs2samp/mainla3323.dff", "vcs2samp/mainla3323.txd");
AddSimpleModel(-1, 19379, -1737, "vcs2samp/mainla3327.dff", "vcs2samp/mainla3327.txd");
AddSimpleModel(-1, 19379, -1738, "vcs2samp/mainla3329.dff", "vcs2samp/mainla3329.txd");
AddSimpleModel(-1, 19379, -1739, "vcs2samp/mainla3333.dff", "vcs2samp/mainla3333.txd");
AddSimpleModel(-1, 19379, -1740, "vcs2samp/mainla3334.dff", "vcs2samp/mainla3334.txd");
AddSimpleModel(-1, 19379, -1741, "vcs2samp/mainla3335.dff", "vcs2samp/mainla3335.txd");
AddSimpleModel(-1, 19379, -1742, "vcs2samp/mainla3337.dff", "vcs2samp/mainla3337.txd");
AddSimpleModel(-1, 19379, -1743, "vcs2samp/mainla3338.dff", "vcs2samp/mainla3338.txd");
AddSimpleModel(-1, 19379, -1744, "vcs2samp/mainla3339.dff", "vcs2samp/mainla3339.txd");
AddSimpleModel(-1, 19379, -1745, "vcs2samp/mainla3340.dff", "vcs2samp/mainla3340.txd");
AddSimpleModel(-1, 19379, -1746, "vcs2samp/mainla3341.dff", "vcs2samp/mainla3341.txd");
AddSimpleModel(-1, 19379, -1747, "vcs2samp/mainla3343.dff", "vcs2samp/mainla3343.txd");
AddSimpleModel(-1, 19379, -1748, "vcs2samp/mainla3344.dff", "vcs2samp/mainla3344.txd");
AddSimpleModel(-1, 19379, -1749, "vcs2samp/mainla3345.dff", "vcs2samp/mainla3345.txd");
AddSimpleModel(-1, 19379, -1750, "vcs2samp/mainla3348.dff", "vcs2samp/mainla3348.txd");
AddSimpleModel(-1, 19379, -1751, "vcs2samp/mainla3349.dff", "vcs2samp/mainla3349.txd");
AddSimpleModel(-1, 19379, -1752, "vcs2samp/mainla3350.dff", "vcs2samp/mainla3350.txd");
AddSimpleModel(-1, 19379, -1753, "vcs2samp/mainla3351.dff", "vcs2samp/mainla3351.txd");
AddSimpleModel(-1, 19379, -1754, "vcs2samp/mainla3352.dff", "vcs2samp/mainla3352.txd");
AddSimpleModel(-1, 19379, -1755, "vcs2samp/mainla3356.dff", "vcs2samp/mainla3356.txd");
AddSimpleModel(-1, 19379, -1756, "vcs2samp/mainla3358.dff", "vcs2samp/mainla3358.txd");
AddSimpleModel(-1, 19379, -1757, "vcs2samp/mainla3360.dff", "vcs2samp/mainla3360.txd");
AddSimpleModel(-1, 19379, -1758, "vcs2samp/mainla3362.dff", "vcs2samp/mainla3362.txd");
AddSimpleModel(-1, 19379, -1759, "vcs2samp/mainla3363.dff", "vcs2samp/mainla3363.txd");
AddSimpleModel(-1, 19379, -1760, "vcs2samp/mainla3365.dff", "vcs2samp/mainla3365.txd");
AddSimpleModel(-1, 19379, -1761, "vcs2samp/mainla3366.dff", "vcs2samp/mainla3366.txd");
AddSimpleModel(-1, 19379, -1762, "vcs2samp/mainla3367.dff", "vcs2samp/mainla3367.txd");
AddSimpleModel(-1, 19379, -1763, "vcs2samp/mainla3368.dff", "vcs2samp/mainla3368.txd");
AddSimpleModel(-1, 19379, -1764, "vcs2samp/mainla3372.dff", "vcs2samp/mainla3372.txd");
AddSimpleModel(-1, 19379, -1765, "vcs2samp/mainla3373.dff", "vcs2samp/mainla3373.txd");
AddSimpleModel(-1, 19379, -1766, "vcs2samp/mainla3375.dff", "vcs2samp/mainla3375.txd");
AddSimpleModel(-1, 19379, -1767, "vcs2samp/mainla3377.dff", "vcs2samp/mainla3377.txd");
AddSimpleModel(-1, 19379, -1768, "vcs2samp/mainla3378.dff", "vcs2samp/mainla3378.txd");
AddSimpleModel(-1, 19379, -1769, "vcs2samp/mainla3379.dff", "vcs2samp/mainla3379.txd");
AddSimpleModel(-1, 19379, -1770, "vcs2samp/mainla3380.dff", "vcs2samp/mainla3380.txd");
AddSimpleModel(-1, 19379, -1771, "vcs2samp/mainla3381.dff", "vcs2samp/mainla3381.txd");
AddSimpleModel(-1, 19379, -1772, "vcs2samp/mainla3382.dff", "vcs2samp/mainla3382.txd");
AddSimpleModel(-1, 19379, -1773, "vcs2samp/mainla3383.dff", "vcs2samp/mainla3383.txd");
AddSimpleModel(-1, 19379, -1774, "vcs2samp/mainla3385.dff", "vcs2samp/mainla3385.txd");
AddSimpleModel(-1, 19379, -1775, "vcs2samp/mainla3386.dff", "vcs2samp/mainla3386.txd");
AddSimpleModel(-1, 19379, -1776, "vcs2samp/mainla3388.dff", "vcs2samp/mainla3388.txd");
AddSimpleModel(-1, 19379, -1777, "vcs2samp/mainla3389.dff", "vcs2samp/mainla3389.txd");
AddSimpleModel(-1, 19379, -1778, "vcs2samp/mainla3390.dff", "vcs2samp/mainla3390.txd");
AddSimpleModel(-1, 19379, -1779, "vcs2samp/mainla3391.dff", "vcs2samp/mainla3391.txd");
AddSimpleModel(-1, 19379, -1780, "vcs2samp/mainla3392.dff", "vcs2samp/mainla3392.txd");
AddSimpleModel(-1, 19379, -1781, "vcs2samp/mainla3395.dff", "vcs2samp/mainla3395.txd");
AddSimpleModel(-1, 19379, -1782, "vcs2samp/mainla3398.dff", "vcs2samp/mainla3398.txd");
AddSimpleModel(-1, 19379, -1783, "vcs2samp/mainla3400.dff", "vcs2samp/mainla3400.txd");
AddSimpleModel(-1, 19379, -1784, "vcs2samp/mainla3401.dff", "vcs2samp/mainla3401.txd");
AddSimpleModel(-1, 19379, -1785, "vcs2samp/mainla3402.dff", "vcs2samp/mainla3402.txd");
AddSimpleModel(-1, 19379, -1786, "vcs2samp/mainla3403.dff", "vcs2samp/mainla3403.txd");
AddSimpleModel(-1, 19379, -1787, "vcs2samp/mainla3406.dff", "vcs2samp/mainla3406.txd");
AddSimpleModel(-1, 19379, -1788, "vcs2samp/mainla3407.dff", "vcs2samp/mainla3407.txd");
AddSimpleModel(-1, 19379, -1789, "vcs2samp/mainla3408.dff", "vcs2samp/mainla3408.txd");
AddSimpleModel(-1, 19379, -1790, "vcs2samp/mainla3409.dff", "vcs2samp/mainla3409.txd");
AddSimpleModel(-1, 19379, -1791, "vcs2samp/mainla3410.dff", "vcs2samp/mainla3410.txd");
AddSimpleModel(-1, 19379, -1792, "vcs2samp/mainla3411.dff", "vcs2samp/mainla3411.txd");
AddSimpleModel(-1, 19379, -1793, "vcs2samp/mainla3412.dff", "vcs2samp/mainla3412.txd");
AddSimpleModel(-1, 19379, -1794, "vcs2samp/mainla3413.dff", "vcs2samp/mainla3413.txd");
AddSimpleModel(-1, 19379, -1795, "vcs2samp/mainla3414.dff", "vcs2samp/mainla3414.txd");
AddSimpleModel(-1, 19379, -1796, "vcs2samp/mainla3415.dff", "vcs2samp/mainla3415.txd");
AddSimpleModel(-1, 19379, -1797, "vcs2samp/mainla3416.dff", "vcs2samp/mainla3416.txd");
AddSimpleModel(-1, 19379, -1798, "vcs2samp/mainla3417.dff", "vcs2samp/mainla3417.txd");
AddSimpleModel(-1, 19379, -1799, "vcs2samp/mainla3418.dff", "vcs2samp/mainla3418.txd");
AddSimpleModel(-1, 19379, -1800, "vcs2samp/mainla3419.dff", "vcs2samp/mainla3419.txd");
AddSimpleModel(-1, 19379, -1801, "vcs2samp/mainla3420.dff", "vcs2samp/mainla3420.txd");
AddSimpleModel(-1, 19379, -1802, "vcs2samp/mainla3421.dff", "vcs2samp/mainla3421.txd");
AddSimpleModel(-1, 19379, -1803, "vcs2samp/mainla3422.dff", "vcs2samp/mainla3422.txd");
AddSimpleModel(-1, 19379, -1804, "vcs2samp/mainla3423.dff", "vcs2samp/mainla3423.txd");
AddSimpleModel(-1, 19379, -1805, "vcs2samp/mainla3424.dff", "vcs2samp/mainla3424.txd");
AddSimpleModel(-1, 19379, -1806, "vcs2samp/mainla3425.dff", "vcs2samp/mainla3425.txd");
AddSimpleModel(-1, 19379, -1807, "vcs2samp/mainla3426.dff", "vcs2samp/mainla3426.txd");
AddSimpleModel(-1, 19379, -1808, "vcs2samp/mainla3429.dff", "vcs2samp/mainla3429.txd");
AddSimpleModel(-1, 19379, -1809, "vcs2samp/mainla3430.dff", "vcs2samp/mainla3430.txd");
AddSimpleModel(-1, 19379, -1810, "vcs2samp/mainla3432.dff", "vcs2samp/mainla3432.txd");
AddSimpleModel(-1, 19379, -1811, "vcs2samp/mainla3433.dff", "vcs2samp/mainla3433.txd");
AddSimpleModel(-1, 19379, -1812, "vcs2samp/mainla3434.dff", "vcs2samp/mainla3434.txd");
AddSimpleModel(-1, 19379, -1813, "vcs2samp/mainla3436.dff", "vcs2samp/mainla3436.txd");
AddSimpleModel(-1, 19379, -1814, "vcs2samp/mainla3437.dff", "vcs2samp/mainla3437.txd");
AddSimpleModel(-1, 19379, -1815, "vcs2samp/mainla3438.dff", "vcs2samp/mainla3438.txd");
AddSimpleModel(-1, 19379, -1816, "vcs2samp/mainla3442.dff", "vcs2samp/mainla3442.txd");
AddSimpleModel(-1, 19379, -1817, "vcs2samp/mainla3450.dff", "vcs2samp/mainla3450.txd");
AddSimpleModel(-1, 19379, -1818, "vcs2samp/mainla3455.dff", "vcs2samp/mainla3455.txd");
AddSimpleModel(-1, 19379, -1819, "vcs2samp/mainla3456.dff", "vcs2samp/mainla3456.txd");
AddSimpleModel(-1, 19379, -1820, "vcs2samp/mainla3457.dff", "vcs2samp/mainla3457.txd");
AddSimpleModel(-1, 19379, -1821, "vcs2samp/mainla3458.dff", "vcs2samp/mainla3458.txd");
AddSimpleModel(-1, 19379, -1822, "vcs2samp/mainla3468.dff", "vcs2samp/mainla3468.txd");
AddSimpleModel(-1, 19379, -1823, "vcs2samp/mainla3473.dff", "vcs2samp/mainla3473.txd");
AddSimpleModel(-1, 19379, -1824, "vcs2samp/mainla3477.dff", "vcs2samp/mainla3477.txd");
AddSimpleModel(-1, 19379, -1825, "vcs2samp/mainla3487.dff", "vcs2samp/mainla3487.txd");
AddSimpleModel(-1, 19379, -1826, "vcs2samp/mainla3488.dff", "vcs2samp/mainla3488.txd");
AddSimpleModel(-1, 19379, -1827, "vcs2samp/mainla3489.dff", "vcs2samp/mainla3489.txd");
AddSimpleModel(-1, 19379, -1828, "vcs2samp/mainla3490.dff", "vcs2samp/mainla3490.txd");
AddSimpleModel(-1, 19379, -1829, "vcs2samp/mainla3491.dff", "vcs2samp/mainla3491.txd");
AddSimpleModel(-1, 19379, -1830, "vcs2samp/mainla3502.dff", "vcs2samp/mainla3502.txd");
AddSimpleModel(-1, 19379, -1831, "vcs2samp/mainla3506.dff", "vcs2samp/mainla3506.txd");
AddSimpleModel(-1, 19379, -1832, "vcs2samp/mainla3508.dff", "vcs2samp/mainla3508.txd");
AddSimpleModel(-1, 19379, -1833, "vcs2samp/mainla3513.dff", "vcs2samp/mainla3513.txd");
AddSimpleModel(-1, 19379, -1834, "vcs2samp/mainla3516.dff", "vcs2samp/mainla3516.txd");
AddSimpleModel(-1, 19379, -1835, "vcs2samp/mainla3519.dff", "vcs2samp/mainla3519.txd");
AddSimpleModel(-1, 19379, -1836, "vcs2samp/mainla3521.dff", "vcs2samp/mainla3521.txd");
AddSimpleModel(-1, 19379, -1837, "vcs2samp/mainla3531.dff", "vcs2samp/mainla3531.txd");
AddSimpleModel(-1, 19379, -1838, "vcs2samp/mainla3535.dff", "vcs2samp/mainla3535.txd");
AddSimpleModel(-1, 19379, -1839, "vcs2samp/mainla3536.dff", "vcs2samp/mainla3536.txd");
AddSimpleModel(-1, 19379, -1840, "vcs2samp/mainla3541.dff", "vcs2samp/mainla3541.txd");
AddSimpleModel(-1, 19379, -1841, "vcs2samp/mainla3543.dff", "vcs2samp/mainla3543.txd");
AddSimpleModel(-1, 19379, -1842, "vcs2samp/mainla3552.dff", "vcs2samp/mainla3552.txd");
AddSimpleModel(-1, 19379, -1843, "vcs2samp/mainla3558.dff", "vcs2samp/mainla3558.txd");
AddSimpleModel(-1, 19379, -1844, "vcs2samp/mainla3560.dff", "vcs2samp/mainla3560.txd");
AddSimpleModel(-1, 19379, -1845, "vcs2samp/mainla3564.dff", "vcs2samp/mainla3564.txd");
AddSimpleModel(-1, 19379, -1846, "vcs2samp/mainla3566.dff", "vcs2samp/mainla3566.txd");
AddSimpleModel(-1, 19379, -1847, "vcs2samp/mainla3573.dff", "vcs2samp/mainla3573.txd");
AddSimpleModel(-1, 19379, -1848, "vcs2samp/mainla3574.dff", "vcs2samp/mainla3574.txd");
AddSimpleModel(-1, 19379, -1849, "vcs2samp/mainla3575.dff", "vcs2samp/mainla3575.txd");
AddSimpleModel(-1, 19379, -1850, "vcs2samp/mainla3576.dff", "vcs2samp/mainla3576.txd");
AddSimpleModel(-1, 19379, -1851, "vcs2samp/mainla3579.dff", "vcs2samp/mainla3579.txd");
AddSimpleModel(-1, 19379, -1852, "vcs2samp/mainla3581.dff", "vcs2samp/mainla3581.txd");
AddSimpleModel(-1, 19379, -1853, "vcs2samp/mainla3582.dff", "vcs2samp/mainla3582.txd");
AddSimpleModel(-1, 19379, -1854, "vcs2samp/mainla3583.dff", "vcs2samp/mainla3583.txd");
AddSimpleModel(-1, 19379, -1855, "vcs2samp/mainla3587.dff", "vcs2samp/mainla3587.txd");
AddSimpleModel(-1, 19379, -1856, "vcs2samp/mainla3589.dff", "vcs2samp/mainla3589.txd");
AddSimpleModel(-1, 19379, -1857, "vcs2samp/mainla3590.dff", "vcs2samp/mainla3590.txd");
AddSimpleModel(-1, 19379, -1858, "vcs2samp/mainla3591.dff", "vcs2samp/mainla3591.txd");
AddSimpleModel(-1, 19379, -1859, "vcs2samp/mainla3593.dff", "vcs2samp/mainla3593.txd");
AddSimpleModel(-1, 19379, -1860, "vcs2samp/mainla3595.dff", "vcs2samp/mainla3595.txd");
AddSimpleModel(-1, 19379, -1861, "vcs2samp/mainla3597.dff", "vcs2samp/mainla3597.txd");
AddSimpleModel(-1, 19379, -1862, "vcs2samp/mainla3600.dff", "vcs2samp/mainla3600.txd");
AddSimpleModel(-1, 19379, -1863, "vcs2samp/mainla3609.dff", "vcs2samp/mainla3609.txd");
AddSimpleModel(-1, 19379, -1864, "vcs2samp/mainla3614.dff", "vcs2samp/mainla3614.txd");
AddSimpleModel(-1, 19379, -1865, "vcs2samp/mainla3616.dff", "vcs2samp/mainla3616.txd");
AddSimpleModel(-1, 19379, -1866, "vcs2samp/mainla3617.dff", "vcs2samp/mainla3617.txd");
AddSimpleModel(-1, 19379, -1867, "vcs2samp/mainla3618.dff", "vcs2samp/mainla3618.txd");
AddSimpleModel(-1, 19379, -1868, "vcs2samp/mainla3623.dff", "vcs2samp/mainla3623.txd");
AddSimpleModel(-1, 19379, -1869, "vcs2samp/mainla3628.dff", "vcs2samp/mainla3628.txd");
AddSimpleModel(-1, 19379, -1870, "vcs2samp/mainla3629.dff", "vcs2samp/mainla3629.txd");
AddSimpleModel(-1, 19379, -1871, "vcs2samp/mainla3635.dff", "vcs2samp/mainla3635.txd");
AddSimpleModel(-1, 19379, -1872, "vcs2samp/mainla3636.dff", "vcs2samp/mainla3636.txd");
AddSimpleModel(-1, 19379, -1873, "vcs2samp/mainla3638.dff", "vcs2samp/mainla3638.txd");
AddSimpleModel(-1, 19379, -1874, "vcs2samp/mainla3642.dff", "vcs2samp/mainla3642.txd");
AddSimpleModel(-1, 19379, -1875, "vcs2samp/mainla3644.dff", "vcs2samp/mainla3644.txd");
AddSimpleModel(-1, 19379, -1876, "vcs2samp/mainla3648.dff", "vcs2samp/mainla3648.txd");
AddSimpleModel(-1, 19379, -1877, "vcs2samp/mainla3653.dff", "vcs2samp/mainla3653.txd");
AddSimpleModel(-1, 19379, -1878, "vcs2samp/mainla3659.dff", "vcs2samp/mainla3659.txd");
AddSimpleModel(-1, 19379, -1879, "vcs2samp/mainla3662.dff", "vcs2samp/mainla3662.txd");
AddSimpleModel(-1, 19379, -1880, "vcs2samp/mainla3663.dff", "vcs2samp/mainla3663.txd");
AddSimpleModel(-1, 19379, -1881, "vcs2samp/mainla3665.dff", "vcs2samp/mainla3665.txd");
AddSimpleModel(-1, 19379, -1882, "vcs2samp/mainla3666.dff", "vcs2samp/mainla3666.txd");
AddSimpleModel(-1, 19379, -1883, "vcs2samp/mainla3667.dff", "vcs2samp/mainla3667.txd");
AddSimpleModel(-1, 19379, -1884, "vcs2samp/mainla3669.dff", "vcs2samp/mainla3669.txd");
AddSimpleModel(-1, 19379, -1885, "vcs2samp/mainla3670.dff", "vcs2samp/mainla3670.txd");
AddSimpleModel(-1, 19379, -1886, "vcs2samp/mainla3672.dff", "vcs2samp/mainla3672.txd");
AddSimpleModel(-1, 19379, -1887, "vcs2samp/mainla3674.dff", "vcs2samp/mainla3674.txd");
AddSimpleModel(-1, 19379, -1888, "vcs2samp/mainla3675.dff", "vcs2samp/mainla3675.txd");
AddSimpleModel(-1, 19379, -1889, "vcs2samp/mainla3676.dff", "vcs2samp/mainla3676.txd");
AddSimpleModel(-1, 19379, -1890, "vcs2samp/mainla3677.dff", "vcs2samp/mainla3677.txd");
AddSimpleModel(-1, 19379, -1891, "vcs2samp/mainla3678.dff", "vcs2samp/mainla3678.txd");
AddSimpleModel(-1, 19379, -1892, "vcs2samp/mainla3679.dff", "vcs2samp/mainla3679.txd");
AddSimpleModel(-1, 19379, -1893, "vcs2samp/mainla3680.dff", "vcs2samp/mainla3680.txd");
AddSimpleModel(-1, 19379, -1894, "vcs2samp/mainla3681.dff", "vcs2samp/mainla3681.txd");
AddSimpleModel(-1, 19379, -1895, "vcs2samp/mainla3682.dff", "vcs2samp/mainla3682.txd");
AddSimpleModel(-1, 19379, -1896, "vcs2samp/mainla3683.dff", "vcs2samp/mainla3683.txd");
AddSimpleModel(-1, 19379, -1897, "vcs2samp/mainla3684.dff", "vcs2samp/mainla3684.txd");
AddSimpleModel(-1, 19379, -1898, "vcs2samp/mainla3685.dff", "vcs2samp/mainla3685.txd");
AddSimpleModel(-1, 19379, -1899, "vcs2samp/mainla3686.dff", "vcs2samp/mainla3686.txd");
AddSimpleModel(-1, 19379, -1900, "vcs2samp/mainla3687.dff", "vcs2samp/mainla3687.txd");
AddSimpleModel(-1, 19379, -1901, "vcs2samp/mainla3689.dff", "vcs2samp/mainla3689.txd");
AddSimpleModel(-1, 19379, -1902, "vcs2samp/mainla3690.dff", "vcs2samp/mainla3690.txd");
AddSimpleModel(-1, 19379, -1903, "vcs2samp/mainla3693.dff", "vcs2samp/mainla3693.txd");
AddSimpleModel(-1, 19379, -1904, "vcs2samp/mainla3694.dff", "vcs2samp/mainla3694.txd");
AddSimpleModel(-1, 19379, -1905, "vcs2samp/mainla3695.dff", "vcs2samp/mainla3695.txd");
AddSimpleModel(-1, 19379, -1906, "vcs2samp/mainla3699.dff", "vcs2samp/mainla3699.txd");
AddSimpleModel(-1, 19379, -1907, "vcs2samp/mainla3702.dff", "vcs2samp/mainla3702.txd");
AddSimpleModel(-1, 19379, -1908, "vcs2samp/mainla3703.dff", "vcs2samp/mainla3703.txd");
AddSimpleModel(-1, 19379, -1909, "vcs2samp/mainla3704.dff", "vcs2samp/mainla3704.txd");
AddSimpleModel(-1, 19379, -1910, "vcs2samp/mainla3705.dff", "vcs2samp/mainla3705.txd");
AddSimpleModel(-1, 19379, -1911, "vcs2samp/mainla3714.dff", "vcs2samp/mainla3714.txd");
AddSimpleModel(-1, 19379, -1912, "vcs2samp/mainla3718.dff", "vcs2samp/mainla3718.txd");
AddSimpleModel(-1, 19379, -1913, "vcs2samp/mainla3723.dff", "vcs2samp/mainla3723.txd");
AddSimpleModel(-1, 19379, -1914, "vcs2samp/mainla3732.dff", "vcs2samp/mainla3732.txd");
AddSimpleModel(-1, 19379, -1915, "vcs2samp/mainla3734.dff", "vcs2samp/mainla3734.txd");
AddSimpleModel(-1, 19379, -1916, "vcs2samp/mainla3741.dff", "vcs2samp/mainla3741.txd");
AddSimpleModel(-1, 19379, -1917, "vcs2samp/mainla3745.dff", "vcs2samp/mainla3745.txd");
AddSimpleModel(-1, 19379, -1918, "vcs2samp/mainla3750.dff", "vcs2samp/mainla3750.txd");
AddSimpleModel(-1, 19379, -1919, "vcs2samp/mainla3751.dff", "vcs2samp/mainla3751.txd");
AddSimpleModel(-1, 19379, -1920, "vcs2samp/mainla3752.dff", "vcs2samp/mainla3752.txd");
AddSimpleModel(-1, 19379, -1921, "vcs2samp/mainla3753.dff", "vcs2samp/mainla3753.txd");
AddSimpleModel(-1, 19379, -1922, "vcs2samp/mainla3754.dff", "vcs2samp/mainla3754.txd");
AddSimpleModel(-1, 19379, -1923, "vcs2samp/mainla3755.dff", "vcs2samp/mainla3755.txd");
AddSimpleModel(-1, 19379, -1924, "vcs2samp/mainla2488.dff", "vcs2samp/mainla2488.txd");
AddSimpleModel(-1, 19379, -1925, "vcs2samp/mainla2490.dff", "vcs2samp/mainla2490.txd");
AddSimpleModel(-1, 19379, -1926, "vcs2samp/mainla3756.dff", "vcs2samp/mainla3756.txd");
AddSimpleModel(-1, 19379, -1927, "vcs2samp/mainla3758.dff", "vcs2samp/mainla3758.txd");
AddSimpleModel(-1, 19379, -1928, "vcs2samp/mainla3765.dff", "vcs2samp/mainla3765.txd");
AddSimpleModel(-1, 19379, -1929, "vcs2samp/mainla3777.dff", "vcs2samp/mainla3777.txd");
AddSimpleModel(-1, 19379, -1930, "vcs2samp/mainla3778.dff", "vcs2samp/mainla3778.txd");
AddSimpleModel(-1, 19379, -1931, "vcs2samp/mainla3780.dff", "vcs2samp/mainla3780.txd");
AddSimpleModel(-1, 19379, -1932, "vcs2samp/mainla3781.dff", "vcs2samp/mainla3781.txd");
AddSimpleModel(-1, 19379, -1933, "vcs2samp/mainla3788.dff", "vcs2samp/mainla3788.txd");
AddSimpleModel(-1, 19379, -1934, "vcs2samp/mainla3789.dff", "vcs2samp/mainla3789.txd");
AddSimpleModel(-1, 19379, -1935, "vcs2samp/mainla3790.dff", "vcs2samp/mainla3790.txd");
AddSimpleModel(-1, 19379, -1936, "vcs2samp/mainla3791.dff", "vcs2samp/mainla3791.txd");
AddSimpleModel(-1, 19379, -1937, "vcs2samp/mainla3793.dff", "vcs2samp/mainla3793.txd");
AddSimpleModel(-1, 19379, -1938, "vcs2samp/mainla3797.dff", "vcs2samp/mainla3797.txd");
AddSimpleModel(-1, 19379, -1939, "vcs2samp/mainla3801.dff", "vcs2samp/mainla3801.txd");
AddSimpleModel(-1, 19379, -1940, "vcs2samp/mainla3808.dff", "vcs2samp/mainla3808.txd");
AddSimpleModel(-1, 19379, -1941, "vcs2samp/mainla3810.dff", "vcs2samp/mainla3810.txd");
AddSimpleModel(-1, 19379, -1942, "vcs2samp/mainla3813.dff", "vcs2samp/mainla3813.txd");
AddSimpleModel(-1, 19379, -1943, "vcs2samp/mainla3820.dff", "vcs2samp/mainla3820.txd");
AddSimpleModel(-1, 19379, -1944, "vcs2samp/mainla3821.dff", "vcs2samp/mainla3821.txd");
AddSimpleModel(-1, 19379, -1945, "vcs2samp/mainla3822.dff", "vcs2samp/mainla3822.txd");
AddSimpleModel(-1, 19379, -1946, "vcs2samp/mainla3823.dff", "vcs2samp/mainla3823.txd");
AddSimpleModel(-1, 19379, -1947, "vcs2samp/mainla3829.dff", "vcs2samp/mainla3829.txd");
AddSimpleModel(-1, 19379, -1948, "vcs2samp/mainla3833.dff", "vcs2samp/mainla3833.txd");
AddSimpleModel(-1, 19379, -1949, "vcs2samp/mainla3834.dff", "vcs2samp/mainla3834.txd");
AddSimpleModel(-1, 19379, -1950, "vcs2samp/mainla3838.dff", "vcs2samp/mainla3838.txd");
AddSimpleModel(-1, 19379, -1951, "vcs2samp/mainla3843.dff", "vcs2samp/mainla3843.txd");
AddSimpleModel(-1, 19379, -1952, "vcs2samp/mainla3844.dff", "vcs2samp/mainla3844.txd");
AddSimpleModel(-1, 19379, -1953, "vcs2samp/mainla3845.dff", "vcs2samp/mainla3845.txd");
AddSimpleModel(-1, 19379, -1954, "vcs2samp/mainla3846.dff", "vcs2samp/mainla3846.txd");
AddSimpleModel(-1, 19379, -1955, "vcs2samp/mainla3847.dff", "vcs2samp/mainla3847.txd");
AddSimpleModel(-1, 19379, -1956, "vcs2samp/mainla3853.dff", "vcs2samp/mainla3853.txd");
AddSimpleModel(-1, 19379, -1957, "vcs2samp/mainla3854.dff", "vcs2samp/mainla3854.txd");
AddSimpleModel(-1, 19379, -1958, "vcs2samp/mainla3860.dff", "vcs2samp/mainla3860.txd");
AddSimpleModel(-1, 19379, -1959, "vcs2samp/mainla3867.dff", "vcs2samp/mainla3867.txd");
AddSimpleModel(-1, 19379, -1960, "vcs2samp/mainla3869.dff", "vcs2samp/mainla3869.txd");
AddSimpleModel(-1, 19379, -1961, "vcs2samp/mainla3875.dff", "vcs2samp/mainla3875.txd");
AddSimpleModel(-1, 19379, -1962, "vcs2samp/mainla3883.dff", "vcs2samp/mainla3883.txd");
AddSimpleModel(-1, 19379, -1963, "vcs2samp/mainla3884.dff", "vcs2samp/mainla3884.txd");
AddSimpleModel(-1, 19379, -1964, "vcs2samp/mainla3886.dff", "vcs2samp/mainla3886.txd");
AddSimpleModel(-1, 19379, -1965, "vcs2samp/mainla3887.dff", "vcs2samp/mainla3887.txd");
AddSimpleModel(-1, 19379, -1966, "vcs2samp/mainla3888.dff", "vcs2samp/mainla3888.txd");
AddSimpleModel(-1, 19379, -1967, "vcs2samp/mainla3889.dff", "vcs2samp/mainla3889.txd");
AddSimpleModel(-1, 19379, -1968, "vcs2samp/mainla3892.dff", "vcs2samp/mainla3892.txd");
AddSimpleModel(-1, 19379, -1969, "vcs2samp/mainla3893.dff", "vcs2samp/mainla3893.txd");
AddSimpleModel(-1, 19379, -1970, "vcs2samp/mainla3898.dff", "vcs2samp/mainla3898.txd");
AddSimpleModel(-1, 19379, -1971, "vcs2samp/mainla3900.dff", "vcs2samp/mainla3900.txd");
AddSimpleModel(-1, 19379, -1972, "vcs2samp/mainla3901.dff", "vcs2samp/mainla3901.txd");
AddSimpleModel(-1, 19379, -1973, "vcs2samp/mainla3903.dff", "vcs2samp/mainla3903.txd");
AddSimpleModel(-1, 19379, -1974, "vcs2samp/mainla3904.dff", "vcs2samp/mainla3904.txd");
AddSimpleModel(-1, 19379, -1975, "vcs2samp/mainla3906.dff", "vcs2samp/mainla3906.txd");
AddSimpleModel(-1, 19379, -1976, "vcs2samp/mainla3907.dff", "vcs2samp/mainla3907.txd");
AddSimpleModel(-1, 19379, -1977, "vcs2samp/mainla3908.dff", "vcs2samp/mainla3908.txd");
AddSimpleModel(-1, 19379, -1978, "vcs2samp/mainla3910.dff", "vcs2samp/mainla3910.txd");
AddSimpleModel(-1, 19379, -1979, "vcs2samp/mainla3913.dff", "vcs2samp/mainla3913.txd");
AddSimpleModel(-1, 19379, -1980, "vcs2samp/mainla3915.dff", "vcs2samp/mainla3915.txd");
AddSimpleModel(-1, 19379, -1981, "vcs2samp/mainla3917.dff", "vcs2samp/mainla3917.txd");
AddSimpleModel(-1, 19379, -1982, "vcs2samp/mainla3918.dff", "vcs2samp/mainla3918.txd");
AddSimpleModel(-1, 19379, -1983, "vcs2samp/mainla3919.dff", "vcs2samp/mainla3919.txd");
AddSimpleModel(-1, 19379, -1984, "vcs2samp/mainla3922.dff", "vcs2samp/mainla3922.txd");
AddSimpleModel(-1, 19379, -1985, "vcs2samp/mainla3923.dff", "vcs2samp/mainla3923.txd");
AddSimpleModel(-1, 19379, -1986, "vcs2samp/mainla3924.dff", "vcs2samp/mainla3924.txd");
AddSimpleModel(-1, 19379, -1987, "vcs2samp/mainla3925.dff", "vcs2samp/mainla3925.txd");
AddSimpleModel(-1, 19379, -1988, "vcs2samp/mainla3926.dff", "vcs2samp/mainla3926.txd");
AddSimpleModel(-1, 19379, -1989, "vcs2samp/mainla3941.dff", "vcs2samp/mainla3941.txd");
AddSimpleModel(-1, 19379, -1990, "vcs2samp/mainla3942.dff", "vcs2samp/mainla3942.txd");
AddSimpleModel(-1, 19379, -1991, "vcs2samp/mainla4227.dff", "vcs2samp/mainla4227.txd");
AddSimpleModel(-1, 19379, -1992, "vcs2samp/mainla4228.dff", "vcs2samp/mainla4228.txd");
AddSimpleModel(-1, 19379, -1993, "vcs2samp/mainla4229.dff", "vcs2samp/mainla4229.txd");
AddSimpleModel(-1, 19379, -1994, "vcs2samp/LODnla4301.dff", "vcs2samp/LODnla4301.txd");
AddSimpleModel(-1, 19379, -1995, "vcs2samp/mainla4319.dff", "vcs2samp/mainla4319.txd");
AddSimpleModel(-1, 19379, -1996, "vcs2samp/mainla4320.dff", "vcs2samp/mainla4320.txd");
AddSimpleModel(-1, 19379, -1997, "vcs2samp/mainla4321.dff", "vcs2samp/mainla4321.txd");
AddSimpleModel(-1, 19379, -1998, "vcs2samp/mainla4322.dff", "vcs2samp/mainla4322.txd");
AddSimpleModel(-1, 19379, -1999, "vcs2samp/mainla4324.dff", "vcs2samp/mainla4324.txd");
AddSimpleModel(-1, 19379, -2000, "vcs2samp/mainla4326.dff", "vcs2samp/mainla4326.txd");
AddSimpleModel(-1, 19379, -2001, "vcs2samp/mainla4328.dff", "vcs2samp/mainla4328.txd");
AddSimpleModel(-1, 19379, -2002, "vcs2samp/mainla4329.dff", "vcs2samp/mainla4329.txd");
AddSimpleModel(-1, 19379, -2003, "vcs2samp/LODnla4450.dff", "vcs2samp/LODnla4450.txd");
AddSimpleModel(-1, 19379, -2004, "vcs2samp/LODnla4455.dff", "vcs2samp/LODnla4455.txd");
AddSimpleModel(-1, 19379, -2005, "vcs2samp/mainla4465.dff", "vcs2samp/mainla4465.txd");
AddSimpleModel(-1, 19379, -2006, "vcs2samp/LODnla4476.dff", "vcs2samp/LODnla4476.txd");
AddSimpleModel(-1, 19379, -2007, "vcs2samp/LODnla4482.dff", "vcs2samp/LODnla4482.txd");
AddSimpleModel(-1, 19379, -2008, "vcs2samp/LODnla4486.dff", "vcs2samp/LODnla4486.txd");
AddSimpleModel(-1, 19379, -2009, "vcs2samp/LODnla4488.dff", "vcs2samp/LODnla4488.txd");
AddSimpleModel(-1, 19379, -2010, "vcs2samp/LODnla4495.dff", "vcs2samp/LODnla4495.txd");
AddSimpleModel(-1, 19379, -2011, "vcs2samp/LODnla4505.dff", "vcs2samp/LODnla4505.txd");
AddSimpleModel(-1, 19379, -2012, "vcs2samp/LODnla4512.dff", "vcs2samp/LODnla4512.txd");
AddSimpleModel(-1, 19379, -2013, "vcs2samp/LODnla4513.dff", "vcs2samp/LODnla4513.txd");
AddSimpleModel(-1, 19379, -2014, "vcs2samp/LODnla4517.dff", "vcs2samp/LODnla4517.txd");
AddSimpleModel(-1, 19379, -2015, "vcs2samp/LODnla4518.dff", "vcs2samp/LODnla4518.txd");
AddSimpleModel(-1, 19379, -2016, "vcs2samp/LODnla4523.dff", "vcs2samp/LODnla4523.txd");
AddSimpleModel(-1, 19379, -2017, "vcs2samp/LODnla4526.dff", "vcs2samp/LODnla4526.txd");
AddSimpleModel(-1, 19379, -2018, "vcs2samp/LODnla4540.dff", "vcs2samp/LODnla4540.txd");
AddSimpleModel(-1, 19379, -2019, "vcs2samp/LODnla4551.dff", "vcs2samp/LODnla4551.txd");
AddSimpleModel(-1, 19379, -2020, "vcs2samp/LODnla4552.dff", "vcs2samp/LODnla4552.txd");
AddSimpleModel(-1, 19379, -2021, "vcs2samp/LODnla4556.dff", "vcs2samp/LODnla4556.txd");
AddSimpleModel(-1, 19379, -2022, "vcs2samp/LODnla4566.dff", "vcs2samp/LODnla4566.txd");
AddSimpleModel(-1, 19379, -2023, "vcs2samp/LODnla4572.dff", "vcs2samp/LODnla4572.txd");
AddSimpleModel(-1, 19379, -2024, "vcs2samp/LODnla4575.dff", "vcs2samp/LODnla4575.txd");
AddSimpleModel(-1, 19379, -2025, "vcs2samp/LODnla4576.dff", "vcs2samp/LODnla4576.txd");
AddSimpleModel(-1, 19379, -2026, "vcs2samp/mainla4577.dff", "vcs2samp/mainla4577.txd");
AddSimpleModel(-1, 19379, -2027, "vcs2samp/LODnla4580.dff", "vcs2samp/LODnla4580.txd");
AddSimpleModel(-1, 19379, -2028, "vcs2samp/LODnla4582.dff", "vcs2samp/LODnla4582.txd");
AddSimpleModel(-1, 19379, -2029, "vcs2samp/LODnla4583.dff", "vcs2samp/LODnla4583.txd");
AddSimpleModel(-1, 19379, -2030, "vcs2samp/LODnla4584.dff", "vcs2samp/LODnla4584.txd");
AddSimpleModel(-1, 19379, -2031, "vcs2samp/LODnla4585.dff", "vcs2samp/LODnla4585.txd");
AddSimpleModel(-1, 19379, -2032, "vcs2samp/LODnla4587.dff", "vcs2samp/LODnla4587.txd");
AddSimpleModel(-1, 19379, -2033, "vcs2samp/LODnla4591.dff", "vcs2samp/LODnla4591.txd");
AddSimpleModel(-1, 19379, -2034, "vcs2samp/LODnla4592.dff", "vcs2samp/LODnla4592.txd");
AddSimpleModel(-1, 19379, -2035, "vcs2samp/LODnla4590.dff", "vcs2samp/LODnla4590.txd");
AddSimpleModel(-1, 19379, -2036, "vcs2samp/LODnla4595.dff", "vcs2samp/LODnla4595.txd");
AddSimpleModel(-1, 19379, -2037, "vcs2samp/LODnla4596.dff", "vcs2samp/LODnla4596.txd");
AddSimpleModel(-1, 19379, -2038, "vcs2samp/LODnla4598.dff", "vcs2samp/LODnla4598.txd");
AddSimpleModel(-1, 19379, -2039, "vcs2samp/LODnla4600.dff", "vcs2samp/LODnla4600.txd");
AddSimpleModel(-1, 19379, -2040, "vcs2samp/LODnla4609.dff", "vcs2samp/LODnla4609.txd");
AddSimpleModel(-1, 19379, -2041, "vcs2samp/LODnla4610.dff", "vcs2samp/LODnla4610.txd");
AddSimpleModel(-1, 19379, -2042, "vcs2samp/LODnla4611.dff", "vcs2samp/LODnla4611.txd");
AddSimpleModel(-1, 19379, -2043, "vcs2samp/LODnla4615.dff", "vcs2samp/LODnla4615.txd");
AddSimpleModel(-1, 19379, -2044, "vcs2samp/LODnla4616.dff", "vcs2samp/LODnla4616.txd");
AddSimpleModel(-1, 19379, -2045, "vcs2samp/LODnla4618.dff", "vcs2samp/LODnla4618.txd");
AddSimpleModel(-1, 19379, -2046, "vcs2samp/LODnla4619.dff", "vcs2samp/LODnla4619.txd");
AddSimpleModel(-1, 19379, -2047, "vcs2samp/LODnla4620.dff", "vcs2samp/LODnla4620.txd");
AddSimpleModel(-1, 19379, -2048, "vcs2samp/LODnla4623.dff", "vcs2samp/LODnla4623.txd");
AddSimpleModel(-1, 19379, -2049, "vcs2samp/LODnla4624.dff", "vcs2samp/LODnla4624.txd");
AddSimpleModel(-1, 19379, -2050, "vcs2samp/LODnla4627.dff", "vcs2samp/LODnla4627.txd");
AddSimpleModel(-1, 19379, -2051, "vcs2samp/LODnla4629.dff", "vcs2samp/LODnla4629.txd");
AddSimpleModel(-1, 19379, -2052, "vcs2samp/LODnla4637.dff", "vcs2samp/LODnla4637.txd");
AddSimpleModel(-1, 19379, -2053, "vcs2samp/LODnla4641.dff", "vcs2samp/LODnla4641.txd");
AddSimpleModel(-1, 19379, -2054, "vcs2samp/LODnla4642.dff", "vcs2samp/LODnla4642.txd");
AddSimpleModel(-1, 19379, -2055, "vcs2samp/LODnla4645.dff", "vcs2samp/LODnla4645.txd");
AddSimpleModel(-1, 19379, -2056, "vcs2samp/LODnla4648.dff", "vcs2samp/LODnla4648.txd");
AddSimpleModel(-1, 19379, -2057, "vcs2samp/LODnla4662.dff", "vcs2samp/LODnla4662.txd");
AddSimpleModel(-1, 19379, -2058, "vcs2samp/LODnla4663.dff", "vcs2samp/LODnla4663.txd");
AddSimpleModel(-1, 19379, -2059, "vcs2samp/LODnla4669.dff", "vcs2samp/LODnla4669.txd");
AddSimpleModel(-1, 19379, -2060, "vcs2samp/LODnla4670.dff", "vcs2samp/LODnla4670.txd");
AddSimpleModel(-1, 19379, -2061, "vcs2samp/LODnla4671.dff", "vcs2samp/LODnla4671.txd");
AddSimpleModel(-1, 19379, -2062, "vcs2samp/LODnla4673.dff", "vcs2samp/LODnla4673.txd");
AddSimpleModel(-1, 19379, -2063, "vcs2samp/LODnla4680.dff", "vcs2samp/LODnla4680.txd");
AddSimpleModel(-1, 19379, -2064, "vcs2samp/LODnla4681.dff", "vcs2samp/LODnla4681.txd");
AddSimpleModel(-1, 19379, -2065, "vcs2samp/LODnla4684.dff", "vcs2samp/LODnla4684.txd");
AddSimpleModel(-1, 19379, -2066, "vcs2samp/LODnla4685.dff", "vcs2samp/LODnla4685.txd");
AddSimpleModel(-1, 19379, -2067, "vcs2samp/LODnla4688.dff", "vcs2samp/LODnla4688.txd");
AddSimpleModel(-1, 19379, -2068, "vcs2samp/LODnla4692.dff", "vcs2samp/LODnla4692.txd");
AddSimpleModel(-1, 19379, -2069, "vcs2samp/LODnla4693.dff", "vcs2samp/LODnla4693.txd");
AddSimpleModel(-1, 19379, -2070, "vcs2samp/LODnla4694.dff", "vcs2samp/LODnla4694.txd");
AddSimpleModel(-1, 19379, -2071, "vcs2samp/LODnla4695.dff", "vcs2samp/LODnla4695.txd");
AddSimpleModel(-1, 19379, -2072, "vcs2samp/LODnla4696.dff", "vcs2samp/LODnla4696.txd");
AddSimpleModel(-1, 19379, -2073, "vcs2samp/LODnla4697.dff", "vcs2samp/LODnla4697.txd");
AddSimpleModel(-1, 19379, -2074, "vcs2samp/LODnla4698.dff", "vcs2samp/LODnla4698.txd");
AddSimpleModel(-1, 19379, -2075, "vcs2samp/LODnla4699.dff", "vcs2samp/LODnla4699.txd");
AddSimpleModel(-1, 19379, -2076, "vcs2samp/LODnla4700.dff", "vcs2samp/LODnla4700.txd");
AddSimpleModel(-1, 19379, -2077, "vcs2samp/LODnla4701.dff", "vcs2samp/LODnla4701.txd");
AddSimpleModel(-1, 19379, -2078, "vcs2samp/LODnla4702.dff", "vcs2samp/LODnla4702.txd");
AddSimpleModel(-1, 19379, -2079, "vcs2samp/LODnla4707.dff", "vcs2samp/LODnla4707.txd");
AddSimpleModel(-1, 19379, -2080, "vcs2samp/LODnla4708.dff", "vcs2samp/LODnla4708.txd");
AddSimpleModel(-1, 19379, -2081, "vcs2samp/LODnla4709.dff", "vcs2samp/LODnla4709.txd");
AddSimpleModel(-1, 19379, -2082, "vcs2samp/LODnla4710.dff", "vcs2samp/LODnla4710.txd");
AddSimpleModel(-1, 19379, -2083, "vcs2samp/mainla4715.dff", "vcs2samp/mainla4715.txd");
AddSimpleModel(-1, 19379, -2084, "vcs2samp/LODnla4716.dff", "vcs2samp/LODnla4716.txd");
AddSimpleModel(-1, 19379, -2085, "vcs2samp/LODnla4719.dff", "vcs2samp/LODnla4719.txd");
AddSimpleModel(-1, 19379, -2086, "vcs2samp/LODnla4721.dff", "vcs2samp/LODnla4721.txd");
AddSimpleModel(-1, 19379, -2087, "vcs2samp/LODnla4726.dff", "vcs2samp/LODnla4726.txd");
AddSimpleModel(-1, 19379, -2088, "vcs2samp/LODnla4727.dff", "vcs2samp/LODnla4727.txd");
AddSimpleModel(-1, 19379, -2089, "vcs2samp/LODnla4728.dff", "vcs2samp/LODnla4728.txd");
AddSimpleModel(-1, 19379, -2090, "vcs2samp/LODnla4729.dff", "vcs2samp/LODnla4729.txd");
AddSimpleModel(-1, 19379, -2091, "vcs2samp/LODnla4730.dff", "vcs2samp/LODnla4730.txd");
AddSimpleModel(-1, 19379, -2092, "vcs2samp/LODnla4731.dff", "vcs2samp/LODnla4731.txd");
AddSimpleModel(-1, 19379, -2093, "vcs2samp/LODnla4733.dff", "vcs2samp/LODnla4733.txd");
AddSimpleModel(-1, 19379, -2094, "vcs2samp/LODnla4732.dff", "vcs2samp/LODnla4732.txd");
AddSimpleModel(-1, 19379, -2095, "vcs2samp/LODnla4736.dff", "vcs2samp/LODnla4736.txd");
AddSimpleModel(-1, 19379, -2096, "vcs2samp/LODnla4741.dff", "vcs2samp/LODnla4741.txd");
AddSimpleModel(-1, 19379, -2097, "vcs2samp/LODnla4742.dff", "vcs2samp/LODnla4742.txd");
AddSimpleModel(-1, 19379, -2098, "vcs2samp/LODnla4743.dff", "vcs2samp/LODnla4743.txd");
AddSimpleModel(-1, 19379, -2099, "vcs2samp/LODnla4745.dff", "vcs2samp/LODnla4745.txd");
AddSimpleModel(-1, 19379, -2100, "vcs2samp/LODnla4747.dff", "vcs2samp/LODnla4747.txd");
AddSimpleModel(-1, 19379, -2101, "vcs2samp/LODnla4748.dff", "vcs2samp/LODnla4748.txd");
AddSimpleModel(-1, 19379, -2102, "vcs2samp/LODnla4750.dff", "vcs2samp/LODnla4750.txd");
AddSimpleModel(-1, 19379, -2103, "vcs2samp/LODnla4751.dff", "vcs2samp/LODnla4751.txd");
AddSimpleModel(-1, 19379, -2104, "vcs2samp/LODnla4752.dff", "vcs2samp/LODnla4752.txd");
AddSimpleModel(-1, 19379, -2105, "vcs2samp/LODnla4753.dff", "vcs2samp/LODnla4753.txd");
AddSimpleModel(-1, 19379, -2106, "vcs2samp/LODnla4755.dff", "vcs2samp/LODnla4755.txd");
AddSimpleModel(-1, 19379, -2107, "vcs2samp/LODnla4756.dff", "vcs2samp/LODnla4756.txd");
AddSimpleModel(-1, 19379, -2108, "vcs2samp/LODnla4758.dff", "vcs2samp/LODnla4758.txd");
AddSimpleModel(-1, 19379, -2109, "vcs2samp/LODnla4760.dff", "vcs2samp/LODnla4760.txd");
AddSimpleModel(-1, 19379, -2110, "vcs2samp/LODnla4761.dff", "vcs2samp/LODnla4761.txd");
AddSimpleModel(-1, 19379, -2111, "vcs2samp/LODnla4762.dff", "vcs2samp/LODnla4762.txd");
AddSimpleModel(-1, 19379, -2112, "vcs2samp/veg_palm02.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -2113, "vcs2samp/LODnla4768.dff", "vcs2samp/LODnla4768.txd");
AddSimpleModel(-1, 19379, -2114, "vcs2samp/mainla4769.dff", "vcs2samp/mainla4769.txd");
AddSimpleModel(-1, 19379, -2115, "vcs2samp/mainla4772.dff", "vcs2samp/mainla4772.txd");
AddSimpleModel(-1, 19379, -2116, "vcs2samp/LODnla4773.dff", "vcs2samp/LODnla4773.txd");
AddSimpleModel(-1, 19379, -2117, "vcs2samp/LODnla4774.dff", "vcs2samp/LODnla4774.txd");
AddSimpleModel(-1, 19379, -2118, "vcs2samp/LODnla4776.dff", "vcs2samp/LODnla4776.txd");
AddSimpleModel(-1, 19379, -2119, "vcs2samp/LODnla4777.dff", "vcs2samp/LODnla4777.txd");
AddSimpleModel(-1, 19379, -2120, "vcs2samp/LODnla4779.dff", "vcs2samp/LODnla4779.txd");
AddSimpleModel(-1, 19379, -2121, "vcs2samp/LODnla4780.dff", "vcs2samp/LODnla4780.txd");
AddSimpleModel(-1, 19379, -2122, "vcs2samp/LODnla4782.dff", "vcs2samp/LODnla4782.txd");
AddSimpleModel(-1, 19379, -2123, "vcs2samp/LODnla4783.dff", "vcs2samp/LODnla4783.txd");
AddSimpleModel(-1, 19379, -2124, "vcs2samp/LODnla4784.dff", "vcs2samp/LODnla4784.txd");
AddSimpleModel(-1, 19379, -2125, "vcs2samp/LODnla4786.dff", "vcs2samp/LODnla4786.txd");
AddSimpleModel(-1, 19379, -2126, "vcs2samp/LODnla4787.dff", "vcs2samp/LODnla4787.txd");
AddSimpleModel(-1, 19379, -2127, "vcs2samp/LODnla4796.dff", "vcs2samp/LODnla4796.txd");
AddSimpleModel(-1, 19379, -2128, "vcs2samp/LODnla4800.dff", "vcs2samp/LODnla4800.txd");
AddSimpleModel(-1, 19379, -2129, "vcs2samp/LODnla4804.dff", "vcs2samp/LODnla4804.txd");
AddSimpleModel(-1, 19379, -2130, "vcs2samp/LODnla4805.dff", "vcs2samp/LODnla4805.txd");
AddSimpleModel(-1, 19379, -2131, "vcs2samp/LODnla4807.dff", "vcs2samp/LODnla4807.txd");
AddSimpleModel(-1, 19379, -2132, "vcs2samp/LODnla4811.dff", "vcs2samp/LODnla4811.txd");
AddSimpleModel(-1, 19379, -2133, "vcs2samp/LODnla4814.dff", "vcs2samp/LODnla4814.txd");
AddSimpleModel(-1, 19379, -2134, "vcs2samp/LODnla4816.dff", "vcs2samp/LODnla4816.txd");
AddSimpleModel(-1, 19379, -2135, "vcs2samp/LODnla4817.dff", "vcs2samp/LODnla4817.txd");
AddSimpleModel(-1, 19379, -2136, "vcs2samp/LODnla4818.dff", "vcs2samp/LODnla4818.txd");
AddSimpleModel(-1, 19379, -2137, "vcs2samp/mainla4820.dff", "vcs2samp/mainla4820.txd");
AddSimpleModel(-1, 19379, -2138, "vcs2samp/LODnla4826.dff", "vcs2samp/LODnla4826.txd");
AddSimpleModel(-1, 19379, -2139, "vcs2samp/LODnla4830.dff", "vcs2samp/LODnla4830.txd");
AddSimpleModel(-1, 19379, -2140, "vcs2samp/LODnla4833.dff", "vcs2samp/LODnla4833.txd");
AddSimpleModel(-1, 19379, -2141, "vcs2samp/LODnla4835.dff", "vcs2samp/LODnla4835.txd");
AddSimpleModel(-1, 19379, -2142, "vcs2samp/LODnla4837.dff", "vcs2samp/LODnla4837.txd");
AddSimpleModel(-1, 19379, -2143, "vcs2samp/LODnla4842.dff", "vcs2samp/LODnla4842.txd");
AddSimpleModel(-1, 19379, -2144, "vcs2samp/LODnla4845.dff", "vcs2samp/LODnla4845.txd");
AddSimpleModel(-1, 19379, -2145, "vcs2samp/LODnla4852.dff", "vcs2samp/LODnla4852.txd");
AddSimpleModel(-1, 19379, -2146, "vcs2samp/LODnla4853.dff", "vcs2samp/LODnla4853.txd");
AddSimpleModel(-1, 19379, -2147, "vcs2samp/LODnla4856.dff", "vcs2samp/LODnla4856.txd");
AddSimpleModel(-1, 19379, -2148, "vcs2samp/LODnla4859.dff", "vcs2samp/LODnla4859.txd");
AddSimpleModel(-1, 19379, -2149, "vcs2samp/LODnla4865.dff", "vcs2samp/LODnla4865.txd");
AddSimpleModel(-1, 19379, -2150, "vcs2samp/LODnla4875.dff", "vcs2samp/LODnla4875.txd");
AddSimpleModel(-1, 19379, -2151, "vcs2samp/LODnla4878.dff", "vcs2samp/LODnla4878.txd");
AddSimpleModel(-1, 19379, -2152, "vcs2samp/LODnla4884.dff", "vcs2samp/LODnla4884.txd");
AddSimpleModel(-1, 19379, -2153, "vcs2samp/LODnla4885.dff", "vcs2samp/LODnla4885.txd");
AddSimpleModel(-1, 19379, -2154, "vcs2samp/LODnla4888.dff", "vcs2samp/LODnla4888.txd");
AddSimpleModel(-1, 19379, -2155, "vcs2samp/LODnla4889.dff", "vcs2samp/LODnla4889.txd");
AddSimpleModel(-1, 19379, -2156, "vcs2samp/LODnla4890.dff", "vcs2samp/LODnla4890.txd");
AddSimpleModel(-1, 19379, -2157, "vcs2samp/LODnla4894.dff", "vcs2samp/LODnla4894.txd");
AddSimpleModel(-1, 19379, -2158, "vcs2samp/LODnla4898.dff", "vcs2samp/LODnla4898.txd");
AddSimpleModel(-1, 19379, -2159, "vcs2samp/LODnla4900.dff", "vcs2samp/LODnla4900.txd");
AddSimpleModel(-1, 19379, -2160, "vcs2samp/LODnla4901.dff", "vcs2samp/LODnla4901.txd");
AddSimpleModel(-1, 19379, -2161, "vcs2samp/LODnla4903.dff", "vcs2samp/LODnla4903.txd");
AddSimpleModel(-1, 19379, -2162, "vcs2samp/LODnla4904.dff", "vcs2samp/LODnla4904.txd");
AddSimpleModel(-1, 19379, -2163, "vcs2samp/LODnla4908.dff", "vcs2samp/LODnla4908.txd");
AddSimpleModel(-1, 19379, -2164, "vcs2samp/LODnla4919.dff", "vcs2samp/LODnla4919.txd");
AddSimpleModel(-1, 19379, -2165, "vcs2samp/LODnla4922.dff", "vcs2samp/LODnla4922.txd");
AddSimpleModel(-1, 19379, -2166, "vcs2samp/LODnla4926.dff", "vcs2samp/LODnla4926.txd");
AddSimpleModel(-1, 19379, -2167, "vcs2samp/LODnla4929.dff", "vcs2samp/LODnla4929.txd");
AddSimpleModel(-1, 19379, -2168, "vcs2samp/LODnla4937.dff", "vcs2samp/LODnla4937.txd");
AddSimpleModel(-1, 19379, -2169, "vcs2samp/LODnla4939.dff", "vcs2samp/LODnla4939.txd");
AddSimpleModel(-1, 19379, -2170, "vcs2samp/LODnla4940.dff", "vcs2samp/LODnla4940.txd");
AddSimpleModel(-1, 19379, -2171, "vcs2samp/mainla4944.dff", "vcs2samp/mainla4944.txd");
AddSimpleModel(-1, 19379, -2172, "vcs2samp/LODnla4945.dff", "vcs2samp/LODnla4945.txd");
AddSimpleModel(-1, 19379, -2173, "vcs2samp/LODnla4948.dff", "vcs2samp/LODnla4948.txd");
AddSimpleModel(-1, 19379, -2174, "vcs2samp/LODnla4955.dff", "vcs2samp/LODnla4955.txd");
AddSimpleModel(-1, 19379, -2175, "vcs2samp/mainla4957.dff", "vcs2samp/mainla4957.txd");
AddSimpleModel(-1, 19379, -2176, "vcs2samp/mainla4958.dff", "vcs2samp/mainla4958.txd");
AddSimpleModel(-1, 19379, -2177, "vcs2samp/mainla4959.dff", "vcs2samp/mainla4959.txd");
AddSimpleModel(-1, 19379, -2178, "vcs2samp/mainla4960.dff", "vcs2samp/mainla4960.txd");
AddSimpleModel(-1, 19379, -2179, "vcs2samp/LODnla4961.dff", "vcs2samp/LODnla4961.txd");
AddSimpleModel(-1, 19379, -2180, "vcs2samp/LODnla4962.dff", "vcs2samp/LODnla4962.txd");
AddSimpleModel(-1, 19379, -2181, "vcs2samp/LODnla4966.dff", "vcs2samp/LODnla4966.txd");
AddSimpleModel(-1, 19379, -2182, "vcs2samp/LODnla4968.dff", "vcs2samp/LODnla4968.txd");
AddSimpleModel(-1, 19379, -2183, "vcs2samp/LODnla4973.dff", "vcs2samp/LODnla4973.txd");
AddSimpleModel(-1, 19379, -2184, "vcs2samp/LODnla4975.dff", "vcs2samp/LODnla4975.txd");
AddSimpleModel(-1, 19379, -2185, "vcs2samp/LODnla4976.dff", "vcs2samp/LODnla4976.txd");
AddSimpleModel(-1, 19379, -2186, "vcs2samp/LODnla4991.dff", "vcs2samp/LODnla4991.txd");
AddSimpleModel(-1, 19379, -2187, "vcs2samp/LODnla4999.dff", "vcs2samp/LODnla4999.txd");
AddSimpleModel(-1, 19379, -2188, "vcs2samp/LODnla5008.dff", "vcs2samp/LODnla5008.txd");
AddSimpleModel(-1, 19379, -2189, "vcs2samp/LODnla5010.dff", "vcs2samp/LODnla5010.txd");
AddSimpleModel(-1, 19379, -2190, "vcs2samp/LODnla5049.dff", "vcs2samp/LODnla5049.txd");
AddSimpleModel(-1, 19379, -2191, "vcs2samp/LODnla5059.dff", "vcs2samp/LODnla5059.txd");
AddSimpleModel(-1, 19379, -2192, "vcs2samp/LODnla5060.dff", "vcs2samp/LODnla5060.txd");
AddSimpleModel(-1, 19379, -2193, "vcs2samp/LODnla5061.dff", "vcs2samp/LODnla5061.txd");
AddSimpleModel(-1, 19379, -2194, "vcs2samp/LODnla5062.dff", "vcs2samp/LODnla5062.txd");
AddSimpleModel(-1, 19379, -2195, "vcs2samp/LODnla5073.dff", "vcs2samp/LODnla5073.txd");
AddSimpleModel(-1, 19379, -2196, "vcs2samp/LODnla5074.dff", "vcs2samp/LODnla5074.txd");
AddSimpleModel(-1, 19379, -2197, "vcs2samp/mainla5075.dff", "vcs2samp/mainla5075.txd");
AddSimpleModel(-1, 19379, -2198, "vcs2samp/LODnla5083.dff", "vcs2samp/LODnla5083.txd");
AddSimpleModel(-1, 19379, -2199, "vcs2samp/mainla5096.dff", "vcs2samp/mainla5096.txd");
AddSimpleModel(-1, 19379, -2200, "vcs2samp/mainla5097.dff", "vcs2samp/mainla5097.txd");
AddSimpleModel(-1, 19379, -2201, "vcs2samp/mainla5098.dff", "vcs2samp/mainla5098.txd");
AddSimpleModel(-1, 19379, -2202, "vcs2samp/mainla5099.dff", "vcs2samp/mainla5099.txd");
AddSimpleModel(-1, 19379, -2203, "vcs2samp/mainla5100.dff", "vcs2samp/mainla5100.txd");
AddSimpleModel(-1, 19379, -2204, "vcs2samp/mainla5102.dff", "vcs2samp/mainla5102.txd");
AddSimpleModel(-1, 19379, -2205, "vcs2samp/mainla5104.dff", "vcs2samp/mainla5104.txd");
AddSimpleModel(-1, 19379, -2206, "vcs2samp/LODnla5106.dff", "vcs2samp/LODnla5106.txd");
AddSimpleModel(-1, 19379, -2207, "vcs2samp/LODnla5110.dff", "vcs2samp/LODnla5110.txd");
AddSimpleModel(-1, 19379, -2208, "vcs2samp/LODnla5116.dff", "vcs2samp/LODnla5116.txd");
AddSimpleModel(-1, 19379, -2209, "vcs2samp/LODnla5117.dff", "vcs2samp/LODnla5117.txd");
AddSimpleModel(-1, 19379, -2210, "vcs2samp/LODnla5118.dff", "vcs2samp/LODnla5118.txd");
AddSimpleModel(-1, 19379, -2211, "vcs2samp/LODnla5128.dff", "vcs2samp/LODnla5128.txd");
AddSimpleModel(-1, 19379, -2212, "vcs2samp/LODnla5131.dff", "vcs2samp/LODnla5131.txd");
AddSimpleModel(-1, 19379, -2213, "vcs2samp/LODnla5132.dff", "vcs2samp/LODnla5132.txd");
AddSimpleModel(-1, 19379, -2214, "vcs2samp/LODnla5137.dff", "vcs2samp/LODnla5137.txd");
AddSimpleModel(-1, 19379, -2215, "vcs2samp/LODnla5143.dff", "vcs2samp/LODnla5143.txd");
AddSimpleModel(-1, 19379, -2216, "vcs2samp/LODnla5146.dff", "vcs2samp/LODnla5146.txd");
AddSimpleModel(-1, 19379, -2217, "vcs2samp/LODnla5149.dff", "vcs2samp/LODnla5149.txd");
AddSimpleModel(-1, 19379, -2218, "vcs2samp/LODnla5153.dff", "vcs2samp/LODnla5153.txd");
AddSimpleModel(-1, 19379, -2219, "vcs2samp/LODnla5155.dff", "vcs2samp/LODnla5155.txd");
AddSimpleModel(-1, 19379, -2220, "vcs2samp/LODnla5163.dff", "vcs2samp/LODnla5163.txd");
AddSimpleModel(-1, 19379, -2221, "vcs2samp/LODnla5171.dff", "vcs2samp/LODnla5171.txd");
AddSimpleModel(-1, 19379, -2222, "vcs2samp/LODnla5173.dff", "vcs2samp/LODnla5173.txd");
AddSimpleModel(-1, 19379, -2223, "vcs2samp/LODnla5177.dff", "vcs2samp/LODnla5177.txd");
AddSimpleModel(-1, 19379, -2224, "vcs2samp/LODnla5179.dff", "vcs2samp/LODnla5179.txd");
AddSimpleModel(-1, 19379, -2225, "vcs2samp/LODnla5194.dff", "vcs2samp/LODnla5194.txd");
AddSimpleModel(-1, 19379, -2226, "vcs2samp/LODnla5197.dff", "vcs2samp/LODnla5197.txd");
AddSimpleModel(-1, 19379, -2227, "vcs2samp/LODnla5200.dff", "vcs2samp/LODnla5200.txd");
AddSimpleModel(-1, 19379, -2228, "vcs2samp/LODnla5202.dff", "vcs2samp/LODnla5202.txd");
AddSimpleModel(-1, 19379, -2229, "vcs2samp/LODnla5211.dff", "vcs2samp/LODnla5211.txd");
AddSimpleModel(-1, 19379, -2230, "vcs2samp/LODnla5213.dff", "vcs2samp/LODnla5213.txd");
AddSimpleModel(-1, 19379, -2231, "vcs2samp/LODnla5216.dff", "vcs2samp/LODnla5216.txd");
AddSimpleModel(-1, 19379, -2232, "vcs2samp/LODnla5219.dff", "vcs2samp/LODnla5219.txd");
AddSimpleModel(-1, 19379, -2233, "vcs2samp/LODnla5227.dff", "vcs2samp/LODnla5227.txd");
AddSimpleModel(-1, 19379, -2234, "vcs2samp/LODnla5230.dff", "vcs2samp/LODnla5230.txd");
AddSimpleModel(-1, 19379, -2235, "vcs2samp/LODnla5234.dff", "vcs2samp/LODnla5234.txd");
AddSimpleModel(-1, 19379, -2236, "vcs2samp/LODnla5237.dff", "vcs2samp/LODnla5237.txd");
AddSimpleModel(-1, 19379, -2237, "vcs2samp/LODnla5238.dff", "vcs2samp/LODnla5238.txd");
AddSimpleModel(-1, 19379, -2238, "vcs2samp/LODnla5242.dff", "vcs2samp/LODnla5242.txd");
AddSimpleModel(-1, 19379, -2239, "vcs2samp/LODnla5245.dff", "vcs2samp/LODnla5245.txd");
AddSimpleModel(-1, 19379, -2240, "vcs2samp/LODnla5250.dff", "vcs2samp/LODnla5250.txd");
AddSimpleModel(-1, 19379, -2241, "vcs2samp/LODnla5255.dff", "vcs2samp/LODnla5255.txd");
AddSimpleModel(-1, 19379, -2242, "vcs2samp/LODnla5261.dff", "vcs2samp/LODnla5261.txd");
AddSimpleModel(-1, 19379, -2243, "vcs2samp/LODnla5266.dff", "vcs2samp/LODnla5266.txd");
AddSimpleModel(-1, 19379, -2244, "vcs2samp/LODnla5274.dff", "vcs2samp/LODnla5274.txd");
AddSimpleModel(-1, 19379, -2245, "vcs2samp/LODnla5277.dff", "vcs2samp/LODnla5277.txd");
AddSimpleModel(-1, 19379, -2246, "vcs2samp/LODnla5278.dff", "vcs2samp/LODnla5278.txd");
AddSimpleModel(-1, 19379, -2247, "vcs2samp/LODnla5279.dff", "vcs2samp/LODnla5279.txd");
AddSimpleModel(-1, 19379, -2248, "vcs2samp/LODnla5283.dff", "vcs2samp/LODnla5283.txd");
AddSimpleModel(-1, 19379, -2249, "vcs2samp/LODnla5299.dff", "vcs2samp/LODnla5299.txd");
AddSimpleModel(-1, 19379, -2250, "vcs2samp/mainla5300.dff", "vcs2samp/mainla5300.txd");
AddSimpleModel(-1, 19379, -2251, "vcs2samp/LODnla5301.dff", "vcs2samp/LODnla5301.txd");
AddSimpleModel(-1, 19379, -2252, "vcs2samp/LODnla5302.dff", "vcs2samp/LODnla5302.txd");
AddSimpleModel(-1, 19379, -2253, "vcs2samp/LODnla5303.dff", "vcs2samp/LODnla5303.txd");
AddSimpleModel(-1, 19379, -2254, "vcs2samp/LODnla5304.dff", "vcs2samp/LODnla5304.txd");
AddSimpleModel(-1, 19379, -2255, "vcs2samp/LODnla5305.dff", "vcs2samp/LODnla5305.txd");
AddSimpleModel(-1, 19379, -2256, "vcs2samp/LODnla5306.dff", "vcs2samp/LODnla5306.txd");
AddSimpleModel(-1, 19379, -2257, "vcs2samp/LODnla5307.dff", "vcs2samp/LODnla5307.txd");
AddSimpleModel(-1, 19379, -2258, "vcs2samp/LODnla5309.dff", "vcs2samp/LODnla5309.txd");
AddSimpleModel(-1, 19379, -2259, "vcs2samp/LODnla5311.dff", "vcs2samp/LODnla5311.txd");
AddSimpleModel(-1, 19379, -2260, "vcs2samp/LODnla5313.dff", "vcs2samp/LODnla5313.txd");
AddSimpleModel(-1, 19379, -2261, "vcs2samp/LODnla5315.dff", "vcs2samp/LODnla5315.txd");
AddSimpleModel(-1, 19379, -2262, "vcs2samp/LODnla5317.dff", "vcs2samp/LODnla5317.txd");
AddSimpleModel(-1, 19379, -2263, "vcs2samp/LODnla5318.dff", "vcs2samp/LODnla5318.txd");
AddSimpleModel(-1, 19379, -2264, "vcs2samp/LODnla5320.dff", "vcs2samp/LODnla5320.txd");
AddSimpleModel(-1, 19379, -2265, "vcs2samp/LODnla5321.dff", "vcs2samp/LODnla5321.txd");
AddSimpleModel(-1, 19379, -2266, "vcs2samp/LODnla5323.dff", "vcs2samp/LODnla5323.txd");
AddSimpleModel(-1, 19379, -2267, "vcs2samp/LODnla5326.dff", "vcs2samp/LODnla5326.txd");
AddSimpleModel(-1, 19379, -2268, "vcs2samp/mainla5330.dff", "vcs2samp/mainla5330.txd");
AddSimpleModel(-1, 19379, -2269, "vcs2samp/mainla5331.dff", "vcs2samp/mainla5331.txd");
AddSimpleModel(-1, 19379, -2270, "vcs2samp/mainla5333.dff", "vcs2samp/mainla5333.txd");
AddSimpleModel(-1, 19379, -2271, "vcs2samp/LODnla5334.dff", "vcs2samp/LODnla5334.txd");
AddSimpleModel(-1, 19379, -2272, "vcs2samp/LODnla5344.dff", "vcs2samp/LODnla5344.txd");
AddSimpleModel(-1, 19379, -2273, "vcs2samp/LODnla5345.dff", "vcs2samp/LODnla5345.txd");
AddSimpleModel(-1, 19379, -2274, "vcs2samp/LODnla5347.dff", "vcs2samp/LODnla5347.txd");
AddSimpleModel(-1, 19379, -2275, "vcs2samp/LODnla5350.dff", "vcs2samp/LODnla5350.txd");
AddSimpleModel(-1, 19379, -2276, "vcs2samp/LODnla5357.dff", "vcs2samp/LODnla5357.txd");
AddSimpleModel(-1, 19379, -2277, "vcs2samp/LODnla5358.dff", "vcs2samp/LODnla5358.txd");
AddSimpleModel(-1, 19379, -2278, "vcs2samp/LODnla5361.dff", "vcs2samp/LODnla5361.txd");
AddSimpleModel(-1, 19379, -2279, "vcs2samp/LODnla5365.dff", "vcs2samp/LODnla5365.txd");
AddSimpleModel(-1, 19379, -2280, "vcs2samp/LODnla5366.dff", "vcs2samp/LODnla5366.txd");
AddSimpleModel(-1, 19379, -2281, "vcs2samp/LODnla5372.dff", "vcs2samp/LODnla5372.txd");
AddSimpleModel(-1, 19379, -2282, "vcs2samp/LODnla5378.dff", "vcs2samp/LODnla5378.txd");
AddSimpleModel(-1, 19379, -2283, "vcs2samp/LODnla5386.dff", "vcs2samp/LODnla5386.txd");
AddSimpleModel(-1, 19379, -2284, "vcs2samp/LODnla5389.dff", "vcs2samp/LODnla5389.txd");
AddSimpleModel(-1, 19379, -2285, "vcs2samp/LODnla5393.dff", "vcs2samp/LODnla5393.txd");
AddSimpleModel(-1, 19379, -2286, "vcs2samp/LODnla5394.dff", "vcs2samp/mainla5394.txd");
AddSimpleModel(-1, 19379, -2287, "vcs2samp/LODnla5395.dff", "vcs2samp/LODnla5395.txd");
AddSimpleModel(-1, 19379, -2288, "vcs2samp/LODnla5396.dff", "vcs2samp/LODnla5396.txd");
AddSimpleModel(-1, 19379, -2289, "vcs2samp/LODnla5400.dff", "vcs2samp/LODnla5400.txd");
AddSimpleModel(-1, 19379, -2290, "vcs2samp/LODnla5402.dff", "vcs2samp/LODnla5402.txd");
AddSimpleModel(-1, 19379, -2291, "vcs2samp/LODnla5404.dff", "vcs2samp/LODnla5404.txd");
AddSimpleModel(-1, 19379, -2292, "vcs2samp/LODnla5405.dff", "vcs2samp/LODnla5405.txd");
AddSimpleModel(-1, 19379, -2293, "vcs2samp/LODnla5409.dff", "vcs2samp/LODnla5409.txd");
AddSimpleModel(-1, 19379, -2294, "vcs2samp/LODnla5410.dff", "vcs2samp/LODnla5410.txd");
AddSimpleModel(-1, 19379, -2295, "vcs2samp/LODnla5413.dff", "vcs2samp/LODnla5413.txd");
AddSimpleModel(-1, 19379, -2296, "vcs2samp/LODnla5414.dff", "vcs2samp/LODnla5414.txd");
AddSimpleModel(-1, 19379, -2297, "vcs2samp/LODnla5420.dff", "vcs2samp/LODnla5420.txd");
AddSimpleModel(-1, 19379, -2298, "vcs2samp/LODnla5426.dff", "vcs2samp/LODnla5426.txd");
AddSimpleModel(-1, 19379, -2299, "vcs2samp/LODnla5427.dff", "vcs2samp/LODnla5427.txd");
AddSimpleModel(-1, 19379, -2300, "vcs2samp/LODnla5431.dff", "vcs2samp/LODnla5431.txd");
AddSimpleModel(-1, 19379, -2301, "vcs2samp/mainla5436.dff", "vcs2samp/mainla5436.txd");
AddSimpleModel(-1, 19379, -2302, "vcs2samp/mainla5451.dff", "vcs2samp/mainla5451.txd");
AddSimpleModel(-1, 19379, -2303, "vcs2samp/mainla5461.dff", "vcs2samp/mainla5461.txd");
AddSimpleModel(-1, 19379, -2304, "vcs2samp/mainla5480.dff", "vcs2samp/mainla5480.txd");
AddSimpleModel(-1, 19379, -2305, "vcs2samp/mainla5498.dff", "vcs2samp/mainla5498.txd");
AddSimpleModel(-1, 19379, -2306, "vcs2samp/mainla5514.dff", "vcs2samp/mainla5514.txd");
AddSimpleModel(-1, 19379, -2307, "vcs2samp/mainla5569.dff", "vcs2samp/mainla5569.txd");
AddSimpleModel(-1, 19379, -2308, "vcs2samp/mainla5592.dff", "vcs2samp/mainla5592.txd");
AddSimpleModel(-1, 19379, -2309, "vcs2samp/mainla5632.dff", "vcs2samp/mainla5632.txd");
AddSimpleModel(-1, 19379, -2310, "vcs2samp/mainla5645.dff", "vcs2samp/mainla5645.txd");
AddSimpleModel(-1, 19379, -2311, "vcs2samp/mainla5652.dff", "vcs2samp/mainla5652.txd");
AddSimpleModel(-1, 19379, -2312, "vcs2samp/mainla5672.dff", "vcs2samp/mainla5672.txd");
AddSimpleModel(-1, 19379, -2313, "vcs2samp/mainla5696.dff", "vcs2samp/mainla5696.txd");
AddSimpleModel(-1, 19379, -2314, "vcs2samp/mainla5767.dff", "vcs2samp/mainla5767.txd");
AddSimpleModel(-1, 19379, -2315, "vcs2samp/mainla5781.dff", "vcs2samp/mainla5781.txd");
AddSimpleModel(-1, 19379, -2316, "vcs2samp/mainla5796.dff", "vcs2samp/mainla5796.txd");
AddSimpleModel(-1, 19379, -2317, "vcs2samp/mainla5825.dff", "vcs2samp/mainla5825.txd");
AddSimpleModel(-1, 19379, -2318, "vcs2samp/mainla5838.dff", "vcs2samp/mainla5838.txd");
AddSimpleModel(-1, 19379, -2319, "vcs2samp/mainla5886.dff", "vcs2samp/mainla5886.txd");
AddSimpleModel(-1, 19379, -2320, "vcs2samp/mainla5932.dff", "vcs2samp/mainla5932.txd");
AddSimpleModel(-1, 19379, -2321, "vcs2samp/beach3507.dff", "vcs2samp/beach3507.txd");
AddSimpleModel(-1, 19379, -2322, "vcs2samp/beach176.dff", "vcs2samp/beach176.txd");
AddSimpleModel(-1, 19379, -2323, "vcs2samp/beach182.dff", "vcs2samp/beach182.txd");
AddSimpleModel(-1, 19379, -2324, "vcs2samp/beach192.dff", "vcs2samp/beach192.txd");
AddSimpleModel(-1, 19379, -2325, "vcs2samp/beach195.dff", "vcs2samp/beach195.txd");
AddSimpleModel(-1, 19379, -2326, "vcs2samp/beach341.dff", "vcs2samp/beach341.txd");
AddSimpleModel(-1, 19379, -2327, "vcs2samp/beach354.dff", "vcs2samp/beach354.txd");
AddSimpleModel(-1, 19379, -2328, "vcs2samp/beach372.dff", "vcs2samp/beach372.txd");
AddSimpleModel(-1, 19379, -2329, "vcs2samp/beach375.dff", "vcs2samp/beach375.txd");
AddSimpleModel(-1, 19379, -2330, "vcs2samp/beach376.dff", "vcs2samp/beach376.txd");
AddSimpleModel(-1, 19379, -2331, "vcs2samp/beach424.dff", "vcs2samp/beach424.txd");
AddSimpleModel(-1, 19379, -2332, "vcs2samp/beach325.dff", "vcs2samp/beach325.txd");
AddSimpleModel(-1, 19379, -2333, "vcs2samp/beach491.dff", "vcs2samp/beach491.txd");
AddSimpleModel(-1, 19379, -2334, "vcs2samp/beach499.dff", "vcs2samp/beach499.txd");
AddSimpleModel(-1, 19379, -2335, "vcs2samp/beach500.dff", "vcs2samp/beach500.txd");
AddSimpleModel(-1, 19379, -2336, "vcs2samp/beach497.dff", "vcs2samp/beach497.txd");
AddSimpleModel(-1, 19379, -2337, "vcs2samp/beach546.dff", "vcs2samp/beach546.txd");
AddSimpleModel(-1, 19379, -2338, "vcs2samp/beach554.dff", "vcs2samp/beach554.txd");
AddSimpleModel(-1, 19379, -2339, "vcs2samp/beach759.dff", "vcs2samp/beach759.txd");
AddSimpleModel(-1, 19379, -2340, "vcs2samp/beach774.dff", "vcs2samp/beach774.txd");
AddSimpleModel(-1, 19379, -2341, "vcs2samp/beach933.dff", "vcs2samp/beach933.txd");
AddSimpleModel(-1, 19379, -2342, "vcs2samp/beach938.dff", "vcs2samp/beach938.txd");
AddSimpleModel(-1, 19379, -2343, "vcs2samp/beach940.dff", "vcs2samp/beach940.txd");
AddSimpleModel(-1, 19379, -2344, "vcs2samp/beach941.dff", "vcs2samp/beach941.txd");
AddSimpleModel(-1, 19379, -2345, "vcs2samp/beach942.dff", "vcs2samp/beach942.txd");
AddSimpleModel(-1, 19379, -2346, "vcs2samp/beach962.dff", "vcs2samp/beach962.txd");
AddSimpleModel(-1, 19379, -2347, "vcs2samp/beach963.dff", "vcs2samp/beach963.txd");
AddSimpleModel(-1, 19379, -2348, "vcs2samp/beach967.dff", "vcs2samp/beach967.txd");
AddSimpleModel(-1, 19379, -2349, "vcs2samp/beach968.dff", "vcs2samp/beach968.txd");
AddSimpleModel(-1, 19379, -2350, "vcs2samp/beach969.dff", "vcs2samp/beach969.txd");
AddSimpleModel(-1, 19379, -2351, "vcs2samp/beach970.dff", "vcs2samp/beach970.txd");
AddSimpleModel(-1, 19379, -2352, "vcs2samp/beach994.dff", "vcs2samp/beach994.txd");
AddSimpleModel(-1, 19379, -2353, "vcs2samp/beach1095.dff", "vcs2samp/beach1095.txd");
AddSimpleModel(-1, 19379, -2354, "vcs2samp/beach1101.dff", "vcs2samp/beach1101.txd");
AddSimpleModel(-1, 19379, -2355, "vcs2samp/beach1105.dff", "vcs2samp/beach1105.txd");
AddSimpleModel(-1, 19379, -2356, "vcs2samp/beach1112.dff", "vcs2samp/beach1112.txd");
AddSimpleModel(-1, 19379, -2357, "vcs2samp/beach1119.dff", "vcs2samp/beach1119.txd");
AddSimpleModel(-1, 19379, -2358, "vcs2samp/beach1124.dff", "vcs2samp/beach1124.txd");
AddSimpleModel(-1, 19379, -2359, "vcs2samp/beach1137.dff", "vcs2samp/beach1137.txd");
AddSimpleModel(-1, 19379, -2360, "vcs2samp/beach1140.dff", "vcs2samp/beach1140.txd");
AddSimpleModel(-1, 19379, -2361, "vcs2samp/beach1148.dff", "vcs2samp/beach1148.txd");
AddSimpleModel(-1, 19379, -2362, "vcs2samp/beach1152.dff", "vcs2samp/beach1152.txd");
AddSimpleModel(-1, 19379, -2363, "vcs2samp/beach1156.dff", "vcs2samp/beach1156.txd");
AddSimpleModel(-1, 19379, -2364, "vcs2samp/beach1158.dff", "vcs2samp/beach1158.txd");
AddSimpleModel(-1, 19379, -2365, "vcs2samp/beach1161.dff", "vcs2samp/beach1161.txd");
AddSimpleModel(-1, 19379, -2366, "vcs2samp/beach1163.dff", "vcs2samp/beach1163.txd");
AddSimpleModel(-1, 19379, -2367, "vcs2samp/beach1164.dff", "vcs2samp/beach1164.txd");
AddSimpleModel(-1, 19379, -2368, "vcs2samp/beach1165.dff", "vcs2samp/beach1165.txd");
AddSimpleModel(-1, 19379, -2369, "vcs2samp/beach1166.dff", "vcs2samp/beach1166.txd");
AddSimpleModel(-1, 19379, -2370, "vcs2samp/beach1167.dff", "vcs2samp/beach1167.txd");
AddSimpleModel(-1, 19379, -2371, "vcs2samp/beach1168.dff", "vcs2samp/beach1168.txd");
AddSimpleModel(-1, 19379, -2372, "vcs2samp/beach1170.dff", "vcs2samp/beach1170.txd");
AddSimpleModel(-1, 19379, -2373, "vcs2samp/beach1171.dff", "vcs2samp/beach1171.txd");
AddSimpleModel(-1, 19379, -2374, "vcs2samp/beach1172.dff", "vcs2samp/beach1172.txd");
AddSimpleModel(-1, 19379, -2375, "vcs2samp/beach1173.dff", "vcs2samp/beach1173.txd");
AddSimpleModel(-1, 19379, -2376, "vcs2samp/beach1175.dff", "vcs2samp/beach1175.txd");
AddSimpleModel(-1, 19379, -2377, "vcs2samp/beach1176.dff", "vcs2samp/beach1176.txd");
AddSimpleModel(-1, 19379, -2378, "vcs2samp/beach1179.dff", "vcs2samp/beach1179.txd");
AddSimpleModel(-1, 19379, -2379, "vcs2samp/beach1181.dff", "vcs2samp/beach1181.txd");
AddSimpleModel(-1, 19379, -2380, "vcs2samp/beach1182.dff", "vcs2samp/beach1182.txd");
AddSimpleModel(-1, 19379, -2381, "vcs2samp/beach1186.dff", "vcs2samp/beach1186.txd");
AddSimpleModel(-1, 19379, -2382, "vcs2samp/beach1189.dff", "vcs2samp/beach1189.txd");
AddSimpleModel(-1, 19379, -2383, "vcs2samp/beach1190.dff", "vcs2samp/beach1190.txd");
AddSimpleModel(-1, 19379, -2384, "vcs2samp/beach1191.dff", "vcs2samp/beach1191.txd");
AddSimpleModel(-1, 19379, -2385, "vcs2samp/beach1197.dff", "vcs2samp/beach1197.txd");
AddSimpleModel(-1, 19379, -2386, "vcs2samp/beach1200.dff", "vcs2samp/beach1200.txd");
AddSimpleModel(-1, 19379, -2387, "vcs2samp/beach1201.dff", "vcs2samp/beach1201.txd");
AddSimpleModel(-1, 19379, -2388, "vcs2samp/beach1204.dff", "vcs2samp/beach1204.txd");
AddSimpleModel(-1, 19379, -2389, "vcs2samp/beach1206.dff", "vcs2samp/beach1206.txd");
AddSimpleModel(-1, 19379, -2390, "vcs2samp/beach71.dff", "vcs2samp/beach71.txd");
AddSimpleModel(-1, 19379, -2391, "vcs2samp/beach1211.dff", "vcs2samp/beach1211.txd");
AddSimpleModel(-1, 19379, -2392, "vcs2samp/beach1229.dff", "vcs2samp/beach1229.txd");
AddSimpleModel(-1, 19379, -2393, "vcs2samp/beach1233.dff", "vcs2samp/beach1233.txd");
AddSimpleModel(-1, 19379, -2394, "vcs2samp/beach1234.dff", "vcs2samp/beach1234.txd");
AddSimpleModel(-1, 19379, -2395, "vcs2samp/beach1245.dff", "vcs2samp/beach1245.txd");
AddSimpleModel(-1, 19379, -2396, "vcs2samp/beach1254.dff", "vcs2samp/beach1254.txd");
AddSimpleModel(-1, 19379, -2397, "vcs2samp/beach1266.dff", "vcs2samp/beach1266.txd");
AddSimpleModel(-1, 19379, -2398, "vcs2samp/beach1282.dff", "vcs2samp/beach1282.txd");
AddSimpleModel(-1, 19379, -2399, "vcs2samp/beach1283.dff", "vcs2samp/beach1283.txd");
AddSimpleModel(-1, 19379, -2400, "vcs2samp/beach1285.dff", "vcs2samp/beach1285.txd");
AddSimpleModel(-1, 19379, -2401, "vcs2samp/beach1287.dff", "vcs2samp/beach1287.txd");
AddSimpleModel(-1, 19379, -2402, "vcs2samp/beach1289.dff", "vcs2samp/beach1289.txd");
AddSimpleModel(-1, 19379, -2403, "vcs2samp/beach1295.dff", "vcs2samp/beach1295.txd");
AddSimpleModel(-1, 19379, -2404, "vcs2samp/beach1296.dff", "vcs2samp/beach1296.txd");
AddSimpleModel(-1, 19379, -2405, "vcs2samp/beach1298.dff", "vcs2samp/beach1298.txd");
AddSimpleModel(-1, 19379, -2406, "vcs2samp/beach1305.dff", "vcs2samp/beach1305.txd");
AddSimpleModel(-1, 19379, -2407, "vcs2samp/beach1314.dff", "vcs2samp/beach1314.txd");
AddSimpleModel(-1, 19379, -2408, "vcs2samp/beach1319.dff", "vcs2samp/beach1319.txd");
AddSimpleModel(-1, 19379, -2409, "vcs2samp/beach1321.dff", "vcs2samp/beach1321.txd");
AddSimpleModel(-1, 19379, -2410, "vcs2samp/beach1325.dff", "vcs2samp/beach1325.txd");
AddSimpleModel(-1, 19379, -2411, "vcs2samp/beach862.dff", "vcs2samp/beach862.txd");
AddSimpleModel(-1, 19379, -2412, "vcs2samp/beach1327.dff", "vcs2samp/beach1327.txd");
AddSimpleModel(-1, 19379, -2413, "vcs2samp/beach1329.dff", "vcs2samp/beach1329.txd");
AddSimpleModel(-1, 19379, -2414, "vcs2samp/beach1330.dff", "vcs2samp/beach1330.txd");
AddSimpleModel(-1, 19379, -2415, "vcs2samp/beach1331.dff", "vcs2samp/beach1331.txd");
AddSimpleModel(-1, 19379, -2416, "vcs2samp/beach1332.dff", "vcs2samp/beach1332.txd");
AddSimpleModel(-1, 19379, -2417, "vcs2samp/beach1333.dff", "vcs2samp/beach1333.txd");
AddSimpleModel(-1, 19379, -2418, "vcs2samp/beach1341.dff", "vcs2samp/beach1341.txd");
AddSimpleModel(-1, 19379, -2419, "vcs2samp/beach1342.dff", "vcs2samp/beach1342.txd");
AddSimpleModel(-1, 19379, -2420, "vcs2samp/beach1344.dff", "vcs2samp/beach1344.txd");
AddSimpleModel(-1, 19379, -2421, "vcs2samp/beach1345.dff", "vcs2samp/beach1345.txd");
AddSimpleModel(-1, 19379, -2422, "vcs2samp/beach1346.dff", "vcs2samp/beach1346.txd");
AddSimpleModel(-1, 19379, -2423, "vcs2samp/beach1347.dff", "vcs2samp/beach1347.txd");
AddSimpleModel(-1, 19379, -2424, "vcs2samp/beach1348.dff", "vcs2samp/beach1348.txd");
AddSimpleModel(-1, 19379, -2425, "vcs2samp/beach1349.dff", "vcs2samp/beach1349.txd");
AddSimpleModel(-1, 19379, -2426, "vcs2samp/beach1350.dff", "vcs2samp/beach1350.txd");
AddSimpleModel(-1, 19379, -2427, "vcs2samp/beach1351.dff", "vcs2samp/beach1351.txd");
AddSimpleModel(-1, 19379, -2428, "vcs2samp/beach1353.dff", "vcs2samp/beach1353.txd");
AddSimpleModel(-1, 19379, -2429, "vcs2samp/beach1354.dff", "vcs2samp/beach1354.txd");
AddSimpleModel(-1, 19379, -2430, "vcs2samp/beach1355.dff", "vcs2samp/beach1355.txd");
AddSimpleModel(-1, 19379, -2431, "vcs2samp/beach1356.dff", "vcs2samp/beach1356.txd");
AddSimpleModel(-1, 19379, -2432, "vcs2samp/beach1357.dff", "vcs2samp/beach1357.txd");
AddSimpleModel(-1, 19379, -2433, "vcs2samp/beach1358.dff", "vcs2samp/beach1358.txd");
AddSimpleModel(-1, 19379, -2434, "vcs2samp/beach1359.dff", "vcs2samp/beach1359.txd");
AddSimpleModel(-1, 19379, -2435, "vcs2samp/beach1360.dff", "vcs2samp/beach1360.txd");
AddSimpleModel(-1, 19379, -2436, "vcs2samp/beach1361.dff", "vcs2samp/beach1361.txd");
AddSimpleModel(-1, 19379, -2437, "vcs2samp/beach1368.dff", "vcs2samp/beach1368.txd");
AddSimpleModel(-1, 19379, -2438, "vcs2samp/beach1369.dff", "vcs2samp/beach1369.txd");
AddSimpleModel(-1, 19379, -2439, "vcs2samp/beach1370.dff", "vcs2samp/beach1370.txd");
AddSimpleModel(-1, 19379, -2440, "vcs2samp/beach1371.dff", "vcs2samp/beach1371.txd");
AddSimpleModel(-1, 19379, -2441, "vcs2samp/beach1372.dff", "vcs2samp/beach1372.txd");
AddSimpleModel(-1, 19379, -2442, "vcs2samp/beach1373.dff", "vcs2samp/beach1373.txd");
AddSimpleModel(-1, 19379, -2443, "vcs2samp/beach1374.dff", "vcs2samp/beach1374.txd");
AddSimpleModel(-1, 19379, -2444, "vcs2samp/beach1375.dff", "vcs2samp/beach1375.txd");
AddSimpleModel(-1, 19379, -2445, "vcs2samp/beach1376.dff", "vcs2samp/beach1376.txd");
AddSimpleModel(-1, 19379, -2446, "vcs2samp/beach1377.dff", "vcs2samp/beach1377.txd");
AddSimpleModel(-1, 19379, -2447, "vcs2samp/beach1378.dff", "vcs2samp/beach1378.txd");
AddSimpleModel(-1, 19379, -2448, "vcs2samp/beach1379.dff", "vcs2samp/beach1379.txd");
AddSimpleModel(-1, 19379, -2449, "vcs2samp/beach1380.dff", "vcs2samp/beach1380.txd");
AddSimpleModel(-1, 19379, -2450, "vcs2samp/beach1381.dff", "vcs2samp/beach1381.txd");
AddSimpleModel(-1, 19379, -2451, "vcs2samp/beach1382.dff", "vcs2samp/beach1382.txd");
AddSimpleModel(-1, 19379, -2452, "vcs2samp/beach1383.dff", "vcs2samp/beach1383.txd");
AddSimpleModel(-1, 19379, -2453, "vcs2samp/beach1384.dff", "vcs2samp/beach1384.txd");
AddSimpleModel(-1, 19379, -2454, "vcs2samp/beach1385.dff", "vcs2samp/beach1385.txd");
AddSimpleModel(-1, 19379, -2455, "vcs2samp/beach1386.dff", "vcs2samp/beach1386.txd");
AddSimpleModel(-1, 19379, -2456, "vcs2samp/beach1387.dff", "vcs2samp/beach1387.txd");
AddSimpleModel(-1, 19379, -2457, "vcs2samp/beach1388.dff", "vcs2samp/beach1388.txd");
AddSimpleModel(-1, 19379, -2458, "vcs2samp/beach1389.dff", "vcs2samp/beach1389.txd");
AddSimpleModel(-1, 19379, -2459, "vcs2samp/beach1394.dff", "vcs2samp/beach1394.txd");
AddSimpleModel(-1, 19379, -2460, "vcs2samp/beach1399.dff", "vcs2samp/beach1399.txd");
AddSimpleModel(-1, 19379, -2461, "vcs2samp/beach1409.dff", "vcs2samp/beach1409.txd");
AddSimpleModel(-1, 19379, -2462, "vcs2samp/beach1410.dff", "vcs2samp/beach1410.txd");
AddSimpleModel(-1, 19379, -2463, "vcs2samp/beach1412.dff", "vcs2samp/beach1412.txd");
AddSimpleModel(-1, 19379, -2464, "vcs2samp/beach1413.dff", "vcs2samp/beach1413.txd");
AddSimpleModel(-1, 19379, -2465, "vcs2samp/beach1414.dff", "vcs2samp/beach1414.txd");
AddSimpleModel(-1, 19379, -2466, "vcs2samp/beach1415.dff", "vcs2samp/beach1415.txd");
AddSimpleModel(-1, 19379, -2467, "vcs2samp/beach1418.dff", "vcs2samp/beach1418.txd");
AddSimpleModel(-1, 19379, -2468, "vcs2samp/beach1420.dff", "vcs2samp/beach1420.txd");
AddSimpleModel(-1, 19379, -2469, "vcs2samp/beach1427.dff", "vcs2samp/beach1427.txd");
AddSimpleModel(-1, 19379, -2470, "vcs2samp/beach1430.dff", "vcs2samp/beach1430.txd");
AddSimpleModel(-1, 19379, -2471, "vcs2samp/beach1432.dff", "vcs2samp/beach1432.txd");
AddSimpleModel(-1, 19379, -2472, "vcs2samp/beach1433.dff", "vcs2samp/beach1433.txd");
AddSimpleModel(-1, 19379, -2473, "vcs2samp/beach1435.dff", "vcs2samp/beach1435.txd");
AddSimpleModel(-1, 19379, -2474, "vcs2samp/beach1436.dff", "vcs2samp/beach1436.txd");
AddSimpleModel(-1, 19379, -2475, "vcs2samp/beach1437.dff", "vcs2samp/beach1437.txd");
AddSimpleModel(-1, 19379, -2476, "vcs2samp/beach1439.dff", "vcs2samp/beach1439.txd");
AddSimpleModel(-1, 19379, -2477, "vcs2samp/beach1442.dff", "vcs2samp/beach1442.txd");
AddSimpleModel(-1, 19379, -2478, "vcs2samp/beach1447.dff", "vcs2samp/beach1447.txd");
AddSimpleModel(-1, 19379, -2479, "vcs2samp/beach1450.dff", "vcs2samp/beach1450.txd");
AddSimpleModel(-1, 19379, -2480, "vcs2samp/beach1453.dff", "vcs2samp/beach1453.txd");
AddSimpleModel(-1, 19379, -2481, "vcs2samp/beach1455.dff", "vcs2samp/beach1455.txd");
AddSimpleModel(-1, 19379, -2482, "vcs2samp/beach1458.dff", "vcs2samp/beach1458.txd");
AddSimpleModel(-1, 19379, -2483, "vcs2samp/beach1461.dff", "vcs2samp/beach1461.txd");
AddSimpleModel(-1, 19379, -2484, "vcs2samp/beach1463.dff", "vcs2samp/beach1463.txd");
AddSimpleModel(-1, 19379, -2485, "vcs2samp/beach1464.dff", "vcs2samp/beach1464.txd");
AddSimpleModel(-1, 19379, -2486, "vcs2samp/beach1467.dff", "vcs2samp/beach1467.txd");
AddSimpleModel(-1, 19379, -2487, "vcs2samp/beach1468.dff", "vcs2samp/beach1468.txd");
AddSimpleModel(-1, 19379, -2488, "vcs2samp/beach1470.dff", "vcs2samp/beach1470.txd");
AddSimpleModel(-1, 19379, -2489, "vcs2samp/beach1473.dff", "vcs2samp/beach1473.txd");
AddSimpleModel(-1, 19379, -2490, "vcs2samp/beach1476.dff", "vcs2samp/beach1476.txd");
AddSimpleModel(-1, 19379, -2491, "vcs2samp/beach1478.dff", "vcs2samp/beach1478.txd");
AddSimpleModel(-1, 19379, -2492, "vcs2samp/beach1479.dff", "vcs2samp/beach1479.txd");
AddSimpleModel(-1, 19379, -2493, "vcs2samp/beach1480.dff", "vcs2samp/beach1480.txd");
AddSimpleModel(-1, 19379, -2494, "vcs2samp/beach1481.dff", "vcs2samp/beach1481.txd");
AddSimpleModel(-1, 19379, -2495, "vcs2samp/beach1482.dff", "vcs2samp/beach1482.txd");
AddSimpleModel(-1, 19379, -2496, "vcs2samp/beach1483.dff", "vcs2samp/beach1483.txd");
AddSimpleModel(-1, 19379, -2497, "vcs2samp/beach1484.dff", "vcs2samp/beach1484.txd");
AddSimpleModel(-1, 19379, -2498, "vcs2samp/beach1487.dff", "vcs2samp/beach1487.txd");
AddSimpleModel(-1, 19379, -2499, "vcs2samp/beach1488.dff", "vcs2samp/beach1488.txd");
AddSimpleModel(-1, 19379, -2500, "vcs2samp/beach1489.dff", "vcs2samp/beach1489.txd");
AddSimpleModel(-1, 19379, -2501, "vcs2samp/beach1490.dff", "vcs2samp/beach1490.txd");
AddSimpleModel(-1, 19379, -2502, "vcs2samp/beach1491.dff", "vcs2samp/beach1491.txd");
AddSimpleModel(-1, 19379, -2503, "vcs2samp/beach1493.dff", "vcs2samp/beach1493.txd");
AddSimpleModel(-1, 19379, -2504, "vcs2samp/beach1494.dff", "vcs2samp/beach1494.txd");
AddSimpleModel(-1, 19379, -2505, "vcs2samp/beach1498.dff", "vcs2samp/beach1498.txd");
AddSimpleModel(-1, 19379, -2506, "vcs2samp/beach1500.dff", "vcs2samp/beach1500.txd");
AddSimpleModel(-1, 19379, -2507, "vcs2samp/beach1501.dff", "vcs2samp/beach1501.txd");
AddSimpleModel(-1, 19379, -2508, "vcs2samp/beach1505.dff", "vcs2samp/beach1505.txd");
AddSimpleModel(-1, 19379, -2509, "vcs2samp/beach1509.dff", "vcs2samp/beach1509.txd");
AddSimpleModel(-1, 19379, -2510, "vcs2samp/beach1511.dff", "vcs2samp/beach1511.txd");
AddSimpleModel(-1, 19379, -2511, "vcs2samp/beach1523.dff", "vcs2samp/beach1523.txd");
AddSimpleModel(-1, 19379, -2512, "vcs2samp/beach1531.dff", "vcs2samp/beach1531.txd");
AddSimpleModel(-1, 19379, -2513, "vcs2samp/beach1534.dff", "vcs2samp/beach1534.txd");
AddSimpleModel(-1, 19379, -2514, "vcs2samp/beach1535.dff", "vcs2samp/beach1535.txd");
AddSimpleModel(-1, 19379, -2515, "vcs2samp/beach1543.dff", "vcs2samp/beach1543.txd");
AddSimpleModel(-1, 19379, -2516, "vcs2samp/beach1554.dff", "vcs2samp/beach1554.txd");
AddSimpleModel(-1, 19379, -2517, "vcs2samp/beach1557.dff", "vcs2samp/beach1557.txd");
AddSimpleModel(-1, 19379, -2518, "vcs2samp/beach1565.dff", "vcs2samp/beach1565.txd");
AddSimpleModel(-1, 19379, -2519, "vcs2samp/beach1571.dff", "vcs2samp/beach1571.txd");
AddSimpleModel(-1, 19379, -2520, "vcs2samp/beach1575.dff", "vcs2samp/beach1575.txd");
AddSimpleModel(-1, 19379, -2521, "vcs2samp/beach1580.dff", "vcs2samp/beach1580.txd");
AddSimpleModel(-1, 19379, -2522, "vcs2samp/beach1582.dff", "vcs2samp/beach1582.txd");
AddSimpleModel(-1, 19379, -2523, "vcs2samp/beach1586.dff", "vcs2samp/beach1586.txd");
AddSimpleModel(-1, 19379, -2524, "vcs2samp/beach1595.dff", "vcs2samp/beach1595.txd");
AddSimpleModel(-1, 19379, -2525, "vcs2samp/beach1596.dff", "vcs2samp/beach1596.txd");
AddSimpleModel(-1, 19379, -2526, "vcs2samp/beach1597.dff", "vcs2samp/beach1597.txd");
AddSimpleModel(-1, 19379, -2527, "vcs2samp/beach1598.dff", "vcs2samp/beach1598.txd");
AddSimpleModel(-1, 19379, -2528, "vcs2samp/beach1599.dff", "vcs2samp/beach1599.txd");
AddSimpleModel(-1, 19379, -2529, "vcs2samp/beach1600.dff", "vcs2samp/beach1600.txd");
AddSimpleModel(-1, 19379, -2530, "vcs2samp/beach1601.dff", "vcs2samp/beach1601.txd");
AddSimpleModel(-1, 19379, -2531, "vcs2samp/beach1602.dff", "vcs2samp/beach1602.txd");
AddSimpleModel(-1, 19379, -2532, "vcs2samp/beach1603.dff", "vcs2samp/beach1603.txd");
AddSimpleModel(-1, 19379, -2533, "vcs2samp/beach1604.dff", "vcs2samp/beach1604.txd");
AddSimpleModel(-1, 19379, -2534, "vcs2samp/beach1605.dff", "vcs2samp/beach1605.txd");
AddSimpleModel(-1, 19379, -2535, "vcs2samp/beach1606.dff", "vcs2samp/beach1606.txd");
AddSimpleModel(-1, 19379, -2536, "vcs2samp/beach1607.dff", "vcs2samp/beach1607.txd");
AddSimpleModel(-1, 19379, -2537, "vcs2samp/beach1610.dff", "vcs2samp/beach1610.txd");
AddSimpleModel(-1, 19379, -2538, "vcs2samp/beach1611.dff", "vcs2samp/beach1611.txd");
AddSimpleModel(-1, 19379, -2539, "vcs2samp/beach1612.dff", "vcs2samp/beach1612.txd");
AddSimpleModel(-1, 19379, -2540, "vcs2samp/beach1616.dff", "vcs2samp/beach1616.txd");
AddSimpleModel(-1, 19379, -2541, "vcs2samp/beach1617.dff", "vcs2samp/beach1617.txd");
AddSimpleModel(-1, 19379, -2542, "vcs2samp/beach1620.dff", "vcs2samp/beach1620.txd");
AddSimpleModel(-1, 19379, -2543, "vcs2samp/beach1623.dff", "vcs2samp/beach1623.txd");
AddSimpleModel(-1, 19379, -2544, "vcs2samp/beach1626.dff", "vcs2samp/beach1626.txd");
AddSimpleModel(-1, 19379, -2545, "vcs2samp/beach1628.dff", "vcs2samp/beach1628.txd");
AddSimpleModel(-1, 19379, -2546, "vcs2samp/beach1631.dff", "vcs2samp/beach1631.txd");
AddSimpleModel(-1, 19379, -2547, "vcs2samp/beach1633.dff", "vcs2samp/beach1633.txd");
AddSimpleModel(-1, 19379, -2548, "vcs2samp/beach1634.dff", "vcs2samp/beach1634.txd");
AddSimpleModel(-1, 19379, -2549, "vcs2samp/beach1637.dff", "vcs2samp/beach1637.txd");
AddSimpleModel(-1, 19379, -2550, "vcs2samp/beach1639.dff", "vcs2samp/beach1639.txd");
AddSimpleModel(-1, 19379, -2551, "vcs2samp/beach1640.dff", "vcs2samp/beach1640.txd");
AddSimpleModel(-1, 19379, -2552, "vcs2samp/beach1643.dff", "vcs2samp/beach1643.txd");
AddSimpleModel(-1, 19379, -2553, "vcs2samp/beach1644.dff", "vcs2samp/beach1644.txd");
AddSimpleModel(-1, 19379, -2554, "vcs2samp/beach1648.dff", "vcs2samp/beach1648.txd");
AddSimpleModel(-1, 19379, -2555, "vcs2samp/beach1649.dff", "vcs2samp/beach1649.txd");
AddSimpleModel(-1, 19379, -2556, "vcs2samp/beach1650.dff", "vcs2samp/beach1650.txd");
AddSimpleModel(-1, 19379, -2557, "vcs2samp/beach1651.dff", "vcs2samp/beach1651.txd");
AddSimpleModel(-1, 19379, -2558, "vcs2samp/beach1654.dff", "vcs2samp/beach1654.txd");
AddSimpleModel(-1, 19379, -2559, "vcs2samp/beach1658.dff", "vcs2samp/beach1658.txd");
AddSimpleModel(-1, 19379, -2560, "vcs2samp/beach1662.dff", "vcs2samp/beach1662.txd");
AddSimpleModel(-1, 19379, -2561, "vcs2samp/beach1667.dff", "vcs2samp/beach1667.txd");
AddSimpleModel(-1, 19379, -2562, "vcs2samp/beach1670.dff", "vcs2samp/beach1670.txd");
AddSimpleModel(-1, 19379, -2563, "vcs2samp/beach1674.dff", "vcs2samp/beach1674.txd");
AddSimpleModel(-1, 19379, -2564, "vcs2samp/beach1675.dff", "vcs2samp/beach1675.txd");
AddSimpleModel(-1, 19379, -2565, "vcs2samp/beach1676.dff", "vcs2samp/beach1676.txd");
AddSimpleModel(-1, 19379, -2566, "vcs2samp/beach1677.dff", "vcs2samp/beach1677.txd");
AddSimpleModel(-1, 19379, -2567, "vcs2samp/beach1678.dff", "vcs2samp/beach1678.txd");
AddSimpleModel(-1, 19379, -2568, "vcs2samp/beach1679.dff", "vcs2samp/beach1679.txd");
AddSimpleModel(-1, 19379, -2569, "vcs2samp/beach1680.dff", "vcs2samp/beach1680.txd");
AddSimpleModel(-1, 19379, -2570, "vcs2samp/beach1681.dff", "vcs2samp/beach1681.txd");
AddSimpleModel(-1, 19379, -2571, "vcs2samp/beach1682.dff", "vcs2samp/beach1682.txd");
AddSimpleModel(-1, 19379, -2572, "vcs2samp/beach1683.dff", "vcs2samp/beach1683.txd");
AddSimpleModel(-1, 19379, -2573, "vcs2samp/beach1688.dff", "vcs2samp/beach1688.txd");
AddSimpleModel(-1, 19379, -2574, "vcs2samp/beach1690.dff", "vcs2samp/beach1690.txd");
AddSimpleModel(-1, 19379, -2575, "vcs2samp/beach1692.dff", "vcs2samp/beach1692.txd");
AddSimpleModel(-1, 19379, -2576, "vcs2samp/beach1694.dff", "vcs2samp/beach1694.txd");
AddSimpleModel(-1, 19379, -2577, "vcs2samp/beach1696.dff", "vcs2samp/beach1696.txd");
AddSimpleModel(-1, 19379, -2578, "vcs2samp/beach1698.dff", "vcs2samp/beach1698.txd");
AddSimpleModel(-1, 19379, -2579, "vcs2samp/beach1700.dff", "vcs2samp/beach1700.txd");
AddSimpleModel(-1, 19379, -2580, "vcs2samp/beach1701.dff", "vcs2samp/beach1701.txd");
AddSimpleModel(-1, 19379, -2581, "vcs2samp/beach1709.dff", "vcs2samp/beach1709.txd");
AddSimpleModel(-1, 19379, -2582, "vcs2samp/beach1710.dff", "vcs2samp/beach1710.txd");
AddSimpleModel(-1, 19379, -2583, "vcs2samp/beach1714.dff", "vcs2samp/beach1714.txd");
AddSimpleModel(-1, 19379, -2584, "vcs2samp/beach1715.dff", "vcs2samp/beach1715.txd");
AddSimpleModel(-1, 19379, -2585, "vcs2samp/beach1717.dff", "vcs2samp/beach1717.txd");
AddSimpleModel(-1, 19379, -2586, "vcs2samp/beach1718.dff", "vcs2samp/beach1718.txd");
AddSimpleModel(-1, 19379, -2587, "vcs2samp/beach1719.dff", "vcs2samp/beach1719.txd");
AddSimpleModel(-1, 19379, -2588, "vcs2samp/beach1722.dff", "vcs2samp/beach1722.txd");
AddSimpleModel(-1, 19379, -2589, "vcs2samp/beach1724.dff", "vcs2samp/beach1724.txd");
AddSimpleModel(-1, 19379, -2590, "vcs2samp/beach1725.dff", "vcs2samp/beach1725.txd");
AddSimpleModel(-1, 19379, -2591, "vcs2samp/beach1726.dff", "vcs2samp/beach1726.txd");
AddSimpleModel(-1, 19379, -2592, "vcs2samp/beach1727.dff", "vcs2samp/beach1727.txd");
AddSimpleModel(-1, 19379, -2593, "vcs2samp/beach1728.dff", "vcs2samp/beach1728.txd");
AddSimpleModel(-1, 19379, -2594, "vcs2samp/beach1729.dff", "vcs2samp/beach1729.txd");
AddSimpleModel(-1, 19379, -2595, "vcs2samp/beach1730.dff", "vcs2samp/beach1730.txd");
AddSimpleModel(-1, 19379, -2596, "vcs2samp/beach1731.dff", "vcs2samp/beach1731.txd");
AddSimpleModel(-1, 19379, -2597, "vcs2samp/beach1732.dff", "vcs2samp/beach1732.txd");
AddSimpleModel(-1, 19379, -2598, "vcs2samp/beach1733.dff", "vcs2samp/beach1733.txd");
AddSimpleModel(-1, 19379, -2599, "vcs2samp/beach1734.dff", "vcs2samp/beach1734.txd");
AddSimpleModel(-1, 19379, -2600, "vcs2samp/beach1735.dff", "vcs2samp/beach1735.txd");
AddSimpleModel(-1, 19379, -2601, "vcs2samp/beach1736.dff", "vcs2samp/beach1736.txd");
AddSimpleModel(-1, 19379, -2602, "vcs2samp/beach1737.dff", "vcs2samp/beach1737.txd");
AddSimpleModel(-1, 19379, -2603, "vcs2samp/beach1739.dff", "vcs2samp/beach1739.txd");
AddSimpleModel(-1, 19379, -2604, "vcs2samp/beach1742.dff", "vcs2samp/beach1742.txd");
AddSimpleModel(-1, 19379, -2605, "vcs2samp/beach1745.dff", "vcs2samp/beach1745.txd");
AddSimpleModel(-1, 19379, -2606, "vcs2samp/beach1746.dff", "vcs2samp/beach1746.txd");
AddSimpleModel(-1, 19379, -2607, "vcs2samp/beach1750.dff", "vcs2samp/beach1750.txd");
AddSimpleModel(-1, 19379, -2608, "vcs2samp/beach1753.dff", "vcs2samp/beach1753.txd");
AddSimpleModel(-1, 19379, -2609, "vcs2samp/beach1756.dff", "vcs2samp/beach1756.txd");
AddSimpleModel(-1, 19379, -2610, "vcs2samp/beach1757.dff", "vcs2samp/beach1757.txd");
AddSimpleModel(-1, 19379, -2611, "vcs2samp/beach1758.dff", "vcs2samp/beach1758.txd");
AddSimpleModel(-1, 19379, -2612, "vcs2samp/beach1759.dff", "vcs2samp/beach1759.txd");
AddSimpleModel(-1, 19379, -2613, "vcs2samp/beach1761.dff", "vcs2samp/beach1761.txd");
AddSimpleModel(-1, 19379, -2614, "vcs2samp/beach1762.dff", "vcs2samp/beach1762.txd");
AddSimpleModel(-1, 19379, -2615, "vcs2samp/beach1763.dff", "vcs2samp/beach1763.txd");
AddSimpleModel(-1, 19379, -2616, "vcs2samp/beach1765.dff", "vcs2samp/beach1765.txd");
AddSimpleModel(-1, 19379, -2617, "vcs2samp/beach1766.dff", "vcs2samp/beach1766.txd");
AddSimpleModel(-1, 19379, -2618, "vcs2samp/beach1767.dff", "vcs2samp/beach1767.txd");
AddSimpleModel(-1, 19379, -2619, "vcs2samp/beach1768.dff", "vcs2samp/beach1768.txd");
AddSimpleModel(-1, 19379, -2620, "vcs2samp/beach1769.dff", "vcs2samp/beach1769.txd");
AddSimpleModel(-1, 19379, -2621, "vcs2samp/beach1770.dff", "vcs2samp/beach1770.txd");
AddSimpleModel(-1, 19379, -2622, "vcs2samp/beach1772.dff", "vcs2samp/beach1772.txd");
AddSimpleModel(-1, 19379, -2623, "vcs2samp/beach1773.dff", "vcs2samp/beach1773.txd");
AddSimpleModel(-1, 19379, -2624, "vcs2samp/beach1774.dff", "vcs2samp/beach1774.txd");
AddSimpleModel(-1, 19379, -2625, "vcs2samp/beach1775.dff", "vcs2samp/beach1775.txd");
AddSimpleModel(-1, 19379, -2626, "vcs2samp/beach1776.dff", "vcs2samp/beach1776.txd");
AddSimpleModel(-1, 19379, -2627, "vcs2samp/beach1777.dff", "vcs2samp/beach1777.txd");
AddSimpleModel(-1, 19379, -2628, "vcs2samp/beach1778.dff", "vcs2samp/beach1778.txd");
AddSimpleModel(-1, 19379, -2629, "vcs2samp/beach1779.dff", "vcs2samp/beach1779.txd");
AddSimpleModel(-1, 19379, -2630, "vcs2samp/beach1780.dff", "vcs2samp/beach1780.txd");
AddSimpleModel(-1, 19379, -2631, "vcs2samp/beach1781.dff", "vcs2samp/beach1781.txd");
AddSimpleModel(-1, 19379, -2632, "vcs2samp/beach1782.dff", "vcs2samp/beach1782.txd");
AddSimpleModel(-1, 19379, -2633, "vcs2samp/beach1783.dff", "vcs2samp/beach1783.txd");
AddSimpleModel(-1, 19379, -2634, "vcs2samp/beach1784.dff", "vcs2samp/beach1784.txd");
AddSimpleModel(-1, 19379, -2635, "vcs2samp/beach1785.dff", "vcs2samp/beach1785.txd");
AddSimpleModel(-1, 19379, -2636, "vcs2samp/beach1786.dff", "vcs2samp/beach1786.txd");
AddSimpleModel(-1, 19379, -2637, "vcs2samp/beach1787.dff", "vcs2samp/beach1787.txd");
AddSimpleModel(-1, 19379, -2638, "vcs2samp/beach1789.dff", "vcs2samp/beach1789.txd");
AddSimpleModel(-1, 19379, -2639, "vcs2samp/beach1790.dff", "vcs2samp/beach1790.txd");
AddSimpleModel(-1, 19379, -2640, "vcs2samp/beach1795.dff", "vcs2samp/beach1795.txd");
AddSimpleModel(-1, 19379, -2641, "vcs2samp/beach1796.dff", "vcs2samp/beach1796.txd");
AddSimpleModel(-1, 19379, -2642, "vcs2samp/beach1797.dff", "vcs2samp/beach1797.txd");
AddSimpleModel(-1, 19379, -2643, "vcs2samp/beach1800.dff", "vcs2samp/beach1800.txd");
AddSimpleModel(-1, 19379, -2644, "vcs2samp/beach1801.dff", "vcs2samp/beach1801.txd");
AddSimpleModel(-1, 19379, -2645, "vcs2samp/beach1802.dff", "vcs2samp/beach1802.txd");
AddSimpleModel(-1, 19379, -2646, "vcs2samp/beach1803.dff", "vcs2samp/beach1803.txd");
AddSimpleModel(-1, 19379, -2647, "vcs2samp/beach1804.dff", "vcs2samp/beach1804.txd");
AddSimpleModel(-1, 19379, -2648, "vcs2samp/beach1805.dff", "vcs2samp/beach1805.txd");
AddSimpleModel(-1, 19379, -2649, "vcs2samp/beach1811.dff", "vcs2samp/beach1811.txd");
AddSimpleModel(-1, 19379, -2650, "vcs2samp/beach1814.dff", "vcs2samp/beach1814.txd");
AddSimpleModel(-1, 19379, -2651, "vcs2samp/beach1815.dff", "vcs2samp/beach1815.txd");
AddSimpleModel(-1, 19379, -2652, "vcs2samp/beach1816.dff", "vcs2samp/beach1816.txd");
AddSimpleModel(-1, 19379, -2653, "vcs2samp/beach1817.dff", "vcs2samp/beach1817.txd");
AddSimpleModel(-1, 19379, -2654, "vcs2samp/beach1818.dff", "vcs2samp/beach1818.txd");
AddSimpleModel(-1, 19379, -2655, "vcs2samp/beach1819.dff", "vcs2samp/beach1819.txd");
AddSimpleModel(-1, 19379, -2656, "vcs2samp/beach1824.dff", "vcs2samp/beach1824.txd");
AddSimpleModel(-1, 19379, -2657, "vcs2samp/beach1825.dff", "vcs2samp/beach1825.txd");
AddSimpleModel(-1, 19379, -2658, "vcs2samp/beach1826.dff", "vcs2samp/beach1826.txd");
AddSimpleModel(-1, 19379, -2659, "vcs2samp/beach1827.dff", "vcs2samp/beach1827.txd");
AddSimpleModel(-1, 19379, -2660, "vcs2samp/beach1828.dff", "vcs2samp/beach1828.txd");
AddSimpleModel(-1, 19379, -2661, "vcs2samp/beach1829.dff", "vcs2samp/beach1829.txd");
AddSimpleModel(-1, 19379, -2662, "vcs2samp/beach1830.dff", "vcs2samp/beach1830.txd");
AddSimpleModel(-1, 19379, -2663, "vcs2samp/beach1834.dff", "vcs2samp/beach1834.txd");
AddSimpleModel(-1, 19379, -2664, "vcs2samp/beach1835.dff", "vcs2samp/beach1835.txd");
AddSimpleModel(-1, 19379, -2665, "vcs2samp/beach1836.dff", "vcs2samp/beach1836.txd");
AddSimpleModel(-1, 19379, -2666, "vcs2samp/beach1837.dff", "vcs2samp/beach1837.txd");
AddSimpleModel(-1, 19379, -2667, "vcs2samp/beach1840.dff", "vcs2samp/beach1840.txd");
AddSimpleModel(-1, 19379, -2668, "vcs2samp/beach1841.dff", "vcs2samp/beach1841.txd");
AddSimpleModel(-1, 19379, -2669, "vcs2samp/beach1842.dff", "vcs2samp/beach1842.txd");
AddSimpleModel(-1, 19379, -2670, "vcs2samp/beach1851.dff", "vcs2samp/beach1851.txd");
AddSimpleModel(-1, 19379, -2671, "vcs2samp/beach1853.dff", "vcs2samp/beach1853.txd");
AddSimpleModel(-1, 19379, -2672, "vcs2samp/beach1855.dff", "vcs2samp/beach1855.txd");
AddSimpleModel(-1, 19379, -2673, "vcs2samp/beach1857.dff", "vcs2samp/beach1857.txd");
AddSimpleModel(-1, 19379, -2674, "vcs2samp/beach1859.dff", "vcs2samp/beach1859.txd");
AddSimpleModel(-1, 19379, -2675, "vcs2samp/beach1862.dff", "vcs2samp/beach1862.txd");
AddSimpleModel(-1, 19379, -2676, "vcs2samp/beach1864.dff", "vcs2samp/beach1864.txd");
AddSimpleModel(-1, 19379, -2677, "vcs2samp/beach1867.dff", "vcs2samp/beach1867.txd");
AddSimpleModel(-1, 19379, -2678, "vcs2samp/beach1869.dff", "vcs2samp/beach1869.txd");
AddSimpleModel(-1, 19379, -2679, "vcs2samp/beach1870.dff", "vcs2samp/beach1870.txd");
AddSimpleModel(-1, 19379, -2680, "vcs2samp/beach1872.dff", "vcs2samp/beach1872.txd");
AddSimpleModel(-1, 19379, -2681, "vcs2samp/beach1875.dff", "vcs2samp/beach1875.txd");
AddSimpleModel(-1, 19379, -2682, "vcs2samp/beach1879.dff", "vcs2samp/beach1879.txd");
AddSimpleModel(-1, 19379, -2683, "vcs2samp/beach1881.dff", "vcs2samp/beach1881.txd");
AddSimpleModel(-1, 19379, -2684, "vcs2samp/beach1888.dff", "vcs2samp/beach1888.txd");
AddSimpleModel(-1, 19379, -2685, "vcs2samp/beach1890.dff", "vcs2samp/beach1890.txd");
AddSimpleModel(-1, 19379, -2686, "vcs2samp/beach1891.dff", "vcs2samp/beach1891.txd");
AddSimpleModel(-1, 19379, -2687, "vcs2samp/beach1892.dff", "vcs2samp/beach1892.txd");
AddSimpleModel(-1, 19379, -2688, "vcs2samp/beach1894.dff", "vcs2samp/beach1894.txd");
AddSimpleModel(-1, 19379, -2689, "vcs2samp/beach1895.dff", "vcs2samp/beach1895.txd");
AddSimpleModel(-1, 19379, -2690, "vcs2samp/beach1897.dff", "vcs2samp/beach1897.txd");
AddSimpleModel(-1, 19379, -2691, "vcs2samp/beach1919.dff", "vcs2samp/beach1919.txd");
AddSimpleModel(-1, 19379, -2692, "vcs2samp/beach1921.dff", "vcs2samp/beach1921.txd");
AddSimpleModel(-1, 19379, -2693, "vcs2samp/beach1922.dff", "vcs2samp/beach1922.txd");
AddSimpleModel(-1, 19379, -2694, "vcs2samp/beach1923.dff", "vcs2samp/beach1923.txd");
AddSimpleModel(-1, 19379, -2695, "vcs2samp/beach1929.dff", "vcs2samp/beach1929.txd");
AddSimpleModel(-1, 19379, -2696, "vcs2samp/beach1930.dff", "vcs2samp/beach1930.txd");
AddSimpleModel(-1, 19379, -2697, "vcs2samp/beach1931.dff", "vcs2samp/beach1931.txd");
AddSimpleModel(-1, 19379, -2698, "vcs2samp/beach1933.dff", "vcs2samp/beach1933.txd");
AddSimpleModel(-1, 19379, -2699, "vcs2samp/beach1936.dff", "vcs2samp/beach1936.txd");
AddSimpleModel(-1, 19379, -2700, "vcs2samp/beach1937.dff", "vcs2samp/beach1937.txd");
AddSimpleModel(-1, 19379, -2701, "vcs2samp/beach1939.dff", "vcs2samp/beach1939.txd");
AddSimpleModel(-1, 19379, -2702, "vcs2samp/beach1941.dff", "vcs2samp/beach1941.txd");
AddSimpleModel(-1, 19379, -2703, "vcs2samp/beach1942.dff", "vcs2samp/beach1942.txd");
AddSimpleModel(-1, 19379, -2704, "vcs2samp/beach1943.dff", "vcs2samp/beach1943.txd");
AddSimpleModel(-1, 19379, -2705, "vcs2samp/beach1945.dff", "vcs2samp/beach1945.txd");
AddSimpleModel(-1, 19379, -2706, "vcs2samp/beach1946.dff", "vcs2samp/beach1946.txd");
AddSimpleModel(-1, 19379, -2707, "vcs2samp/beach1950.dff", "vcs2samp/beach1950.txd");
AddSimpleModel(-1, 19379, -2708, "vcs2samp/beach1956.dff", "vcs2samp/beach1956.txd");
AddSimpleModel(-1, 19379, -2709, "vcs2samp/beach1961.dff", "vcs2samp/beach1961.txd");
AddSimpleModel(-1, 19379, -2710, "vcs2samp/beach1964.dff", "vcs2samp/beach1964.txd");
AddSimpleModel(-1, 19379, -2711, "vcs2samp/beach1970.dff", "vcs2samp/beach1970.txd");
AddSimpleModel(-1, 19379, -2712, "vcs2samp/beach1971.dff", "vcs2samp/beach1971.txd");
AddSimpleModel(-1, 19379, -2713, "vcs2samp/beach1973.dff", "vcs2samp/beach1973.txd");
AddSimpleModel(-1, 19379, -2714, "vcs2samp/beach1974.dff", "vcs2samp/beach1974.txd");
AddSimpleModel(-1, 19379, -2715, "vcs2samp/beach1975.dff", "vcs2samp/beach1975.txd");
AddSimpleModel(-1, 19379, -2716, "vcs2samp/beach865.dff", "vcs2samp/beach865.txd");
AddSimpleModel(-1, 19379, -2717, "vcs2samp/beach1976.dff", "vcs2samp/beach1976.txd");
AddSimpleModel(-1, 19379, -2718, "vcs2samp/beach1978.dff", "vcs2samp/beach1978.txd");
AddSimpleModel(-1, 19379, -2719, "vcs2samp/beach1980.dff", "vcs2samp/beach1980.txd");
AddSimpleModel(-1, 19379, -2720, "vcs2samp/beach1981.dff", "vcs2samp/beach1981.txd");
AddSimpleModel(-1, 19379, -2721, "vcs2samp/beach1982.dff", "vcs2samp/beach1982.txd");
AddSimpleModel(-1, 19379, -2722, "vcs2samp/beach1983.dff", "vcs2samp/beach1983.txd");
AddSimpleModel(-1, 19379, -2723, "vcs2samp/beach1985.dff", "vcs2samp/beach1985.txd");
AddSimpleModel(-1, 19379, -2724, "vcs2samp/beach1988.dff", "vcs2samp/beach1988.txd");
AddSimpleModel(-1, 19379, -2725, "vcs2samp/beach421.dff", "vcs2samp/beach421.txd");
AddSimpleModel(-1, 19379, -2726, "vcs2samp/beach1989.dff", "vcs2samp/beach1989.txd");
AddSimpleModel(-1, 19379, -2727, "vcs2samp/beach1991.dff", "vcs2samp/beach1991.txd");
AddSimpleModel(-1, 19379, -2728, "vcs2samp/beach1998.dff", "vcs2samp/beach1998.txd");
AddSimpleModel(-1, 19379, -2729, "vcs2samp/beach2002.dff", "vcs2samp/beach2002.txd");
AddSimpleModel(-1, 19379, -2730, "vcs2samp/beach964.dff", "vcs2samp/beach964.txd");
AddSimpleModel(-1, 19379, -2731, "vcs2samp/beach2005.dff", "vcs2samp/beach2005.txd");
AddSimpleModel(-1, 19379, -2732, "vcs2samp/beach2006.dff", "vcs2samp/beach2006.txd");
AddSimpleModel(-1, 19379, -2733, "vcs2samp/beach2008.dff", "vcs2samp/beach2008.txd");
AddSimpleModel(-1, 19379, -2734, "vcs2samp/beach2017.dff", "vcs2samp/beach2017.txd");
AddSimpleModel(-1, 19379, -2735, "vcs2samp/beach2019.dff", "vcs2samp/beach2019.txd");
AddSimpleModel(-1, 19379, -2736, "vcs2samp/beach2020.dff", "vcs2samp/beach2020.txd");
AddSimpleModel(-1, 19379, -2737, "vcs2samp/beach2021.dff", "vcs2samp/beach2021.txd");
AddSimpleModel(-1, 19379, -2738, "vcs2samp/beach2024.dff", "vcs2samp/beach2024.txd");
AddSimpleModel(-1, 19379, -2739, "vcs2samp/beach2025.dff", "vcs2samp/beach2025.txd");
AddSimpleModel(-1, 19379, -2740, "vcs2samp/beach2026.dff", "vcs2samp/beach2026.txd");
AddSimpleModel(-1, 19379, -2741, "vcs2samp/beach2031.dff", "vcs2samp/beach2031.txd");
AddSimpleModel(-1, 19379, -2742, "vcs2samp/beach997.dff", "vcs2samp/beach997.txd");
AddSimpleModel(-1, 19379, -2743, "vcs2samp/beach2032.dff", "vcs2samp/beach2032.txd");
AddSimpleModel(-1, 19379, -2744, "vcs2samp/beach2037.dff", "vcs2samp/beach2037.txd");
AddSimpleModel(-1, 19379, -2745, "vcs2samp/beach2039.dff", "vcs2samp/beach2039.txd");
AddSimpleModel(-1, 19379, -2746, "vcs2samp/beach2041.dff", "vcs2samp/beach2041.txd");
AddSimpleModel(-1, 19379, -2747, "vcs2samp/beach2042.dff", "vcs2samp/beach2042.txd");
AddSimpleModel(-1, 19379, -2748, "vcs2samp/beach2043.dff", "vcs2samp/beach2043.txd");
AddSimpleModel(-1, 19379, -2749, "vcs2samp/beach2044.dff", "vcs2samp/beach2044.txd");
AddSimpleModel(-1, 19379, -2750, "vcs2samp/beach2047.dff", "vcs2samp/beach2047.txd");
AddSimpleModel(-1, 19379, -2751, "vcs2samp/beach2048.dff", "vcs2samp/beach2048.txd");
AddSimpleModel(-1, 19379, -2752, "vcs2samp/beach2050.dff", "vcs2samp/beach2050.txd");
AddSimpleModel(-1, 19379, -2753, "vcs2samp/beach2051.dff", "vcs2samp/beach2051.txd");
AddSimpleModel(-1, 19379, -2754, "vcs2samp/beach2052.dff", "vcs2samp/beach2052.txd");
AddSimpleModel(-1, 19379, -2755, "vcs2samp/beach2053.dff", "vcs2samp/beach2053.txd");
AddSimpleModel(-1, 19379, -2756, "vcs2samp/beach2054.dff", "vcs2samp/beach2054.txd");
AddSimpleModel(-1, 19379, -2757, "vcs2samp/beach2055.dff", "vcs2samp/beach2055.txd");
AddSimpleModel(-1, 19379, -2758, "vcs2samp/beach2056.dff", "vcs2samp/beach2056.txd");
AddSimpleModel(-1, 19379, -2759, "vcs2samp/beach2057.dff", "vcs2samp/beach2057.txd");
AddSimpleModel(-1, 19379, -2760, "vcs2samp/beach2058.dff", "vcs2samp/beach2058.txd");
AddSimpleModel(-1, 19379, -2761, "vcs2samp/beach2059.dff", "vcs2samp/beach2059.txd");
AddSimpleModel(-1, 19379, -2762, "vcs2samp/beach2060.dff", "vcs2samp/beach2060.txd");
AddSimpleModel(-1, 19379, -2763, "vcs2samp/beach2061.dff", "vcs2samp/beach2061.txd");
AddSimpleModel(-1, 19379, -2764, "vcs2samp/beach2062.dff", "vcs2samp/beach2062.txd");
AddSimpleModel(-1, 19379, -2765, "vcs2samp/beach2063.dff", "vcs2samp/beach2063.txd");
AddSimpleModel(-1, 19379, -2766, "vcs2samp/beach2066.dff", "vcs2samp/beach2066.txd");
AddSimpleModel(-1, 19379, -2767, "vcs2samp/beach2072.dff", "vcs2samp/beach2072.txd");
AddSimpleModel(-1, 19379, -2768, "vcs2samp/beach2078.dff", "vcs2samp/beach2078.txd");
AddSimpleModel(-1, 19379, -2769, "vcs2samp/beach2082.dff", "vcs2samp/beach2082.txd");
AddSimpleModel(-1, 19379, -2770, "vcs2samp/beach2083.dff", "vcs2samp/beach2083.txd");
AddSimpleModel(-1, 19379, -2771, "vcs2samp/beach2088.dff", "vcs2samp/beach2088.txd");
AddSimpleModel(-1, 19379, -2772, "vcs2samp/beach2091.dff", "vcs2samp/beach2091.txd");
AddSimpleModel(-1, 19379, -2773, "vcs2samp/beach2099.dff", "vcs2samp/beach2099.txd");
AddSimpleModel(-1, 19379, -2774, "vcs2samp/beach2104.dff", "vcs2samp/beach2104.txd");
AddSimpleModel(-1, 19379, -2775, "vcs2samp/beach2113.dff", "vcs2samp/beach2113.txd");
AddSimpleModel(-1, 19379, -2776, "vcs2samp/beach2114.dff", "vcs2samp/beach2114.txd");
AddSimpleModel(-1, 19379, -2777, "vcs2samp/beach2118.dff", "vcs2samp/beach2118.txd");
AddSimpleModel(-1, 19379, -2778, "vcs2samp/beach2120.dff", "vcs2samp/beach2120.txd");
AddSimpleModel(-1, 19379, -2779, "vcs2samp/beach2121.dff", "vcs2samp/beach2121.txd");
AddSimpleModel(-1, 19379, -2780, "vcs2samp/beach2122.dff", "vcs2samp/beach2122.txd");
AddSimpleModel(-1, 19379, -2781, "vcs2samp/beach2124.dff", "vcs2samp/beach2124.txd");
AddSimpleModel(-1, 19379, -2782, "vcs2samp/beach2129.dff", "vcs2samp/beach2129.txd");
AddSimpleModel(-1, 19379, -2783, "vcs2samp/beach2139.dff", "vcs2samp/beach2139.txd");
AddSimpleModel(-1, 19379, -2784, "vcs2samp/beach2148.dff", "vcs2samp/beach2148.txd");
AddSimpleModel(-1, 19379, -2785, "vcs2samp/beach2151.dff", "vcs2samp/beach2151.txd");
AddSimpleModel(-1, 19379, -2786, "vcs2samp/beach2155.dff", "vcs2samp/beach2155.txd");
AddSimpleModel(-1, 19379, -2787, "vcs2samp/beach2157.dff", "vcs2samp/beach2157.txd");
AddSimpleModel(-1, 19379, -2788, "vcs2samp/beach2158.dff", "vcs2samp/beach2158.txd");
AddSimpleModel(-1, 19379, -2789, "vcs2samp/beach2159.dff", "vcs2samp/beach2159.txd");
AddSimpleModel(-1, 19379, -2790, "vcs2samp/beach2160.dff", "vcs2samp/beach2160.txd");
AddSimpleModel(-1, 19379, -2791, "vcs2samp/beach2162.dff", "vcs2samp/beach2162.txd");
AddSimpleModel(-1, 19379, -2792, "vcs2samp/beach2165.dff", "vcs2samp/beach2165.txd");
AddSimpleModel(-1, 19379, -2793, "vcs2samp/beach2166.dff", "vcs2samp/beach2166.txd");
AddSimpleModel(-1, 19379, -2794, "vcs2samp/beach2167.dff", "vcs2samp/beach2167.txd");
AddSimpleModel(-1, 19379, -2795, "vcs2samp/beach2168.dff", "vcs2samp/beach2168.txd");
AddSimpleModel(-1, 19379, -2796, "vcs2samp/beach2170.dff", "vcs2samp/beach2170.txd");
AddSimpleModel(-1, 19379, -2797, "vcs2samp/beach2175.dff", "vcs2samp/beach2175.txd");
AddSimpleModel(-1, 19379, -2798, "vcs2samp/beach2183.dff", "vcs2samp/beach2183.txd");
AddSimpleModel(-1, 19379, -2799, "vcs2samp/beach2184.dff", "vcs2samp/beach2184.txd");
AddSimpleModel(-1, 19379, -2800, "vcs2samp/beach2190.dff", "vcs2samp/beach2190.txd");
AddSimpleModel(-1, 19379, -2801, "vcs2samp/beach2196.dff", "vcs2samp/beach2196.txd");
AddSimpleModel(-1, 19379, -2802, "vcs2samp/beach2200.dff", "vcs2samp/beach2200.txd");
AddSimpleModel(-1, 19379, -2803, "vcs2samp/beach2205.dff", "vcs2samp/beach2205.txd");
AddSimpleModel(-1, 19379, -2804, "vcs2samp/beach2209.dff", "vcs2samp/beach2209.txd");
AddSimpleModel(-1, 19379, -2805, "vcs2samp/beach2210.dff", "vcs2samp/beach2210.txd");
AddSimpleModel(-1, 19379, -2806, "vcs2samp/beach2211.dff", "vcs2samp/beach2211.txd");
AddSimpleModel(-1, 19379, -2807, "vcs2samp/beach2212.dff", "vcs2samp/beach2212.txd");
AddSimpleModel(-1, 19379, -2808, "vcs2samp/beach2214.dff", "vcs2samp/beach2214.txd");
AddSimpleModel(-1, 19379, -2809, "vcs2samp/beach2219.dff", "vcs2samp/beach2219.txd");
AddSimpleModel(-1, 19379, -2810, "vcs2samp/beach2223.dff", "vcs2samp/beach2223.txd");
AddSimpleModel(-1, 19379, -2811, "vcs2samp/beach2225.dff", "vcs2samp/beach2225.txd");
AddSimpleModel(-1, 19379, -2812, "vcs2samp/beach2226.dff", "vcs2samp/beach2226.txd");
AddSimpleModel(-1, 19379, -2813, "vcs2samp/beach2228.dff", "vcs2samp/beach2228.txd");
AddSimpleModel(-1, 19379, -2814, "vcs2samp/beach2229.dff", "vcs2samp/beach2229.txd");
AddSimpleModel(-1, 19379, -2815, "vcs2samp/beach2236.dff", "vcs2samp/beach2236.txd");
AddSimpleModel(-1, 19379, -2816, "vcs2samp/beach2237.dff", "vcs2samp/beach2237.txd");
AddSimpleModel(-1, 19379, -2817, "vcs2samp/beach2244.dff", "vcs2samp/beach2244.txd");
AddSimpleModel(-1, 19379, -2818, "vcs2samp/beach2247.dff", "vcs2samp/beach2247.txd");
AddSimpleModel(-1, 19379, -2819, "vcs2samp/beach2250.dff", "vcs2samp/beach2250.txd");
AddSimpleModel(-1, 19379, -2820, "vcs2samp/beach2254.dff", "vcs2samp/beach2254.txd");
AddSimpleModel(-1, 19379, -2821, "vcs2samp/beach2269.dff", "vcs2samp/beach2269.txd");
AddSimpleModel(-1, 19379, -2822, "vcs2samp/beach2279.dff", "vcs2samp/beach2279.txd");
AddSimpleModel(-1, 19379, -2823, "vcs2samp/beach2280.dff", "vcs2samp/beach2280.txd");
AddSimpleModel(-1, 19379, -2824, "vcs2samp/beach2283.dff", "vcs2samp/beach2283.txd");
AddSimpleModel(-1, 19379, -2825, "vcs2samp/beach2287.dff", "vcs2samp/beach2287.txd");
AddSimpleModel(-1, 19379, -2826, "vcs2samp/beach2288.dff", "vcs2samp/beach2288.txd");
AddSimpleModel(-1, 19379, -2827, "vcs2samp/beach2289.dff", "vcs2samp/beach2289.txd");
AddSimpleModel(-1, 19379, -2828, "vcs2samp/beach2290.dff", "vcs2samp/beach2290.txd");
AddSimpleModel(-1, 19379, -2829, "vcs2samp/beach2291.dff", "vcs2samp/beach2291.txd");
AddSimpleModel(-1, 19379, -2830, "vcs2samp/beach2292.dff", "vcs2samp/beach2292.txd");
AddSimpleModel(-1, 19379, -2831, "vcs2samp/beach2293.dff", "vcs2samp/beach2293.txd");
AddSimpleModel(-1, 19379, -2832, "vcs2samp/beach2294.dff", "vcs2samp/beach2294.txd");
AddSimpleModel(-1, 19379, -2833, "vcs2samp/beach2295.dff", "vcs2samp/beach2295.txd");
AddSimpleModel(-1, 19379, -2834, "vcs2samp/beach2298.dff", "vcs2samp/beach2298.txd");
AddSimpleModel(-1, 19379, -2835, "vcs2samp/beach2300.dff", "vcs2samp/beach2300.txd");
AddSimpleModel(-1, 19379, -2836, "vcs2samp/beach2301.dff", "vcs2samp/beach2301.txd");
AddSimpleModel(-1, 19379, -2837, "vcs2samp/beach2303.dff", "vcs2samp/beach2303.txd");
AddSimpleModel(-1, 19379, -2838, "vcs2samp/beach2304.dff", "vcs2samp/beach2304.txd");
AddSimpleModel(-1, 19379, -2839, "vcs2samp/beach2310.dff", "vcs2samp/beach2310.txd");
AddSimpleModel(-1, 19379, -2840, "vcs2samp/beach2315.dff", "vcs2samp/beach2315.txd");
AddSimpleModel(-1, 19379, -2841, "vcs2samp/beach2316.dff", "vcs2samp/beach2316.txd");
AddSimpleModel(-1, 19379, -2842, "vcs2samp/beach2317.dff", "vcs2samp/beach2317.txd");
AddSimpleModel(-1, 19379, -2843, "vcs2samp/beach2322.dff", "vcs2samp/beach2322.txd");
AddSimpleModel(-1, 19379, -2844, "vcs2samp/beach2330.dff", "vcs2samp/beach2330.txd");
AddSimpleModel(-1, 19379, -2845, "vcs2samp/beach2332.dff", "vcs2samp/beach2332.txd");
AddSimpleModel(-1, 19379, -2846, "vcs2samp/beach2340.dff", "vcs2samp/beach2340.txd");
AddSimpleModel(-1, 19379, -2847, "vcs2samp/beach2342.dff", "vcs2samp/beach2342.txd");
AddSimpleModel(-1, 19379, -2848, "vcs2samp/beach2346.dff", "vcs2samp/beach2346.txd");
AddSimpleModel(-1, 19379, -2849, "vcs2samp/beach2349.dff", "vcs2samp/beach2349.txd");
AddSimpleModel(-1, 19379, -2850, "vcs2samp/beach2350.dff", "vcs2samp/beach2350.txd");
AddSimpleModel(-1, 19379, -2851, "vcs2samp/beach2351.dff", "vcs2samp/beach2351.txd");
AddSimpleModel(-1, 19379, -2852, "vcs2samp/beach2352.dff", "vcs2samp/beach2352.txd");
AddSimpleModel(-1, 19379, -2853, "vcs2samp/beach2353.dff", "vcs2samp/beach2353.txd");
AddSimpleModel(-1, 19379, -2854, "vcs2samp/beach2354.dff", "vcs2samp/beach2354.txd");
AddSimpleModel(-1, 19379, -2855, "vcs2samp/beach2355.dff", "vcs2samp/beach2355.txd");
AddSimpleModel(-1, 19379, -2856, "vcs2samp/beach2356.dff", "vcs2samp/beach2356.txd");
AddSimpleModel(-1, 19379, -2857, "vcs2samp/beach2357.dff", "vcs2samp/beach2357.txd");
AddSimpleModel(-1, 19379, -2858, "vcs2samp/beach2358.dff", "vcs2samp/beach2358.txd");
AddSimpleModel(-1, 19379, -2859, "vcs2samp/beach2359.dff", "vcs2samp/beach2359.txd");
AddSimpleModel(-1, 19379, -2860, "vcs2samp/beach2361.dff", "vcs2samp/beach2361.txd");
AddSimpleModel(-1, 19379, -2861, "vcs2samp/beach2362.dff", "vcs2samp/beach2362.txd");
AddSimpleModel(-1, 19379, -2862, "vcs2samp/beach2363.dff", "vcs2samp/beach2363.txd");
AddSimpleModel(-1, 19379, -2863, "vcs2samp/beach2364.dff", "vcs2samp/beach2364.txd");
AddSimpleModel(-1, 19379, -2864, "vcs2samp/beach2365.dff", "vcs2samp/beach2365.txd");
AddSimpleModel(-1, 19379, -2865, "vcs2samp/beach2366.dff", "vcs2samp/beach2366.txd");
AddSimpleModel(-1, 19379, -2866, "vcs2samp/beach2368.dff", "vcs2samp/beach2368.txd");
AddSimpleModel(-1, 19379, -2867, "vcs2samp/beach2372.dff", "vcs2samp/beach2372.txd");
AddSimpleModel(-1, 19379, -2868, "vcs2samp/beach2375.dff", "vcs2samp/beach2375.txd");
AddSimpleModel(-1, 19379, -2869, "vcs2samp/beach2378.dff", "vcs2samp/beach2378.txd");
AddSimpleModel(-1, 19379, -2870, "vcs2samp/beach2379.dff", "vcs2samp/beach2379.txd");
AddSimpleModel(-1, 19379, -2871, "vcs2samp/beach2380.dff", "vcs2samp/beach2380.txd");
AddSimpleModel(-1, 19379, -2872, "vcs2samp/beach2381.dff", "vcs2samp/beach2381.txd");
AddSimpleModel(-1, 19379, -2873, "vcs2samp/beach2382.dff", "vcs2samp/beach2382.txd");
AddSimpleModel(-1, 19379, -2874, "vcs2samp/beach2383.dff", "vcs2samp/beach2383.txd");
AddSimpleModel(-1, 19379, -2875, "vcs2samp/beach2388.dff", "vcs2samp/beach2388.txd");
AddSimpleModel(-1, 19379, -2876, "vcs2samp/beach2391.dff", "vcs2samp/beach2391.txd");
AddSimpleModel(-1, 19379, -2877, "vcs2samp/beach2397.dff", "vcs2samp/beach2397.txd");
AddSimpleModel(-1, 19379, -2878, "vcs2samp/beach2398.dff", "vcs2samp/beach2398.txd");
AddSimpleModel(-1, 19379, -2879, "vcs2samp/beach2399.dff", "vcs2samp/beach2399.txd");
AddSimpleModel(-1, 19379, -2880, "vcs2samp/beach2401.dff", "vcs2samp/beach2401.txd");
AddSimpleModel(-1, 19379, -2881, "vcs2samp/beach2404.dff", "vcs2samp/beach2404.txd");
AddSimpleModel(-1, 19379, -2882, "vcs2samp/beach2406.dff", "vcs2samp/beach2406.txd");
AddSimpleModel(-1, 19379, -2883, "vcs2samp/beach2408.dff", "vcs2samp/beach2408.txd");
AddSimpleModel(-1, 19379, -2884, "vcs2samp/beach2410.dff", "vcs2samp/beach2410.txd");
AddSimpleModel(-1, 19379, -2885, "vcs2samp/beach2412.dff", "vcs2samp/beach2412.txd");
AddSimpleModel(-1, 19379, -2886, "vcs2samp/beach2414.dff", "vcs2samp/beach2414.txd");
AddSimpleModel(-1, 19379, -2887, "vcs2samp/beach2416.dff", "vcs2samp/beach2416.txd");
AddSimpleModel(-1, 19379, -2888, "vcs2samp/beach2417.dff", "vcs2samp/beach2417.txd");
AddSimpleModel(-1, 19379, -2889, "vcs2samp/beach2419.dff", "vcs2samp/beach2419.txd");
AddSimpleModel(-1, 19379, -2890, "vcs2samp/beach2424.dff", "vcs2samp/beach2424.txd");
AddSimpleModel(-1, 19379, -2891, "vcs2samp/beach2426.dff", "vcs2samp/beach2426.txd");
AddSimpleModel(-1, 19379, -2892, "vcs2samp/beach2428.dff", "vcs2samp/beach2428.txd");
AddSimpleModel(-1, 19379, -2893, "vcs2samp/beach2429.dff", "vcs2samp/beach2429.txd");
AddSimpleModel(-1, 19379, -2894, "vcs2samp/beach2431.dff", "vcs2samp/beach2431.txd");
AddSimpleModel(-1, 19379, -2895, "vcs2samp/beach2432.dff", "vcs2samp/beach2432.txd");
AddSimpleModel(-1, 19379, -2896, "vcs2samp/beach2433.dff", "vcs2samp/beach2433.txd");
AddSimpleModel(-1, 19379, -2897, "vcs2samp/beach2434.dff", "vcs2samp/beach2434.txd");
AddSimpleModel(-1, 19379, -2898, "vcs2samp/beach2435.dff", "vcs2samp/beach2435.txd");
AddSimpleModel(-1, 19379, -2899, "vcs2samp/beach2437.dff", "vcs2samp/beach2437.txd");
AddSimpleModel(-1, 19379, -2900, "vcs2samp/beach2438.dff", "vcs2samp/beach2438.txd");
AddSimpleModel(-1, 19379, -2901, "vcs2samp/beach2439.dff", "vcs2samp/beach2439.txd");
AddSimpleModel(-1, 19379, -2902, "vcs2samp/beach2440.dff", "vcs2samp/beach2440.txd");
AddSimpleModel(-1, 19379, -2903, "vcs2samp/beach2441.dff", "vcs2samp/beach2441.txd");
AddSimpleModel(-1, 19379, -2904, "vcs2samp/beach2442.dff", "vcs2samp/beach2442.txd");
AddSimpleModel(-1, 19379, -2905, "vcs2samp/beach2444.dff", "vcs2samp/beach2444.txd");
AddSimpleModel(-1, 19379, -2906, "vcs2samp/beach2445.dff", "vcs2samp/beach2445.txd");
AddSimpleModel(-1, 19379, -2907, "vcs2samp/beach2446.dff", "vcs2samp/beach2446.txd");
AddSimpleModel(-1, 19379, -2908, "vcs2samp/beach2449.dff", "vcs2samp/beach2449.txd");
AddSimpleModel(-1, 19379, -2909, "vcs2samp/beach2451.dff", "vcs2samp/beach2451.txd");
AddSimpleModel(-1, 19379, -2910, "vcs2samp/beach2457.dff", "vcs2samp/beach2457.txd");
AddSimpleModel(-1, 19379, -2911, "vcs2samp/beach2459.dff", "vcs2samp/beach2459.txd");
AddSimpleModel(-1, 19379, -2912, "vcs2samp/beach2464.dff", "vcs2samp/beach2464.txd");
AddSimpleModel(-1, 19379, -2913, "vcs2samp/beach2467.dff", "vcs2samp/beach2467.txd");
AddSimpleModel(-1, 19379, -2914, "vcs2samp/beach2471.dff", "vcs2samp/beach2471.txd");
AddSimpleModel(-1, 19379, -2915, "vcs2samp/beach2473.dff", "vcs2samp/beach2473.txd");
AddSimpleModel(-1, 19379, -2916, "vcs2samp/beach2474.dff", "vcs2samp/beach2474.txd");
AddSimpleModel(-1, 19379, -2917, "vcs2samp/beach2475.dff", "vcs2samp/beach2475.txd");
AddSimpleModel(-1, 19379, -2918, "vcs2samp/beach2477.dff", "vcs2samp/beach2477.txd");
AddSimpleModel(-1, 19379, -2919, "vcs2samp/beach2482.dff", "vcs2samp/beach2482.txd");
AddSimpleModel(-1, 19379, -2920, "vcs2samp/beach2484.dff", "vcs2samp/beach2484.txd");
AddSimpleModel(-1, 19379, -2921, "vcs2samp/beach2485.dff", "vcs2samp/beach2485.txd");
AddSimpleModel(-1, 19379, -2922, "vcs2samp/beach2486.dff", "vcs2samp/beach2486.txd");
AddSimpleModel(-1, 19379, -2923, "vcs2samp/beach2487.dff", "vcs2samp/beach2487.txd");
AddSimpleModel(-1, 19379, -2924, "vcs2samp/beach2488.dff", "vcs2samp/beach2488.txd");
AddSimpleModel(-1, 19379, -2925, "vcs2samp/beach2492.dff", "vcs2samp/beach2492.txd");
AddSimpleModel(-1, 19379, -2926, "vcs2samp/beach2493.dff", "vcs2samp/beach2493.txd");
AddSimpleModel(-1, 19379, -2927, "vcs2samp/beach2494.dff", "vcs2samp/beach2494.txd");
AddSimpleModel(-1, 19379, -2928, "vcs2samp/beach2495.dff", "vcs2samp/beach2495.txd");
AddSimpleModel(-1, 19379, -2929, "vcs2samp/beach2496.dff", "vcs2samp/beach2496.txd");
AddSimpleModel(-1, 19379, -2930, "vcs2samp/beach2497.dff", "vcs2samp/beach2497.txd");
AddSimpleModel(-1, 19379, -2931, "vcs2samp/beach2507.dff", "vcs2samp/beach2507.txd");
AddSimpleModel(-1, 19379, -2932, "vcs2samp/beach2509.dff", "vcs2samp/beach2509.txd");
AddSimpleModel(-1, 19379, -2933, "vcs2samp/beach2512.dff", "vcs2samp/beach2512.txd");
AddSimpleModel(-1, 19379, -2934, "vcs2samp/beach2515.dff", "vcs2samp/beach2515.txd");
AddSimpleModel(-1, 19379, -2935, "vcs2samp/beach2517.dff", "vcs2samp/beach2517.txd");
AddSimpleModel(-1, 19379, -2936, "vcs2samp/beach2518.dff", "vcs2samp/beach2518.txd");
AddSimpleModel(-1, 19379, -2937, "vcs2samp/beach2519.dff", "vcs2samp/beach2519.txd");
AddSimpleModel(-1, 19379, -2938, "vcs2samp/beach2520.dff", "vcs2samp/beach2520.txd");
AddSimpleModel(-1, 19379, -2939, "vcs2samp/beach2521.dff", "vcs2samp/beach2521.txd");
AddSimpleModel(-1, 19379, -2940, "vcs2samp/beach2523.dff", "vcs2samp/beach2523.txd");
AddSimpleModel(-1, 19379, -2941, "vcs2samp/beach2526.dff", "vcs2samp/beach2526.txd");
AddSimpleModel(-1, 19379, -2942, "vcs2samp/beach2527.dff", "vcs2samp/beach2527.txd");
AddSimpleModel(-1, 19379, -2943, "vcs2samp/beach2529.dff", "vcs2samp/beach2529.txd");
AddSimpleModel(-1, 19379, -2944, "vcs2samp/beach2530.dff", "vcs2samp/beach2530.txd");
AddSimpleModel(-1, 19379, -2945, "vcs2samp/beach2531.dff", "vcs2samp/beach2531.txd");
AddSimpleModel(-1, 19379, -2946, "vcs2samp/beach2532.dff", "vcs2samp/beach2532.txd");
AddSimpleModel(-1, 19379, -2947, "vcs2samp/beach2536.dff", "vcs2samp/beach2536.txd");
AddSimpleModel(-1, 19379, -2948, "vcs2samp/beach2537.dff", "vcs2samp/beach2537.txd");
AddSimpleModel(-1, 19379, -2949, "vcs2samp/beach2538.dff", "vcs2samp/beach2538.txd");
AddSimpleModel(-1, 19379, -2950, "vcs2samp/beach2539.dff", "vcs2samp/beach2539.txd");
AddSimpleModel(-1, 19379, -2951, "vcs2samp/beach2542.dff", "vcs2samp/beach2542.txd");
AddSimpleModel(-1, 19379, -2952, "vcs2samp/beach2543.dff", "vcs2samp/beach2543.txd");
AddSimpleModel(-1, 19379, -2953, "vcs2samp/beach2548.dff", "vcs2samp/beach2548.txd");
AddSimpleModel(-1, 19379, -2954, "vcs2samp/beach2549.dff", "vcs2samp/beach2549.txd");
AddSimpleModel(-1, 19379, -2955, "vcs2samp/beach2550.dff", "vcs2samp/beach2550.txd");
AddSimpleModel(-1, 19379, -2956, "vcs2samp/beach2551.dff", "vcs2samp/beach2551.txd");
AddSimpleModel(-1, 19379, -2957, "vcs2samp/beach2555.dff", "vcs2samp/beach2555.txd");
AddSimpleModel(-1, 19379, -2958, "vcs2samp/beach2557.dff", "vcs2samp/beach2557.txd");
AddSimpleModel(-1, 19379, -2959, "vcs2samp/beach2558.dff", "vcs2samp/beach2558.txd");
AddSimpleModel(-1, 19379, -2960, "vcs2samp/beach2559.dff", "vcs2samp/beach2559.txd");
AddSimpleModel(-1, 19379, -2961, "vcs2samp/beach2560.dff", "vcs2samp/beach2560.txd");
AddSimpleModel(-1, 19379, -2962, "vcs2samp/beach2562.dff", "vcs2samp/beach2562.txd");
AddSimpleModel(-1, 19379, -2963, "vcs2samp/beach2563.dff", "vcs2samp/beach2563.txd");
AddSimpleModel(-1, 19379, -2964, "vcs2samp/beach2564.dff", "vcs2samp/beach2564.txd");
AddSimpleModel(-1, 19379, -2965, "vcs2samp/beach2566.dff", "vcs2samp/beach2566.txd");
AddSimpleModel(-1, 19379, -2966, "vcs2samp/beach2567.dff", "vcs2samp/beach2567.txd");
AddSimpleModel(-1, 19379, -2967, "vcs2samp/beach2568.dff", "vcs2samp/beach2568.txd");
AddSimpleModel(-1, 19379, -2968, "vcs2samp/beach2569.dff", "vcs2samp/beach2569.txd");
AddSimpleModel(-1, 19379, -2969, "vcs2samp/beach2570.dff", "vcs2samp/beach2570.txd");
AddSimpleModel(-1, 19379, -2970, "vcs2samp/beach2571.dff", "vcs2samp/beach2571.txd");
AddSimpleModel(-1, 19379, -2971, "vcs2samp/beach2572.dff", "vcs2samp/beach2572.txd");
AddSimpleModel(-1, 19379, -2972, "vcs2samp/beach2577.dff", "vcs2samp/beach2577.txd");
AddSimpleModel(-1, 19379, -2973, "vcs2samp/beach2578.dff", "vcs2samp/beach2578.txd");
AddSimpleModel(-1, 19379, -2974, "vcs2samp/beach2580.dff", "vcs2samp/beach2580.txd");
AddSimpleModel(-1, 19379, -2975, "vcs2samp/beach2582.dff", "vcs2samp/beach2582.txd");
AddSimpleModel(-1, 19379, -2976, "vcs2samp/beach2584.dff", "vcs2samp/beach2584.txd");
AddSimpleModel(-1, 19379, -2977, "vcs2samp/beach2586.dff", "vcs2samp/beach2586.txd");
AddSimpleModel(-1, 19379, -2978, "vcs2samp/beach2588.dff", "vcs2samp/beach2588.txd");
AddSimpleModel(-1, 19379, -2979, "vcs2samp/beach2590.dff", "vcs2samp/beach2590.txd");
AddSimpleModel(-1, 19379, -2980, "vcs2samp/beach2592.dff", "vcs2samp/beach2592.txd");
AddSimpleModel(-1, 19379, -2981, "vcs2samp/beach2594.dff", "vcs2samp/beach2594.txd");
AddSimpleModel(-1, 19379, -2982, "vcs2samp/beach2595.dff", "vcs2samp/beach2595.txd");
AddSimpleModel(-1, 19379, -2983, "vcs2samp/beach2596.dff", "vcs2samp/beach2596.txd");
AddSimpleModel(-1, 19379, -2984, "vcs2samp/beach2597.dff", "vcs2samp/beach2597.txd");
AddSimpleModel(-1, 19379, -2985, "vcs2samp/beach2598.dff", "vcs2samp/beach2598.txd");
AddSimpleModel(-1, 19379, -2986, "vcs2samp/beach2599.dff", "vcs2samp/beach2599.txd");
AddSimpleModel(-1, 19379, -2987, "vcs2samp/beach2600.dff", "vcs2samp/beach2600.txd");
AddSimpleModel(-1, 19379, -2988, "vcs2samp/beach2601.dff", "vcs2samp/beach2601.txd");
AddSimpleModel(-1, 19379, -2989, "vcs2samp/beach2602.dff", "vcs2samp/beach2602.txd");
AddSimpleModel(-1, 19379, -2990, "vcs2samp/beach2604.dff", "vcs2samp/beach2604.txd");
AddSimpleModel(-1, 19379, -2991, "vcs2samp/beach2606.dff", "vcs2samp/beach2606.txd");
AddSimpleModel(-1, 19379, -2992, "vcs2samp/beach2609.dff", "vcs2samp/beach2609.txd");
AddSimpleModel(-1, 19379, -2993, "vcs2samp/beach2612.dff", "vcs2samp/beach2612.txd");
AddSimpleModel(-1, 19379, -2994, "vcs2samp/beach2615.dff", "vcs2samp/beach2615.txd");
AddSimpleModel(-1, 19379, -2995, "vcs2samp/beach2619.dff", "vcs2samp/beach2619.txd");
AddSimpleModel(-1, 19379, -2996, "vcs2samp/beach2621.dff", "vcs2samp/beach2621.txd");
AddSimpleModel(-1, 19379, -2997, "vcs2samp/beach2623.dff", "vcs2samp/beach2623.txd");
AddSimpleModel(-1, 19379, -2998, "vcs2samp/beach2624.dff", "vcs2samp/beach2624.txd");
AddSimpleModel(-1, 19379, -2999, "vcs2samp/beach2634.dff", "vcs2samp/beach2634.txd");
AddSimpleModel(-1, 19379, -3000, "vcs2samp/beach2638.dff", "vcs2samp/beach2638.txd");
AddSimpleModel(-1, 19379, -3001, "vcs2samp/beach2642.dff", "vcs2samp/beach2642.txd");
AddSimpleModel(-1, 19379, -3002, "vcs2samp/beach2643.dff", "vcs2samp/beach2643.txd");
AddSimpleModel(-1, 19379, -3003, "vcs2samp/beach2645.dff", "vcs2samp/beach2645.txd");
AddSimpleModel(-1, 19379, -3004, "vcs2samp/beach2646.dff", "vcs2samp/beach2646.txd");
AddSimpleModel(-1, 19379, -3005, "vcs2samp/beach2647.dff", "vcs2samp/beach2647.txd");
AddSimpleModel(-1, 19379, -3006, "vcs2samp/beach2650.dff", "vcs2samp/beach2650.txd");
AddSimpleModel(-1, 19379, -3007, "vcs2samp/beach2657.dff", "vcs2samp/beach2657.txd");
AddSimpleModel(-1, 19379, -3008, "vcs2samp/beach2658.dff", "vcs2samp/beach2658.txd");
AddSimpleModel(-1, 19379, -3009, "vcs2samp/beach2659.dff", "vcs2samp/beach2659.txd");
AddSimpleModel(-1, 19379, -3010, "vcs2samp/beach2660.dff", "vcs2samp/beach2660.txd");
AddSimpleModel(-1, 19379, -3011, "vcs2samp/beach2663.dff", "vcs2samp/beach2663.txd");
AddSimpleModel(-1, 19379, -3012, "vcs2samp/beach2666.dff", "vcs2samp/beach2666.txd");
AddSimpleModel(-1, 19379, -3013, "vcs2samp/beach2668.dff", "vcs2samp/beach2668.txd");
AddSimpleModel(-1, 19379, -3014, "vcs2samp/beach2670.dff", "vcs2samp/beach2670.txd");
AddSimpleModel(-1, 19379, -3015, "vcs2samp/beach2677.dff", "vcs2samp/beach2677.txd");
AddSimpleModel(-1, 19379, -3016, "vcs2samp/beach2682.dff", "vcs2samp/beach2682.txd");
AddSimpleModel(-1, 19379, -3017, "vcs2samp/beach2686.dff", "vcs2samp/beach2686.txd");
AddSimpleModel(-1, 19379, -3018, "vcs2samp/beach2688.dff", "vcs2samp/beach2688.txd");
AddSimpleModel(-1, 19379, -3019, "vcs2samp/beach2689.dff", "vcs2samp/beach2689.txd");
AddSimpleModel(-1, 19379, -3020, "vcs2samp/beach2690.dff", "vcs2samp/beach2690.txd");
AddSimpleModel(-1, 19379, -3021, "vcs2samp/beach2691.dff", "vcs2samp/beach2691.txd");
AddSimpleModel(-1, 19379, -3022, "vcs2samp/beach2692.dff", "vcs2samp/beach2692.txd");
AddSimpleModel(-1, 19379, -3023, "vcs2samp/beach2693.dff", "vcs2samp/beach2693.txd");
AddSimpleModel(-1, 19379, -3024, "vcs2samp/beach2694.dff", "vcs2samp/beach2694.txd");
AddSimpleModel(-1, 19379, -3025, "vcs2samp/beach2696.dff", "vcs2samp/beach2696.txd");
AddSimpleModel(-1, 19379, -3026, "vcs2samp/beach2697.dff", "vcs2samp/beach2697.txd");
AddSimpleModel(-1, 19379, -3027, "vcs2samp/beach2699.dff", "vcs2samp/beach2699.txd");
AddSimpleModel(-1, 19379, -3028, "vcs2samp/beach2700.dff", "vcs2samp/beach2700.txd");
AddSimpleModel(-1, 19379, -3029, "vcs2samp/beach2701.dff", "vcs2samp/beach2701.txd");
AddSimpleModel(-1, 19379, -3030, "vcs2samp/beach2703.dff", "vcs2samp/beach2703.txd");
AddSimpleModel(-1, 19379, -3031, "vcs2samp/beach2704.dff", "vcs2samp/beach2704.txd");
AddSimpleModel(-1, 19379, -3032, "vcs2samp/beach2705.dff", "vcs2samp/beach2705.txd");
AddSimpleModel(-1, 19379, -3033, "vcs2samp/beach2708.dff", "vcs2samp/beach2708.txd");
AddSimpleModel(-1, 19379, -3034, "vcs2samp/beach2711.dff", "vcs2samp/beach2711.txd");
AddSimpleModel(-1, 19379, -3035, "vcs2samp/beach2714.dff", "vcs2samp/beach2714.txd");
AddSimpleModel(-1, 19379, -3036, "vcs2samp/beach2715.dff", "vcs2samp/beach2715.txd");
AddSimpleModel(-1, 19379, -3037, "vcs2samp/beach2716.dff", "vcs2samp/beach2716.txd");
AddSimpleModel(-1, 19379, -3038, "vcs2samp/beach2720.dff", "vcs2samp/beach2720.txd");
AddSimpleModel(-1, 19379, -3039, "vcs2samp/beach2721.dff", "vcs2samp/beach2721.txd");
AddSimpleModel(-1, 19379, -3040, "vcs2samp/beach2722.dff", "vcs2samp/beach2722.txd");
AddSimpleModel(-1, 19379, -3041, "vcs2samp/beach2724.dff", "vcs2samp/beach2724.txd");
AddSimpleModel(-1, 19379, -3042, "vcs2samp/beach2725.dff", "vcs2samp/beach2725.txd");
AddSimpleModel(-1, 19379, -3043, "vcs2samp/beach2738.dff", "vcs2samp/beach2738.txd");
AddSimpleModel(-1, 19379, -3044, "vcs2samp/beach2742.dff", "vcs2samp/beach2742.txd");
AddSimpleModel(-1, 19379, -3045, "vcs2samp/beach2748.dff", "vcs2samp/beach2748.txd");
AddSimpleModel(-1, 19379, -3046, "vcs2samp/beach2749.dff", "vcs2samp/beach2749.txd");
AddSimpleModel(-1, 19379, -3047, "vcs2samp/beach2750.dff", "vcs2samp/beach2750.txd");
AddSimpleModel(-1, 19379, -3048, "vcs2samp/beach2751.dff", "vcs2samp/beach2751.txd");
AddSimpleModel(-1, 19379, -3049, "vcs2samp/beach2752.dff", "vcs2samp/beach2752.txd");
AddSimpleModel(-1, 19379, -3050, "vcs2samp/beach2753.dff", "vcs2samp/beach2753.txd");
AddSimpleModel(-1, 19379, -3051, "vcs2samp/beach2756.dff", "vcs2samp/beach2756.txd");
AddSimpleModel(-1, 19379, -3052, "vcs2samp/beach2757.dff", "vcs2samp/beach2757.txd");
AddSimpleModel(-1, 19379, -3053, "vcs2samp/beach2758.dff", "vcs2samp/beach2758.txd");
AddSimpleModel(-1, 19379, -3054, "vcs2samp/beach2759.dff", "vcs2samp/beach2759.txd");
AddSimpleModel(-1, 19379, -3055, "vcs2samp/beach2760.dff", "vcs2samp/beach2760.txd");
AddSimpleModel(-1, 19379, -3056, "vcs2samp/beach2761.dff", "vcs2samp/beach2761.txd");
AddSimpleModel(-1, 19379, -3057, "vcs2samp/beach2762.dff", "vcs2samp/beach2762.txd");
AddSimpleModel(-1, 19379, -3058, "vcs2samp/beach2764.dff", "vcs2samp/beach2764.txd");
AddSimpleModel(-1, 19379, -3059, "vcs2samp/beach2766.dff", "vcs2samp/beach2766.txd");
AddSimpleModel(-1, 19379, -3060, "vcs2samp/beach2768.dff", "vcs2samp/beach2768.txd");
AddSimpleModel(-1, 19379, -3061, "vcs2samp/beach2770.dff", "vcs2samp/beach2770.txd");
AddSimpleModel(-1, 19379, -3062, "vcs2samp/beach2775.dff", "vcs2samp/beach2775.txd");
AddSimpleModel(-1, 19379, -3063, "vcs2samp/beach2777.dff", "vcs2samp/beach2777.txd");
AddSimpleModel(-1, 19379, -3064, "vcs2samp/beach2780.dff", "vcs2samp/beach2780.txd");
AddSimpleModel(-1, 19379, -3065, "vcs2samp/beach2781.dff", "vcs2samp/beach2781.txd");
AddSimpleModel(-1, 19379, -3066, "vcs2samp/beach2782.dff", "vcs2samp/beach2782.txd");
AddSimpleModel(-1, 19379, -3067, "vcs2samp/beach2783.dff", "vcs2samp/beach2783.txd");
AddSimpleModel(-1, 19379, -3068, "vcs2samp/beach2784.dff", "vcs2samp/beach2784.txd");
AddSimpleModel(-1, 19379, -3069, "vcs2samp/beach2786.dff", "vcs2samp/beach2786.txd");
AddSimpleModel(-1, 19379, -3070, "vcs2samp/beach2790.dff", "vcs2samp/beach2790.txd");
AddSimpleModel(-1, 19379, -3071, "vcs2samp/beach2793.dff", "vcs2samp/beach2793.txd");
AddSimpleModel(-1, 19379, -3072, "vcs2samp/beach2794.dff", "vcs2samp/beach2794.txd");
AddSimpleModel(-1, 19379, -3073, "vcs2samp/beach2795.dff", "vcs2samp/beach2795.txd");
AddSimpleModel(-1, 19379, -3074, "vcs2samp/beach2796.dff", "vcs2samp/beach2796.txd");
AddSimpleModel(-1, 19379, -3075, "vcs2samp/beach2797.dff", "vcs2samp/beach2797.txd");
AddSimpleModel(-1, 19379, -3076, "vcs2samp/beach2798.dff", "vcs2samp/beach2798.txd");
AddSimpleModel(-1, 19379, -3077, "vcs2samp/beach2799.dff", "vcs2samp/beach2799.txd");
AddSimpleModel(-1, 19379, -3078, "vcs2samp/beach2803.dff", "vcs2samp/beach2803.txd");
AddSimpleModel(-1, 19379, -3079, "vcs2samp/beach2805.dff", "vcs2samp/beach2805.txd");
AddSimpleModel(-1, 19379, -3080, "vcs2samp/beach2807.dff", "vcs2samp/beach2807.txd");
AddSimpleModel(-1, 19379, -3081, "vcs2samp/beach2808.dff", "vcs2samp/beach2808.txd");
AddSimpleModel(-1, 19379, -3082, "vcs2samp/beach2810.dff", "vcs2samp/beach2810.txd");
AddSimpleModel(-1, 19379, -3083, "vcs2samp/beach2812.dff", "vcs2samp/beach2812.txd");
AddSimpleModel(-1, 19379, -3084, "vcs2samp/beach2813.dff", "vcs2samp/beach2813.txd");
AddSimpleModel(-1, 19379, -3085, "vcs2samp/beach2816.dff", "vcs2samp/beach2816.txd");
AddSimpleModel(-1, 19379, -3086, "vcs2samp/beach2827.dff", "vcs2samp/beach2827.txd");
AddSimpleModel(-1, 19379, -3087, "vcs2samp/beach2830.dff", "vcs2samp/beach2830.txd");
AddSimpleModel(-1, 19379, -3088, "vcs2samp/beach2835.dff", "vcs2samp/beach2835.txd");
AddSimpleModel(-1, 19379, -3089, "vcs2samp/beach2836.dff", "vcs2samp/beach2836.txd");
AddSimpleModel(-1, 19379, -3090, "vcs2samp/beach2842.dff", "vcs2samp/beach2842.txd");
AddSimpleModel(-1, 19379, -3091, "vcs2samp/beach2852.dff", "vcs2samp/beach2852.txd");
AddSimpleModel(-1, 19379, -3092, "vcs2samp/beach2853.dff", "vcs2samp/beach2853.txd");
AddSimpleModel(-1, 19379, -3093, "vcs2samp/beach2871.dff", "vcs2samp/beach2871.txd");
AddSimpleModel(-1, 19379, -3094, "vcs2samp/beach2878.dff", "vcs2samp/beach2878.txd");
AddSimpleModel(-1, 19379, -3095, "vcs2samp/beach2884.dff", "vcs2samp/beach2884.txd");
AddSimpleModel(-1, 19379, -3096, "vcs2samp/beach2889.dff", "vcs2samp/beach2889.txd");
AddSimpleModel(-1, 19379, -3097, "vcs2samp/beach2896.dff", "vcs2samp/beach2896.txd");
AddSimpleModel(-1, 19379, -3098, "vcs2samp/beach2899.dff", "vcs2samp/beach2899.txd");
AddSimpleModel(-1, 19379, -3099, "vcs2samp/beach2902.dff", "vcs2samp/beach2902.txd");
AddSimpleModel(-1, 19379, -3100, "vcs2samp/beach2905.dff", "vcs2samp/beach2905.txd");
AddSimpleModel(-1, 19379, -3101, "vcs2samp/beach2910.dff", "vcs2samp/beach2910.txd");
AddSimpleModel(-1, 19379, -3102, "vcs2samp/beach2916.dff", "vcs2samp/beach2916.txd");
AddSimpleModel(-1, 19379, -3103, "vcs2samp/beach2918.dff", "vcs2samp/beach2918.txd");
AddSimpleModel(-1, 19379, -3104, "vcs2samp/beach2919.dff", "vcs2samp/beach2919.txd");
AddSimpleModel(-1, 19379, -3105, "vcs2samp/beach2920.dff", "vcs2samp/beach2920.txd");
AddSimpleModel(-1, 19379, -3106, "vcs2samp/beach2923.dff", "vcs2samp/beach2923.txd");
AddSimpleModel(-1, 19379, -3107, "vcs2samp/beach2931.dff", "vcs2samp/beach2931.txd");
AddSimpleModel(-1, 19379, -3108, "vcs2samp/beach2932.dff", "vcs2samp/beach2932.txd");
AddSimpleModel(-1, 19379, -3109, "vcs2samp/beach2935.dff", "vcs2samp/beach2935.txd");
AddSimpleModel(-1, 19379, -3110, "vcs2samp/beach2936.dff", "vcs2samp/beach2936.txd");
AddSimpleModel(-1, 19379, -3111, "vcs2samp/beach2937.dff", "vcs2samp/beach2937.txd");
AddSimpleModel(-1, 19379, -3112, "vcs2samp/beach2938.dff", "vcs2samp/beach2938.txd");
AddSimpleModel(-1, 19379, -3113, "vcs2samp/beach2940.dff", "vcs2samp/beach2940.txd");
AddSimpleModel(-1, 19379, -3114, "vcs2samp/beach2942.dff", "vcs2samp/beach2942.txd");
AddSimpleModel(-1, 19379, -3115, "vcs2samp/beach2945.dff", "vcs2samp/beach2945.txd");
AddSimpleModel(-1, 19379, -3116, "vcs2samp/beach2946.dff", "vcs2samp/beach2946.txd");
AddSimpleModel(-1, 19379, -3117, "vcs2samp/beach2948.dff", "vcs2samp/beach2948.txd");
AddSimpleModel(-1, 19379, -3118, "vcs2samp/beach2951.dff", "vcs2samp/beach2951.txd");
AddSimpleModel(-1, 19379, -3119, "vcs2samp/beach2952.dff", "vcs2samp/beach2952.txd");
AddSimpleModel(-1, 19379, -3120, "vcs2samp/beach2954.dff", "vcs2samp/beach2954.txd");
AddSimpleModel(-1, 19379, -3121, "vcs2samp/beach2955.dff", "vcs2samp/beach2955.txd");
AddSimpleModel(-1, 19379, -3122, "vcs2samp/beach2956.dff", "vcs2samp/beach2956.txd");
AddSimpleModel(-1, 19379, -3123, "vcs2samp/beach2957.dff", "vcs2samp/beach2957.txd");
AddSimpleModel(-1, 19379, -3124, "vcs2samp/beach2958.dff", "vcs2samp/beach2958.txd");
AddSimpleModel(-1, 19379, -3125, "vcs2samp/beach2959.dff", "vcs2samp/beach2959.txd");
AddSimpleModel(-1, 19379, -3126, "vcs2samp/beach2960.dff", "vcs2samp/beach2960.txd");
AddSimpleModel(-1, 19379, -3127, "vcs2samp/beach2961.dff", "vcs2samp/beach2961.txd");
AddSimpleModel(-1, 19379, -3128, "vcs2samp/beach2962.dff", "vcs2samp/beach2962.txd");
AddSimpleModel(-1, 19379, -3129, "vcs2samp/beach2963.dff", "vcs2samp/beach2963.txd");
AddSimpleModel(-1, 19379, -3130, "vcs2samp/beach2974.dff", "vcs2samp/beach2974.txd");
AddSimpleModel(-1, 19379, -3131, "vcs2samp/beach2975.dff", "vcs2samp/beach2975.txd");
AddSimpleModel(-1, 19379, -3132, "vcs2samp/beach2976.dff", "vcs2samp/beach2976.txd");
AddSimpleModel(-1, 19379, -3133, "vcs2samp/beach2977.dff", "vcs2samp/beach2977.txd");
AddSimpleModel(-1, 19379, -3134, "vcs2samp/beach2978.dff", "vcs2samp/beach2978.txd");
AddSimpleModel(-1, 19379, -3135, "vcs2samp/beach2979.dff", "vcs2samp/beach2979.txd");
AddSimpleModel(-1, 19379, -3136, "vcs2samp/beach2980.dff", "vcs2samp/beach2980.txd");
AddSimpleModel(-1, 19379, -3137, "vcs2samp/beach2981.dff", "vcs2samp/beach2981.txd");
AddSimpleModel(-1, 19379, -3138, "vcs2samp/beach2982.dff", "vcs2samp/beach2982.txd");
AddSimpleModel(-1, 19379, -3139, "vcs2samp/beach2983.dff", "vcs2samp/beach2983.txd");
AddSimpleModel(-1, 19379, -3140, "vcs2samp/beach2984.dff", "vcs2samp/beach2984.txd");
AddSimpleModel(-1, 19379, -3141, "vcs2samp/beach2985.dff", "vcs2samp/beach2985.txd");
AddSimpleModel(-1, 19379, -3142, "vcs2samp/beach2986.dff", "vcs2samp/beach2986.txd");
AddSimpleModel(-1, 19379, -3143, "vcs2samp/beach2987.dff", "vcs2samp/beach2987.txd");
AddSimpleModel(-1, 19379, -3144, "vcs2samp/beach2988.dff", "vcs2samp/beach2988.txd");
AddSimpleModel(-1, 19379, -3145, "vcs2samp/beach2989.dff", "vcs2samp/beach2989.txd");
AddSimpleModel(-1, 19379, -3146, "vcs2samp/beach2990.dff", "vcs2samp/beach2990.txd");
AddSimpleModel(-1, 19379, -3147, "vcs2samp/beach2991.dff", "vcs2samp/beach2991.txd");
AddSimpleModel(-1, 19379, -3148, "vcs2samp/beach2992.dff", "vcs2samp/beach2992.txd");
AddSimpleModel(-1, 19379, -3149, "vcs2samp/beach2993.dff", "vcs2samp/beach2993.txd");
AddSimpleModel(-1, 19379, -3150, "vcs2samp/beach2994.dff", "vcs2samp/beach2994.txd");
AddSimpleModel(-1, 19379, -3151, "vcs2samp/beach2995.dff", "vcs2samp/beach2995.txd");
AddSimpleModel(-1, 19379, -3152, "vcs2samp/beach2996.dff", "vcs2samp/beach2996.txd");
AddSimpleModel(-1, 19379, -3153, "vcs2samp/beach2999.dff", "vcs2samp/beach2999.txd");
AddSimpleModel(-1, 19379, -3154, "vcs2samp/beach3000.dff", "vcs2samp/beach3000.txd");
AddSimpleModel(-1, 19379, -3155, "vcs2samp/beach3001.dff", "vcs2samp/beach3001.txd");
AddSimpleModel(-1, 19379, -3156, "vcs2samp/beach3003.dff", "vcs2samp/beach3003.txd");
AddSimpleModel(-1, 19379, -3157, "vcs2samp/beach3005.dff", "vcs2samp/beach3005.txd");
AddSimpleModel(-1, 19379, -3158, "vcs2samp/beach3007.dff", "vcs2samp/beach3007.txd");
AddSimpleModel(-1, 19379, -3159, "vcs2samp/beach3008.dff", "vcs2samp/beach3008.txd");
AddSimpleModel(-1, 19379, -3160, "vcs2samp/beach3009.dff", "vcs2samp/beach3009.txd");
AddSimpleModel(-1, 19379, -3161, "vcs2samp/beach3010.dff", "vcs2samp/beach3010.txd");
AddSimpleModel(-1, 19379, -3162, "vcs2samp/beach3011.dff", "vcs2samp/beach3011.txd");
AddSimpleModel(-1, 19379, -3163, "vcs2samp/beach3013.dff", "vcs2samp/beach3013.txd");
AddSimpleModel(-1, 19379, -3164, "vcs2samp/beach3015.dff", "vcs2samp/beach3015.txd");
AddSimpleModel(-1, 19379, -3165, "vcs2samp/beach3020.dff", "vcs2samp/beach3020.txd");
AddSimpleModel(-1, 19379, -3166, "vcs2samp/beach3021.dff", "vcs2samp/beach3021.txd");
AddSimpleModel(-1, 19379, -3167, "vcs2samp/beach3023.dff", "vcs2samp/beach3023.txd");
AddSimpleModel(-1, 19379, -3168, "vcs2samp/beach3025.dff", "vcs2samp/beach3025.txd");
AddSimpleModel(-1, 19379, -3169, "vcs2samp/beach3027.dff", "vcs2samp/beach3027.txd");
AddSimpleModel(-1, 19379, -3170, "vcs2samp/beach3029.dff", "vcs2samp/beach3029.txd");
AddSimpleModel(-1, 19379, -3171, "vcs2samp/beach3030.dff", "vcs2samp/beach3030.txd");
AddSimpleModel(-1, 19379, -3172, "vcs2samp/beach3034.dff", "vcs2samp/beach3034.txd");
AddSimpleModel(-1, 19379, -3173, "vcs2samp/beach3048.dff", "vcs2samp/beach3048.txd");
AddSimpleModel(-1, 19379, -3174, "vcs2samp/beach3049.dff", "vcs2samp/beach3049.txd");
AddSimpleModel(-1, 19379, -3175, "vcs2samp/beach3050.dff", "vcs2samp/beach3050.txd");
AddSimpleModel(-1, 19379, -3176, "vcs2samp/beach3051.dff", "vcs2samp/beach3051.txd");
AddSimpleModel(-1, 19379, -3177, "vcs2samp/beach3052.dff", "vcs2samp/beach3052.txd");
AddSimpleModel(-1, 19379, -3178, "vcs2samp/beach3053.dff", "vcs2samp/beach3053.txd");
AddSimpleModel(-1, 19379, -3179, "vcs2samp/beach3054.dff", "vcs2samp/beach3054.txd");
AddSimpleModel(-1, 19379, -3180, "vcs2samp/beach3055.dff", "vcs2samp/beach3055.txd");
AddSimpleModel(-1, 19379, -3181, "vcs2samp/beach3056.dff", "vcs2samp/beach3056.txd");
AddSimpleModel(-1, 19379, -3182, "vcs2samp/beach3058.dff", "vcs2samp/beach3058.txd");
AddSimpleModel(-1, 19379, -3183, "vcs2samp/beach3059.dff", "vcs2samp/beach3059.txd");
AddSimpleModel(-1, 19379, -3184, "vcs2samp/beach3060.dff", "vcs2samp/beach3060.txd");
AddSimpleModel(-1, 19379, -3185, "vcs2samp/beach3061.dff", "vcs2samp/beach3061.txd");
AddSimpleModel(-1, 19379, -3186, "vcs2samp/beach3064.dff", "vcs2samp/beach3064.txd");
AddSimpleModel(-1, 19379, -3187, "vcs2samp/beach3065.dff", "vcs2samp/beach3065.txd");
AddSimpleModel(-1, 19379, -3188, "vcs2samp/beach3068.dff", "vcs2samp/beach3068.txd");
AddSimpleModel(-1, 19379, -3189, "vcs2samp/beach3070.dff", "vcs2samp/beach3070.txd");
AddSimpleModel(-1, 19379, -3190, "vcs2samp/beach3072.dff", "vcs2samp/beach3072.txd");
AddSimpleModel(-1, 19379, -3191, "vcs2samp/beach3074.dff", "vcs2samp/beach3074.txd");
AddSimpleModel(-1, 19379, -3192, "vcs2samp/beach871.dff", "vcs2samp/beach871.txd");
AddSimpleModel(-1, 19379, -3193, "vcs2samp/beach3075.dff", "vcs2samp/beach3075.txd");
AddSimpleModel(-1, 19379, -3194, "vcs2samp/beach3077.dff", "vcs2samp/beach3077.txd");
AddSimpleModel(-1, 19379, -3195, "vcs2samp/beach3079.dff", "vcs2samp/beach3079.txd");
AddSimpleModel(-1, 19379, -3196, "vcs2samp/beach3081.dff", "vcs2samp/beach3081.txd");
AddSimpleModel(-1, 19379, -3197, "vcs2samp/beach3083.dff", "vcs2samp/beach3083.txd");
AddSimpleModel(-1, 19379, -3198, "vcs2samp/beach1068.dff", "vcs2samp/beach1068.txd");
AddSimpleModel(-1, 19379, -3199, "vcs2samp/beach3086.dff", "vcs2samp/beach3086.txd");
AddSimpleModel(-1, 19379, -3200, "vcs2samp/beach3087.dff", "vcs2samp/beach3087.txd");
AddSimpleModel(-1, 19379, -3201, "vcs2samp/beach3088.dff", "vcs2samp/beach3088.txd");
AddSimpleModel(-1, 19379, -3202, "vcs2samp/beach3089.dff", "vcs2samp/beach3089.txd");
AddSimpleModel(-1, 19379, -3203, "vcs2samp/beach3091.dff", "vcs2samp/beach3091.txd");
AddSimpleModel(-1, 19379, -3204, "vcs2samp/beach3092.dff", "vcs2samp/beach3092.txd");
AddSimpleModel(-1, 19379, -3205, "vcs2samp/beach867.dff", "vcs2samp/beach867.txd");
AddSimpleModel(-1, 19379, -3206, "vcs2samp/beach3093.dff", "vcs2samp/beach3093.txd");
AddSimpleModel(-1, 19379, -3207, "vcs2samp/beach3095.dff", "vcs2samp/beach3095.txd");
AddSimpleModel(-1, 19379, -3208, "vcs2samp/beach3096.dff", "vcs2samp/beach3096.txd");
AddSimpleModel(-1, 19379, -3209, "vcs2samp/beach3097.dff", "vcs2samp/beach3097.txd");
AddSimpleModel(-1, 19379, -3210, "vcs2samp/beach3098.dff", "vcs2samp/beach3098.txd");
AddSimpleModel(-1, 19379, -3211, "vcs2samp/beach3099.dff", "vcs2samp/beach3099.txd");
AddSimpleModel(-1, 19379, -3212, "vcs2samp/beach3100.dff", "vcs2samp/beach3100.txd");
AddSimpleModel(-1, 19379, -3213, "vcs2samp/beach3102.dff", "vcs2samp/beach3102.txd");
AddSimpleModel(-1, 19379, -3214, "vcs2samp/beach3104.dff", "vcs2samp/beach3104.txd");
AddSimpleModel(-1, 19379, -3215, "vcs2samp/beach3106.dff", "vcs2samp/beach3106.txd");
AddSimpleModel(-1, 19379, -3216, "vcs2samp/beach3108.dff", "vcs2samp/beach3108.txd");
AddSimpleModel(-1, 19379, -3217, "vcs2samp/beach3110.dff", "vcs2samp/beach3110.txd");
AddSimpleModel(-1, 19379, -3218, "vcs2samp/beach3112.dff", "vcs2samp/beach3112.txd");
AddSimpleModel(-1, 19379, -3219, "vcs2samp/beach3113.dff", "vcs2samp/beach3113.txd");
AddSimpleModel(-1, 19379, -3220, "vcs2samp/beach3114.dff", "vcs2samp/beach3114.txd");
AddSimpleModel(-1, 19379, -3221, "vcs2samp/beach3116.dff", "vcs2samp/beach3116.txd");
AddSimpleModel(-1, 19379, -3222, "vcs2samp/beach3118.dff", "vcs2samp/beach3118.txd");
AddSimpleModel(-1, 19379, -3223, "vcs2samp/beach3119.dff", "vcs2samp/beach3119.txd");
AddSimpleModel(-1, 19379, -3224, "vcs2samp/beach3120.dff", "vcs2samp/beach3120.txd");
AddSimpleModel(-1, 19379, -3225, "vcs2samp/beach3123.dff", "vcs2samp/beach3123.txd");
AddSimpleModel(-1, 19379, -3226, "vcs2samp/beach3129.dff", "vcs2samp/beach3129.txd");
AddSimpleModel(-1, 19379, -3227, "vcs2samp/beach3131.dff", "vcs2samp/beach3131.txd");
AddSimpleModel(-1, 19379, -3228, "vcs2samp/beach3133.dff", "vcs2samp/beach3133.txd");
AddSimpleModel(-1, 19379, -3229, "vcs2samp/beach3136.dff", "vcs2samp/beach3136.txd");
AddSimpleModel(-1, 19379, -3230, "vcs2samp/beach3138.dff", "vcs2samp/beach3138.txd");
AddSimpleModel(-1, 19379, -3231, "vcs2samp/beach3142.dff", "vcs2samp/beach3142.txd");
AddSimpleModel(-1, 19379, -3232, "vcs2samp/beach3143.dff", "vcs2samp/beach3143.txd");
AddSimpleModel(-1, 19379, -3233, "vcs2samp/beach3144.dff", "vcs2samp/beach3144.txd");
AddSimpleModel(-1, 19379, -3234, "vcs2samp/beach3146.dff", "vcs2samp/beach3146.txd");
AddSimpleModel(-1, 19379, -3235, "vcs2samp/beach3147.dff", "vcs2samp/beach3147.txd");
AddSimpleModel(-1, 19379, -3236, "vcs2samp/beach3149.dff", "vcs2samp/beach3149.txd");
AddSimpleModel(-1, 19379, -3237, "vcs2samp/beach3151.dff", "vcs2samp/beach3151.txd");
AddSimpleModel(-1, 19379, -3238, "vcs2samp/beach3154.dff", "vcs2samp/beach3154.txd");
AddSimpleModel(-1, 19379, -3239, "vcs2samp/beach3157.dff", "vcs2samp/beach3157.txd");
AddSimpleModel(-1, 19379, -3240, "vcs2samp/beach3158.dff", "vcs2samp/beach3158.txd");
AddSimpleModel(-1, 19379, -3241, "vcs2samp/beach3159.dff", "vcs2samp/beach3159.txd");
AddSimpleModel(-1, 19379, -3242, "vcs2samp/beach3160.dff", "vcs2samp/beach3160.txd");
AddSimpleModel(-1, 19379, -3243, "vcs2samp/beach3161.dff", "vcs2samp/beach3161.txd");
AddSimpleModel(-1, 19379, -3244, "vcs2samp/beach3168.dff", "vcs2samp/beach3168.txd");
AddSimpleModel(-1, 19379, -3245, "vcs2samp/beach3169.dff", "vcs2samp/beach3169.txd");
AddSimpleModel(-1, 19379, -3246, "vcs2samp/beach3170.dff", "vcs2samp/beach3170.txd");
AddSimpleModel(-1, 19379, -3247, "vcs2samp/beach3171.dff", "vcs2samp/beach3171.txd");
AddSimpleModel(-1, 19379, -3248, "vcs2samp/beach3172.dff", "vcs2samp/beach3172.txd");
AddSimpleModel(-1, 19379, -3249, "vcs2samp/beach3173.dff", "vcs2samp/beach3173.txd");
AddSimpleModel(-1, 19379, -3250, "vcs2samp/beach3174.dff", "vcs2samp/beach3174.txd");
AddSimpleModel(-1, 19379, -3251, "vcs2samp/beach3175.dff", "vcs2samp/beach3175.txd");
AddSimpleModel(-1, 19379, -3252, "vcs2samp/beach3176.dff", "vcs2samp/beach3176.txd");
AddSimpleModel(-1, 19379, -3253, "vcs2samp/beach3177.dff", "vcs2samp/beach3177.txd");
AddSimpleModel(-1, 19379, -3254, "vcs2samp/beach3178.dff", "vcs2samp/beach3178.txd");
AddSimpleModel(-1, 19379, -3255, "vcs2samp/beach3179.dff", "vcs2samp/beach3179.txd");
AddSimpleModel(-1, 19379, -3256, "vcs2samp/beach3180.dff", "vcs2samp/beach3180.txd");
AddSimpleModel(-1, 19379, -3257, "vcs2samp/beach3181.dff", "vcs2samp/beach3181.txd");
AddSimpleModel(-1, 19379, -3258, "vcs2samp/beach3182.dff", "vcs2samp/beach3182.txd");
AddSimpleModel(-1, 19379, -3259, "vcs2samp/beach3183.dff", "vcs2samp/beach3183.txd");
AddSimpleModel(-1, 19379, -3260, "vcs2samp/beach3185.dff", "vcs2samp/beach3185.txd");
AddSimpleModel(-1, 19379, -3261, "vcs2samp/beach3186.dff", "vcs2samp/beach3186.txd");
AddSimpleModel(-1, 19379, -3262, "vcs2samp/beach3187.dff", "vcs2samp/beach3187.txd");
AddSimpleModel(-1, 19379, -3263, "vcs2samp/beach3188.dff", "vcs2samp/beach3188.txd");
AddSimpleModel(-1, 19379, -3264, "vcs2samp/beach3189.dff", "vcs2samp/beach3189.txd");
AddSimpleModel(-1, 19379, -3265, "vcs2samp/beach3190.dff", "vcs2samp/beach3190.txd");
AddSimpleModel(-1, 19379, -3266, "vcs2samp/beach3191.dff", "vcs2samp/beach3191.txd");
AddSimpleModel(-1, 19379, -3267, "vcs2samp/beach3192.dff", "vcs2samp/beach3192.txd");
AddSimpleModel(-1, 19379, -3268, "vcs2samp/beach3194.dff", "vcs2samp/beach3194.txd");
AddSimpleModel(-1, 19379, -3269, "vcs2samp/beach3195.dff", "vcs2samp/beach3195.txd");
AddSimpleModel(-1, 19379, -3270, "vcs2samp/beach3196.dff", "vcs2samp/beach3196.txd");
AddSimpleModel(-1, 19379, -3271, "vcs2samp/beach3199.dff", "vcs2samp/beach3199.txd");
AddSimpleModel(-1, 19379, -3272, "vcs2samp/beach3200.dff", "vcs2samp/beach3200.txd");
AddSimpleModel(-1, 19379, -3273, "vcs2samp/beach3201.dff", "vcs2samp/beach3201.txd");
AddSimpleModel(-1, 19379, -3274, "vcs2samp/beach3204.dff", "vcs2samp/beach3204.txd");
AddSimpleModel(-1, 19379, -3275, "vcs2samp/beach3205.dff", "vcs2samp/beach3205.txd");
AddSimpleModel(-1, 19379, -3276, "vcs2samp/beach3206.dff", "vcs2samp/beach3206.txd");
AddSimpleModel(-1, 19379, -3277, "vcs2samp/beach3210.dff", "vcs2samp/beach3210.txd");
AddSimpleModel(-1, 19379, -3278, "vcs2samp/beach3211.dff", "vcs2samp/beach3211.txd");
AddSimpleModel(-1, 19379, -3279, "vcs2samp/beach3212.dff", "vcs2samp/beach3212.txd");
AddSimpleModel(-1, 19379, -3280, "vcs2samp/beach3213.dff", "vcs2samp/beach3213.txd");
AddSimpleModel(-1, 19379, -3281, "vcs2samp/beach3215.dff", "vcs2samp/beach3215.txd");
AddSimpleModel(-1, 19379, -3282, "vcs2samp/beach3219.dff", "vcs2samp/beach3219.txd");
AddSimpleModel(-1, 19379, -3283, "vcs2samp/beach3220.dff", "vcs2samp/beach3220.txd");
AddSimpleModel(-1, 19379, -3284, "vcs2samp/beach3221.dff", "vcs2samp/beach3221.txd");
AddSimpleModel(-1, 19379, -3285, "vcs2samp/beach3223.dff", "vcs2samp/beach3223.txd");
AddSimpleModel(-1, 19379, -3286, "vcs2samp/beach3227.dff", "vcs2samp/beach3227.txd");
AddSimpleModel(-1, 19379, -3287, "vcs2samp/beach3228.dff", "vcs2samp/beach3228.txd");
AddSimpleModel(-1, 19379, -3288, "vcs2samp/beach3229.dff", "vcs2samp/beach3229.txd");
AddSimpleModel(-1, 19379, -3289, "vcs2samp/beach3230.dff", "vcs2samp/beach3230.txd");
AddSimpleModel(-1, 19379, -3290, "vcs2samp/beach3231.dff", "vcs2samp/beach3231.txd");
AddSimpleModel(-1, 19379, -3291, "vcs2samp/beach3232.dff", "vcs2samp/beach3232.txd");
AddSimpleModel(-1, 19379, -3292, "vcs2samp/beach3233.dff", "vcs2samp/beach3233.txd");
AddSimpleModel(-1, 19379, -3293, "vcs2samp/beach3234.dff", "vcs2samp/beach3234.txd");
AddSimpleModel(-1, 19379, -3294, "vcs2samp/beach3237.dff", "vcs2samp/beach3237.txd");
AddSimpleModel(-1, 19379, -3295, "vcs2samp/beach3238.dff", "vcs2samp/beach3238.txd");
AddSimpleModel(-1, 19379, -3296, "vcs2samp/beach3239.dff", "vcs2samp/beach3239.txd");
AddSimpleModel(-1, 19379, -3297, "vcs2samp/beach3240.dff", "vcs2samp/beach3240.txd");
AddSimpleModel(-1, 19379, -3298, "vcs2samp/beach3241.dff", "vcs2samp/beach3241.txd");
AddSimpleModel(-1, 19379, -3299, "vcs2samp/beach3242.dff", "vcs2samp/beach3242.txd");
AddSimpleModel(-1, 19379, -3300, "vcs2samp/beach3244.dff", "vcs2samp/beach3244.txd");
AddSimpleModel(-1, 19379, -3301, "vcs2samp/beach3246.dff", "vcs2samp/beach3246.txd");
AddSimpleModel(-1, 19379, -3302, "vcs2samp/beach3248.dff", "vcs2samp/beach3248.txd");
AddSimpleModel(-1, 19379, -3303, "vcs2samp/beach3250.dff", "vcs2samp/beach3250.txd");
AddSimpleModel(-1, 19379, -3304, "vcs2samp/beach3251.dff", "vcs2samp/beach3251.txd");
AddSimpleModel(-1, 19379, -3305, "vcs2samp/beach3252.dff", "vcs2samp/beach3252.txd");
AddSimpleModel(-1, 19379, -3306, "vcs2samp/beach3257.dff", "vcs2samp/beach3257.txd");
AddSimpleModel(-1, 19379, -3307, "vcs2samp/beach3263.dff", "vcs2samp/beach3263.txd");
AddSimpleModel(-1, 19379, -3308, "vcs2samp/beach3264.dff", "vcs2samp/beach3264.txd");
AddSimpleModel(-1, 19379, -3309, "vcs2samp/beach3268.dff", "vcs2samp/beach3268.txd");
AddSimpleModel(-1, 19379, -3310, "vcs2samp/beach3269.dff", "vcs2samp/beach3269.txd");
AddSimpleModel(-1, 19379, -3311, "vcs2samp/beach3270.dff", "vcs2samp/beach3270.txd");
AddSimpleModel(-1, 19379, -3312, "vcs2samp/beach3271.dff", "vcs2samp/beach3271.txd");
AddSimpleModel(-1, 19379, -3313, "vcs2samp/beach3274.dff", "vcs2samp/beach3274.txd");
AddSimpleModel(-1, 19379, -3314, "vcs2samp/beach3275.dff", "vcs2samp/beach3275.txd");
AddSimpleModel(-1, 19379, -3315, "vcs2samp/beach3276.dff", "vcs2samp/beach3276.txd");
AddSimpleModel(-1, 19379, -3316, "vcs2samp/beach3277.dff", "vcs2samp/beach3277.txd");
AddSimpleModel(-1, 19379, -3317, "vcs2samp/beach3279.dff", "vcs2samp/beach3279.txd");
AddSimpleModel(-1, 19379, -3318, "vcs2samp/beach3280.dff", "vcs2samp/beach3280.txd");
AddSimpleModel(-1, 19379, -3319, "vcs2samp/beach3282.dff", "vcs2samp/beach3282.txd");
AddSimpleModel(-1, 19379, -3320, "vcs2samp/beach3284.dff", "vcs2samp/beach3284.txd");
AddSimpleModel(-1, 19379, -3321, "vcs2samp/beach3286.dff", "vcs2samp/beach3286.txd");
AddSimpleModel(-1, 19379, -3322, "vcs2samp/beach3289.dff", "vcs2samp/beach3289.txd");
AddSimpleModel(-1, 19379, -3323, "vcs2samp/beach3290.dff", "vcs2samp/beach3290.txd");
AddSimpleModel(-1, 19379, -3324, "vcs2samp/beach3291.dff", "vcs2samp/beach3291.txd");
AddSimpleModel(-1, 19379, -3325, "vcs2samp/beach3294.dff", "vcs2samp/beach3294.txd");
AddSimpleModel(-1, 19379, -3326, "vcs2samp/beach3295.dff", "vcs2samp/beach3295.txd");
AddSimpleModel(-1, 19379, -3327, "vcs2samp/beach3296.dff", "vcs2samp/beach3296.txd");
AddSimpleModel(-1, 19379, -3328, "vcs2samp/beach3297.dff", "vcs2samp/beach3297.txd");
AddSimpleModel(-1, 19379, -3329, "vcs2samp/beach3298.dff", "vcs2samp/beach3298.txd");
AddSimpleModel(-1, 19379, -3330, "vcs2samp/beach3300.dff", "vcs2samp/beach3300.txd");
AddSimpleModel(-1, 19379, -3331, "vcs2samp/beach3301.dff", "vcs2samp/beach3301.txd");
AddSimpleModel(-1, 19379, -3332, "vcs2samp/beach3302.dff", "vcs2samp/beach3302.txd");
AddSimpleModel(-1, 19379, -3333, "vcs2samp/beach3303.dff", "vcs2samp/beach3303.txd");
AddSimpleModel(-1, 19379, -3334, "vcs2samp/beach3305.dff", "vcs2samp/beach3305.txd");
AddSimpleModel(-1, 19379, -3335, "vcs2samp/beach3307.dff", "vcs2samp/beach3307.txd");
AddSimpleModel(-1, 19379, -3336, "vcs2samp/beach3309.dff", "vcs2samp/beach3309.txd");
AddSimpleModel(-1, 19379, -3337, "vcs2samp/beach3314.dff", "vcs2samp/beach3314.txd");
AddSimpleModel(-1, 19379, -3338, "vcs2samp/beach3315.dff", "vcs2samp/beach3315.txd");
AddSimpleModel(-1, 19379, -3339, "vcs2samp/beach3316.dff", "vcs2samp/beach3316.txd");
AddSimpleModel(-1, 19379, -3340, "vcs2samp/beach3318.dff", "vcs2samp/beach3318.txd");
AddSimpleModel(-1, 19379, -3341, "vcs2samp/beach3323.dff", "vcs2samp/beach3323.txd");
AddSimpleModel(-1, 19379, -3342, "vcs2samp/beach3324.dff", "vcs2samp/beach3324.txd");
AddSimpleModel(-1, 19379, -3343, "vcs2samp/beach3325.dff", "vcs2samp/beach3325.txd");
AddSimpleModel(-1, 19379, -3344, "vcs2samp/beach3326.dff", "vcs2samp/beach3326.txd");
AddSimpleModel(-1, 19379, -3345, "vcs2samp/beach3327.dff", "vcs2samp/beach3327.txd");
AddSimpleModel(-1, 19379, -3346, "vcs2samp/beach3328.dff", "vcs2samp/beach3328.txd");
AddSimpleModel(-1, 19379, -3347, "vcs2samp/beach3329.dff", "vcs2samp/beach3329.txd");
AddSimpleModel(-1, 19379, -3348, "vcs2samp/beach3331.dff", "vcs2samp/beach3331.txd");
AddSimpleModel(-1, 19379, -3349, "vcs2samp/beach3332.dff", "vcs2samp/beach3332.txd");
AddSimpleModel(-1, 19379, -3350, "vcs2samp/beach3334.dff", "vcs2samp/beach3334.txd");
AddSimpleModel(-1, 19379, -3351, "vcs2samp/beach3335.dff", "vcs2samp/beach3335.txd");
AddSimpleModel(-1, 19379, -3352, "vcs2samp/beach3337.dff", "vcs2samp/beach3337.txd");
AddSimpleModel(-1, 19379, -3353, "vcs2samp/beach3339.dff", "vcs2samp/beach3339.txd");
AddSimpleModel(-1, 19379, -3354, "vcs2samp/beach3340.dff", "vcs2samp/beach3340.txd");
AddSimpleModel(-1, 19379, -3355, "vcs2samp/beach3341.dff", "vcs2samp/beach3341.txd");
AddSimpleModel(-1, 19379, -3356, "vcs2samp/beach3342.dff", "vcs2samp/beach3342.txd");
AddSimpleModel(-1, 19379, -3357, "vcs2samp/beach3343.dff", "vcs2samp/beach3343.txd");
AddSimpleModel(-1, 19379, -3358, "vcs2samp/beach3345.dff", "vcs2samp/beach3345.txd");
AddSimpleModel(-1, 19379, -3359, "vcs2samp/beach3346.dff", "vcs2samp/beach3346.txd");
AddSimpleModel(-1, 19379, -3360, "vcs2samp/beach3347.dff", "vcs2samp/beach3347.txd");
AddSimpleModel(-1, 19379, -3361, "vcs2samp/beach3348.dff", "vcs2samp/beach3348.txd");
AddSimpleModel(-1, 19379, -3362, "vcs2samp/beach3349.dff", "vcs2samp/beach3349.txd");
AddSimpleModel(-1, 19379, -3363, "vcs2samp/beach3351.dff", "vcs2samp/beach3351.txd");
AddSimpleModel(-1, 19379, -3364, "vcs2samp/beach3353.dff", "vcs2samp/beach3353.txd");
AddSimpleModel(-1, 19379, -3365, "vcs2samp/beach3356.dff", "vcs2samp/beach3356.txd");
AddSimpleModel(-1, 19379, -3366, "vcs2samp/beach3359.dff", "vcs2samp/beach3359.txd");
AddSimpleModel(-1, 19379, -3367, "vcs2samp/beach3360.dff", "vcs2samp/beach3360.txd");
AddSimpleModel(-1, 19379, -3368, "vcs2samp/beach3362.dff", "vcs2samp/beach3362.txd");
AddSimpleModel(-1, 19379, -3369, "vcs2samp/beach3364.dff", "vcs2samp/beach3364.txd");
AddSimpleModel(-1, 19379, -3370, "vcs2samp/beach3365.dff", "vcs2samp/beach3365.txd");
AddSimpleModel(-1, 19379, -3371, "vcs2samp/beach3368.dff", "vcs2samp/beach3368.txd");
AddSimpleModel(-1, 19379, -3372, "vcs2samp/beach3369.dff", "vcs2samp/beach3369.txd");
AddSimpleModel(-1, 19379, -3373, "vcs2samp/beach3370.dff", "vcs2samp/beach3370.txd");
AddSimpleModel(-1, 19379, -3374, "vcs2samp/beach3371.dff", "vcs2samp/beach3371.txd");
AddSimpleModel(-1, 19379, -3375, "vcs2samp/beach3372.dff", "vcs2samp/beach3372.txd");
AddSimpleModel(-1, 19379, -3376, "vcs2samp/beach3373.dff", "vcs2samp/beach3373.txd");
AddSimpleModel(-1, 19379, -3377, "vcs2samp/beach3380.dff", "vcs2samp/beach3380.txd");
AddSimpleModel(-1, 19379, -3378, "vcs2samp/beach3381.dff", "vcs2samp/beach3381.txd");
AddSimpleModel(-1, 19379, -3379, "vcs2samp/beach3385.dff", "vcs2samp/beach3385.txd");
AddSimpleModel(-1, 19379, -3380, "vcs2samp/beach3389.dff", "vcs2samp/beach3389.txd");
AddSimpleModel(-1, 19379, -3381, "vcs2samp/beach3391.dff", "vcs2samp/beach3391.txd");
AddSimpleModel(-1, 19379, -3382, "vcs2samp/beach3393.dff", "vcs2samp/beach3393.txd");
AddSimpleModel(-1, 19379, -3383, "vcs2samp/beach3394.dff", "vcs2samp/beach3394.txd");
AddSimpleModel(-1, 19379, -3384, "vcs2samp/beach3398.dff", "vcs2samp/beach3398.txd");
AddSimpleModel(-1, 19379, -3385, "vcs2samp/beach3402.dff", "vcs2samp/beach3402.txd");
AddSimpleModel(-1, 19379, -3386, "vcs2samp/beach3404.dff", "vcs2samp/beach3404.txd");
AddSimpleModel(-1, 19379, -3387, "vcs2samp/beach3406.dff", "vcs2samp/beach3406.txd");
AddSimpleModel(-1, 19379, -3388, "vcs2samp/beach3407.dff", "vcs2samp/beach3407.txd");
AddSimpleModel(-1, 19379, -3389, "vcs2samp/beach3408.dff", "vcs2samp/beach3408.txd");
AddSimpleModel(-1, 19379, -3390, "vcs2samp/beach3409.dff", "vcs2samp/beach3409.txd");
AddSimpleModel(-1, 19379, -3391, "vcs2samp/beach3411.dff", "vcs2samp/beach3411.txd");
AddSimpleModel(-1, 19379, -3392, "vcs2samp/beach3413.dff", "vcs2samp/beach3413.txd");
AddSimpleModel(-1, 19379, -3393, "vcs2samp/beach3415.dff", "vcs2samp/beach3415.txd");
AddSimpleModel(-1, 19379, -3394, "vcs2samp/beach3420.dff", "vcs2samp/beach3420.txd");
AddSimpleModel(-1, 19379, -3395, "vcs2samp/beach3422.dff", "vcs2samp/beach3422.txd");
AddSimpleModel(-1, 19379, -3396, "vcs2samp/beach3426.dff", "vcs2samp/beach3426.txd");
AddSimpleModel(-1, 19379, -3397, "vcs2samp/beach3429.dff", "vcs2samp/beach3429.txd");
AddSimpleModel(-1, 19379, -3398, "vcs2samp/beach3430.dff", "vcs2samp/beach3430.txd");
AddSimpleModel(-1, 19379, -3399, "vcs2samp/beach3431.dff", "vcs2samp/beach3431.txd");
AddSimpleModel(-1, 19379, -3400, "vcs2samp/beach3432.dff", "vcs2samp/beach3432.txd");
AddSimpleModel(-1, 19379, -3401, "vcs2samp/beach3434.dff", "vcs2samp/beach3434.txd");
AddSimpleModel(-1, 19379, -3402, "vcs2samp/beach3437.dff", "vcs2samp/beach3437.txd");
AddSimpleModel(-1, 19379, -3403, "vcs2samp/beach3438.dff", "vcs2samp/beach3438.txd");
AddSimpleModel(-1, 19379, -3404, "vcs2samp/beach3441.dff", "vcs2samp/beach3441.txd");
AddSimpleModel(-1, 19379, -3405, "vcs2samp/beach3443.dff", "vcs2samp/beach3443.txd");
AddSimpleModel(-1, 19379, -3406, "vcs2samp/beach3444.dff", "vcs2samp/beach3444.txd");
AddSimpleModel(-1, 19379, -3407, "vcs2samp/beach3445.dff", "vcs2samp/beach3445.txd");
AddSimpleModel(-1, 19379, -3408, "vcs2samp/beach3446.dff", "vcs2samp/beach3446.txd");
AddSimpleModel(-1, 19379, -3409, "vcs2samp/beach3448.dff", "vcs2samp/beach3448.txd");
AddSimpleModel(-1, 19379, -3410, "vcs2samp/beach3449.dff", "vcs2samp/beach3449.txd");
AddSimpleModel(-1, 19379, -3411, "vcs2samp/beach3453.dff", "vcs2samp/beach3453.txd");
AddSimpleModel(-1, 19379, -3412, "vcs2samp/beach3454.dff", "vcs2samp/beach3454.txd");
AddSimpleModel(-1, 19379, -3413, "vcs2samp/beach3455.dff", "vcs2samp/beach3455.txd");
AddSimpleModel(-1, 19379, -3414, "vcs2samp/beach3456.dff", "vcs2samp/beach3456.txd");
AddSimpleModel(-1, 19379, -3415, "vcs2samp/beach3457.dff", "vcs2samp/beach3457.txd");
AddSimpleModel(-1, 19379, -3416, "vcs2samp/beach3458.dff", "vcs2samp/beach3458.txd");
AddSimpleModel(-1, 19379, -3417, "vcs2samp/beach3460.dff", "vcs2samp/beach3460.txd");
AddSimpleModel(-1, 19379, -3418, "vcs2samp/beach3461.dff", "vcs2samp/beach3461.txd");
AddSimpleModel(-1, 19379, -3419, "vcs2samp/beach3462.dff", "vcs2samp/beach3462.txd");
AddSimpleModel(-1, 19379, -3420, "vcs2samp/beach3467.dff", "vcs2samp/beach3467.txd");
AddSimpleModel(-1, 19379, -3421, "vcs2samp/beach3468.dff", "vcs2samp/beach3468.txd");
AddSimpleModel(-1, 19379, -3422, "vcs2samp/beach3471.dff", "vcs2samp/beach3471.txd");
AddSimpleModel(-1, 19379, -3423, "vcs2samp/beach3473.dff", "vcs2samp/beach3473.txd");
AddSimpleModel(-1, 19379, -3424, "vcs2samp/beach3478.dff", "vcs2samp/beach3478.txd");
AddSimpleModel(-1, 19379, -3425, "vcs2samp/beach3479.dff", "vcs2samp/beach3479.txd");
AddSimpleModel(-1, 19379, -3426, "vcs2samp/beach3480.dff", "vcs2samp/beach3480.txd");
AddSimpleModel(-1, 19379, -3427, "vcs2samp/beach3485.dff", "vcs2samp/beach3485.txd");
AddSimpleModel(-1, 19379, -3428, "vcs2samp/beach3486.dff", "vcs2samp/beach3486.txd");
AddSimpleModel(-1, 19379, -3429, "vcs2samp/beach3488.dff", "vcs2samp/beach3488.txd");
AddSimpleModel(-1, 19379, -3430, "vcs2samp/beach3489.dff", "vcs2samp/beach3489.txd");
AddSimpleModel(-1, 19379, -3431, "vcs2samp/beach3490.dff", "vcs2samp/beach3490.txd");
AddSimpleModel(-1, 19379, -3432, "vcs2samp/beach3491.dff", "vcs2samp/beach3491.txd");
AddSimpleModel(-1, 19379, -3433, "vcs2samp/beach3496.dff", "vcs2samp/beach3496.txd");
AddSimpleModel(-1, 19379, -3434, "vcs2samp/beach3497.dff", "vcs2samp/beach3497.txd");
AddSimpleModel(-1, 19379, -3435, "vcs2samp/beach3509.dff", "vcs2samp/beach3509.txd");
AddSimpleModel(-1, 19379, -3436, "vcs2samp/beach3513.dff", "vcs2samp/beach3513.txd");
AddSimpleModel(-1, 19379, -3437, "vcs2samp/beach3515.dff", "vcs2samp/beach3515.txd");
AddSimpleModel(-1, 19379, -3438, "vcs2samp/beach3516.dff", "vcs2samp/beach3516.txd");
AddSimpleModel(-1, 19379, -3439, "vcs2samp/beach3517.dff", "vcs2samp/beach3517.txd");
AddSimpleModel(-1, 19379, -3440, "vcs2samp/beach3519.dff", "vcs2samp/beach3519.txd");
AddSimpleModel(-1, 19379, -3441, "vcs2samp/beach3520.dff", "vcs2samp/beach3520.txd");
AddSimpleModel(-1, 19379, -3442, "vcs2samp/beach3521.dff", "vcs2samp/beach3521.txd");
AddSimpleModel(-1, 19379, -3443, "vcs2samp/beach3523.dff", "vcs2samp/beach3523.txd");
AddSimpleModel(-1, 19379, -3444, "vcs2samp/beach3525.dff", "vcs2samp/beach3525.txd");
AddSimpleModel(-1, 19379, -3445, "vcs2samp/beach3526.dff", "vcs2samp/beach3526.txd");
AddSimpleModel(-1, 19379, -3446, "vcs2samp/beach3527.dff", "vcs2samp/beach3527.txd");
AddSimpleModel(-1, 19379, -3447, "vcs2samp/beach3528.dff", "vcs2samp/beach3528.txd");
AddSimpleModel(-1, 19379, -3448, "vcs2samp/beach3539.dff", "vcs2samp/beach3539.txd");
AddSimpleModel(-1, 19379, -3449, "vcs2samp/beach3540.dff", "vcs2samp/beach3540.txd");
AddSimpleModel(-1, 19379, -3450, "vcs2samp/beach3541.dff", "vcs2samp/beach3541.txd");
AddSimpleModel(-1, 19379, -3451, "vcs2samp/beach3542.dff", "vcs2samp/beach3542.txd");
AddSimpleModel(-1, 19379, -3452, "vcs2samp/beach3543.dff", "vcs2samp/beach3543.txd");
AddSimpleModel(-1, 19379, -3453, "vcs2samp/beach3547.dff", "vcs2samp/beach3547.txd");
AddSimpleModel(-1, 19379, -3454, "vcs2samp/beach3549.dff", "vcs2samp/beach3549.txd");
AddSimpleModel(-1, 19379, -3455, "vcs2samp/beach3550.dff", "vcs2samp/beach3550.txd");
AddSimpleModel(-1, 19379, -3456, "vcs2samp/beach3551.dff", "vcs2samp/beach3551.txd");
AddSimpleModel(-1, 19379, -3457, "vcs2samp/beach3553.dff", "vcs2samp/beach3553.txd");
AddSimpleModel(-1, 19379, -3458, "vcs2samp/beach3555.dff", "vcs2samp/beach3555.txd");
AddSimpleModel(-1, 19379, -3459, "vcs2samp/beach3557.dff", "vcs2samp/beach3557.txd");
AddSimpleModel(-1, 19379, -3460, "vcs2samp/beach3558.dff", "vcs2samp/beach3558.txd");
AddSimpleModel(-1, 19379, -3461, "vcs2samp/beach3559.dff", "vcs2samp/beach3559.txd");
AddSimpleModel(-1, 19379, -3462, "vcs2samp/beach3560.dff", "vcs2samp/beach3560.txd");
AddSimpleModel(-1, 19379, -3463, "vcs2samp/beach3562.dff", "vcs2samp/beach3562.txd");
AddSimpleModel(-1, 19379, -3464, "vcs2samp/beach3564.dff", "vcs2samp/beach3564.txd");
AddSimpleModel(-1, 19379, -3465, "vcs2samp/beach3565.dff", "vcs2samp/beach3565.txd");
AddSimpleModel(-1, 19379, -3466, "vcs2samp/beach3566.dff", "vcs2samp/beach3566.txd");
AddSimpleModel(-1, 19379, -3467, "vcs2samp/beach3567.dff", "vcs2samp/beach3567.txd");
AddSimpleModel(-1, 19379, -3468, "vcs2samp/beach3571.dff", "vcs2samp/beach3571.txd");
AddSimpleModel(-1, 19379, -3469, "vcs2samp/beach3575.dff", "vcs2samp/beach3575.txd");
AddSimpleModel(-1, 19379, -3470, "vcs2samp/beach3578.dff", "vcs2samp/beach3578.txd");
AddSimpleModel(-1, 19379, -3471, "vcs2samp/beach3579.dff", "vcs2samp/beach3579.txd");
AddSimpleModel(-1, 19379, -3472, "vcs2samp/beach3582.dff", "vcs2samp/beach3582.txd");
AddSimpleModel(-1, 19379, -3473, "vcs2samp/beach3585.dff", "vcs2samp/beach3585.txd");
AddSimpleModel(-1, 19379, -3474, "vcs2samp/beach3586.dff", "vcs2samp/beach3586.txd");
AddSimpleModel(-1, 19379, -3475, "vcs2samp/beach3590.dff", "vcs2samp/beach3590.txd");
AddSimpleModel(-1, 19379, -3476, "vcs2samp/beach3592.dff", "vcs2samp/beach3592.txd");
AddSimpleModel(-1, 19379, -3477, "vcs2samp/beach3594.dff", "vcs2samp/beach3594.txd");
AddSimpleModel(-1, 19379, -3478, "vcs2samp/beach3599.dff", "vcs2samp/beach3599.txd");
AddSimpleModel(-1, 19379, -3479, "vcs2samp/beach3600.dff", "vcs2samp/beach3600.txd");
AddSimpleModel(-1, 19379, -3480, "vcs2samp/beach3602.dff", "vcs2samp/beach3602.txd");
AddSimpleModel(-1, 19379, -3481, "vcs2samp/beach3603.dff", "vcs2samp/beach3603.txd");
AddSimpleModel(-1, 19379, -3482, "vcs2samp/beach3604.dff", "vcs2samp/beach3604.txd");
AddSimpleModel(-1, 19379, -3483, "vcs2samp/beach3605.dff", "vcs2samp/beach3605.txd");
AddSimpleModel(-1, 19379, -3484, "vcs2samp/beach3606.dff", "vcs2samp/beach3606.txd");
AddSimpleModel(-1, 19379, -3485, "vcs2samp/beach3607.dff", "vcs2samp/beach3607.txd");
AddSimpleModel(-1, 19379, -3486, "vcs2samp/beach3608.dff", "vcs2samp/beach3608.txd");
AddSimpleModel(-1, 19379, -3487, "vcs2samp/beach3614.dff", "vcs2samp/beach3614.txd");
AddSimpleModel(-1, 19379, -3488, "vcs2samp/beach3615.dff", "vcs2samp/beach3615.txd");
AddSimpleModel(-1, 19379, -3489, "vcs2samp/beach3616.dff", "vcs2samp/beach3616.txd");
AddSimpleModel(-1, 19379, -3490, "vcs2samp/beach3617.dff", "vcs2samp/beach3617.txd");
AddSimpleModel(-1, 19379, -3491, "vcs2samp/beach3619.dff", "vcs2samp/beach3619.txd");
AddSimpleModel(-1, 19379, -3492, "vcs2samp/beach3620.dff", "vcs2samp/beach3620.txd");
AddSimpleModel(-1, 19379, -3493, "vcs2samp/beach3622.dff", "vcs2samp/beach3622.txd");
AddSimpleModel(-1, 19379, -3494, "vcs2samp/beach3625.dff", "vcs2samp/beach3625.txd");
AddSimpleModel(-1, 19379, -3495, "vcs2samp/beach3629.dff", "vcs2samp/beach3629.txd");
AddSimpleModel(-1, 19379, -3496, "vcs2samp/beach3633.dff", "vcs2samp/beach3633.txd");
AddSimpleModel(-1, 19379, -3497, "vcs2samp/beach3642.dff", "vcs2samp/beach3642.txd");
AddSimpleModel(-1, 19379, -3498, "vcs2samp/beach3648.dff", "vcs2samp/beach3648.txd");
AddSimpleModel(-1, 19379, -3499, "vcs2samp/beach3649.dff", "vcs2samp/beach3649.txd");
AddSimpleModel(-1, 19379, -3500, "vcs2samp/beach3651.dff", "vcs2samp/beach3651.txd");
AddSimpleModel(-1, 19379, -3501, "vcs2samp/beach3652.dff", "vcs2samp/beach3652.txd");
AddSimpleModel(-1, 19379, -3502, "vcs2samp/beach3656.dff", "vcs2samp/beach3656.txd");
AddSimpleModel(-1, 19379, -3503, "vcs2samp/beach3659.dff", "vcs2samp/beach3659.txd");
AddSimpleModel(-1, 19379, -3504, "vcs2samp/beach3661.dff", "vcs2samp/beach3661.txd");
AddSimpleModel(-1, 19379, -3505, "vcs2samp/beach3662.dff", "vcs2samp/beach3662.txd");
AddSimpleModel(-1, 19379, -3506, "vcs2samp/beach3663.dff", "vcs2samp/beach3663.txd");
AddSimpleModel(-1, 19379, -3507, "vcs2samp/beach3665.dff", "vcs2samp/beach3665.txd");
AddSimpleModel(-1, 19379, -3508, "vcs2samp/beach3668.dff", "vcs2samp/beach3668.txd");
AddSimpleModel(-1, 19379, -3509, "vcs2samp/beach3670.dff", "vcs2samp/beach3670.txd");
AddSimpleModel(-1, 19379, -3510, "vcs2samp/beach3671.dff", "vcs2samp/beach3671.txd");
AddSimpleModel(-1, 19379, -3511, "vcs2samp/beach3672.dff", "vcs2samp/beach3672.txd");
AddSimpleModel(-1, 19379, -3512, "vcs2samp/beach3674.dff", "vcs2samp/beach3674.txd");
AddSimpleModel(-1, 19379, -3513, "vcs2samp/beach3675.dff", "vcs2samp/beach3675.txd");
AddSimpleModel(-1, 19379, -3514, "vcs2samp/beach3676.dff", "vcs2samp/beach3676.txd");
AddSimpleModel(-1, 19379, -3515, "vcs2samp/beach3677.dff", "vcs2samp/beach3677.txd");
AddSimpleModel(-1, 19379, -3516, "vcs2samp/beach3686.dff", "vcs2samp/beach3686.txd");
AddSimpleModel(-1, 19379, -3517, "vcs2samp/beach3689.dff", "vcs2samp/beach3689.txd");
AddSimpleModel(-1, 19379, -3518, "vcs2samp/beach3691.dff", "vcs2samp/beach3691.txd");
AddSimpleModel(-1, 19379, -3519, "vcs2samp/beach3694.dff", "vcs2samp/beach3694.txd");
AddSimpleModel(-1, 19379, -3520, "vcs2samp/beach3696.dff", "vcs2samp/beach3696.txd");
AddSimpleModel(-1, 19379, -3521, "vcs2samp/beach3698.dff", "vcs2samp/beach3698.txd");
AddSimpleModel(-1, 19379, -3522, "vcs2samp/beach3700.dff", "vcs2samp/beach3700.txd");
AddSimpleModel(-1, 19379, -3523, "vcs2samp/beach3716.dff", "vcs2samp/beach3716.txd");
AddSimpleModel(-1, 19379, -3524, "vcs2samp/beach3722.dff", "vcs2samp/beach3722.txd");
AddSimpleModel(-1, 19379, -3525, "vcs2samp/beach3726.dff", "vcs2samp/beach3726.txd");
AddSimpleModel(-1, 19379, -3526, "vcs2samp/beach3727.dff", "vcs2samp/beach3727.txd");
AddSimpleModel(-1, 19379, -3527, "vcs2samp/beach3729.dff", "vcs2samp/beach3729.txd");
AddSimpleModel(-1, 19379, -3528, "vcs2samp/beach3731.dff", "vcs2samp/beach3731.txd");
AddSimpleModel(-1, 19379, -3529, "vcs2samp/beach3732.dff", "vcs2samp/beach3732.txd");
AddSimpleModel(-1, 19379, -3530, "vcs2samp/beach3736.dff", "vcs2samp/beach3736.txd");
AddSimpleModel(-1, 19379, -3531, "vcs2samp/beach3739.dff", "vcs2samp/beach3739.txd");
AddSimpleModel(-1, 19379, -3532, "vcs2samp/beach3740.dff", "vcs2samp/beach3740.txd");
AddSimpleModel(-1, 19379, -3533, "vcs2samp/beach3821.dff", "vcs2samp/beach3821.txd");
AddSimpleModel(-1, 19379, -3534, "vcs2samp/beach3823.dff", "vcs2samp/beach3823.txd");
AddSimpleModel(-1, 19379, -3535, "vcs2samp/beach3831.dff", "vcs2samp/beach3831.txd");
AddSimpleModel(-1, 19379, -3536, "vcs2samp/beach3836.dff", "vcs2samp/beach3836.txd");
AddSimpleModel(-1, 19379, -3537, "vcs2samp/beach3899.dff", "vcs2samp/beach3899.txd");
AddSimpleModel(-1, 19379, -3538, "vcs2samp/beach3938.dff", "vcs2samp/beach3938.txd");
AddSimpleModel(-1, 19379, -3539, "vcs2samp/beach3956.dff", "vcs2samp/beach3956.txd");
AddSimpleModel(-1, 19379, -3540, "vcs2samp/beach3960.dff", "vcs2samp/beach3960.txd");
AddSimpleModel(-1, 19379, -3541, "vcs2samp/beach3961.dff", "vcs2samp/beach3961.txd");
AddSimpleModel(-1, 19379, -3542, "vcs2samp/beach3962.dff", "vcs2samp/beach3962.txd");
AddSimpleModel(-1, 19379, -3543, "vcs2samp/beach3963.dff", "vcs2samp/beach3963.txd");
AddSimpleModel(-1, 19379, -3544, "vcs2samp/beach3964.dff", "vcs2samp/beach3964.txd");
AddSimpleModel(-1, 19379, -3545, "vcs2samp/beach3966.dff", "vcs2samp/beach3966.txd");
AddSimpleModel(-1, 19379, -3546, "vcs2samp/beach3968.dff", "vcs2samp/beach3968.txd");
AddSimpleModel(-1, 19379, -3547, "vcs2samp/beach3969.dff", "vcs2samp/beach3969.txd");
AddSimpleModel(-1, 19379, -3548, "vcs2samp/beach3970.dff", "vcs2samp/beach3970.txd");
AddSimpleModel(-1, 19379, -3549, "vcs2samp/beach3972.dff", "vcs2samp/beach3972.txd");
AddSimpleModel(-1, 19379, -3550, "vcs2samp/beach4211.dff", "vcs2samp/beach4211.txd");
AddSimpleModel(-1, 19379, -3551, "vcs2samp/beach4212.dff", "vcs2samp/beach4212.txd");
AddSimpleModel(-1, 19379, -3552, "vcs2samp/beach4213.dff", "vcs2samp/beach4213.txd");
AddSimpleModel(-1, 19379, -3553, "vcs2samp/beach4214.dff", "vcs2samp/beach4214.txd");
AddSimpleModel(-1, 19379, -3554, "vcs2samp/beach4215.dff", "vcs2samp/beach4215.txd");
AddSimpleModel(-1, 19379, -3555, "vcs2samp/beach4216.dff", "vcs2samp/beach4216.txd");
AddSimpleModel(-1, 19379, -3556, "vcs2samp/beach4217.dff", "vcs2samp/beach4217.txd");
AddSimpleModel(-1, 19379, -3557, "vcs2samp/beach4218.dff", "vcs2samp/beach4218.txd");
AddSimpleModel(-1, 19379, -3558, "vcs2samp/beach4219.dff", "vcs2samp/beach4219.txd");
AddSimpleModel(-1, 19379, -3559, "vcs2samp/LODch4220.dff", "vcs2samp/LODch4220.txd");
AddSimpleModel(-1, 19379, -3560, "vcs2samp/beach4224.dff", "vcs2samp/beach4224.txd");
AddSimpleModel(-1, 19379, -3561, "vcs2samp/beach4225.dff", "vcs2samp/beach4225.txd");
AddSimpleModel(-1, 19379, -3562, "vcs2samp/beach4226.dff", "vcs2samp/beach4226.txd");
AddSimpleModel(-1, 19379, -3563, "vcs2samp/LODch4227.dff", "vcs2samp/LODch4227.txd");
AddSimpleModel(-1, 19379, -3564, "vcs2samp/beach4232.dff", "vcs2samp/beach4232.txd");
AddSimpleModel(-1, 19379, -3565, "vcs2samp/beach4233.dff", "vcs2samp/beach4233.txd");
AddSimpleModel(-1, 19379, -3566, "vcs2samp/beach4234.dff", "vcs2samp/beach4234.txd");
AddSimpleModel(-1, 19379, -3567, "vcs2samp/beach4235.dff", "vcs2samp/beach4235.txd");
AddSimpleModel(-1, 19379, -3568, "vcs2samp/beach4236.dff", "vcs2samp/beach4236.txd");
AddSimpleModel(-1, 19379, -3569, "vcs2samp/beach4237.dff", "vcs2samp/beach4237.txd");
AddSimpleModel(-1, 19379, -3570, "vcs2samp/beach4238.dff", "vcs2samp/beach4238.txd");
AddSimpleModel(-1, 19379, -3571, "vcs2samp/beach4239.dff", "vcs2samp/beach4239.txd");
AddSimpleModel(-1, 19379, -3572, "vcs2samp/LODch4256.dff", "vcs2samp/LODch4256.txd");
AddSimpleModel(-1, 19379, -3573, "vcs2samp/LODch4257.dff", "vcs2samp/LODch4257.txd");
AddSimpleModel(-1, 19379, -3574, "vcs2samp/LODch4258.dff", "vcs2samp/LODch4258.txd");
AddSimpleModel(-1, 19379, -3575, "vcs2samp/LODch4259.dff", "vcs2samp/LODch4259.txd");
AddSimpleModel(-1, 19379, -3576, "vcs2samp/LODch4260.dff", "vcs2samp/LODch4260.txd");
AddSimpleModel(-1, 19379, -3577, "vcs2samp/LODch4261.dff", "vcs2samp/LODch4261.txd");
AddSimpleModel(-1, 19379, -3578, "vcs2samp/LODch4264.dff", "vcs2samp/LODch4264.txd");
AddSimpleModel(-1, 19379, -3579, "vcs2samp/LODch4265.dff", "vcs2samp/LODch4265.txd");
AddSimpleModel(-1, 19379, -3580, "vcs2samp/LODch4266.dff", "vcs2samp/LODch4266.txd");
AddSimpleModel(-1, 19379, -3581, "vcs2samp/LODch4270.dff", "vcs2samp/LODch4270.txd");
AddSimpleModel(-1, 19379, -3582, "vcs2samp/LODch4274.dff", "vcs2samp/LODch4274.txd");
AddSimpleModel(-1, 19379, -3583, "vcs2samp/LODch4276.dff", "vcs2samp/LODch4276.txd");
AddSimpleModel(-1, 19379, -3584, "vcs2samp/LODch4278.dff", "vcs2samp/LODch4278.txd");
AddSimpleModel(-1, 19379, -3585, "vcs2samp/LODch4279.dff", "vcs2samp/LODch4279.txd");
AddSimpleModel(-1, 19379, -3586, "vcs2samp/LODch4283.dff", "vcs2samp/LODch4283.txd");
AddSimpleModel(-1, 19379, -3587, "vcs2samp/beach4290.dff", "vcs2samp/beach4290.txd");
AddSimpleModel(-1, 19379, -3588, "vcs2samp/beach4291.dff", "vcs2samp/beach4291.txd");
AddSimpleModel(-1, 19379, -3589, "vcs2samp/beach4292.dff", "vcs2samp/beach4292.txd");
AddSimpleModel(-1, 19379, -3590, "vcs2samp/beach4293.dff", "vcs2samp/beach4293.txd");
AddSimpleModel(-1, 19379, -3591, "vcs2samp/beach4294.dff", "vcs2samp/beach4294.txd");
AddSimpleModel(-1, 19379, -3592, "vcs2samp/beach4295.dff", "vcs2samp/beach4295.txd");
AddSimpleModel(-1, 19379, -3593, "vcs2samp/beach4296.dff", "vcs2samp/beach4296.txd");
AddSimpleModel(-1, 19379, -3594, "vcs2samp/beach4297.dff", "vcs2samp/beach4297.txd");
AddSimpleModel(-1, 19379, -3595, "vcs2samp/beach4298.dff", "vcs2samp/beach4298.txd");
AddSimpleModel(-1, 19379, -3596, "vcs2samp/beach4299.dff", "vcs2samp/beach4299.txd");
AddSimpleModel(-1, 19379, -3597, "vcs2samp/beach4300.dff", "vcs2samp/beach4300.txd");
AddSimpleModel(-1, 19379, -3598, "vcs2samp/beach4301.dff", "vcs2samp/beach4301.txd");
AddSimpleModel(-1, 19379, -3599, "vcs2samp/beach4315.dff", "vcs2samp/beach4315.txd");
AddSimpleModel(-1, 19379, -3600, "vcs2samp/beach4316.dff", "vcs2samp/beach4316.txd");
AddSimpleModel(-1, 19379, -3601, "vcs2samp/beach4317.dff", "vcs2samp/beach4317.txd");
AddSimpleModel(-1, 19379, -3602, "vcs2samp/beach4320.dff", "vcs2samp/beach4320.txd");
AddSimpleModel(-1, 19379, -3603, "vcs2samp/beach4321.dff", "vcs2samp/beach4321.txd");
AddSimpleModel(-1, 19379, -3604, "vcs2samp/beach4322.dff", "vcs2samp/beach4322.txd");
AddSimpleModel(-1, 19379, -3605, "vcs2samp/beach4323.dff", "vcs2samp/beach4323.txd");
AddSimpleModel(-1, 19379, -3606, "vcs2samp/beach4324.dff", "vcs2samp/beach4324.txd");
AddSimpleModel(-1, 19379, -3607, "vcs2samp/beach4325.dff", "vcs2samp/beach4325.txd");
AddSimpleModel(-1, 19379, -3608, "vcs2samp/LODch4340.dff", "vcs2samp/LODch4340.txd");
AddSimpleModel(-1, 19379, -3609, "vcs2samp/LODch4344.dff", "vcs2samp/LODch4344.txd");
AddSimpleModel(-1, 19379, -3610, "vcs2samp/LODch4349.dff", "vcs2samp/LODch4349.txd");
AddSimpleModel(-1, 19379, -3611, "vcs2samp/LODch4351.dff", "vcs2samp/LODch4351.txd");
AddSimpleModel(-1, 19379, -3612, "vcs2samp/LODch4352.dff", "vcs2samp/LODch4352.txd");
AddSimpleModel(-1, 19379, -3613, "vcs2samp/LODch4358.dff", "vcs2samp/LODch4358.txd");
AddSimpleModel(-1, 19379, -3614, "vcs2samp/LODch4361.dff", "vcs2samp/LODch4361.txd");
AddSimpleModel(-1, 19379, -3615, "vcs2samp/LODch4368.dff", "vcs2samp/LODch4368.txd");
AddSimpleModel(-1, 19379, -3616, "vcs2samp/LODch4370.dff", "vcs2samp/LODch4370.txd");
AddSimpleModel(-1, 19379, -3617, "vcs2samp/LODch4377.dff", "vcs2samp/LODch4377.txd");
AddSimpleModel(-1, 19379, -3618, "vcs2samp/LODch4379.dff", "vcs2samp/LODch4379.txd");
AddSimpleModel(-1, 19379, -3619, "vcs2samp/LODch4380.dff", "vcs2samp/LODch4380.txd");
AddSimpleModel(-1, 19379, -3620, "vcs2samp/LODch4381.dff", "vcs2samp/LODch4381.txd");
AddSimpleModel(-1, 19379, -3621, "vcs2samp/LODch4382.dff", "vcs2samp/LODch4382.txd");
AddSimpleModel(-1, 19379, -3622, "vcs2samp/beach4384.dff", "vcs2samp/beach4384.txd");
AddSimpleModel(-1, 19379, -3623, "vcs2samp/beach4385.dff", "vcs2samp/beach4385.txd");
AddSimpleModel(-1, 19379, -3624, "vcs2samp/beach4386.dff", "vcs2samp/beach4386.txd");
AddSimpleModel(-1, 19379, -3625, "vcs2samp/LODch4393.dff", "vcs2samp/LODch4393.txd");
AddSimpleModel(-1, 19379, -3626, "vcs2samp/LODch4397.dff", "vcs2samp/LODch4397.txd");
AddSimpleModel(-1, 19379, -3627, "vcs2samp/LODch4411.dff", "vcs2samp/LODch4411.txd");
AddSimpleModel(-1, 19379, -3628, "vcs2samp/LODch4412.dff", "vcs2samp/LODch4412.txd");
AddSimpleModel(-1, 19379, -3629, "vcs2samp/LODch4415.dff", "vcs2samp/LODch4415.txd");
AddSimpleModel(-1, 19379, -3630, "vcs2samp/LODch4416.dff", "vcs2samp/LODch4416.txd");
AddSimpleModel(-1, 19379, -3631, "vcs2samp/LODch4417.dff", "vcs2samp/LODch4417.txd");
AddSimpleModel(-1, 19379, -3632, "vcs2samp/LODch4419.dff", "vcs2samp/LODch4419.txd");
AddSimpleModel(-1, 19379, -3633, "vcs2samp/LODch4420.dff", "vcs2samp/LODch4420.txd");
AddSimpleModel(-1, 19379, -3634, "vcs2samp/LODch4421.dff", "vcs2samp/LODch4421.txd");
AddSimpleModel(-1, 19379, -3635, "vcs2samp/LODch4423.dff", "vcs2samp/LODch4423.txd");
AddSimpleModel(-1, 19379, -3636, "vcs2samp/LODch4424.dff", "vcs2samp/LODch4424.txd");
AddSimpleModel(-1, 19379, -3637, "vcs2samp/LODch4425.dff", "vcs2samp/LODch4425.txd");
AddSimpleModel(-1, 19379, -3638, "vcs2samp/LODch4426.dff", "vcs2samp/LODch4426.txd");
AddSimpleModel(-1, 19379, -3639, "vcs2samp/LODch4427.dff", "vcs2samp/LODch4427.txd");
AddSimpleModel(-1, 19379, -3640, "vcs2samp/LODch4428.dff", "vcs2samp/LODch4428.txd");
AddSimpleModel(-1, 19379, -3641, "vcs2samp/LODch4430.dff", "vcs2samp/LODch4430.txd");
AddSimpleModel(-1, 19379, -3642, "vcs2samp/LODch4431.dff", "vcs2samp/LODch4431.txd");
AddSimpleModel(-1, 19379, -3643, "vcs2samp/LODch4433.dff", "vcs2samp/LODch4433.txd");
AddSimpleModel(-1, 19379, -3644, "vcs2samp/LODch4436.dff", "vcs2samp/LODch4436.txd");
AddSimpleModel(-1, 19379, -3645, "vcs2samp/LODch4437.dff", "vcs2samp/LODch4437.txd");
AddSimpleModel(-1, 19379, -3646, "vcs2samp/LODch4439.dff", "vcs2samp/LODch4439.txd");
AddSimpleModel(-1, 19379, -3647, "vcs2samp/LODch4457.dff", "vcs2samp/LODch4457.txd");
AddSimpleModel(-1, 19379, -3648, "vcs2samp/LODch4459.dff", "vcs2samp/LODch4459.txd");
AddSimpleModel(-1, 19379, -3649, "vcs2samp/LODch4460.dff", "vcs2samp/LODch4460.txd");
AddSimpleModel(-1, 19379, -3650, "vcs2samp/LODch4461.dff", "vcs2samp/LODch4461.txd");
AddSimpleModel(-1, 19379, -3651, "vcs2samp/LODch4462.dff", "vcs2samp/LODch4462.txd");
AddSimpleModel(-1, 19379, -3652, "vcs2samp/LODch4463.dff", "vcs2samp/LODch4463.txd");
AddSimpleModel(-1, 19379, -3653, "vcs2samp/LODch4464.dff", "vcs2samp/LODch4464.txd");
AddSimpleModel(-1, 19379, -3654, "vcs2samp/LODch4465.dff", "vcs2samp/LODch4465.txd");
AddSimpleModel(-1, 19379, -3655, "vcs2samp/LODch4466.dff", "vcs2samp/LODch4466.txd");
AddSimpleModel(-1, 19379, -3656, "vcs2samp/LODch4467.dff", "vcs2samp/LODch4467.txd");
AddSimpleModel(-1, 19379, -3657, "vcs2samp/LODch4468.dff", "vcs2samp/LODch4468.txd");
AddSimpleModel(-1, 19379, -3658, "vcs2samp/LODch4469.dff", "vcs2samp/LODch4469.txd");
AddSimpleModel(-1, 19379, -3659, "vcs2samp/LODch4470.dff", "vcs2samp/LODch4470.txd");
AddSimpleModel(-1, 19379, -3660, "vcs2samp/LODch4471.dff", "vcs2samp/LODch4471.txd");
AddSimpleModel(-1, 19379, -3661, "vcs2samp/LODch4472.dff", "vcs2samp/LODch4472.txd");
AddSimpleModel(-1, 19379, -3662, "vcs2samp/LODch4473.dff", "vcs2samp/LODch4473.txd");
AddSimpleModel(-1, 19379, -3663, "vcs2samp/LODch4474.dff", "vcs2samp/LODch4474.txd");
AddSimpleModel(-1, 19379, -3664, "vcs2samp/LODch4476.dff", "vcs2samp/LODch4476.txd");
AddSimpleModel(-1, 19379, -3665, "vcs2samp/beach4477.dff", "vcs2samp/beach4477.txd");
AddSimpleModel(-1, 19379, -3666, "vcs2samp/beach4478.dff", "vcs2samp/beach4478.txd");
AddSimpleModel(-1, 19379, -3667, "vcs2samp/LODch4479.dff", "vcs2samp/LODch4479.txd");
AddSimpleModel(-1, 19379, -3668, "vcs2samp/beach4481.dff", "vcs2samp/beach4481.txd");
AddSimpleModel(-1, 19379, -3669, "vcs2samp/beach4482.dff", "vcs2samp/beach4482.txd");
AddSimpleModel(-1, 19379, -3670, "vcs2samp/beach4483.dff", "vcs2samp/beach4483.txd");
AddSimpleModel(-1, 19379, -3671, "vcs2samp/LODch4484.dff", "vcs2samp/LODch4484.txd");
AddSimpleModel(-1, 19379, -3672, "vcs2samp/LODch4488.dff", "vcs2samp/LODch4488.txd");
AddSimpleModel(-1, 19379, -3673, "vcs2samp/LODch4490.dff", "vcs2samp/LODch4490.txd");
AddSimpleModel(-1, 19379, -3674, "vcs2samp/beach4492.dff", "vcs2samp/beach4492.txd");
AddSimpleModel(-1, 19379, -3675, "vcs2samp/beach4493.dff", "vcs2samp/beach4493.txd");
AddSimpleModel(-1, 19379, -3676, "vcs2samp/beach4494.dff", "vcs2samp/beach4494.txd");
AddSimpleModel(-1, 19379, -3677, "vcs2samp/beach4495.dff", "vcs2samp/beach4495.txd");
AddSimpleModel(-1, 19379, -3678, "vcs2samp/LODch4496.dff", "vcs2samp/LODch4496.txd");
AddSimpleModel(-1, 19379, -3679, "vcs2samp/LODch4497.dff", "vcs2samp/LODch4497.txd");
AddSimpleModel(-1, 19379, -3680, "vcs2samp/beach4498.dff", "vcs2samp/beach4498.txd");
AddSimpleModel(-1, 19379, -3681, "vcs2samp/beach4501.dff", "vcs2samp/beach4501.txd");
AddSimpleModel(-1, 19379, -3682, "vcs2samp/LODch4502.dff", "vcs2samp/LODch4502.txd");
AddSimpleModel(-1, 19379, -3683, "vcs2samp/LODch4503.dff", "vcs2samp/LODch4503.txd");
AddSimpleModel(-1, 19379, -3684, "vcs2samp/LODch4508.dff", "vcs2samp/LODch4508.txd");
AddSimpleModel(-1, 19379, -3685, "vcs2samp/LODch4509.dff", "vcs2samp/LODch4509.txd");
AddSimpleModel(-1, 19379, -3686, "vcs2samp/LODch4511.dff", "vcs2samp/LODch4511.txd");
AddSimpleModel(-1, 19379, -3687, "vcs2samp/LODch4516.dff", "vcs2samp/LODch4516.txd");
AddSimpleModel(-1, 19379, -3688, "vcs2samp/LODch4518.dff", "vcs2samp/LODch4518.txd");
AddSimpleModel(-1, 19379, -3689, "vcs2samp/LODch4519.dff", "vcs2samp/LODch4519.txd");
AddSimpleModel(-1, 19379, -3690, "vcs2samp/beach4520.dff", "vcs2samp/beach4520.txd");
AddSimpleModel(-1, 19379, -3691, "vcs2samp/beach4522.dff", "vcs2samp/beach4522.txd");
AddSimpleModel(-1, 19379, -3692, "vcs2samp/LODch4523.dff", "vcs2samp/LODch4523.txd");
AddSimpleModel(-1, 19379, -3693, "vcs2samp/LODch4524.dff", "vcs2samp/LODch4524.txd");
AddSimpleModel(-1, 19379, -3694, "vcs2samp/LODch4526.dff", "vcs2samp/LODch4526.txd");
AddSimpleModel(-1, 19379, -3695, "vcs2samp/LODch4527.dff", "vcs2samp/LODch4527.txd");
AddSimpleModel(-1, 19379, -3696, "vcs2samp/LODch4528.dff", "vcs2samp/LODch4528.txd");
AddSimpleModel(-1, 19379, -3697, "vcs2samp/LODch4529.dff", "vcs2samp/LODch4529.txd");
AddSimpleModel(-1, 19379, -3698, "vcs2samp/LODch4530.dff", "vcs2samp/LODch4530.txd");
AddSimpleModel(-1, 19379, -3699, "vcs2samp/LODch4531.dff", "vcs2samp/LODch4531.txd");
AddSimpleModel(-1, 19379, -3700, "vcs2samp/LODch4532.dff", "vcs2samp/LODch4532.txd");
AddSimpleModel(-1, 19379, -3701, "vcs2samp/LODch4533.dff", "vcs2samp/LODch4533.txd");
AddSimpleModel(-1, 19379, -3702, "vcs2samp/LODch4534.dff", "vcs2samp/LODch4534.txd");
AddSimpleModel(-1, 19379, -3703, "vcs2samp/LODch4535.dff", "vcs2samp/LODch4535.txd");
AddSimpleModel(-1, 19379, -3704, "vcs2samp/LODch4536.dff", "vcs2samp/LODch4536.txd");
AddSimpleModel(-1, 19379, -3705, "vcs2samp/LODch4546.dff", "vcs2samp/LODch4546.txd");
AddSimpleModel(-1, 19379, -3706, "vcs2samp/LODch4559.dff", "vcs2samp/LODch4559.txd");
AddSimpleModel(-1, 19379, -3707, "vcs2samp/LODch4564.dff", "vcs2samp/LODch4564.txd");
AddSimpleModel(-1, 19379, -3708, "vcs2samp/LODch4567.dff", "vcs2samp/LODch4567.txd");
AddSimpleModel(-1, 19379, -3709, "vcs2samp/LODch4569.dff", "vcs2samp/LODch4569.txd");
AddSimpleModel(-1, 19379, -3710, "vcs2samp/LODch4571.dff", "vcs2samp/LODch4571.txd");
AddSimpleModel(-1, 19379, -3711, "vcs2samp/LODch4573.dff", "vcs2samp/LODch4573.txd");
AddSimpleModel(-1, 19379, -3712, "vcs2samp/LODch4577.dff", "vcs2samp/LODch4577.txd");
AddSimpleModel(-1, 19379, -3713, "vcs2samp/LODch4579.dff", "vcs2samp/LODch4579.txd");
AddSimpleModel(-1, 19379, -3714, "vcs2samp/LODch4581.dff", "vcs2samp/LODch4581.txd");
AddSimpleModel(-1, 19379, -3715, "vcs2samp/LODch4583.dff", "vcs2samp/LODch4583.txd");
AddSimpleModel(-1, 19379, -3716, "vcs2samp/LODch4584.dff", "vcs2samp/LODch4584.txd");
AddSimpleModel(-1, 19379, -3717, "vcs2samp/LODch4585.dff", "vcs2samp/LODch4585.txd");
AddSimpleModel(-1, 19379, -3718, "vcs2samp/LODch4586.dff", "vcs2samp/LODch4586.txd");
AddSimpleModel(-1, 19379, -3719, "vcs2samp/LODch4587.dff", "vcs2samp/LODch4587.txd");
AddSimpleModel(-1, 19379, -3720, "vcs2samp/LODch4588.dff", "vcs2samp/LODch4588.txd");
AddSimpleModel(-1, 19379, -3721, "vcs2samp/LODch4589.dff", "vcs2samp/LODch4589.txd");
AddSimpleModel(-1, 19379, -3722, "vcs2samp/LODch4590.dff", "vcs2samp/LODch4590.txd");
AddSimpleModel(-1, 19379, -3723, "vcs2samp/LODch4591.dff", "vcs2samp/LODch4591.txd");
AddSimpleModel(-1, 19379, -3724, "vcs2samp/LODch4593.dff", "vcs2samp/LODch4593.txd");
AddSimpleModel(-1, 19379, -3725, "vcs2samp/LODch4596.dff", "vcs2samp/LODch4596.txd");
AddSimpleModel(-1, 19379, -3726, "vcs2samp/LODch4599.dff", "vcs2samp/LODch4599.txd");
AddSimpleModel(-1, 19379, -3727, "vcs2samp/beach4600.dff", "vcs2samp/beach4600.txd");
AddSimpleModel(-1, 19379, -3728, "vcs2samp/beach4601.dff", "vcs2samp/beach4601.txd");
AddSimpleModel(-1, 19379, -3729, "vcs2samp/beach4602.dff", "vcs2samp/beach4602.txd");
AddSimpleModel(-1, 19379, -3730, "vcs2samp/LODch4603.dff", "vcs2samp/LODch4603.txd");
AddSimpleModel(-1, 19379, -3731, "vcs2samp/LODch4607.dff", "vcs2samp/LODch4607.txd");
AddSimpleModel(-1, 19379, -3732, "vcs2samp/LODch4611.dff", "vcs2samp/LODch4611.txd");
AddSimpleModel(-1, 19379, -3733, "vcs2samp/LODch4613.dff", "vcs2samp/LODch4613.txd");
AddSimpleModel(-1, 19379, -3734, "vcs2samp/LODch4614.dff", "vcs2samp/LODch4614.txd");
AddSimpleModel(-1, 19379, -3735, "vcs2samp/LODch4615.dff", "vcs2samp/LODch4615.txd");
AddSimpleModel(-1, 19379, -3736, "vcs2samp/LODch4621.dff", "vcs2samp/LODch4621.txd");
AddSimpleModel(-1, 19379, -3737, "vcs2samp/LODch4622.dff", "vcs2samp/LODch4622.txd");
AddSimpleModel(-1, 19379, -3738, "vcs2samp/beach4623.dff", "vcs2samp/beach4623.txd");
AddSimpleModel(-1, 19379, -3739, "vcs2samp/beach4624.dff", "vcs2samp/beach4624.txd");
AddSimpleModel(-1, 19379, -3740, "vcs2samp/LODch4625.dff", "vcs2samp/LODch4625.txd");
AddSimpleModel(-1, 19379, -3741, "vcs2samp/LODch4626.dff", "vcs2samp/LODch4626.txd");
AddSimpleModel(-1, 19379, -3742, "vcs2samp/beach4628.dff", "vcs2samp/beach4628.txd");
AddSimpleModel(-1, 19379, -3743, "vcs2samp/beach4629.dff", "vcs2samp/beach4629.txd");
AddSimpleModel(-1, 19379, -3744, "vcs2samp/LODch4630.dff", "vcs2samp/LODch4630.txd");
AddSimpleModel(-1, 19379, -3745, "vcs2samp/LODch4631.dff", "vcs2samp/LODch4631.txd");
AddSimpleModel(-1, 19379, -3746, "vcs2samp/LODch4632.dff", "vcs2samp/LODch4632.txd");
AddSimpleModel(-1, 19379, -3747, "vcs2samp/LODch4633.dff", "vcs2samp/LODch4633.txd");
AddSimpleModel(-1, 19379, -3748, "vcs2samp/LODch4634.dff", "vcs2samp/LODch4634.txd");
AddSimpleModel(-1, 19379, -3749, "vcs2samp/LODch4635.dff", "vcs2samp/LODch4635.txd");
AddSimpleModel(-1, 19379, -3750, "vcs2samp/LODch4636.dff", "vcs2samp/LODch4636.txd");
AddSimpleModel(-1, 19379, -3751, "vcs2samp/LODch4637.dff", "vcs2samp/LODch4637.txd");
AddSimpleModel(-1, 19379, -3752, "vcs2samp/LODch4638.dff", "vcs2samp/LODch4638.txd");
AddSimpleModel(-1, 19379, -3753, "vcs2samp/LODch4639.dff", "vcs2samp/LODch4639.txd");
AddSimpleModel(-1, 19379, -3754, "vcs2samp/LODch4654.dff", "vcs2samp/LODch4654.txd");
AddSimpleModel(-1, 19379, -3755, "vcs2samp/LODch4656.dff", "vcs2samp/LODch4656.txd");
AddSimpleModel(-1, 19379, -3756, "vcs2samp/LODch4657.dff", "vcs2samp/LODch4657.txd");
AddSimpleModel(-1, 19379, -3757, "vcs2samp/LODch4658.dff", "vcs2samp/LODch4658.txd");
AddSimpleModel(-1, 19379, -3758, "vcs2samp/LODch4660.dff", "vcs2samp/LODch4660.txd");
AddSimpleModel(-1, 19379, -3759, "vcs2samp/LODch4661.dff", "vcs2samp/LODch4661.txd");
AddSimpleModel(-1, 19379, -3760, "vcs2samp/LODch4670.dff", "vcs2samp/LODch4670.txd");
AddSimpleModel(-1, 19379, -3761, "vcs2samp/LODch4674.dff", "vcs2samp/LODch4674.txd");
AddSimpleModel(-1, 19379, -3762, "vcs2samp/LODch4677.dff", "vcs2samp/LODch4677.txd");
AddSimpleModel(-1, 19379, -3763, "vcs2samp/LODch4679.dff", "vcs2samp/LODch4679.txd");
AddSimpleModel(-1, 19379, -3764, "vcs2samp/LODch4682.dff", "vcs2samp/LODch4682.txd");
AddSimpleModel(-1, 19379, -3765, "vcs2samp/LODch4693.dff", "vcs2samp/LODch4693.txd");
AddSimpleModel(-1, 19379, -3766, "vcs2samp/LODch4700.dff", "vcs2samp/LODch4700.txd");
AddSimpleModel(-1, 19379, -3767, "vcs2samp/LODch4701.dff", "vcs2samp/LODch4701.txd");
AddSimpleModel(-1, 19379, -3768, "vcs2samp/LODch4706.dff", "vcs2samp/LODch4706.txd");
AddSimpleModel(-1, 19379, -3769, "vcs2samp/LODch4710.dff", "vcs2samp/LODch4710.txd");
AddSimpleModel(-1, 19379, -3770, "vcs2samp/LODch4715.dff", "vcs2samp/LODch4715.txd");
AddSimpleModel(-1, 19379, -3771, "vcs2samp/LODch4716.dff", "vcs2samp/LODch4716.txd");
AddSimpleModel(-1, 19379, -3772, "vcs2samp/LODch4717.dff", "vcs2samp/LODch4717.txd");
AddSimpleModel(-1, 19379, -3773, "vcs2samp/LODch4718.dff", "vcs2samp/LODch4718.txd");
AddSimpleModel(-1, 19379, -3774, "vcs2samp/LODch4722.dff", "vcs2samp/LODch4722.txd");
AddSimpleModel(-1, 19379, -3775, "vcs2samp/LODch4723.dff", "vcs2samp/LODch4723.txd");
AddSimpleModel(-1, 19379, -3776, "vcs2samp/LODch4724.dff", "vcs2samp/LODch4724.txd");
AddSimpleModel(-1, 19379, -3777, "vcs2samp/LODch4725.dff", "vcs2samp/LODch4725.txd");
AddSimpleModel(-1, 19379, -3778, "vcs2samp/LODch4728.dff", "vcs2samp/LODch4728.txd");
AddSimpleModel(-1, 19379, -3779, "vcs2samp/LODch4730.dff", "vcs2samp/LODch4730.txd");
AddSimpleModel(-1, 19379, -3780, "vcs2samp/LODch4736.dff", "vcs2samp/LODch4736.txd");
AddSimpleModel(-1, 19379, -3781, "vcs2samp/LODch4741.dff", "vcs2samp/LODch4741.txd");
AddSimpleModel(-1, 19379, -3782, "vcs2samp/LODch4744.dff", "vcs2samp/LODch4744.txd");
AddSimpleModel(-1, 19379, -3783, "vcs2samp/LODch4745.dff", "vcs2samp/LODch4745.txd");
AddSimpleModel(-1, 19379, -3784, "vcs2samp/LODch4747.dff", "vcs2samp/LODch4747.txd");
AddSimpleModel(-1, 19379, -3785, "vcs2samp/LODch4756.dff", "vcs2samp/LODch4756.txd");
AddSimpleModel(-1, 19379, -3786, "vcs2samp/LODch4757.dff", "vcs2samp/LODch4757.txd");
AddSimpleModel(-1, 19379, -3787, "vcs2samp/LODch4759.dff", "vcs2samp/LODch4759.txd");
AddSimpleModel(-1, 19379, -3788, "vcs2samp/LODch4761.dff", "vcs2samp/LODch4761.txd");
AddSimpleModel(-1, 19379, -3789, "vcs2samp/LODch4763.dff", "vcs2samp/LODch4763.txd");
AddSimpleModel(-1, 19379, -3790, "vcs2samp/LODch4764.dff", "vcs2samp/LODch4764.txd");
AddSimpleModel(-1, 19379, -3791, "vcs2samp/LODch4766.dff", "vcs2samp/LODch4766.txd");
AddSimpleModel(-1, 19379, -3792, "vcs2samp/LODch4774.dff", "vcs2samp/LODch4774.txd");
AddSimpleModel(-1, 19379, -3793, "vcs2samp/LODch4775.dff", "vcs2samp/LODch4775.txd");
AddSimpleModel(-1, 19379, -3794, "vcs2samp/LODch4779.dff", "vcs2samp/LODch4779.txd");
AddSimpleModel(-1, 19379, -3795, "vcs2samp/LODch4784.dff", "vcs2samp/LODch4784.txd");
AddSimpleModel(-1, 19379, -3796, "vcs2samp/LODch4786.dff", "vcs2samp/LODch4786.txd");
AddSimpleModel(-1, 19379, -3797, "vcs2samp/LODch4792.dff", "vcs2samp/LODch4792.txd");
AddSimpleModel(-1, 19379, -3798, "vcs2samp/LODch4795.dff", "vcs2samp/LODch4795.txd");
AddSimpleModel(-1, 19379, -3799, "vcs2samp/LODch4797.dff", "vcs2samp/LODch4797.txd");
AddSimpleModel(-1, 19379, -3800, "vcs2samp/LODch4798.dff", "vcs2samp/LODch4798.txd");
AddSimpleModel(-1, 19379, -3801, "vcs2samp/LODch4800.dff", "vcs2samp/LODch4800.txd");
AddSimpleModel(-1, 19379, -3802, "vcs2samp/LODch4801.dff", "vcs2samp/LODch4801.txd");
AddSimpleModel(-1, 19379, -3803, "vcs2samp/LODch4802.dff", "vcs2samp/LODch4802.txd");
AddSimpleModel(-1, 19379, -3804, "vcs2samp/LODch4804.dff", "vcs2samp/LODch4804.txd");
AddSimpleModel(-1, 19379, -3805, "vcs2samp/beach4810.dff", "vcs2samp/beach4810.txd");
AddSimpleModel(-1, 19379, -3806, "vcs2samp/LODch4811.dff", "vcs2samp/LODch4811.txd");
AddSimpleModel(-1, 19379, -3807, "vcs2samp/LODch4813.dff", "vcs2samp/LODch4813.txd");
AddSimpleModel(-1, 19379, -3808, "vcs2samp/LODch4817.dff", "vcs2samp/LODch4817.txd");
AddSimpleModel(-1, 19379, -3809, "vcs2samp/LODch4820.dff", "vcs2samp/LODch4820.txd");
AddSimpleModel(-1, 19379, -3810, "vcs2samp/LODch4823.dff", "vcs2samp/LODch4823.txd");
AddSimpleModel(-1, 19379, -3811, "vcs2samp/beach4827.dff", "vcs2samp/beach4827.txd");
AddSimpleModel(-1, 19379, -3812, "vcs2samp/beach4828.dff", "vcs2samp/beach4828.txd");
AddSimpleModel(-1, 19379, -3813, "vcs2samp/LODch4829.dff", "vcs2samp/LODch4829.txd");
AddSimpleModel(-1, 19379, -3814, "vcs2samp/LODch4842.dff", "vcs2samp/LODch4842.txd");
AddSimpleModel(-1, 19379, -3815, "vcs2samp/LODch4843.dff", "vcs2samp/LODch4843.txd");
AddSimpleModel(-1, 19379, -3816, "vcs2samp/beach4846.dff", "vcs2samp/beach4846.txd");
AddSimpleModel(-1, 19379, -3817, "vcs2samp/LODch4847.dff", "vcs2samp/LODch4847.txd");
AddSimpleModel(-1, 19379, -3818, "vcs2samp/LODch4849.dff", "vcs2samp/LODch4849.txd");
AddSimpleModel(-1, 19379, -3819, "vcs2samp/LODch4853.dff", "vcs2samp/LODch4853.txd");
AddSimpleModel(-1, 19379, -3820, "vcs2samp/beach4861.dff", "vcs2samp/beach4861.txd");
AddSimpleModel(-1, 19379, -3821, "vcs2samp/beach4862.dff", "vcs2samp/beach4862.txd");
AddSimpleModel(-1, 19379, -3822, "vcs2samp/LODch4877.dff", "vcs2samp/LODch4877.txd");
AddSimpleModel(-1, 19379, -3823, "vcs2samp/LODch4881.dff", "vcs2samp/LODch4881.txd");
AddSimpleModel(-1, 19379, -3824, "vcs2samp/LODch4885.dff", "vcs2samp/LODch4885.txd");
AddSimpleModel(-1, 19379, -3825, "vcs2samp/LODch4887.dff", "vcs2samp/LODch4887.txd");
AddSimpleModel(-1, 19379, -3826, "vcs2samp/LODch4889.dff", "vcs2samp/LODch4889.txd");
AddSimpleModel(-1, 19379, -3827, "vcs2samp/LODch4892.dff", "vcs2samp/LODch4892.txd");
AddSimpleModel(-1, 19379, -3828, "vcs2samp/LODch4894.dff", "vcs2samp/LODch4894.txd");
AddSimpleModel(-1, 19379, -3829, "vcs2samp/LODch4896.dff", "vcs2samp/LODch4896.txd");
AddSimpleModel(-1, 19379, -3830, "vcs2samp/LODch4901.dff", "vcs2samp/LODch4901.txd");
AddSimpleModel(-1, 19379, -3831, "vcs2samp/LODch4911.dff", "vcs2samp/LODch4911.txd");
AddSimpleModel(-1, 19379, -3832, "vcs2samp/LODch4930.dff", "vcs2samp/LODch4930.txd");
AddSimpleModel(-1, 19379, -3833, "vcs2samp/LODch4943.dff", "vcs2samp/LODch4943.txd");
AddSimpleModel(-1, 19379, -3834, "vcs2samp/LODch4947.dff", "vcs2samp/LODch4947.txd");
AddSimpleModel(-1, 19379, -3835, "vcs2samp/LODch4949.dff", "vcs2samp/LODch4949.txd");
AddSimpleModel(-1, 19379, -3836, "vcs2samp/LODch4963.dff", "vcs2samp/LODch4963.txd");
AddSimpleModel(-1, 19379, -3837, "vcs2samp/LODch4964.dff", "vcs2samp/LODch4964.txd");
AddSimpleModel(-1, 19379, -3838, "vcs2samp/LODch4965.dff", "vcs2samp/LODch4965.txd");
AddSimpleModel(-1, 19379, -3839, "vcs2samp/beach4967.dff", "vcs2samp/beach4967.txd");
AddSimpleModel(-1, 19379, -3840, "vcs2samp/beach4969.dff", "vcs2samp/beach4969.txd");
AddSimpleModel(-1, 19379, -3841, "vcs2samp/LODch4970.dff", "vcs2samp/LODch4970.txd");
AddSimpleModel(-1, 19379, -3842, "vcs2samp/LODch4971.dff", "vcs2samp/LODch4971.txd");
AddSimpleModel(-1, 19379, -3843, "vcs2samp/LODch4974.dff", "vcs2samp/LODch4974.txd");
AddSimpleModel(-1, 19379, -3844, "vcs2samp/beach4975.dff", "vcs2samp/beach4975.txd");
AddSimpleModel(-1, 19379, -3845, "vcs2samp/LODch4979.dff", "vcs2samp/LODch4979.txd");
AddSimpleModel(-1, 19379, -3846, "vcs2samp/LODch4981.dff", "vcs2samp/LODch4981.txd");
AddSimpleModel(-1, 19379, -3847, "vcs2samp/LODch4988.dff", "vcs2samp/LODch4988.txd");
AddSimpleModel(-1, 19379, -3848, "vcs2samp/LODch4992.dff", "vcs2samp/LODch4992.txd");
AddSimpleModel(-1, 19379, -3849, "vcs2samp/LODch4993.dff", "vcs2samp/LODch4993.txd");
AddSimpleModel(-1, 19379, -3850, "vcs2samp/LODch4997.dff", "vcs2samp/LODch4997.txd");
AddSimpleModel(-1, 19379, -3851, "vcs2samp/LODch4998.dff", "vcs2samp/LODch4998.txd");
AddSimpleModel(-1, 19379, -3852, "vcs2samp/LODch5002.dff", "vcs2samp/LODch5002.txd");
AddSimpleModel(-1, 19379, -3853, "vcs2samp/LODch5007.dff", "vcs2samp/LODch5007.txd");
AddSimpleModel(-1, 19379, -3854, "vcs2samp/LODch5015.dff", "vcs2samp/LODch5015.txd");
AddSimpleModel(-1, 19379, -3855, "vcs2samp/LODch5027.dff", "vcs2samp/LODch5027.txd");
AddSimpleModel(-1, 19379, -3856, "vcs2samp/LODch5034.dff", "vcs2samp/LODch5034.txd");
AddSimpleModel(-1, 19379, -3857, "vcs2samp/LODch5036.dff", "vcs2samp/LODch5036.txd");
AddSimpleModel(-1, 19379, -3858, "vcs2samp/LODch5039.dff", "vcs2samp/LODch5039.txd");
AddSimpleModel(-1, 19379, -3859, "vcs2samp/LODch5040.dff", "vcs2samp/LODch5040.txd");
AddSimpleModel(-1, 19379, -3860, "vcs2samp/beach5041.dff", "vcs2samp/beach5041.txd");
AddSimpleModel(-1, 19379, -3861, "vcs2samp/LODch5042.dff", "vcs2samp/LODch5042.txd");
AddSimpleModel(-1, 19379, -3862, "vcs2samp/LODch4952.dff", "vcs2samp/LODch4952.txd");
AddSimpleModel(-1, 19379, -3863, "vcs2samp/beach5045.dff", "vcs2samp/beach5045.txd");
AddSimpleModel(-1, 19379, -3864, "vcs2samp/beach5046.dff", "vcs2samp/beach5046.txd");
AddSimpleModel(-1, 19379, -3865, "vcs2samp/beach5047.dff", "vcs2samp/beach5047.txd");
AddSimpleModel(-1, 19379, -3866, "vcs2samp/beach5048.dff", "vcs2samp/beach5048.txd");
AddSimpleModel(-1, 19379, -3867, "vcs2samp/beach5049.dff", "vcs2samp/beach5049.txd");
AddSimpleModel(-1, 19379, -3868, "vcs2samp/LODch5055.dff", "vcs2samp/LODch5055.txd");
AddSimpleModel(-1, 19379, -3869, "vcs2samp/LODch5057.dff", "vcs2samp/LODch5057.txd");
AddSimpleModel(-1, 19379, -3870, "vcs2samp/LODch5059.dff", "vcs2samp/LODch5059.txd");
AddSimpleModel(-1, 19379, -3871, "vcs2samp/LODch5060.dff", "vcs2samp/LODch5060.txd");
AddSimpleModel(-1, 19379, -3872, "vcs2samp/LODch5061.dff", "vcs2samp/beach5061.txd");
AddSimpleModel(-1, 19379, -3873, "vcs2samp/LODch5066.dff", "vcs2samp/LODch5066.txd");
AddSimpleModel(-1, 19379, -3874, "vcs2samp/LODch5069.dff", "vcs2samp/LODch5069.txd");
AddSimpleModel(-1, 19379, -3875, "vcs2samp/LODch5070.dff", "vcs2samp/LODch5070.txd");
AddSimpleModel(-1, 19379, -3876, "vcs2samp/LODch5074.dff", "vcs2samp/LODch5074.txd");
AddSimpleModel(-1, 19379, -3877, "vcs2samp/LODch5081.dff", "vcs2samp/LODch5081.txd");
AddSimpleModel(-1, 19379, -3878, "vcs2samp/LODch5087.dff", "vcs2samp/LODch5087.txd");
AddSimpleModel(-1, 19379, -3879, "vcs2samp/LODch5090.dff", "vcs2samp/LODch5090.txd");
AddSimpleModel(-1, 19379, -3880, "vcs2samp/LODch5093.dff", "vcs2samp/LODch5093.txd");
AddSimpleModel(-1, 19379, -3881, "vcs2samp/LODch5094.dff", "vcs2samp/LODch5094.txd");
AddSimpleModel(-1, 19379, -3882, "vcs2samp/LODch5095.dff", "vcs2samp/LODch5095.txd");
AddSimpleModel(-1, 19379, -3883, "vcs2samp/LODch5097.dff", "vcs2samp/LODch5097.txd");
AddSimpleModel(-1, 19379, -3884, "vcs2samp/LODch5103.dff", "vcs2samp/LODch5103.txd");
AddSimpleModel(-1, 19379, -3885, "vcs2samp/LODch5105.dff", "vcs2samp/LODch5105.txd");
AddSimpleModel(-1, 19379, -3886, "vcs2samp/LODch5107.dff", "vcs2samp/LODch5107.txd");
AddSimpleModel(-1, 19379, -3887, "vcs2samp/LODch5108.dff", "vcs2samp/LODch5108.txd");
AddSimpleModel(-1, 19379, -3888, "vcs2samp/LODch5109.dff", "vcs2samp/LODch5109.txd");
AddSimpleModel(-1, 19379, -3889, "vcs2samp/LODch5110.dff", "vcs2samp/LODch5110.txd");
AddSimpleModel(-1, 19379, -3890, "vcs2samp/LODch5111.dff", "vcs2samp/LODch5111.txd");
AddSimpleModel(-1, 19379, -3891, "vcs2samp/LODch5112.dff", "vcs2samp/LODch5112.txd");
AddSimpleModel(-1, 19379, -3892, "vcs2samp/LODch5118.dff", "vcs2samp/LODch5118.txd");
AddSimpleModel(-1, 19379, -3893, "vcs2samp/LODch5120.dff", "vcs2samp/LODch5120.txd");
AddSimpleModel(-1, 19379, -3894, "vcs2samp/LODch5122.dff", "vcs2samp/LODch5122.txd");
AddSimpleModel(-1, 19379, -3895, "vcs2samp/LODch5123.dff", "vcs2samp/LODch5123.txd");
AddSimpleModel(-1, 19379, -3896, "vcs2samp/LODch5124.dff", "vcs2samp/LODch5124.txd");
AddSimpleModel(-1, 19379, -3897, "vcs2samp/LODch5125.dff", "vcs2samp/LODch5125.txd");
AddSimpleModel(-1, 19379, -3898, "vcs2samp/LODch5127.dff", "vcs2samp/LODch5127.txd");
AddSimpleModel(-1, 19379, -3899, "vcs2samp/LODch5128.dff", "vcs2samp/LODch5128.txd");
AddSimpleModel(-1, 19379, -3900, "vcs2samp/LODch5129.dff", "vcs2samp/LODch5129.txd");
AddSimpleModel(-1, 19379, -3901, "vcs2samp/LODch5131.dff", "vcs2samp/LODch5131.txd");
AddSimpleModel(-1, 19379, -3902, "vcs2samp/LODch5133.dff", "vcs2samp/LODch5133.txd");
AddSimpleModel(-1, 19379, -3903, "vcs2samp/LODch5136.dff", "vcs2samp/LODch5136.txd");
AddSimpleModel(-1, 19379, -3904, "vcs2samp/LODch5137.dff", "vcs2samp/LODch5137.txd");
AddSimpleModel(-1, 19379, -3905, "vcs2samp/LODch5141.dff", "vcs2samp/LODch5141.txd");
AddSimpleModel(-1, 19379, -3906, "vcs2samp/LODch5146.dff", "vcs2samp/LODch5146.txd");
AddSimpleModel(-1, 19379, -3907, "vcs2samp/LODch5148.dff", "vcs2samp/LODch5148.txd");
AddSimpleModel(-1, 19379, -3908, "vcs2samp/LODch5149.dff", "vcs2samp/LODch5149.txd");
AddSimpleModel(-1, 19379, -3909, "vcs2samp/LODch5150.dff", "vcs2samp/LODch5150.txd");
AddSimpleModel(-1, 19379, -3910, "vcs2samp/LODch5155.dff", "vcs2samp/LODch5155.txd");
AddSimpleModel(-1, 19379, -3911, "vcs2samp/LODch5157.dff", "vcs2samp/LODch5157.txd");
AddSimpleModel(-1, 19379, -3912, "vcs2samp/LODch5158.dff", "vcs2samp/LODch5158.txd");
AddSimpleModel(-1, 19379, -3913, "vcs2samp/LODch5168.dff", "vcs2samp/LODch5168.txd");
AddSimpleModel(-1, 19379, -3914, "vcs2samp/LODch5174.dff", "vcs2samp/LODch5174.txd");
AddSimpleModel(-1, 19379, -3915, "vcs2samp/LODch5177.dff", "vcs2samp/LODch5177.txd");
AddSimpleModel(-1, 19379, -3916, "vcs2samp/LODch5180.dff", "vcs2samp/LODch5180.txd");
AddSimpleModel(-1, 19379, -3917, "vcs2samp/LODch5183.dff", "vcs2samp/LODch5183.txd");
AddSimpleModel(-1, 19379, -3918, "vcs2samp/LODch5189.dff", "vcs2samp/LODch5189.txd");
AddSimpleModel(-1, 19379, -3919, "vcs2samp/LODch5191.dff", "vcs2samp/LODch5191.txd");
AddSimpleModel(-1, 19379, -3920, "vcs2samp/LODch5193.dff", "vcs2samp/beach5193.txd");
AddSimpleModel(-1, 19379, -3921, "vcs2samp/LODch5201.dff", "vcs2samp/LODch5201.txd");
AddSimpleModel(-1, 19379, -3922, "vcs2samp/LODch5205.dff", "vcs2samp/LODch5205.txd");
AddSimpleModel(-1, 19379, -3923, "vcs2samp/LODch5211.dff", "vcs2samp/LODch5211.txd");
AddSimpleModel(-1, 19379, -3924, "vcs2samp/LODch5214.dff", "vcs2samp/LODch5214.txd");
AddSimpleModel(-1, 19379, -3925, "vcs2samp/LODch5216.dff", "vcs2samp/LODch5216.txd");
AddSimpleModel(-1, 19379, -3926, "vcs2samp/LODch5217.dff", "vcs2samp/LODch5217.txd");
AddSimpleModel(-1, 19379, -3927, "vcs2samp/LODch5218.dff", "vcs2samp/LODch5218.txd");
AddSimpleModel(-1, 19379, -3928, "vcs2samp/LODch5219.dff", "vcs2samp/LODch5219.txd");
AddSimpleModel(-1, 19379, -3929, "vcs2samp/LODch5220.dff", "vcs2samp/LODch5220.txd");
AddSimpleModel(-1, 19379, -3930, "vcs2samp/LODch5222.dff", "vcs2samp/LODch5222.txd");
AddSimpleModel(-1, 19379, -3931, "vcs2samp/LODch5223.dff", "vcs2samp/LODch5223.txd");
AddSimpleModel(-1, 19379, -3932, "vcs2samp/LODch5224.dff", "vcs2samp/LODch5224.txd");
AddSimpleModel(-1, 19379, -3933, "vcs2samp/LODch5231.dff", "vcs2samp/LODch5231.txd");
AddSimpleModel(-1, 19379, -3934, "vcs2samp/LODch5238.dff", "vcs2samp/LODch5238.txd");
AddSimpleModel(-1, 19379, -3935, "vcs2samp/LODch5241.dff", "vcs2samp/LODch5241.txd");
AddSimpleModel(-1, 19379, -3936, "vcs2samp/LODch5244.dff", "vcs2samp/LODch5244.txd");
AddSimpleModel(-1, 19379, -3937, "vcs2samp/LODch5247.dff", "vcs2samp/beach5247.txd");
AddSimpleModel(-1, 19379, -3938, "vcs2samp/LODch5255.dff", "vcs2samp/LODch5255.txd");
AddSimpleModel(-1, 19379, -3939, "vcs2samp/beach5258.dff", "vcs2samp/beach5258.txd");
AddSimpleModel(-1, 19379, -3940, "vcs2samp/beach5259.dff", "vcs2samp/beach5259.txd");
AddSimpleModel(-1, 19379, -3941, "vcs2samp/beach5260.dff", "vcs2samp/beach5260.txd");
AddSimpleModel(-1, 19379, -3942, "vcs2samp/beach5261.dff", "vcs2samp/beach5261.txd");
AddSimpleModel(-1, 19379, -3943, "vcs2samp/beach5262.dff", "vcs2samp/beach5262.txd");
AddSimpleModel(-1, 19379, -3944, "vcs2samp/beach5263.dff", "vcs2samp/beach5263.txd");
AddSimpleModel(-1, 19379, -3945, "vcs2samp/beach5264.dff", "vcs2samp/beach5264.txd");
AddSimpleModel(-1, 19379, -3946, "vcs2samp/LODch5265.dff", "vcs2samp/LODch5265.txd");
AddSimpleModel(-1, 19379, -3947, "vcs2samp/LODch5077.dff", "vcs2samp/LODch5077.txd");
AddSimpleModel(-1, 19379, -3948, "vcs2samp/LODch5272.dff", "vcs2samp/LODch5272.txd");
AddSimpleModel(-1, 19379, -3949, "vcs2samp/LODch5274.dff", "vcs2samp/LODch5274.txd");
AddSimpleModel(-1, 19379, -3950, "vcs2samp/LODch5275.dff", "vcs2samp/LODch5275.txd");
AddSimpleModel(-1, 19379, -3951, "vcs2samp/LODch5276.dff", "vcs2samp/LODch5276.txd");
AddSimpleModel(-1, 19379, -3952, "vcs2samp/LODch5277.dff", "vcs2samp/LODch5277.txd");
AddSimpleModel(-1, 19379, -3953, "vcs2samp/LODch5278.dff", "vcs2samp/LODch5278.txd");
AddSimpleModel(-1, 19379, -3954, "vcs2samp/LODch5279.dff", "vcs2samp/LODch5279.txd");
AddSimpleModel(-1, 19379, -3955, "vcs2samp/LODch5280.dff", "vcs2samp/LODch5280.txd");
AddSimpleModel(-1, 19379, -3956, "vcs2samp/LODch5281.dff", "vcs2samp/LODch5281.txd");
AddSimpleModel(-1, 19379, -3957, "vcs2samp/LODch5282.dff", "vcs2samp/LODch5282.txd");
AddSimpleModel(-1, 19379, -3958, "vcs2samp/LODch5286.dff", "vcs2samp/LODch5286.txd");
AddSimpleModel(-1, 19379, -3959, "vcs2samp/LODch5287.dff", "vcs2samp/LODch5287.txd");
AddSimpleModel(-1, 19379, -3960, "vcs2samp/LODch5288.dff", "vcs2samp/LODch5288.txd");
AddSimpleModel(-1, 19379, -3961, "vcs2samp/LODch5289.dff", "vcs2samp/LODch5289.txd");
AddSimpleModel(-1, 19379, -3962, "vcs2samp/LODch5293.dff", "vcs2samp/LODch5293.txd");
AddSimpleModel(-1, 19379, -3963, "vcs2samp/LODch5298.dff", "vcs2samp/LODch5298.txd");
AddSimpleModel(-1, 19379, -3964, "vcs2samp/LODch5301.dff", "vcs2samp/LODch5301.txd");
AddSimpleModel(-1, 19379, -3965, "vcs2samp/LODch5302.dff", "vcs2samp/LODch5302.txd");
AddSimpleModel(-1, 19379, -3966, "vcs2samp/LODch5314.dff", "vcs2samp/LODch5314.txd");
AddSimpleModel(-1, 19379, -3967, "vcs2samp/LODch5325.dff", "vcs2samp/LODch5325.txd");
AddSimpleModel(-1, 19379, -3968, "vcs2samp/LODch5333.dff", "vcs2samp/LODch5333.txd");
AddSimpleModel(-1, 19379, -3969, "vcs2samp/LODch5343.dff", "vcs2samp/LODch5343.txd");
AddSimpleModel(-1, 19379, -3970, "vcs2samp/LODch5345.dff", "vcs2samp/LODch5345.txd");
AddSimpleModel(-1, 19379, -3971, "vcs2samp/LODch5346.dff", "vcs2samp/LODch5346.txd");
AddSimpleModel(-1, 19379, -3972, "vcs2samp/LODch5350.dff", "vcs2samp/LODch5350.txd");
AddSimpleModel(-1, 19379, -3973, "vcs2samp/LODch5351.dff", "vcs2samp/LODch5351.txd");
AddSimpleModel(-1, 19379, -3974, "vcs2samp/LODch5354.dff", "vcs2samp/LODch5354.txd");
AddSimpleModel(-1, 19379, -3975, "vcs2samp/LODch5356.dff", "vcs2samp/LODch5356.txd");
AddSimpleModel(-1, 19379, -3976, "vcs2samp/LODch5360.dff", "vcs2samp/LODch5360.txd");
AddSimpleModel(-1, 19379, -3977, "vcs2samp/LODch5366.dff", "vcs2samp/LODch5366.txd");
AddSimpleModel(-1, 19379, -3978, "vcs2samp/LODch5372.dff", "vcs2samp/LODch5372.txd");
AddSimpleModel(-1, 19379, -3979, "vcs2samp/LODch5375.dff", "vcs2samp/LODch5375.txd");
AddSimpleModel(-1, 19379, -3980, "vcs2samp/LODch5377.dff", "vcs2samp/LODch5377.txd");
AddSimpleModel(-1, 19379, -3981, "vcs2samp/LODch5379.dff", "vcs2samp/LODch5379.txd");
AddSimpleModel(-1, 19379, -3982, "vcs2samp/LODch5384.dff", "vcs2samp/LODch5384.txd");
AddSimpleModel(-1, 19379, -3983, "vcs2samp/LODch5386.dff", "vcs2samp/LODch5386.txd");
AddSimpleModel(-1, 19379, -3984, "vcs2samp/LODch5388.dff", "vcs2samp/LODch5388.txd");
AddSimpleModel(-1, 19379, -3985, "vcs2samp/LODch5390.dff", "vcs2samp/LODch5390.txd");
AddSimpleModel(-1, 19379, -3986, "vcs2samp/LODch5391.dff", "vcs2samp/LODch5391.txd");
AddSimpleModel(-1, 19379, -3987, "vcs2samp/LODch5392.dff", "vcs2samp/LODch5392.txd");
AddSimpleModel(-1, 19379, -3988, "vcs2samp/LODch5393.dff", "vcs2samp/LODch5393.txd");
AddSimpleModel(-1, 19379, -3989, "vcs2samp/LODch5394.dff", "vcs2samp/LODch5394.txd");
AddSimpleModel(-1, 19379, -3990, "vcs2samp/LODch5396.dff", "vcs2samp/LODch5396.txd");
AddSimpleModel(-1, 19379, -3991, "vcs2samp/LODch5397.dff", "vcs2samp/LODch5397.txd");
AddSimpleModel(-1, 19379, -3992, "vcs2samp/LODch5398.dff", "vcs2samp/LODch5398.txd");
AddSimpleModel(-1, 19379, -3993, "vcs2samp/LODch5399.dff", "vcs2samp/LODch5399.txd");
AddSimpleModel(-1, 19379, -3994, "vcs2samp/LODch5400.dff", "vcs2samp/LODch5400.txd");
AddSimpleModel(-1, 19379, -3995, "vcs2samp/LODch5401.dff", "vcs2samp/LODch5401.txd");
AddSimpleModel(-1, 19379, -3996, "vcs2samp/LODch5403.dff", "vcs2samp/LODch5403.txd");
AddSimpleModel(-1, 19379, -3997, "vcs2samp/LODch5404.dff", "vcs2samp/LODch5404.txd");
AddSimpleModel(-1, 19379, -3998, "vcs2samp/LODch5405.dff", "vcs2samp/LODch5405.txd");
AddSimpleModel(-1, 19379, -3999, "vcs2samp/LODch5410.dff", "vcs2samp/LODch5410.txd");
AddSimpleModel(-1, 19379, -4000, "vcs2samp/LODch5412.dff", "vcs2samp/LODch5412.txd");
AddSimpleModel(-1, 19379, -4001, "vcs2samp/LODch5414.dff", "vcs2samp/LODch5414.txd");
AddSimpleModel(-1, 19379, -4002, "vcs2samp/LODch5415.dff", "vcs2samp/LODch5415.txd");
AddSimpleModel(-1, 19379, -4003, "vcs2samp/LODch5421.dff", "vcs2samp/LODch5421.txd");
AddSimpleModel(-1, 19379, -4004, "vcs2samp/LODch5422.dff", "vcs2samp/LODch5422.txd");
AddSimpleModel(-1, 19379, -4005, "vcs2samp/LODch5423.dff", "vcs2samp/LODch5423.txd");
AddSimpleModel(-1, 19379, -4006, "vcs2samp/LODch5425.dff", "vcs2samp/LODch5425.txd");
AddSimpleModel(-1, 19379, -4007, "vcs2samp/beach5475.dff", "vcs2samp/beach5475.txd");
AddSimpleModel(-1, 19379, -4008, "vcs2samp/beach5476.dff", "vcs2samp/beach5476.txd");
AddSimpleModel(-1, 19379, -4009, "vcs2samp/beach5564.dff", "vcs2samp/beach5564.txd");
AddSimpleModel(-1, 19379, -4010, "vcs2samp/beach5608.dff", "vcs2samp/beach5608.txd");
AddSimpleModel(-1, 19379, -4011, "vcs2samp/beach5617.dff", "vcs2samp/beach5617.txd");
AddSimpleModel(-1, 19379, -4012, "vcs2samp/beach5699.dff", "vcs2samp/beach5699.txd");
AddSimpleModel(-1, 19379, -4013, "vcs2samp/beach5731.dff", "vcs2samp/beach5731.txd");
AddSimpleModel(-1, 19379, -4014, "vcs2samp/beach5735.dff", "vcs2samp/beach5735.txd");
AddSimpleModel(-1, 19379, -4015, "vcs2samp/beach436.dff", "vcs2samp/beach436.txd");
AddSimpleModel(-1, 19379, -4016, "vcs2samp/beach539.dff", "vcs2samp/beach539.txd");
AddSimpleModel(-1, 19379, -4017, "vcs2samp/ammunation_dt.dff", "vcs2samp/dt_ammu3.txd");
AddSimpleModel(-1, 19379, -4018, "vcs2samp/vcs_drug2_A.dff", "vcs2samp/buissnes.txd");
AddSimpleModel(-1, 19379, -4019, "vcs2samp/vcs_lhroof4.dff", "vcs2samp/cockspicybung.txd");
AddSimpleModel(-1, 19379, -4020, "vcs2samp/lhcoastsky2.dff", "vcs2samp/hav_health.txd");
AddSimpleModel(-1, 19379, -4021, "vcs2samp/veg_palm01.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -4022, "vcs2samp/veg_palm04.dff", "vcs2samp/new_palm.txd");
AddSimpleModel(-1, 19379, -4023, "vcs2samp/veg_palwee01.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -4024, "vcs2samp/veg_palwee02.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -4025, "vcs2samp/veg_palwee03.dff", "vcs2samp/gta_tree_palm.txd");
AddSimpleModel(-1, 19379, -4026, "vcs2samp/vcs_lhdroad5.dff", "vcs2samp/dockroads1.txd");
AddSimpleModel(-1, 19379, -4027, "vcs2samp/mainla3271.dff", "vcs2samp/mainla3271.txd");
AddSimpleModel(-1, 19379, -4028, "vcs2samp/mainla3261.dff", "vcs2samp/mainla3261.txd");
AddSimpleModel(-1, 19379, -4029, "vcs2samp/LODnla4763.dff", "vcs2samp/LODnla4763.txd");
AddSimpleModel(-1, 19379, -4030, "vcs2samp/LODnla4767.dff", "vcs2samp/LODnla4767.txd");
}

CreateDynamicObjects()
{
CreateDynamicObject(-1000, 4940.83, -410.22, 9.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla9
CreateDynamicObject(-1001, 5072.86, -572.12, 19.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla10
CreateDynamicObject(-1002, 4931.03, -534.09, 16.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla27
CreateDynamicObject(-1003, 4922.52, -573.98, 14.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4944.99, -582.94, 14.58, 0.00, -1.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4948.79, -607.88, 14.58, 0.00, 2.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4951.31, -628.21, 14.58, 0.00, -1.50, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4954.56, -647.88, 14.58, 0.00, 2.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4955.95, -659.58, 15.20, 0.00, -2.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4923.92, -585.09, 14.58, 0.00, -1.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4896.38, -588.57, 14.58, 0.00, -1.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4858.18, -593.30, 14.56, -0.14, -5.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4823.41, -598.35, 14.57, -0.10, -4.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4894.00, -541.62, 14.58, 0.00, -1.00, -173.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4888.23, -506.06, 14.58, 0.49, 2.97, -173.02, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4884.81, -475.39, 14.58, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4881.43, -447.47, 14.58, 0.00, -1.00, -173.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1004, 4830.49, -540.42, 18.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla52
CreateDynamicObject(-1005, 4837.97, -362.37, 15.16, 0.00, 0.00, -2.16, -1, 0, -1,800.00, 800.00); // mainla66
CreateDynamicObject(-1006, 4752.02, -340.66, 16.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla71
CreateDynamicObject(-1007, 4986.95, -395.66, 15.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla86
CreateDynamicObject(-1008, 4889.05, -553.13, 10.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla92
CreateDynamicObject(-1009, 4806.20, -642.36, 10.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla93
CreateDynamicObject(-1010, 4912.39, -676.42, 10.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla94
CreateDynamicObject(-1011, 4783.62, -649.22, 15.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla95
CreateDynamicObject(-1012, 4916.37, -705.33, 15.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla101
CreateDynamicObject(-1013, 4817.61, -423.04, 11.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla106
CreateDynamicObject(-1003, 4864.97, -482.18, 14.58, 0.00, -1.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4863.10, -462.10, 14.18, 0.97, 5.93, 7.94, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4860.05, -438.27, 14.57, -0.35, -3.48, 7.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4858.26, -419.96, 14.58, 0.49, 2.47, 7.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4854.20, -394.35, 14.57, -0.49, -4.47, 7.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4851.14, -359.68, 14.58, 0.69, 3.95, 7.97, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1014, 4798.54, -447.80, 12.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla112
CreateDynamicObject(-1003, 4794.08, -508.14, 14.58, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4818.13, -504.44, 14.58, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4839.28, -501.56, 14.58, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4868.62, -497.76, 14.58, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1015, 4740.53, -459.02, 0.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla117
CreateDynamicObject(-1016, 4785.49, -572.38, 14.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla119
CreateDynamicObject(-1003, 4952.42, -677.22, 14.58, 0.00, -1.00, 1.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4931.39, -679.74, 14.58, 0.00, -1.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4903.91, -683.70, 14.58, 0.00, -1.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4865.80, -689.10, 14.56, -0.14, -5.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1017, 5160.56, -866.59, 13.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla130
CreateDynamicObject(-1018, 5155.62, -746.23, 13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla131
CreateDynamicObject(-1019, 5137.77, -579.79, 14.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla132
CreateDynamicObject(-1020, 5155.11, -589.29, 17.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla133
CreateDynamicObject(-1021, 5095.78, -571.00, 14.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla134
CreateDynamicObject(-1022, 4999.23, -694.40, 14.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla140
CreateDynamicObject(-1023, 5094.35, -692.41, 17.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla143
CreateDynamicObject(-1024, 5126.40, -715.06, 14.92, 0.00, 0.00, 96.50, -1, 0, -1,800.00, 800.00); // mainla162
CreateDynamicObject(-1024, 5088.75, -490.57, 16.61, 0.00, 0.00, 96.50, -1, 0, -1,800.00, 800.00); // mainla162
CreateDynamicObject(-1024, 5088.75, -450.62, 16.61, 0.00, 0.00, 96.50, -1, 0, -1,800.00, 800.00); // mainla162
CreateDynamicObject(-1003, 4932.53, -572.37, 14.58, 0.00, -1.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4905.25, -576.46, 14.58, 0.00, -1.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1025, 5166.26, -777.24, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla164
CreateDynamicObject(-1026, 5149.04, -577.09, -6.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla170
CreateDynamicObject(-1027, 5133.15, -405.63, -6.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla172
CreateDynamicObject(-1028, 5056.55, -372.43, 12.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla173
CreateDynamicObject(-1029, 5083.82, -340.36, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla178
CreateDynamicObject(-1030, 5080.46, -473.74, 25.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla179
CreateDynamicObject(-1031, 5054.13, -398.88, 33.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla185
CreateDynamicObject(-1032, 5103.99, -776.30, 27.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla188
CreateDynamicObject(-1033, 5070.91, -1028.60, 26.34, 0.00, 0.00, -166.00, -1, 0, -1,800.00, 800.00); // mainla201
CreateDynamicObject(-1034, 5025.23, -696.74, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla219
CreateDynamicObject(-1035, 4800.81, -620.30, 16.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla221
CreateDynamicObject(-1036, 5098.20, -786.56, 11.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla231
CreateDynamicObject(-1037, 5028.18, -429.32, 11.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla238
CreateDynamicObject(-1038, 5119.30, -866.75, 18.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla241
CreateDynamicObject(-1039, 5079.01, -881.28, 11.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla253
CreateDynamicObject(-1040, 5082.80, -824.23, 10.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla255
CreateDynamicObject(-1041, 4984.67, -585.83, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla256
CreateDynamicObject(-1042, 5055.77, -657.77, 10.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla258
CreateDynamicObject(-1043, 4807.50, -715.36, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla265
CreateDynamicObject(-1044, 4829.66, -496.16, 9.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla267
CreateDynamicObject(-1045, 4768.96, -418.30, 9.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla268
CreateDynamicObject(-1046, 4867.29, -416.69, 9.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla269
CreateDynamicObject(-1047, 4940.73, -621.95, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla270
CreateDynamicObject(-1048, 4909.89, -373.62, 20.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla275
CreateDynamicObject(-1049, 5129.84, -773.41, 26.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla282
CreateDynamicObject(-1050, 4937.24, -680.13, 11.30, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1051, 5140.84, -472.41, 10.87, 0.00, 0.00, -72.50, -1, 0, -1,800.00, 800.00); // mainla286
CreateDynamicObject(-1050, 4926.08, -681.46, 11.30, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4913.45, -683.53, 11.30, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1052, 4892.77, -594.88, 11.18, 0.00, 0.00, -173.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1053, 5029.91, -522.93, 11.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla289
CreateDynamicObject(-1054, 5070.97, -574.68, 10.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla290
CreateDynamicObject(-1055, 5163.55, -342.43, -4.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla291
CreateDynamicObject(-1056, 5035.84, -445.78, 10.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla293
CreateDynamicObject(-1057, 4965.25, -331.91, 13.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla294
CreateDynamicObject(-1050, 4873.18, -689.07, 11.30, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4884.33, -687.74, 11.30, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4907.20, -587.83, 10.79, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4933.72, -584.50, 10.79, 0.00, 0.00, -81.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4878.54, -554.08, 10.79, 0.00, 0.00, -174.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4893.28, -536.28, 10.79, 0.00, 0.00, 7.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4891.50, -522.59, 10.79, 0.00, 0.00, 7.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4973.23, -416.17, 10.54, 0.00, 0.00, 7.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4975.15, -429.70, 10.54, 0.00, 0.00, 7.50, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1058, 5142.15, -529.15, 18.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla302
CreateDynamicObject(-1059, 5148.70, -563.82, 14.17, 0.00, 0.00, 7.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1059, 5112.63, -494.93, 14.20, 0.00, 0.00, -169.50, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1060, 5017.44, -473.30, 12.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 5029.61, -472.69, 12.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 5041.59, -472.05, 12.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 5040.41, -456.27, 12.40, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 5028.29, -456.93, 12.40, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 5016.30, -457.54, 12.40, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4810.86, -423.99, 12.40, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4810.27, -411.98, 12.40, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4809.63, -399.82, 12.40, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4825.52, -398.58, 12.40, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4826.13, -410.65, 12.40, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1060, 4826.81, -422.65, 12.40, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla307
CreateDynamicObject(-1061, 4743.75, -416.55, 14.00, 0.00, 0.00, 3.16, -1, 0, -1,800.00, 800.00); // mainla314
CreateDynamicObject(-1061, 4745.25, -434.89, 13.95, 0.00, 0.00, 6.28, -1, 0, -1,800.00, 800.00); // mainla314
CreateDynamicObject(-1061, 4749.74, -479.22, 13.95, 0.00, 0.00, 13.98, -1, 0, -1,800.00, 800.00); // mainla314
CreateDynamicObject(-1062, 4744.84, -457.68, 14.43, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4760.21, -497.85, 14.52, 0.00, 0.00, 15.92, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4739.79, -391.56, 14.47, 0.00, 0.00, 4.02, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4802.11, -476.52, 14.61, 0.00, 0.00, -170.00, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1061, 4795.67, -450.92, 13.95, 0.00, 0.00, -174.70, -1, 0, -1,800.00, 800.00); // mainla314
CreateDynamicObject(-1062, 4783.05, -371.85, 14.42, 0.00, 0.00, -175.00, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4808.34, -372.50, 14.23, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4841.68, -390.30, 14.36, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1062, 4851.91, -472.68, 14.20, 0.00, 0.00, 6.83, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1061, 4827.17, -474.60, 13.55, 0.00, 0.00, -82.77, -1, 0, -1,800.00, 800.00); // mainla314
CreateDynamicObject(-1062, 4832.33, -520.21, 14.43, 0.00, 0.00, 98.06, -1, 0, -1,800.00, 800.00); // mainla324
CreateDynamicObject(-1063, 4848.12, -449.89, 14.97, 0.00, 0.00, 5.23, -1, 0, -1,800.00, 800.00); // mainla327
CreateDynamicObject(-1064, 4807.24, -519.53, 13.62, 0.00, 0.00, 98.15, -1, 0, -1,800.00, 800.00); // mainla330
CreateDynamicObject(-1064, 4789.35, -421.37, 13.72, 0.00, 0.00, -176.03, -1, 0, -1,800.00, 800.00); // mainla330
CreateDynamicObject(-1063, 4786.24, -395.41, 15.06, 0.00, 0.00, -176.96, -1, 0, -1,800.00, 800.00); // mainla327
CreateDynamicObject(-1065, 4818.77, -424.78, 11.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla333
CreateDynamicObject(-1066, 4754.40, -456.73, 11.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla335
CreateDynamicObject(-1067, 4818.79, -521.71, 11.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla337
CreateDynamicObject(-1068, 5010.92, -839.10, 12.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla339
CreateDynamicObject(-1069, 4888.59, -751.00, 14.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla348
CreateDynamicObject(-1070, 4895.21, -828.42, 16.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla355
CreateDynamicObject(-1071, 4893.18, -771.53, 13.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla357
CreateDynamicObject(-1072, 4860.25, -776.04, 17.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla362
CreateDynamicObject(-1073, 4925.46, -790.57, 13.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla367
CreateDynamicObject(-1074, 4947.20, -850.80, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla369
CreateDynamicObject(-1075, 4948.30, -850.80, 14.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla378
CreateDynamicObject(-1076, 4874.90, -767.40, 15.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla381
CreateDynamicObject(-1077, 5060.87, -987.65, 12.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla382
CreateDynamicObject(-1003, 5025.85, -864.11, 15.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5017.42, -918.83, 15.80, 0.00, 5.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1078, 5037.70, -900.50, 11.59, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1079, 5048.13, -936.98, 12.69, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // mainla390
CreateDynamicObject(-1080, 5027.75, -896.71, 12.77, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // mainla400
CreateDynamicObject(-1081, 5024.76, -808.31, 12.76, 0.00, 0.00, 179.64, -1, 0, -1,800.00, 800.00); // mainla408
CreateDynamicObject(-1082, 5046.21, -883.02, 12.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla409
CreateDynamicObject(-1083, 5040.21, -836.73, 12.80, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla411
CreateDynamicObject(-1084, 5031.19, -879.23, 12.73, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // mainla412
CreateDynamicObject(-1085, 5024.67, -897.66, 12.83, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // mainla414
CreateDynamicObject(-1086, 5032.77, -882.13, 12.73, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // mainla416
CreateDynamicObject(-1087, 5029.26, -913.60, 13.02, 0.00, 0.00, 55.00, -1, 0, -1,800.00, 800.00); // mainla418
CreateDynamicObject(-1088, 5046.71, -917.32, 12.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla420
CreateDynamicObject(-1089, 5048.76, -918.66, 12.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla422
CreateDynamicObject(-1089, 5050.52, -862.31, 12.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla422
CreateDynamicObject(-1080, 5018.53, -924.06, 12.77, 0.00, 0.00, -110.00, -1, 0, -1,800.00, 800.00); // mainla400
CreateDynamicObject(-1078, 5015.02, -927.83, 11.88, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1089, 5004.84, -915.32, 13.08, 0.00, 0.00, 140.00, -1, 0, -1,800.00, 800.00); // mainla422
CreateDynamicObject(-1084, 5028.38, -836.33, 12.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla412
CreateDynamicObject(-1080, 5021.90, -809.88, 12.85, 0.00, 0.00, 179.64, -1, 0, -1,800.00, 800.00); // mainla400
CreateDynamicObject(-1079, 5037.95, -837.19, 12.69, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla390
CreateDynamicObject(-1080, 5049.08, -880.46, 12.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla400
CreateDynamicObject(-1090, 5047.44, -896.73, 12.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla425
CreateDynamicObject(-1087, 5049.49, -897.73, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla418
CreateDynamicObject(-1089, 5048.04, -817.22, 12.89, 0.00, 0.00, -173.98, -1, 0, -1,800.00, 800.00); // mainla422
CreateDynamicObject(-1088, 5050.22, -818.33, 12.67, 0.00, 0.00, -173.98, -1, 0, -1,800.00, 800.00); // mainla420
CreateDynamicObject(-1087, 5033.50, -795.70, 13.08, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla418
CreateDynamicObject(-1091, 5035.59, -796.83, 11.66, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla426
CreateDynamicObject(-1078, 5037.70, -900.50, 12.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1092, 5048.09, -860.68, 12.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla427
CreateDynamicObject(-1092, 5026.85, -914.88, 12.69, 0.00, 0.00, 55.00, -1, 0, -1,800.00, 800.00); // mainla427
CreateDynamicObject(-1087, 5037.77, -868.40, 12.87, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla418
CreateDynamicObject(-1091, 5005.46, -917.82, 11.79, 0.00, 0.00, 140.00, -1, 0, -1,800.00, 800.00); // mainla426
CreateDynamicObject(-1093, 4934.96, -887.21, 13.87, 0.00, 0.00, -46.49, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1094, 4935.23, -886.96, 15.63, 0.00, 0.00, -46.49, -1, 0, -1,800.00, 800.00); // mainla434
CreateDynamicObject(-1095, 4908.02, -776.49, 11.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla436
CreateDynamicObject(-1096, 5014.67, -861.60, 12.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla438
CreateDynamicObject(-1003, 5010.94, -802.87, 15.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1084, 5035.38, -782.81, 12.84, 0.00, 0.00, 175.80, -1, 0, -1,800.00, 800.00); // mainla412
CreateDynamicObject(-1078, 5045.19, -778.87, 11.38, 0.00, 0.00, -97.96, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1080, 5049.96, -841.96, 12.77, 0.00, 0.00, -177.39, -1, 0, -1,800.00, 800.00); // mainla400
CreateDynamicObject(-1086, 5052.70, -841.46, 12.65, 0.00, 0.00, -177.39, -1, 0, -1,800.00, 800.00); // mainla416
CreateDynamicObject(-1097, 5003.85, -844.50, 15.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla441
CreateDynamicObject(-1078, 4928.03, -753.10, 11.59, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4928.03, -753.10, 12.39, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4924.91, -751.97, 12.39, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4924.91, -751.97, 11.59, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4926.71, -752.63, 13.35, 0.00, 0.00, 70.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1098, 4999.83, -570.78, 21.91, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // mainla444
CreateDynamicObject(-1099, 4998.62, -570.88, 22.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla447
CreateDynamicObject(-1100, 4859.27, -330.50, 22.53, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla449
CreateDynamicObject(-1098, 4859.16, -329.29, 22.13, 0.00, 0.00, -175.00, -1, 0, -1,800.00, 800.00); // mainla444
CreateDynamicObject(-1098, 4889.63, -435.71, 24.52, 0.00, 0.00, 140.00, -1, 0, -1,800.00, 800.00); // mainla444
CreateDynamicObject(-1101, 4888.85, -436.65, 24.92, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // mainla451
CreateDynamicObject(-1102, 5101.89, -903.50, 11.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla453
CreateDynamicObject(-1103, 4845.48, -422.87, 13.74, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla455
CreateDynamicObject(-1104, 4871.42, -440.21, 20.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla458
CreateDynamicObject(-1105, 5079.29, -694.32, 25.17, 0.00, 0.00, 55.13, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1106, 5082.45, -696.59, 25.17, 0.00, 0.00, 145.13, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1107, 5080.92, -695.43, 25.02, 0.00, 0.00, 55.13, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1106, 5113.05, -712.75, 25.09, 0.00, 0.00, 162.19, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1107, 5111.25, -712.09, 24.94, 0.00, 0.00, 72.19, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1106, 5114.13, -709.37, 25.09, 0.00, 0.00, 162.19, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1107, 5112.34, -708.71, 24.94, 0.00, 0.00, 72.19, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1106, 5063.33, -669.35, 25.17, 0.00, 0.00, 116.19, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1108, 5034.97, -851.36, 13.78, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1109, 5028.78, -581.22, 15.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla478
CreateDynamicObject(-1110, 4865.03, -320.62, 12.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla483
CreateDynamicObject(-1111, 4919.46, -457.45, 16.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla486
CreateDynamicObject(-1112, 4860.13, -776.09, 19.43, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // mainla495
CreateDynamicObject(-1113, 4917.34, -624.77, 17.39, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla497
CreateDynamicObject(-1114, 4960.03, -366.57, 23.00, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla498
CreateDynamicObject(-1003, 4892.26, -348.09, 14.65, 0.00, -1.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4946.49, -323.32, 14.48, 0.00, -1.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1078, 4928.03, -773.06, 11.61, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4925.19, -772.92, 12.28, -11.15, 4.11, 110.40, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1115, 5015.34, -810.76, 17.17, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla499
CreateDynamicObject(-1003, 4996.77, -702.56, 15.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5019.26, -667.83, 15.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5052.34, -647.83, 14.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1116, 5024.29, -675.04, 18.74, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla500
CreateDynamicObject(-1117, 4811.47, -336.97, 12.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla501
CreateDynamicObject(-1118, 5032.44, -399.24, 78.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla503
CreateDynamicObject(-1119, 5103.65, -776.23, 43.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla505
CreateDynamicObject(-1003, 4972.02, -368.03, 14.48, 0.00, -1.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4946.46, -405.12, 14.48, 0.00, -1.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1120, 4818.29, -659.48, 17.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla506
CreateDynamicObject(-1121, 4923.19, -363.66, 20.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla509
CreateDynamicObject(-1122, 4941.57, -347.19, 16.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla510
CreateDynamicObject(-1123, 5062.27, -613.19, 14.44, 0.00, 0.00, -171.00, -1, 0, -1,800.00, 800.00); // mainla512
CreateDynamicObject(-1124, 4795.48, -441.48, 17.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla513
CreateDynamicObject(-1003, 4763.08, -463.96, 14.65, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4754.88, -403.51, 14.64, -0.29, -3.39, -173.01, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4752.60, -351.76, 14.46, 0.61, 3.96, -173.03, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1125, 5072.29, -1033.52, 28.68, 0.00, 0.00, -166.00, -1, 0, -1,800.00, 800.00); // mainla514
CreateDynamicObject(-1126, 5119.01, -634.47, 21.17, 0.00, 0.00, -140.00, -1, 0, -1,800.00, 800.00); // mainla515
CreateDynamicObject(-1127, 5118.80, -636.01, 21.46, 15.00, 0.00, -140.00, -1, 0, -1,800.00, 800.00); // mainla518
CreateDynamicObject(-1128, 5118.95, -634.42, 21.32, 0.00, 0.00, -140.00, -1, 0, -1,800.00, 800.00); // mainla519
CreateDynamicObject(-1129, 5119.05, -866.73, 19.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla520
CreateDynamicObject(-1130, 4814.76, -710.07, 12.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla521
CreateDynamicObject(-1131, 5129.17, -776.31, 27.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla538
CreateDynamicObject(-1132, 4879.03, -683.73, 18.31, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla539
CreateDynamicObject(-1003, 4838.54, -675.22, 15.48, -0.14, -5.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4820.93, -698.48, 15.38, 0.12, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1133, 4775.81, -318.33, 22.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla540
CreateDynamicObject(-1134, 4777.38, -317.07, 23.05, 0.00, 0.00, 130.00, -1, 0, -1,800.00, 800.00); // mainla543
CreateDynamicObject(-1135, 4899.95, -774.15, 15.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla544
CreateDynamicObject(-1136, 4911.91, -704.82, 11.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla557
CreateDynamicObject(-1078, 4912.06, -707.88, 11.33, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1137, 4860.73, -775.89, 21.13, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // mainla558
CreateDynamicObject(-1138, 5111.80, -628.96, 13.32, 0.00, 0.00, -171.00, -1, 0, -1,800.00, 800.00); // mainla560
CreateDynamicObject(-1139, 4670.51, -430.10, -4.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla571
CreateDynamicObject(-1140, 4699.52, -518.70, 8.40, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4709.35, -518.70, 8.40, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4719.18, -518.70, 8.40, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4729.02, -518.70, 8.40, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4738.85, -518.70, 8.40, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4697.55, -506.61, 8.10, 90.00, -5.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1141, 4758.95, -518.13, 11.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla574
CreateDynamicObject(-1142, 5029.63, -849.66, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla575
CreateDynamicObject(-1143, 4853.05, -636.96, 17.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla588
CreateDynamicObject(-1144, 5012.86, -483.63, 13.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla594
CreateDynamicObject(-1145, 5201.88, -839.65, 16.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla599
CreateDynamicObject(-1146, 4841.75, -638.57, 13.48, 0.00, 0.00, 96.00, -1, 0, -1,800.00, 800.00); // mainla600
CreateDynamicObject(-1147, 4831.25, -622.35, 19.92, 0.00, 0.00, -177.00, -1, 0, -1,800.00, 800.00); // mainla602
CreateDynamicObject(-1148, 4918.66, -794.43, 12.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla604
CreateDynamicObject(-1149, 4969.55, -694.38, 19.53, 0.00, 0.00, -19.52, -1, 0, -1,800.00, 800.00); // mainla606
CreateDynamicObject(-1150, 5051.58, -842.21, 13.01, 9.21, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla608
CreateDynamicObject(-1151, 4853.50, -695.92, 16.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla610
CreateDynamicObject(-1152, 4976.00, -382.22, 14.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla612
CreateDynamicObject(-1153, 4852.18, -438.16, 11.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla614
CreateDynamicObject(-1154, 4960.55, -690.98, 12.54, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla618
CreateDynamicObject(-1155, 5203.62, -778.66, -6.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla621
CreateDynamicObject(-1105, 4756.11, -324.94, 14.54, 0.00, 0.00, 0.13, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1156, 4771.11, -308.82, 12.59, 0.00, 0.00, 3.83, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 4772.99, -308.76, 12.59, 0.00, 0.00, 3.83, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1157, 4921.74, -306.94, 11.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla624
CreateDynamicObject(-1105, 4892.19, -304.82, 16.57, 0.00, 0.00, 3.66, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1105, 4892.19, -306.38, 16.57, 0.00, 0.00, 3.66, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1156, 4902.33, -304.07, 13.57, 0.00, 0.00, 89.37, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1105, 4927.90, -307.03, 16.15, 0.00, 0.00, 85.38, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1105, 4924.50, -306.71, 16.14, 0.00, 0.00, 85.38, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1158, 4735.38, -365.04, 19.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla628
CreateDynamicObject(-1159, 4800.77, -699.17, 13.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla629
CreateDynamicObject(-1160, 4882.40, -442.74, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla631
CreateDynamicObject(-1161, 4895.18, -553.82, 13.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla633
CreateDynamicObject(-1162, 5170.78, 1039.31, 12.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla634
CreateDynamicObject(-1163, 5178.34, 1089.93, 10.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla641
CreateDynamicObject(-1164, 5361.70, 1222.86, 44.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla644
CreateDynamicObject(-1165, 5487.71, 952.75, 186.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla653
CreateDynamicObject(-1166, 5338.67, 1437.85, 22.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla663
CreateDynamicObject(-1167, 5154.88, 1038.33, 50.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla675
CreateDynamicObject(-1168, 5300.53, 998.40, 13.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla681
CreateDynamicObject(-1169, 5415.18, 1175.21, 139.60, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // mainla685
CreateDynamicObject(-1170, 5197.01, 1259.07, 10.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla693
CreateDynamicObject(-1171, 5163.83, 1455.16, 10.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla695
CreateDynamicObject(-1172, 5414.01, 1218.92, 11.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla697
CreateDynamicObject(-1173, 5387.28, 952.75, 10.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla700
CreateDynamicObject(-1174, 5478.26, 1002.24, 11.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla702
CreateDynamicObject(-1175, 5261.69, 1273.19, 13.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla705
CreateDynamicObject(-1176, 5271.18, 1247.13, 19.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla707
CreateDynamicObject(-1177, 5306.62, 1165.22, 10.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla713
CreateDynamicObject(-1178, 5214.09, 1044.81, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla715
CreateDynamicObject(-1179, 5355.17, 1009.10, 8.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla716
CreateDynamicObject(-1180, 5522.02, 931.25, 18.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla717
CreateDynamicObject(-1181, 5102.31, 1567.25, -5.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla720
CreateDynamicObject(-1182, 5273.18, 1561.20, -6.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla723
CreateDynamicObject(-1183, 4873.58, 1021.39, -18.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla724
CreateDynamicObject(-1184, 5384.28, 1223.06, 12.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla729
CreateDynamicObject(-1185, 5626.64, 1439.12, 9.28, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla731
CreateDynamicObject(-1186, 5154.01, 1129.41, 17.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla732
CreateDynamicObject(-1187, 5274.83, 991.31, 18.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla734
CreateDynamicObject(-1188, 5263.37, 1132.38, 15.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla735
CreateDynamicObject(-1189, 5467.83, 996.97, 190.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla736
CreateDynamicObject(-1190, 5415.12, 1177.14, 196.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla739
CreateDynamicObject(-1191, 5531.41, 1139.00, 206.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla741
CreateDynamicObject(-1192, 5520.88, 1284.27, 49.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla742
CreateDynamicObject(-1193, 5294.78, 1165.78, 46.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla743
CreateDynamicObject(-1194, 5126.48, 1076.04, 55.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla744
CreateDynamicObject(-1195, 5018.00, 1331.03, 49.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla745
CreateDynamicObject(-1196, 4883.86, 1331.03, 15.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla746
CreateDynamicObject(-1197, 4520.29, 1430.89, 36.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla754
CreateDynamicObject(-1198, 4950.03, 1333.33, 15.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla761
CreateDynamicObject(-1199, 4799.77, 1236.52, 36.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla764
CreateDynamicObject(-1200, 4973.23, 1522.42, -8.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla767
CreateDynamicObject(-1201, 4803.18, 1427.77, 36.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla768
CreateDynamicObject(-1202, 4974.52, 1407.64, 9.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla774
CreateDynamicObject(-1203, 4939.34, 1176.84, -10.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla775
CreateDynamicObject(-1204, 4520.44, 1231.70, 36.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla777
CreateDynamicObject(-1205, 4462.15, 1233.77, 16.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla779
CreateDynamicObject(-1050, 5109.45, 963.22, 10.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5090.36, 960.71, 10.68, 0.00, 0.00, 87.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1206, 5118.56, 1141.84, 10.79, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5116.41, 1131.04, 10.71, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5110.63, 1298.86, 11.00, 0.00, 0.00, -85.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5106.41, 1348.31, 11.02, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5077.62, 1465.07, 11.52, 0.00, 0.00, 74.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5075.68, 1452.83, 11.55, 0.00, 0.00, -173.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5296.76, 1450.85, 11.79, 0.00, 0.00, 94.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5305.66, 1474.15, 11.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5198.14, 1342.29, 11.37, 0.00, 0.00, 7.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5198.75, 1338.09, 11.34, 0.00, 0.00, 7.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5517.42, 1349.27, 11.49, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5525.87, 1350.03, 11.36, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 5588.32, 1003.59, 9.72, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5476.25, 1085.88, 10.78, 0.00, 0.00, -16.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5430.76, 1098.73, 10.69, 0.00, 0.00, -118.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1206, 5136.85, 1188.42, 10.65, 0.00, 0.00, 93.00, -1, 0, -1,800.00, 800.00); // mainla781
CreateDynamicObject(-1050, 5158.14, 1192.85, 10.67, 0.00, 0.00, 93.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 5115.73, 1126.95, 10.71, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 5105.93, 1352.70, 11.02, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1207, 5003.16, 1372.43, 16.48, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla783
CreateDynamicObject(-1207, 5673.55, 1277.64, 22.44, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla783
CreateDynamicObject(-1208, 5443.03, 1217.87, 6.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla792
CreateDynamicObject(-1209, 4756.51, 1203.64, 7.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla793
CreateDynamicObject(-1003, 5265.21, 1314.80, 15.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1210, 5285.16, 1337.69, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla794
CreateDynamicObject(-1211, 5535.23, 1268.96, 10.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla796
CreateDynamicObject(-1212, 5220.43, 1179.23, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla797
CreateDynamicObject(-1213, 5601.31, 1058.41, 7.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla801
CreateDynamicObject(-1214, 5103.80, 1260.75, 10.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla802
CreateDynamicObject(-1215, 5176.54, 1428.07, 10.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla803
CreateDynamicObject(-1216, 5433.20, 1135.52, 9.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla804
CreateDynamicObject(-1217, 5287.34, 1074.54, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla805
CreateDynamicObject(-1218, 5005.15, 1330.91, 9.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla806
CreateDynamicObject(-1219, 5105.56, 1049.59, 9.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla807
CreateDynamicObject(-1220, 5577.56, 1358.69, 33.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla808
CreateDynamicObject(-1221, 5166.77, 1377.22, 36.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla810
CreateDynamicObject(-1003, 5612.28, 1108.68, 12.69, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5643.68, 1183.12, 14.78, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5680.73, 1245.70, 14.78, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5678.65, 1304.23, 15.48, 0.00, 0.00, -76.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5654.81, 1347.18, 15.48, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5618.04, 1361.51, 15.48, 0.00, 0.00, -4.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5557.77, 1341.47, 15.31, 0.00, 0.00, 6.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5495.25, 1346.60, 15.48, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5266.13, 1383.64, 15.41, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5199.50, 1387.78, 15.57, 0.00, 0.00, 6.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5188.28, 1326.86, 15.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1222, 5204.96, 1428.91, 10.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla811
CreateDynamicObject(-1003, 5341.16, 1332.57, 15.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5419.38, 1328.88, 15.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5152.96, 1383.17, 15.30, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5107.69, 1367.45, 15.30, 0.00, 0.00, 4.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5079.80, 1451.05, 15.63, 0.00, 0.00, -21.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5134.63, 1476.72, 15.96, 0.00, 0.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5199.99, 1473.09, 15.96, 0.00, 0.00, 8.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5277.76, 1489.68, 15.81, 0.00, 0.00, -32.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5016.22, 1377.46, 13.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4958.86, 1366.16, 13.67, 0.00, 0.00, 40.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4958.67, 1309.42, 13.83, 0.00, 0.00, -2.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4952.89, 1138.38, 12.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5092.87, 1295.09, 15.12, 0.00, 0.00, -83.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5110.24, 1260.61, 15.08, 0.00, 0.00, 91.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5114.15, 1206.36, 15.03, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5133.53, 1163.98, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5231.67, 1169.74, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5281.71, 1194.84, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5335.89, 1164.08, 14.78, 0.00, 0.00, -27.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5424.55, 1131.36, 14.78, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5192.26, 1190.68, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5301.10, 1411.92, 15.41, 0.00, 0.00, -6.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5453.67, 1343.16, 15.48, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5076.04, 1365.00, 15.30, 0.00, 0.00, 4.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1059, 5537.26, 1096.22, 14.17, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1059, 5537.50, 1081.02, 14.17, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1059, 5581.98, 1018.73, 12.72, 0.00, 0.00, 157.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1223, 4799.17, 1464.15, 7.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla812
CreateDynamicObject(-1224, 4799.26, 1197.66, 7.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla813
CreateDynamicObject(-1225, 4521.10, 1231.72, 7.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla814
CreateDynamicObject(-1226, 4520.96, 1430.34, 7.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla815
CreateDynamicObject(-1227, 5621.65, 1153.40, 13.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla816
CreateDynamicObject(-1228, 5616.20, 1299.56, 16.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla818
CreateDynamicObject(-1229, 4883.52, 1331.03, 15.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla819
CreateDynamicObject(-1230, 4797.35, 1486.85, 4.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla820
CreateDynamicObject(-1231, 5076.46, 1511.49, 36.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla822
CreateDynamicObject(-1232, 5146.37, 1332.76, 47.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla824
CreateDynamicObject(-1233, 5260.06, 1241.21, 17.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla826
CreateDynamicObject(-1234, 5520.79, 1282.78, 47.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla828
CreateDynamicObject(-1235, 5566.00, 1222.36, 14.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla834
CreateDynamicObject(-1236, 5487.93, 1363.49, 19.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla838
CreateDynamicObject(-1237, 5442.54, 952.76, 79.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla844
CreateDynamicObject(-1238, 5683.32, 1185.56, 6.68, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla845
CreateDynamicObject(-1239, 5531.90, 1295.88, 76.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla850
CreateDynamicObject(-1240, 5541.78, 1276.40, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1239, 5531.90, 1307.35, 76.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla850
CreateDynamicObject(-1239, 5509.97, 1307.35, 76.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla850
CreateDynamicObject(-1239, 5509.97, 1295.91, 76.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla850
CreateDynamicObject(-1240, 5517.39, 1266.61, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5524.85, 1260.71, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5548.61, 1257.16, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5552.78, 1295.12, 37.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5553.07, 1265.42, 37.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5488.42, 1270.21, 37.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5488.42, 1296.33, 37.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5488.42, 1305.25, 37.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5500.85, 1314.45, 76.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5541.87, 1311.98, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5541.87, 1305.50, 76.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1241, 5650.39, 1394.52, 2.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla853
CreateDynamicObject(-1242, 5703.25, 1316.09, 31.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1243, 5647.48, 1418.48, 13.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1156, 5651.09, 1418.51, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1108, 5675.27, 1418.24, 14.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1243, 5599.52, 1380.11, 14.82, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5654.97, 1413.00, 14.76, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5696.87, 1403.93, 13.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5696.87, 1367.79, 13.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5711.23, 1345.78, 13.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5711.23, 1315.53, 13.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5688.08, 1303.62, 14.15, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1156, 5614.14, 1418.51, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5694.40, 1418.51, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5655.04, 1405.42, 14.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5654.97, 1376.16, 14.73, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1108, 5685.80, 1418.24, 13.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1108, 5630.42, 1418.14, 12.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1108, 5619.94, 1418.24, 12.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1244, 5160.94, 1237.21, 40.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla863
CreateDynamicObject(-1245, 5280.86, 1296.67, 11.98, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1243, 5272.11, 1248.45, 13.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5260.58, 1248.45, 13.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5237.77, 1278.54, 14.73, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5274.51, 1296.51, 13.91, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5237.73, 1289.27, 14.77, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1245, 5265.26, 1265.33, 11.02, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5265.25, 1262.46, 10.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1246, 5514.99, 1057.60, 22.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla879
CreateDynamicObject(-1247, 5221.47, 1515.39, 24.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla889
CreateDynamicObject(-1248, 5086.81, 1502.04, 31.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla896
CreateDynamicObject(-1249, 5041.46, 1427.61, 27.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla900
CreateDynamicObject(-1242, 5116.82, 1457.18, 32.31, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1250, 5140.86, 1425.22, 18.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla904
CreateDynamicObject(-1251, 5239.47, 1434.03, 39.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla908
CreateDynamicObject(-1252, 5247.88, 1352.52, 23.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla915
CreateDynamicObject(-1242, 5319.44, 1474.69, 42.15, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1253, 5320.44, 1451.54, 23.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla919
CreateDynamicObject(-1242, 5162.33, 1357.89, 75.82, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1254, 5144.31, 1332.49, 45.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla923
CreateDynamicObject(-1255, 5290.40, 1305.55, 21.80, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla930
CreateDynamicObject(-1256, 5259.63, 1286.59, 16.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla931
CreateDynamicObject(-1257, 5329.07, 1284.71, 22.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla933
CreateDynamicObject(-1258, 5385.54, 1298.12, 16.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla936
CreateDynamicObject(-1242, 5409.84, 1317.85, 33.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1259, 5437.15, 1314.56, 19.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla937
CreateDynamicObject(-1260, 5614.79, 1298.80, 238.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla938
CreateDynamicObject(-1261, 5404.75, 1087.62, 30.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla943
CreateDynamicObject(-1262, 5340.59, 1128.97, 24.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla946
CreateDynamicObject(-1242, 5265.85, 1101.31, 37.10, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1255, 5216.40, 1149.13, 33.78, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla930
CreateDynamicObject(-1255, 5216.40, 1135.05, 33.78, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla930
CreateDynamicObject(-1263, 5242.12, 1128.23, 21.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla948
CreateDynamicObject(-1264, 5544.92, 1123.81, 41.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla949
CreateDynamicObject(-1265, 5596.37, 1123.44, 51.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1266, 5564.75, 1128.94, 58.34, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla959
CreateDynamicObject(-1240, 5507.84, 1113.94, 55.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1242, 5551.41, 1130.37, 55.87, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1245, 5509.78, 1140.04, 11.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1108, 5518.27, 1130.05, 56.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1265, 5551.73, 1123.43, 51.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5541.83, 1135.32, 56.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5541.95, 1111.94, 56.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5516.79, 1111.37, 55.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5516.73, 1135.58, 56.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5515.79, 1135.11, 64.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5489.93, 1135.11, 64.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5489.94, 1112.26, 64.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1265, 5515.80, 1112.27, 64.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla958
CreateDynamicObject(-1245, 5499.51, 1137.67, 13.58, 0.00, 0.00, 57.19, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5498.23, 1135.59, 13.58, 0.00, 0.00, 57.19, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5494.33, 1129.27, 13.58, 0.00, 0.00, 57.19, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1108, 5489.70, 1121.83, 16.96, 0.00, 0.00, 54.85, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1108, 5484.83, 1115.05, 16.96, 0.00, 0.00, 54.85, -1, 0, -1,800.00, 800.00); // mainla477
CreateDynamicObject(-1245, 5542.18, 1129.64, 51.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5542.14, 1125.37, 51.63, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5509.78, 1140.04, 18.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1240, 5510.73, 1133.22, 55.79, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1267, 5521.13, 1112.68, 55.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla960
CreateDynamicObject(-1267, 5514.35, 1112.68, 55.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla960
CreateDynamicObject(-1267, 5503.55, 1113.26, 55.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla960
CreateDynamicObject(-1156, 5489.35, 1122.01, 16.64, 0.00, 0.00, 55.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5484.66, 1115.32, 16.64, 0.00, 0.00, 55.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1268, 5477.53, 1143.00, 45.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla961
CreateDynamicObject(-1243, 5079.41, 1099.80, 13.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1245, 5019.29, 1074.92, 10.58, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1243, 5082.42, 1099.80, 13.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5021.81, 1007.40, 12.97, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5052.46, 1007.40, 12.97, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5056.60, 1007.40, 12.97, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1245, 5030.90, 1099.60, 16.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5030.84, 1099.60, 13.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5019.29, 1072.44, 10.58, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5074.38, 1005.00, 13.21, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5073.78, 977.72, 13.23, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5053.63, 910.53, 13.54, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1156, 5054.16, 945.10, 12.11, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1269, 5183.60, 1281.31, 19.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla965
CreateDynamicObject(-1245, 5183.65, 1308.21, 11.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5181.53, 1308.21, 11.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1156, 5212.46, 1296.70, 19.44, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5212.46, 1294.02, 19.45, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5149.49, 1290.34, 13.85, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5149.13, 1303.59, 14.09, 0.00, 0.00, 21.59, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5163.67, 1309.31, 14.10, 0.00, 0.00, 21.59, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1270, 5195.35, 1298.37, 28.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla967
CreateDynamicObject(-1271, 5592.78, 1179.61, 124.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla968
CreateDynamicObject(-1272, 5160.58, 1130.35, 29.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla970
CreateDynamicObject(-1240, 5156.92, 1151.63, 24.58, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1156, 5149.93, 1108.40, 15.45, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1245, 5188.70, 1109.91, 12.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1240, 5155.19, 1108.00, 24.58, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1240, 5161.54, 1108.00, 24.58, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla852
CreateDynamicObject(-1245, 5191.93, 1109.91, 12.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5201.24, 1109.91, 16.39, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1245, 5130.25, 1104.18, 12.31, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla878
CreateDynamicObject(-1273, 5033.85, 1216.46, 42.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla975
CreateDynamicObject(-1274, 5077.00, 1173.37, 14.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5073.87, 1173.37, 14.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4966.15, 1188.57, 12.50, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4969.38, 1229.18, 12.50, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4998.44, 1294.09, 12.25, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5009.44, 1294.94, 14.95, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5052.22, 1294.94, 14.95, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5086.80, 1294.94, 14.95, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1243, 4995.33, 1256.30, 10.03, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5017.90, 1295.24, 13.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5059.37, 1295.25, 12.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5081.68, 1295.32, 12.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1156, 5089.93, 1173.14, 13.50, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5052.53, 1173.15, 13.54, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5046.07, 1173.15, 13.54, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5006.65, 1137.29, 15.16, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1243, 4995.33, 1256.30, 13.18, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1275, 5069.35, 1138.92, 50.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla983
CreateDynamicObject(-1266, 5046.62, 1157.75, 42.54, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla959
CreateDynamicObject(-1242, 5080.70, 1148.90, 39.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1242, 5081.65, 1162.93, 39.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1243, 5091.95, 1108.26, 13.31, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5088.78, 1169.59, 12.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5042.85, 1153.30, 13.57, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1276, 5014.04, 974.88, 16.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla992
CreateDynamicObject(-1243, 4980.24, 995.82, 11.92, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1274, 5043.03, 910.96, 14.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1243, 4980.24, 992.63, 11.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4980.25, 956.59, 11.94, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4980.24, 926.35, 11.85, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1274, 5043.03, 914.16, 14.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5043.03, 940.50, 14.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5043.03, 943.48, 14.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5043.03, 969.79, 14.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5043.03, 972.83, 14.84, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5038.50, 983.84, 14.98, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5035.82, 985.54, 14.89, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5023.26, 993.72, 14.88, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5020.77, 995.35, 14.89, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5008.00, 1015.28, 14.59, 0.00, 0.00, 105.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5006.99, 1018.20, 14.57, 0.00, 0.00, 105.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1277, 5021.04, 1103.55, 16.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla993
CreateDynamicObject(-1274, 5006.49, 1128.96, 14.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1243, 5006.61, 1076.68, 11.73, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 5006.61, 1073.51, 11.73, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4975.20, 1057.76, 11.60, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4975.20, 1054.87, 11.57, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1156, 4974.97, 1064.04, 13.25, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1243, 4966.11, 1106.51, 10.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4966.11, 1130.32, 10.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4966.11, 1176.55, 10.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4966.11, 1179.95, 10.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1274, 5006.49, 1125.90, 14.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5006.49, 1122.84, 14.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5006.49, 1087.31, 14.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 5006.49, 1084.24, 14.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4975.24, 1071.67, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4975.24, 1073.96, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4975.24, 1076.36, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4966.15, 1148.42, 11.80, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1278, 5531.89, 1289.87, 15.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla994
CreateDynamicObject(-1279, 5607.78, 1232.17, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla995
CreateDynamicObject(-1280, 5119.41, 1026.40, 14.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla996
CreateDynamicObject(-1281, 5386.35, 1331.12, 21.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla997
CreateDynamicObject(-1282, 5291.35, 1140.54, 27.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla998
CreateDynamicObject(-1283, 5142.78, 1363.73, 66.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5133.01, 1363.13, 66.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5114.02, 1310.48, 65.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5123.02, 1310.48, 65.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5132.16, 1310.48, 65.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1284, 5112.14, 1334.96, 65.67, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1107, 5121.44, 1336.75, 65.87, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1107, 5129.11, 1337.30, 65.87, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1105, 5133.14, 1343.37, 66.28, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1105, 5141.18, 1344.44, 66.21, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1107, 5162.77, 1327.28, 65.87, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1107, 5180.35, 1327.29, 65.87, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1283, 5151.99, 1364.32, 66.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1285, 5230.62, 1058.98, 11.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1003
CreateDynamicObject(-1286, 5671.93, 1277.50, 32.38, 0.00, 0.00, 179.70, -1, 0, -1,800.00, 800.00); // mainla1006
CreateDynamicObject(-1287, 5003.08, 1374.01, 26.41, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // mainla1009
CreateDynamicObject(-1288, 5477.53, 1023.86, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5461.33, 1023.86, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5445.13, 1023.86, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5428.93, 1023.86, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5412.73, 1023.86, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5211.96, 1275.82, 14.31, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5211.96, 1273.34, 14.31, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1288, 5180.95, 1308.07, 19.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1011
CreateDynamicObject(-1255, 5228.13, 1228.77, 24.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla930
CreateDynamicObject(-1270, 5241.08, 1227.86, 24.85, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla967
CreateDynamicObject(-1270, 5272.65, 1214.62, 24.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla967
CreateDynamicObject(-1274, 4980.31, 1012.17, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4980.31, 1008.87, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4980.31, 945.98, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1274, 4980.31, 949.28, 12.90, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla982
CreateDynamicObject(-1289, 5129.96, 1386.69, 18.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1012
CreateDynamicObject(-1003, 5069.42, 1309.22, 15.00, 0.00, 0.00, -83.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5010.62, 1309.22, 14.63, 0.00, 0.00, -83.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5085.48, 1397.80, 15.57, 0.00, 0.00, 1.22, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5089.95, 1349.35, 15.04, 0.00, 0.00, 3.68, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1290, 5105.21, 1221.06, 19.81, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1014
CreateDynamicObject(-1291, 5105.92, 1227.19, 17.70, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1015
CreateDynamicObject(-1292, 5292.10, 1475.47, 23.37, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1016
CreateDynamicObject(-1293, 5292.80, 1460.71, 21.97, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1017
CreateDynamicObject(-1294, 5295.36, 1412.73, 22.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1018
CreateDynamicObject(-1295, 5403.32, 1188.64, 316.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1019
CreateDynamicObject(-1296, 5421.84, 1168.87, 316.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1020
CreateDynamicObject(-1297, 5378.01, 1181.20, 278.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1021
CreateDynamicObject(-1298, 5437.98, 1146.88, 278.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1022
CreateDynamicObject(-1299, 5454.26, 1175.64, 278.00, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1023
CreateDynamicObject(-1300, 5394.89, 1210.22, 278.00, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1024
CreateDynamicObject(-1301, 5436.78, 910.93, 344.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1025
CreateDynamicObject(-1302, 5154.29, 1030.00, 112.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1027
CreateDynamicObject(-1303, 5583.10, 1187.08, 259.26, 0.00, 0.00, -19.52, -1, 0, -1,800.00, 800.00); // mainla1029
CreateDynamicObject(-1304, 5149.43, 1003.83, 102.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1031
CreateDynamicObject(-1305, 5027.11, 1047.39, 53.54, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1035
CreateDynamicObject(-1306, 5051.95, 1262.72, 87.11, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1037
CreateDynamicObject(-1307, 5574.31, 1235.29, 17.92, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1039
CreateDynamicObject(-1308, 5333.21, 1329.53, 18.65, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1040
CreateDynamicObject(-1309, 5261.44, 1207.19, 17.92, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1041
CreateDynamicObject(-1310, 4930.13, 1148.30, 10.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1046
CreateDynamicObject(-1311, 5449.34, 952.73, 175.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1047
CreateDynamicObject(-1312, 5416.38, 1178.54, 152.36, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // mainla1048
CreateDynamicObject(-1313, 5127.47, 1195.64, 14.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1049
CreateDynamicObject(-1314, 5248.08, 1197.27, 14.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1050
CreateDynamicObject(-1315, 5049.04, 1317.82, 19.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1051
CreateDynamicObject(-1316, 5042.93, 1336.65, 12.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1052
CreateDynamicObject(-1317, 5050.58, 1330.11, 84.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1061
CreateDynamicObject(-1318, 5032.08, 1337.10, 9.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1068
CreateDynamicObject(-1319, 5043.13, 1336.64, 75.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1070
CreateDynamicObject(-1320, 5043.13, 1336.65, 80.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1074
CreateDynamicObject(-1321, 5043.13, 1336.65, 77.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1076
CreateDynamicObject(-1322, 5043.12, 1336.65, 48.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1077
CreateDynamicObject(-1323, 5034.84, 1345.00, 11.09, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5034.83, 1328.62, 11.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5035.02, 1340.00, 11.09, 0.00, 0.00, 50.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5035.07, 1333.49, 11.09, 0.00, 0.00, 65.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5046.58, 1344.76, 11.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5046.58, 1328.56, 11.09, 0.00, 0.00, -35.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1359.09, 75.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1313.94, 75.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1323.47, 75.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1351.87, 75.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1359.09, 78.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1313.94, 78.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1323.47, 78.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1323, 5029.19, 1351.87, 78.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1080
CreateDynamicObject(-1324, 5042.89, 1336.75, 49.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1084
CreateDynamicObject(-1325, 5043.02, 1336.66, 46.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1085
CreateDynamicObject(-1326, 5043.13, 1336.65, 77.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1086
CreateDynamicObject(-1327, 4931.19, 1233.00, 9.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1089
CreateDynamicObject(-1328, 5271.18, 1246.34, 16.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1092
CreateDynamicObject(-1329, 5232.02, 1326.79, 14.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1097
CreateDynamicObject(-1330, 5316.55, 1199.43, 14.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1099
CreateDynamicObject(-1331, 5379.87, 1126.76, 13.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1101
CreateDynamicObject(-1332, 5655.51, 1383.97, 14.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1102
CreateDynamicObject(-1333, 4978.68, 976.00, 9.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4978.67, 976.09, 11.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1335, 4973.68, 948.76, 11.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1333, 4973.72, 948.75, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4970.52, 949.09, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4959.74, 983.70, 9.70, 0.00, 0.00, -35.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1335, 4961.65, 959.05, 11.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1333, 4961.70, 959.05, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1336, 4975.86, 959.63, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1114
CreateDynamicObject(-1337, 5455.98, 1427.10, 10.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1115
CreateDynamicObject(-1338, 5495.47, 1432.85, 8.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1122
CreateDynamicObject(-1339, 5447.95, 1543.17, -0.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1123
CreateDynamicObject(-1340, 5525.18, 1542.44, -3.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1125
CreateDynamicObject(-1341, 5542.48, 1436.16, 12.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1128
CreateDynamicObject(-1342, 4422.33, 1259.04, 9.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1130
CreateDynamicObject(-1343, 5261.67, 1297.10, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1132
CreateDynamicObject(-1344, 5352.12, 1405.14, 16.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1134
CreateDynamicObject(-1345, 5073.30, 957.67, 17.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1138
CreateDynamicObject(-1346, 4925.31, 1231.87, 11.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1139
CreateDynamicObject(-1050, 4924.92, 1232.48, 8.36, 0.00, 0.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1050, 4937.28, 1232.48, 8.36, 0.00, 0.00, -88.00, -1, 0, -1,800.00, 800.00); // mainla284
CreateDynamicObject(-1347, 5062.57, 1052.20, 44.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1141
CreateDynamicObject(-1348, 4462.15, 1427.90, 17.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1144
CreateDynamicObject(-1349, 4752.51, 1474.38, 7.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1145
CreateDynamicObject(-1350, 4799.74, 1197.66, 7.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1146
CreateDynamicObject(-1351, 5601.79, 1239.37, 226.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1148
CreateDynamicObject(-1352, 5613.45, 1237.49, 210.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1150
CreateDynamicObject(-1353, 5484.59, 1136.42, 66.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1152
CreateDynamicObject(-1354, 5289.75, 525.00, 9.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1165
CreateDynamicObject(-1355, 5379.74, 663.62, 9.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1169
CreateDynamicObject(-1356, 5355.04, 743.48, 9.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1170
CreateDynamicObject(-1357, 5294.14, 689.23, 10.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1171
CreateDynamicObject(-1358, 5376.16, 686.25, 28.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1172
CreateDynamicObject(-1359, 5169.91, 786.22, 26.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1178
CreateDynamicObject(-1360, 5340.44, 790.99, 31.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1180
CreateDynamicObject(-1361, 5196.91, 882.26, 24.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1186
CreateDynamicObject(-1362, 5246.10, 858.05, 21.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1191
CreateDynamicObject(-1363, 5341.28, 870.25, 18.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1197
CreateDynamicObject(-1364, 5373.57, 603.42, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1198
CreateDynamicObject(-1365, 5479.70, 652.92, -6.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1199
CreateDynamicObject(-1366, 5245.62, 705.36, 22.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1200
CreateDynamicObject(-1367, 5363.95, 633.10, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1204
CreateDynamicObject(-1368, 5368.45, 672.83, 12.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1211
CreateDynamicObject(-1369, 5437.01, 860.53, 13.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1215
CreateDynamicObject(-1370, 5288.12, 798.26, 11.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1216
CreateDynamicObject(-1371, 5288.12, 876.15, 11.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1219
CreateDynamicObject(-1372, 5255.51, 948.37, 39.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1221
CreateDynamicObject(-1373, 5224.97, 827.51, 11.64, 0.00, 0.00, -93.00, -1, 0, -1,800.00, 800.00); // mainla1223
CreateDynamicObject(-1374, 5191.68, 677.50, 10.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1225
CreateDynamicObject(-1375, 5050.11, 739.10, 10.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1226
CreateDynamicObject(-1376, 5191.06, 959.53, 10.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1227
CreateDynamicObject(-1377, 4876.06, 542.45, -13.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1228
CreateDynamicObject(-1378, 5439.83, 793.54, 114.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1229
CreateDynamicObject(-1003, 5301.41, 421.65, 14.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5310.99, 498.55, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5318.95, 571.78, 14.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5332.36, 643.14, 14.65, 0.00, 0.00, 34.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5297.97, 614.36, 14.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5281.39, 670.18, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5283.97, 734.76, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5241.43, 763.65, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5209.02, 741.61, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5151.55, 769.53, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5109.23, 750.76, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5087.86, 779.35, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5086.33, 880.27, 14.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5336.56, 756.04, 15.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5383.04, 735.00, 15.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5457.68, 745.52, 14.28, 0.00, 0.00, -16.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5505.24, 799.12, 14.78, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5544.81, 887.03, 14.78, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5569.34, 957.43, 14.78, 0.00, 0.00, -16.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5606.81, 1048.62, 11.37, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5288.60, 758.20, 14.80, 0.00, 0.00, -42.66, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5479.92, 735.86, 14.28, 0.00, 0.00, -16.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1379, 5264.29, 1022.65, 20.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1230
CreateDynamicObject(-1380, 5304.98, 1036.45, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1231
CreateDynamicObject(-1381, 5331.95, 781.70, 10.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1232
CreateDynamicObject(-1382, 5597.82, 947.15, -7.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1234
CreateDynamicObject(-1383, 5614.12, 990.83, 28.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1235
CreateDynamicObject(-1384, 5371.91, 661.71, 18.25, 0.00, 0.00, 6.50, -1, 0, -1,800.00, 800.00); // mainla1242
CreateDynamicObject(-1385, 5442.79, 805.76, 101.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1244
CreateDynamicObject(-1386, 5227.52, 771.63, 11.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1246
CreateDynamicObject(-1386, 5164.95, 928.20, 11.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1246
CreateDynamicObject(-1387, 5524.37, 771.70, -6.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1247
CreateDynamicObject(-1388, 5321.35, 481.91, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1248
CreateDynamicObject(-1389, 5499.62, 816.01, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1249
CreateDynamicObject(-1390, 5169.38, 841.13, 9.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1250
CreateDynamicObject(-1391, 5294.75, 870.05, 10.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1251
CreateDynamicObject(-1392, 5197.20, 870.49, 12.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1252
CreateDynamicObject(-1393, 5407.13, 862.94, 10.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1255
CreateDynamicObject(-1394, 4873.18, 772.42, -17.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1256
CreateDynamicObject(-1395, 5066.55, 720.54, 32.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1257
CreateDynamicObject(-1396, 4996.75, 542.45, 73.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1261
CreateDynamicObject(-1397, 5127.86, 892.29, 22.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1262
CreateDynamicObject(-1398, 5310.52, 948.13, 11.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1267
CreateDynamicObject(-1399, 5309.66, 847.09, 12.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1268
CreateDynamicObject(-1105, 5342.78, 781.26, 23.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1107, 5330.77, 808.93, 23.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1284, 5313.68, 810.90, 28.00, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1283, 5320.48, 808.43, 28.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1400, 5338.47, 797.30, 24.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1283, 5320.48, 802.24, 28.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1400, 5338.47, 793.15, 24.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1400, 5338.47, 801.26, 24.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1400, 5338.47, 805.42, 24.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1107, 5330.77, 794.24, 23.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1284, 5313.68, 794.86, 28.00, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1284, 5313.70, 780.78, 28.00, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1107, 5314.13, 799.16, 28.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1107, 5314.13, 786.96, 28.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1283, 5329.44, 771.64, 28.20, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5335.64, 771.64, 28.20, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5364.46, 771.64, 28.20, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1283, 5358.27, 771.64, 28.20, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla999
CreateDynamicObject(-1284, 5328.55, 764.06, 28.00, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1284, 5344.58, 764.06, 28.00, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1284, 5358.66, 764.06, 28.00, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1107, 5352.66, 764.17, 28.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1401, 5191.46, 691.24, 10.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1272
CreateDynamicObject(-1402, 5218.81, 497.11, 29.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1273
CreateDynamicObject(-1403, 5220.80, 497.11, 21.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1276
CreateDynamicObject(-1404, 5221.20, 538.88, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 538.88, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 531.95, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 531.95, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 524.31, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 524.31, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 516.84, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 516.84, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 510.11, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 510.11, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 502.07, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 502.07, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 493.48, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 493.48, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5216.98, 482.86, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1404, 5221.20, 482.86, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1277
CreateDynamicObject(-1405, 5218.87, 497.11, 13.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1280
CreateDynamicObject(-1406, 5174.28, 477.64, 29.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1282
CreateDynamicObject(-1407, 5174.06, 528.64, 29.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1284
CreateDynamicObject(-1408, 5079.73, 567.94, 6.86, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1286
CreateDynamicObject(-1409, 5400.72, 699.54, 21.88, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1287
CreateDynamicObject(-1140, 5130.31, 596.33, 11.36, 90.00, -125.79, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1410, 5143.61, 575.01, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1410, 5151.12, 580.41, 10.56, 0.00, 0.00, 39.44, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1140, 5131.07, 600.78, 11.13, 90.00, -125.79, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 5129.06, 599.72, 13.54, 90.00, 54.21, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1411, 5120.08, 699.57, 11.14, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1411, 5111.70, 737.17, 11.14, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1412, 5101.09, 696.68, 10.35, 56.07, 134.58, -146.19, -1, 0, -1,800.00, 800.00); // mainla1299
CreateDynamicObject(-1412, 5090.19, 707.87, 10.14, 0.02, -179.95, -161.20, -1, 0, -1,800.00, 800.00); // mainla1299
CreateDynamicObject(-1413, 5062.25, 697.25, 10.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1302
CreateDynamicObject(-1413, 5065.74, 697.41, 10.70, 0.00, 0.00, 3.46, -1, 0, -1,800.00, 800.00); // mainla1302
CreateDynamicObject(-1413, 5099.16, 708.96, 10.70, 0.00, 0.00, -3.85, -1, 0, -1,800.00, 800.00); // mainla1302
CreateDynamicObject(-1411, 5071.87, 697.98, 11.15, 0.00, 0.00, 0.16, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1412, 5074.75, 699.48, 10.33, -15.30, 126.54, -168.93, -1, 0, -1,800.00, 800.00); // mainla1299
CreateDynamicObject(-1411, 5080.72, 708.39, 11.15, 0.00, 0.00, 179.63, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1414, 5116.06, 738.68, 10.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1308
CreateDynamicObject(-1415, 5109.15, 702.17, 10.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1310
CreateDynamicObject(-1416, 5062.95, 703.32, 10.08, 0.00, 0.00, -40.83, -1, 0, -1,800.00, 800.00); // mainla1311
CreateDynamicObject(-1417, 5094.05, 703.22, 20.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1312
CreateDynamicObject(-1418, 5069.14, 797.63, 17.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1313
CreateDynamicObject(-1419, 5126.35, 525.78, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1321
CreateDynamicObject(-1420, 5148.59, 530.13, 49.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1324
CreateDynamicObject(-1421, 5161.21, 506.21, 97.79, 0.00, 0.00, -59.95, -1, 0, -1,800.00, 800.00); // mainla1326
CreateDynamicObject(-1422, 5233.77, 525.89, 12.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1329
CreateDynamicObject(-1093, 5207.38, 632.87, 12.87, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1093, 5231.57, 632.87, 12.87, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1093, 5219.68, 632.87, 12.87, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1094, 5207.38, 632.51, 14.63, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla434
CreateDynamicObject(-1423, 5083.94, 604.12, 12.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1331
CreateDynamicObject(-1424, 5080.73, 475.28, 11.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1332
CreateDynamicObject(-1425, 5060.66, 534.12, 9.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1333
CreateDynamicObject(-1426, 5160.46, 507.72, 39.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1334
CreateDynamicObject(-1427, 5233.33, 525.89, 9.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1341
CreateDynamicObject(-1428, 5311.10, 668.69, 21.82, 0.00, 0.00, 48.28, -1, 0, -1,800.00, 800.00); // mainla1344
CreateDynamicObject(-1429, 5311.00, 668.75, 30.43, 0.00, 0.00, -41.61, -1, 0, -1,800.00, 800.00); // mainla1346
CreateDynamicObject(-1430, 5420.74, 561.10, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1348
CreateDynamicObject(-1431, 5415.56, 579.45, 8.87, 0.00, 0.00, -164.71, -1, 0, -1,800.00, 800.00); // mainla1350
CreateDynamicObject(-1411, 5087.71, 698.15, 11.15, 0.00, 0.00, 0.96, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1432, 5420.74, 561.10, -17.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1352
CreateDynamicObject(-1433, 5390.75, 641.53, 15.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1353
CreateDynamicObject(-1105, 5347.94, 627.00, 21.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1400, 5360.72, 643.34, 22.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1400, 5366.22, 643.34, 22.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1269
CreateDynamicObject(-1434, 5416.25, 826.85, 205.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1355
CreateDynamicObject(-1435, 5343.85, 730.90, 52.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1357
CreateDynamicObject(-1436, 5353.04, 730.87, 58.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1359
CreateDynamicObject(-1437, 5356.82, 697.91, 52.20, 0.00, 0.00, -82.81, -1, 0, -1,800.00, 800.00); // mainla1361
CreateDynamicObject(-1438, 5038.50, 711.38, 61.41, 0.00, 0.00, -89.18, -1, 0, -1,800.00, 800.00); // mainla1363
CreateDynamicObject(-1439, 4958.54, 763.11, 61.41, 0.00, 0.00, 1.66, -1, 0, -1,800.00, 800.00); // mainla1365
CreateDynamicObject(-1440, 5009.50, 820.94, 109.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1367
CreateDynamicObject(-1441, 4975.59, 546.02, 133.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1369
CreateDynamicObject(-1442, 5426.62, 820.48, 18.99, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1371
CreateDynamicObject(-1003, 5364.13, 668.15, 14.65, 0.00, 0.00, 99.80, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5456.12, 683.59, 14.65, 0.00, 0.00, 158.97, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1443, 5368.73, 578.21, 18.23, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1372
CreateDynamicObject(-1444, 5224.90, 779.60, 21.59, 5.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1373
CreateDynamicObject(-1445, 5166.56, 483.70, 21.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1374
CreateDynamicObject(-1140, 5159.50, 481.33, 11.43, 89.92, -170.44, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 5163.92, 510.46, 11.39, 90.00, -40.72, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1410, 5168.83, 545.34, 10.59, 0.00, 0.00, -0.08, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1446, 5098.14, 747.96, 12.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1375
CreateDynamicObject(-1447, 5185.15, 807.53, 19.01, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla1376
CreateDynamicObject(-1448, 4973.91, 578.64, 80.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1377
CreateDynamicObject(-1449, 5019.91, 840.06, 48.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1378
CreateDynamicObject(-1450, 5068.87, 843.15, 19.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1393
CreateDynamicObject(-1451, 5001.95, 839.09, 63.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1394
CreateDynamicObject(-1452, 5161.04, 837.25, 25.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1395
CreateDynamicObject(-1453, 5335.63, 870.25, 20.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1396
CreateDynamicObject(-1454, 5340.51, 694.78, 30.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1397
CreateDynamicObject(-1455, 5394.73, 793.27, 201.84, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1398
CreateDynamicObject(-1456, 5427.26, 791.35, 200.84, 40.00, -90.00, -115.00, -1, 0, -1,800.00, 800.00); // mainla1400
CreateDynamicObject(-1457, 5440.77, 793.54, 189.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1401
CreateDynamicObject(-1458, 5171.72, 485.46, 20.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1402
CreateDynamicObject(-1094, 5156.56, 634.56, 13.80, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla434
CreateDynamicObject(-1093, 5156.56, 634.93, 12.04, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1459, 5128.61, 593.74, 12.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1405
CreateDynamicObject(-1410, 5133.74, 588.45, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1410, 5121.22, 595.49, 10.64, 0.00, 0.00, -46.98, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1410, 5121.22, 595.49, 12.28, 0.00, 0.00, -126.66, -1, 0, -1,800.00, 800.00); // mainla1296
CreateDynamicObject(-1460, 5080.70, 797.74, 23.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1406
CreateDynamicObject(-1461, 5658.04, 1042.48, 15.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1414
CreateDynamicObject(-1462, 5476.09, 783.93, 201.84, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1416
CreateDynamicObject(-1463, 5311.10, 668.69, 21.83, 0.00, 0.00, 48.28, -1, 0, -1,800.00, 800.00); // mainla1417
CreateDynamicObject(-1464, 5126.35, 587.28, 12.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1419
CreateDynamicObject(-1465, 5180.94, -1137.57, 9.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1420
CreateDynamicObject(-1466, 5050.78, -1356.84, 10.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1421
CreateDynamicObject(-1467, 5139.33, -1398.46, 24.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1424
CreateDynamicObject(-1468, 5236.28, -1419.43, 6.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1425
CreateDynamicObject(-1469, 5233.51, -1277.44, 18.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1426
CreateDynamicObject(-1470, 5323.37, -928.47, 15.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1428
CreateDynamicObject(-1471, 5035.74, -1383.95, 24.89, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // mainla1432
CreateDynamicObject(-1472, 5033.93, -1414.68, 5.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1448
CreateDynamicObject(-1473, 4907.13, -1277.16, 1.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1457
CreateDynamicObject(-1474, 5203.77, -1533.37, 9.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1459
CreateDynamicObject(-1475, 5273.57, -1567.77, 3.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1467
CreateDynamicObject(-1476, 5262.46, -1557.78, 16.60, 0.00, 0.00, -21.50, -1, 0, -1,800.00, 800.00); // mainla1472
CreateDynamicObject(-1477, 5198.29, -1530.68, 15.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1480
CreateDynamicObject(-1478, 5114.47, -981.84, 17.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1486
CreateDynamicObject(-1479, 5216.95, -1395.42, 15.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1501
CreateDynamicObject(-1480, 5120.25, -995.87, 22.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1502
CreateDynamicObject(-1481, 5119.64, -1011.73, 22.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1504
CreateDynamicObject(-1482, 5120.76, -1007.87, 22.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1506
CreateDynamicObject(-1481, 5120.72, -1013.62, 22.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1504
CreateDynamicObject(-1480, 5121.39, -1022.84, 22.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1502
CreateDynamicObject(-1483, 5121.69, -1027.68, 23.19, 0.00, 0.00, -52.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5123.53, -1042.06, 23.19, 0.00, 0.00, -52.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1484, 4808.25, -1381.76, 21.72, 0.00, 0.00, -21.50, -1, 0, -1,800.00, 800.00); // mainla1514
CreateDynamicObject(-1485, 5091.68, -1477.79, 62.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1516
CreateDynamicObject(-1486, 5134.18, -1499.42, 14.97, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // mainla1523
CreateDynamicObject(-1487, 5112.82, -1515.71, 43.98, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // mainla1535
CreateDynamicObject(-1488, 4942.53, -1483.47, 27.32, 0.00, 0.00, -115.00, -1, 0, -1,800.00, 800.00); // mainla1543
CreateDynamicObject(-1489, 4997.89, -1459.53, 43.98, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // mainla1548
CreateDynamicObject(-1490, 5016.24, -1515.35, 27.32, 0.00, 0.00, -115.00, -1, 0, -1,800.00, 800.00); // mainla1550
CreateDynamicObject(-1491, 5073.23, -1538.53, 27.32, 0.00, 0.00, -115.00, -1, 0, -1,800.00, 800.00); // mainla1552
CreateDynamicObject(-1492, 5317.59, -1543.45, 27.92, 0.00, 0.00, -21.00, -1, 0, -1,800.00, 800.00); // mainla1554
CreateDynamicObject(-1493, 5305.85, -1538.90, 15.07, 0.00, 0.00, -21.00, -1, 0, -1,800.00, 800.00); // mainla1556
CreateDynamicObject(-1494, 4917.02, -1450.37, 14.03, 0.00, 0.00, 157.50, -1, 0, -1,800.00, 800.00); // mainla1558
CreateDynamicObject(-1495, 4932.65, -1466.65, 18.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1564
CreateDynamicObject(-1496, 5309.66, -1537.73, 13.42, 0.00, 0.00, -113.50, -1, 0, -1,800.00, 800.00); // mainla1566
CreateDynamicObject(-1497, 5263.40, -1478.62, 12.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1568
CreateDynamicObject(-1498, 5127.34, -906.95, 13.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1569
CreateDynamicObject(-1499, 4950.91, -1222.93, 20.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1579
CreateDynamicObject(-1500, 5244.44, -1280.98, 12.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1581
CreateDynamicObject(-1501, 5238.47, -1274.13, 11.37, 0.00, 0.00, -66.00, -1, 0, -1,800.00, 800.00); // mainla1587
CreateDynamicObject(-1502, 5260.91, -1263.14, 13.61, 0.00, 0.00, 114.00, -1, 0, -1,800.00, 800.00); // mainla1594
CreateDynamicObject(-1503, 5215.79, -1279.10, 13.02, 0.00, 0.00, 114.00, -1, 0, -1,800.00, 800.00); // mainla1597
CreateDynamicObject(-1504, 5147.35, -1346.59, 21.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1599
CreateDynamicObject(-1505, 5073.39, -1312.19, 19.66, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1606
CreateDynamicObject(-1506, 5145.57, -1287.62, 19.95, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1607
CreateDynamicObject(-1507, 5211.43, -1273.34, 12.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1609
CreateDynamicObject(-1508, 5232.69, -1284.89, 15.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1611
CreateDynamicObject(-1509, 5370.94, -931.07, 11.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1617
CreateDynamicObject(-1510, 5235.55, -926.60, 11.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1620
CreateDynamicObject(-1511, 4996.16, -1442.61, 14.16, 0.00, 0.00, -114.00, -1, 0, -1,800.00, 800.00); // mainla1622
CreateDynamicObject(-1512, 5060.80, -1500.02, 14.16, 0.00, 0.00, 66.00, -1, 0, -1,800.00, 800.00); // mainla1623
CreateDynamicObject(-1513, 5311.83, -1479.20, 17.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1624
CreateDynamicObject(-1514, 5344.57, -1493.09, 13.82, 0.00, 0.00, -21.50, -1, 0, -1,800.00, 800.00); // mainla1628
CreateDynamicObject(-1515, 5196.91, -1429.57, 24.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1639
CreateDynamicObject(-1516, 5289.42, -1513.23, 2.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1640
CreateDynamicObject(-1517, 5306.69, -930.08, 15.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1641
CreateDynamicObject(-1518, 5378.39, -931.34, 20.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1642
CreateDynamicObject(-1519, 5136.25, -1484.47, 12.93, 0.00, 0.00, 68.00, -1, 0, -1,800.00, 800.00); // mainla1643
CreateDynamicObject(-1520, 5240.70, -1471.81, 17.28, 90.00, 73.85, 115.15, -1, 0, -1,800.00, 800.00); // mainla1644
CreateDynamicObject(-1521, 5300.42, -1486.06, 16.53, 0.00, 0.00, 68.50, -1, 0, -1,800.00, 800.00); // mainla1646
CreateDynamicObject(-1522, 5240.91, -1535.63, 17.05, 89.95, -112.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1648
CreateDynamicObject(-1522, 5237.78, -1543.35, 17.05, 89.95, -112.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1648
CreateDynamicObject(-1156, 5105.13, -1000.57, 16.25, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1481, 5120.72, -997.23, 22.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1504
CreateDynamicObject(-1523, 5067.97, -1260.41, 15.57, 0.00, 0.00, 67.00, -1, 0, -1,800.00, 800.00); // mainla1654
CreateDynamicObject(-1524, 5332.33, -1486.74, 12.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1663
CreateDynamicObject(-1525, 5224.66, -1158.83, 0.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1664
CreateDynamicObject(-1526, 5187.90, -973.95, -0.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1666
CreateDynamicObject(-1527, 5283.91, -1353.90, 7.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1667
CreateDynamicObject(-1528, 4974.48, -1360.56, 22.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1668
CreateDynamicObject(-1059, 5152.17, -895.33, 13.87, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1059, 5167.37, -895.09, 13.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1529, 5268.81, -1274.15, 24.24, 0.00, 0.00, -70.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5285.95, -1315.08, 24.24, 0.00, 0.00, -63.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5301.63, -1353.70, 24.24, 0.00, 0.00, -76.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5301.63, -1408.12, 24.24, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5228.26, -1480.63, 24.58, 0.00, 0.00, -169.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5113.26, -1451.31, 24.91, 0.00, 0.00, 159.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5026.02, -1415.98, 24.91, 0.00, 0.00, 159.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4930.76, -1442.21, 24.74, 0.00, 0.00, 66.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4976.67, -1410.77, 24.76, 0.00, 0.00, 111.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5064.71, -1453.87, 24.74, 0.00, 0.00, 156.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5127.55, -1480.04, 24.89, 0.00, 0.00, 156.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 5290.29, -1576.84, 25.53, 0.00, 0.00, -169.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1530, 5275.40, -1550.10, 13.65, 0.00, 0.00, 68.50, -1, 0, -1,800.00, 800.00); // mainla1677
CreateDynamicObject(-1530, 5262.00, -1566.19, 15.67, 0.00, 0.00, -112.50, -1, 0, -1,800.00, 800.00); // mainla1677
CreateDynamicObject(-1530, 5269.19, -1576.04, 15.67, 0.00, 0.00, -112.50, -1, 0, -1,800.00, 800.00); // mainla1677
CreateDynamicObject(-1530, 5288.61, -1552.19, 13.57, 0.00, 0.00, 158.50, -1, 0, -1,800.00, 800.00); // mainla1677
CreateDynamicObject(-1531, 5290.67, -1256.91, 19.53, 0.00, 0.00, -156.50, -1, 0, -1,800.00, 800.00); // mainla1679
CreateDynamicObject(-1532, 5291.05, -1257.80, 16.65, 0.00, 0.00, -156.50, -1, 0, -1,800.00, 800.00); // mainla1690
CreateDynamicObject(-1533, 5149.30, -1155.88, 12.17, 0.00, 0.00, 17.55, -1, 0, -1,800.00, 800.00); // mainla1692
CreateDynamicObject(-1533, 5138.35, -1121.26, 12.48, 0.00, 0.00, 17.55, -1, 0, -1,800.00, 800.00); // mainla1692
CreateDynamicObject(-1533, 5127.41, -1086.65, 12.76, 0.00, 0.00, 17.55, -1, 0, -1,800.00, 800.00); // mainla1692
CreateDynamicObject(-1533, 5165.78, -1207.77, 11.64, 0.00, 0.00, 17.55, -1, 0, -1,800.00, 800.00); // mainla1692
CreateDynamicObject(-1534, 5125.81, -1171.93, 14.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1703
CreateDynamicObject(-1535, 5231.27, -1185.73, 11.37, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // mainla1709
CreateDynamicObject(-1536, 5296.17, -1305.76, 13.57, 0.00, 0.00, -156.08, -1, 0, -1,800.00, 800.00); // mainla1710
CreateDynamicObject(-1536, 5291.73, -1295.47, 13.57, 0.00, 0.00, -156.08, -1, 0, -1,800.00, 800.00); // mainla1710
CreateDynamicObject(-1536, 5318.19, -1283.92, 13.57, 0.00, 0.00, -156.08, -1, 0, -1,800.00, 800.00); // mainla1710
CreateDynamicObject(-1536, 5322.64, -1294.21, 13.57, 0.00, 0.00, -156.08, -1, 0, -1,800.00, 800.00); // mainla1710
CreateDynamicObject(-1537, 5025.20, -1336.95, 29.41, 0.00, 0.00, 158.18, -1, 0, -1,800.00, 800.00); // mainla1711
CreateDynamicObject(-1537, 5024.03, -1339.93, 29.41, 0.00, 0.00, 158.18, -1, 0, -1,800.00, 800.00); // mainla1711
CreateDynamicObject(-1538, 5317.53, -1284.14, 13.73, 0.00, 0.00, 23.61, -1, 0, -1,800.00, 800.00); // mainla1712
CreateDynamicObject(-1538, 5321.98, -1294.43, 13.73, 0.00, 0.00, 23.61, -1, 0, -1,800.00, 800.00); // mainla1712
CreateDynamicObject(-1538, 5292.29, -1295.13, 13.73, 0.00, 0.00, -156.39, -1, 0, -1,800.00, 800.00); // mainla1712
CreateDynamicObject(-1538, 5296.75, -1305.41, 13.73, 0.00, 0.00, -156.39, -1, 0, -1,800.00, 800.00); // mainla1712
CreateDynamicObject(-1536, 5230.53, -1186.82, 10.63, 0.00, -35.00, -50.02, -1, 0, -1,800.00, 800.00); // mainla1710
CreateDynamicObject(-1539, 5276.87, -1539.41, 16.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1713
CreateDynamicObject(-1540, 4860.04, -1229.12, 12.38, 0.00, 0.00, 66.37, -1, 0, -1,800.00, 800.00); // mainla1715
CreateDynamicObject(-1093, 4857.64, -1237.84, 12.08, 0.00, 0.00, -23.63, -1, 0, -1,800.00, 800.00); // mainla429
CreateDynamicObject(-1541, 4856.26, -1232.34, 11.46, 0.00, 0.00, -113.63, -1, 0, -1,800.00, 800.00); // mainla1717
CreateDynamicObject(-1529, 4901.73, -1258.83, 24.36, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4881.61, -1322.42, 24.55, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4852.04, -1374.87, 24.36, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1243, 4857.50, -1231.59, 12.28, 0.00, 0.00, 156.34, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1542, 5002.20, -1345.05, 34.82, 0.00, 0.00, 107.79, -1, 0, -1,800.00, 800.00); // mainla1720
CreateDynamicObject(-1543, 5144.30, -1545.20, 10.38, 0.00, 0.00, 157.44, -1, 0, -1,800.00, 800.00); // mainla1722
CreateDynamicObject(-1544, 5287.33, -1514.97, 16.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1723
CreateDynamicObject(-1207, 5006.85, -1346.73, 23.62, 0.00, 0.00, -113.08, -1, 0, -1,800.00, 800.00); // mainla783
CreateDynamicObject(-1529, 5247.79, -1262.64, 24.22, 0.00, 0.00, 17.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1156, 5105.64, -1016.02, 16.41, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5107.32, -1034.42, 16.41, 0.00, 0.00, 96.29, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5132.25, -1201.98, 17.40, 0.00, 0.00, -162.85, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 5137.59, -1200.33, 17.40, 0.00, 0.00, -162.85, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1545, 5164.28, -1172.93, 15.17, 0.00, 0.00, -73.71, -1, 0, -1,800.00, 800.00); // mainla1725
CreateDynamicObject(-1546, 5171.38, -1189.55, 13.44, 0.00, 0.00, 18.11, -1, 0, -1,800.00, 800.00); // mainla1726
CreateDynamicObject(-1547, 5114.24, -986.21, 19.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1727
CreateDynamicObject(-1333, 4942.16, -1253.51, 10.80, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4934.96, -1261.09, 10.80, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4933.54, -1265.50, 10.80, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4926.96, -1286.04, 10.91, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1335, 4942.12, -1253.50, 12.91, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1334, 4926.91, -1286.00, 13.14, 0.00, 0.00, 72.22, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4849.89, -1266.68, 10.80, 0.00, 0.00, -102.36, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4847.31, -1279.82, 10.80, 0.00, 0.00, -102.36, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4871.92, -1304.47, 10.94, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4871.92, -1304.47, 13.05, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4914.46, -1338.82, 11.75, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1335, 4838.70, -1347.56, 12.91, 0.00, 0.00, -117.20, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1333, 4838.67, -1347.55, 10.80, 0.00, 0.00, -117.20, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4839.08, -1384.67, 11.79, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4841.40, -1385.71, 11.79, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4843.79, -1386.79, 11.79, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4846.19, -1387.86, 11.79, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4846.19, -1387.86, 14.68, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4843.79, -1386.79, 14.68, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4841.40, -1385.71, 14.68, 0.00, 0.00, 155.78, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4886.45, -1335.63, 13.16, 0.00, 0.00, 65.42, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4886.45, -1335.63, 11.06, 0.00, 0.00, 65.42, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1078, 4928.47, -1305.39, 10.83, 0.00, 0.00, -22.61, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4926.26, -1304.47, 10.83, 0.00, 0.00, -22.61, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4927.78, -1305.10, 11.66, 0.00, 0.00, -22.61, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1333, 4921.48, -1319.46, 10.99, 0.00, 0.00, -13.53, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1078, 4921.67, -1318.65, 12.23, 0.00, 0.00, -9.71, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1334, 4869.25, -1289.63, 12.88, 0.00, 0.00, 71.92, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4869.33, -1289.66, 10.70, 0.00, 0.00, 71.92, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 4845.94, -1286.12, 10.80, 0.00, 0.00, -108.57, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4862.42, -1401.18, 13.37, 0.00, 0.00, 64.77, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4862.43, -1401.18, 11.26, 0.00, 0.00, 64.77, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4872.94, -1374.62, 12.04, 0.00, 0.00, -24.93, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1335, 4853.36, -1365.77, 13.17, 0.00, 0.00, -22.42, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1333, 4853.34, -1365.80, 11.06, 0.00, 0.00, -22.42, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1335, 4858.47, -1367.88, 13.17, 0.00, 0.00, -22.42, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1333, 4858.46, -1367.91, 11.06, 0.00, 0.00, -22.42, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1529, 4878.92, -1254.19, 24.36, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4851.10, -1326.10, 24.36, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1549, 4835.94, -1333.14, 14.63, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // mainla1731
CreateDynamicObject(-1156, 4856.25, -1307.24, 15.07, 0.00, 0.00, -25.04, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1156, 4854.22, -1306.29, 15.07, 0.00, 0.00, -25.04, -1, 0, -1,800.00, 800.00); // mainla622
CreateDynamicObject(-1550, 4845.96, -1311.65, 14.63, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // mainla1733
CreateDynamicObject(-1551, 4842.39, -1418.28, 15.09, 0.00, 0.00, 66.79, -1, 0, -1,800.00, 800.00); // mainla1734
CreateDynamicObject(-1548, 5238.55, -1331.90, 12.81, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 5238.55, -1331.90, 10.71, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 5225.00, -1346.13, 12.81, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 5225.00, -1346.13, 10.71, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5225.00, -1352.89, 10.73, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5236.42, -1374.07, 10.89, 0.00, 0.00, 161.92, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 5236.38, -1374.16, 13.07, 0.00, 0.00, 161.92, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1548, 5255.25, -1343.61, 11.50, 0.00, 0.00, 23.49, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 5257.51, -1342.56, 14.43, 0.00, 0.00, 23.49, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 5255.25, -1343.61, 14.43, 0.00, 0.00, 23.49, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 5257.51, -1342.56, 11.50, 0.00, 0.00, 23.49, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 5232.73, -1436.53, 10.70, 0.00, 0.00, 161.92, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5264.04, -1367.18, 10.71, 0.00, 0.00, -165.61, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5237.31, -1338.29, 10.71, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1529, 5201.06, -1272.83, 24.25, 0.00, 0.00, 17.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1552, 5238.82, -1335.07, 13.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1735
CreateDynamicObject(-1548, 5239.29, -1334.50, 11.46, 0.00, 0.00, 105.87, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1334, 5236.28, -1415.96, 13.04, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 5236.23, -1415.93, 10.81, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 5233.19, -1423.29, 12.94, 0.00, 0.00, -98.08, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 5233.19, -1423.29, 10.83, 0.00, 0.00, -98.08, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5227.85, -1463.67, 11.07, 0.00, 0.00, 11.92, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1333, 5235.80, -1462.46, 10.83, 0.00, 0.00, 11.92, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1335, 5235.79, -1462.43, 12.94, 0.00, 0.00, 11.92, -1, 0, -1,800.00, 800.00); // mainla1113
CreateDynamicObject(-1537, 4997.40, -1276.97, 27.96, 0.00, 0.00, 68.18, -1, 0, -1,800.00, 800.00); // mainla1711
CreateDynamicObject(-1537, 4994.42, -1275.81, 27.96, 0.00, 0.00, 68.18, -1, 0, -1,800.00, 800.00); // mainla1711
CreateDynamicObject(-1334, 4877.65, -1351.59, 13.17, 0.00, 0.00, 162.22, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4877.69, -1351.54, 10.94, 0.00, 0.00, 162.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4868.79, -1327.56, 13.16, 0.00, 0.00, 65.42, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4868.79, -1327.56, 11.06, 0.00, 0.00, 65.42, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4869.34, -1348.93, 13.17, 0.00, 0.00, 157.22, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4869.38, -1348.88, 10.94, 0.00, 0.00, 157.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4862.56, -1346.08, 13.17, 0.00, 0.00, 157.22, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4862.60, -1346.03, 10.94, 0.00, 0.00, 157.22, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4870.58, -1373.52, 12.04, 0.00, 0.00, -24.93, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4871.72, -1374.05, 14.96, 0.00, 0.00, -24.93, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1548, 4878.75, -1307.68, 13.05, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4878.75, -1307.68, 10.94, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4886.72, -1311.44, 13.05, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4886.72, -1311.44, 10.94, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4894.46, -1315.09, 13.05, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4894.46, -1315.09, 10.94, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1548, 4914.46, -1338.82, 14.61, 0.00, 0.00, -25.23, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1333, 4883.62, -1294.99, 10.80, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4898.68, -1231.51, 13.14, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4898.63, -1231.47, 10.91, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4896.24, -1240.73, 13.14, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4896.19, -1240.69, 10.91, 0.00, 0.00, -107.78, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1553, 4858.71, -1254.87, 12.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1736
CreateDynamicObject(-1548, 4854.37, -1256.14, 11.65, 0.00, 0.00, 138.31, -1, 0, -1,800.00, 800.00); // mainla1729
CreateDynamicObject(-1078, 4855.57, -1241.94, 11.73, 0.00, 0.00, -112.71, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4855.53, -1241.93, 10.83, 0.00, 0.00, -112.71, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4863.15, -1246.51, 10.89, 0.00, 0.00, -134.66, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1554, 5169.97, -1188.45, 13.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1737
CreateDynamicObject(-1555, 5242.08, -1417.80, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1739
CreateDynamicObject(-1556, 5257.06, -1467.88, 11.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1741
CreateDynamicObject(-1557, 5138.75, -1192.30, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1747
CreateDynamicObject(-1558, 5157.51, -1181.76, 12.52, 0.00, 0.00, 18.11, -1, 0, -1,800.00, 800.00); // mainla1753
CreateDynamicObject(-1559, 5116.27, -1044.42, 15.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1755
CreateDynamicObject(-1560, 5273.11, -1583.81, 13.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1759
CreateDynamicObject(-1561, 5002.30, -1504.47, 2.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1762
CreateDynamicObject(-1562, 5172.76, -1186.95, 10.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1763
CreateDynamicObject(-1284, 5264.55, -1572.40, 15.97, 0.00, 0.00, -110.30, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1284, 5264.12, -1573.57, 15.97, 0.00, 0.00, -110.30, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1563, 5161.84, -1185.14, 11.98, 0.00, 0.00, 18.11, -1, 0, -1,800.00, 800.00); // mainla1765
CreateDynamicObject(-1564, 5700.58, -1669.69, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2013
CreateDynamicObject(-1565, 5660.45, -1741.30, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2015
CreateDynamicObject(-1566, 5663.30, -1743.54, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2016
CreateDynamicObject(-1566, 5657.09, -1743.54, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2016
CreateDynamicObject(-1565, 5660.45, -1707.43, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2015
CreateDynamicObject(-1565, 5653.95, -1707.50, 6.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2015
CreateDynamicObject(-1565, 5701.01, -1672.82, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2015
CreateDynamicObject(-1567, 5648.72, -1740.57, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1567, 5672.27, -1740.57, 7.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1567, 5630.07, -1762.53, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1567, 5606.52, -1755.06, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1567, 5641.08, -1647.02, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1567, 5606.52, -1734.02, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2024
CreateDynamicObject(-1568, 5616.46, -1690.35, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1564, 5661.69, -1669.47, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2013
CreateDynamicObject(-1564, 5655.65, -1669.47, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2013
CreateDynamicObject(-1568, 5652.56, -1670.86, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5652.59, -1674.65, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5715.91, -1670.73, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5719.62, -1670.73, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5669.39, -1652.91, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5658.31, -1760.45, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5662.12, -1760.45, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5656.86, -1738.77, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5664.11, -1738.79, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5656.86, -1742.36, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5664.07, -1742.36, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5620.26, -1710.59, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5620.26, -1714.42, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5620.26, -1736.77, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5616.51, -1736.77, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5614.55, -1732.15, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1568, 5614.55, -1735.93, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2025
CreateDynamicObject(-1569, 5620.12, -1708.38, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5620.12, -1704.36, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5620.12, -1700.34, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5620.12, -1696.33, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5620.12, -1692.31, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5713.75, -1671.11, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5709.76, -1671.11, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5705.77, -1671.11, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5640.13, -1760.78, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5644.07, -1760.78, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5648.10, -1760.78, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5652.05, -1760.78, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5656.06, -1760.78, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5665.71, -1643.02, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5665.71, -1638.99, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5665.71, -1635.00, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5665.71, -1650.91, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5671.56, -1628.58, 8.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1569, 5667.56, -1628.58, 8.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2026
CreateDynamicObject(-1570, 6058.02, 404.56, 15.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2082
CreateDynamicObject(-1571, 5175.43, 1539.24, 17.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2457
CreateDynamicObject(-1572, 5174.95, 1539.15, 18.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2473
CreateDynamicObject(-1573, 5841.59, 1026.80, -0.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2876
CreateDynamicObject(-1574, 5854.31, 1025.54, 12.03, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2920
CreateDynamicObject(-1574, 5854.31, 1029.88, 12.03, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2920
CreateDynamicObject(-1575, 4284.05, -923.46, 55.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2991
CreateDynamicObject(-1576, 4570.71, -868.44, 14.41, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2998
CreateDynamicObject(-1577, 4496.33, -868.44, 14.41, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3000
CreateDynamicObject(-1578, 4449.60, -1014.96, 19.54, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3001
CreateDynamicObject(-1579, 4614.65, -1010.97, 19.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3006
CreateDynamicObject(-1580, 4583.39, -858.23, 25.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3008
CreateDynamicObject(-1581, 4609.34, -1251.89, 16.19, 0.00, 0.00, -142.00, -1, 0, -1,800.00, 800.00); // mainla3012
CreateDynamicObject(-1582, 4280.58, -1037.63, 14.89, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3024
CreateDynamicObject(-1583, 4485.76, -884.05, 24.98, 0.00, 0.00, 61.50, -1, 0, -1,800.00, 800.00); // mainla3027
CreateDynamicObject(-1584, 4260.15, -1208.52, 14.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3029
CreateDynamicObject(-1585, 4260.56, -1444.66, 14.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3030
CreateDynamicObject(-1586, 4570.58, -866.64, 18.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3031
CreateDynamicObject(-1587, 4580.99, -884.18, 24.90, 0.00, 0.00, 121.50, -1, 0, -1,800.00, 800.00); // mainla3034
CreateDynamicObject(-1588, 4167.17, -890.01, 21.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3035
CreateDynamicObject(-1589, 4810.45, -986.35, 13.08, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3047
CreateDynamicObject(-1590, 4810.44, -986.34, 16.34, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3051
CreateDynamicObject(-1591, 4474.08, -1241.00, 14.89, 0.00, 0.00, 130.00, -1, 0, -1,800.00, 800.00); // mainla3054
CreateDynamicObject(-1592, 4775.95, -724.56, 14.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3055
CreateDynamicObject(-1593, 4715.28, -1298.81, 26.23, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // mainla3057
CreateDynamicObject(-1594, 4753.12, -1154.92, 20.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3062
CreateDynamicObject(-1595, 4394.06, -1247.21, 18.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3064
CreateDynamicObject(-1596, 4894.39, -1037.06, 17.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3068
CreateDynamicObject(-1597, 4952.43, -1160.30, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3071
CreateDynamicObject(-1598, 4982.24, -1157.77, 23.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3074
CreateDynamicObject(-1599, 4975.05, -1122.44, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3081
CreateDynamicObject(-1600, 4816.40, -1296.79, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3082
CreateDynamicObject(-1601, 4771.55, -1361.50, 5.92, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // mainla3084
CreateDynamicObject(-1602, 4533.52, -858.15, 33.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3088
CreateDynamicObject(-1603, 4716.07, -1065.35, 16.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3090
CreateDynamicObject(-1604, 4329.45, -935.22, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3092
CreateDynamicObject(-1605, 4329.29, -1383.90, 13.78, 0.00, 0.00, 39.50, -1, 0, -1,800.00, 800.00); // mainla3094
CreateDynamicObject(-1606, 4598.32, -1163.33, 13.71, 0.00, 0.00, 39.50, -1, 0, -1,800.00, 800.00); // mainla3095
CreateDynamicObject(-1607, 4233.73, -1566.16, 14.15, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3096
CreateDynamicObject(-1608, 4235.04, -1198.01, 13.91, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3097
CreateDynamicObject(-1609, 4234.04, -891.08, 13.65, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3098
CreateDynamicObject(-1610, 4724.61, -1389.22, 10.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3099
CreateDynamicObject(-1611, 4721.27, -1398.25, 0.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3100
CreateDynamicObject(-1612, 4812.89, -874.97, 21.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3101
CreateDynamicObject(-1613, 4777.41, -873.12, 14.03, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3106
CreateDynamicObject(-1614, 4785.77, -1257.21, 18.13, 0.00, 0.00, -107.00, -1, 0, -1,800.00, 800.00); // mainla3107
CreateDynamicObject(-1615, 4259.82, -1372.59, 14.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3114
CreateDynamicObject(-1616, 4973.81, -1178.47, 16.85, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3115
CreateDynamicObject(-1617, 4768.75, -1368.49, 12.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3116
CreateDynamicObject(-1618, 4867.43, -911.37, -1.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3117
CreateDynamicObject(-1619, 4843.46, -1149.72, 2.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3118
CreateDynamicObject(-1620, 4271.98, -1295.39, -3.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3119
CreateDynamicObject(-1621, 4300.15, -1071.38, -9.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3120
CreateDynamicObject(-1622, 4290.03, -858.90, -15.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3121
CreateDynamicObject(-1623, 4690.93, -1079.85, -8.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3122
CreateDynamicObject(-1624, 4607.70, -879.38, -19.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3124
CreateDynamicObject(-1625, 4600.67, -1263.39, -29.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3125
CreateDynamicObject(-1626, 4824.48, -889.54, 12.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3126
CreateDynamicObject(-1627, 4779.45, -1113.97, 15.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3127
CreateDynamicObject(-1628, 4692.92, -888.29, 15.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3129
CreateDynamicObject(-1629, 4879.08, -899.84, 15.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3131
CreateDynamicObject(-1630, 4744.38, -1216.14, 18.26, 0.00, 0.00, -17.50, -1, 0, -1,800.00, 800.00); // mainla3133
CreateDynamicObject(-1631, 4780.73, -943.03, 19.57, 0.00, 0.00, -162.50, -1, 0, -1,800.00, 800.00); // mainla3138
CreateDynamicObject(-1632, 4655.06, -793.91, 18.26, 0.00, 0.00, 107.50, -1, 0, -1,800.00, 800.00); // mainla3143
CreateDynamicObject(-1633, 4826.08, -1232.60, 15.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3145
CreateDynamicObject(-1634, 4610.42, -933.92, 20.99, 0.00, 0.00, 17.00, -1, 0, -1,800.00, 800.00); // mainla3147
CreateDynamicObject(-1635, 4456.34, -933.84, 20.99, 0.00, 0.00, -16.00, -1, 0, -1,800.00, 800.00); // mainla3148
CreateDynamicObject(-1636, 4858.44, -1210.44, 15.68, 0.00, 0.00, -115.00, -1, 0, -1,800.00, 800.00); // mainla3149
CreateDynamicObject(-1637, 4533.52, -858.42, 33.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3151
CreateDynamicObject(-1638, 4558.85, -871.33, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3152
CreateDynamicObject(-1639, 4873.57, -1187.05, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3156
CreateDynamicObject(-1640, 4597.19, -851.28, 40.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3157
CreateDynamicObject(-1641, 4472.46, -906.65, 22.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3158
CreateDynamicObject(-1642, 4581.61, -849.13, 24.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3159
CreateDynamicObject(-1643, 4594.58, -906.65, 22.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3160
CreateDynamicObject(-1644, 4485.49, -848.97, 24.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3161
CreateDynamicObject(-1645, 4470.06, -851.28, 40.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3162
CreateDynamicObject(-1646, 4505.81, -871.33, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3163
CreateDynamicObject(-1647, 4483.61, -858.23, 25.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3164
CreateDynamicObject(-1648, 4489.33, -839.43, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3165
CreateDynamicObject(-1649, 4597.49, -841.22, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3166
CreateDynamicObject(-1650, 4490.75, -844.24, 17.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3167
CreateDynamicObject(-1651, 5060.91, -1075.14, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3168
CreateDynamicObject(-1529, 4749.04, -798.88, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4383.96, -864.37, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4383.96, -928.80, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4684.46, -929.34, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4259.00, -972.07, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4259.23, -1166.27, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4398.93, -1161.21, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4397.61, -1395.83, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4510.33, -1302.45, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4637.37, -1324.69, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4684.14, -1216.25, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4822.66, -1234.11, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4932.36, -1033.67, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4710.35, -1023.97, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1652, 4951.52, -989.28, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3170
CreateDynamicObject(-1653, 4490.76, -844.23, 17.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3172
CreateDynamicObject(-1654, 4576.27, -844.03, 17.10, 0.00, 0.00, 96.00, -1, 0, -1,800.00, 800.00); // mainla3174
CreateDynamicObject(-1655, 4576.26, -844.00, 17.32, 0.00, 0.00, 96.00, -1, 0, -1,800.00, 800.00); // mainla3175
CreateDynamicObject(-1656, 4533.53, -823.96, 23.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3176
CreateDynamicObject(-1657, 4486.10, -1044.59, 15.88, 0.00, 0.00, 88.56, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4412.81, -1077.05, 15.88, 0.00, 0.00, -71.66, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4634.16, -998.44, 15.88, 0.00, 0.00, 88.56, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4624.83, -1181.47, 15.88, 0.00, 0.00, -71.55, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4265.76, -1321.27, 15.88, 0.00, 0.00, 13.60, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4369.30, -1274.41, 15.88, 0.00, 0.00, -71.40, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1657, 4350.99, -803.09, 15.88, 0.00, 0.00, 49.69, -1, 0, -1,800.00, 800.00); // mainla3177
CreateDynamicObject(-1658, 4943.29, -1036.99, 17.80, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3181
CreateDynamicObject(-1658, 4943.29, -1020.93, 17.80, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3181
CreateDynamicObject(-1659, 4904.04, -1017.53, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4892.29, -1017.53, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4881.77, -1017.53, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4883.21, -929.05, 19.02, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1660, 4279.58, -1355.97, 17.60, 0.00, 0.00, -39.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1661, 4180.44, -1342.74, 15.99, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1660, 4177.04, -1295.19, 17.60, 0.00, 0.00, -129.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1660, 4177.04, -1247.05, 17.60, 0.00, 0.00, -129.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1660, 4568.42, -1287.40, 17.60, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1660, 4706.20, -1157.21, 17.60, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1660, 4751.38, -1088.63, 17.60, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1661, 4726.99, -1108.18, 15.89, 0.00, 0.00, 130.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1661, 4681.73, -1176.68, 15.89, 0.00, 0.00, 130.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1660, 4729.99, -956.80, 17.60, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1660, 4732.58, -840.27, 17.60, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // mainla3185
CreateDynamicObject(-1661, 4730.03, -991.00, 15.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1661, 4730.03, -873.03, 15.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1662, 4168.88, -1058.93, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3195
CreateDynamicObject(-1662, 4168.88, -1133.13, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3195
CreateDynamicObject(-1662, 4168.88, -1007.00, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3195
CreateDynamicObject(-1662, 4168.88, -933.10, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3195
CreateDynamicObject(-1663, 5013.26, -1149.15, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5013.26, -1158.22, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5013.26, -1167.32, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5013.26, -1176.56, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5013.26, -1185.32, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5013.26, -1194.38, 28.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.25, -1194.38, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.25, -1185.32, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.25, -1176.56, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.25, -1167.32, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.25, -1158.22, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5016.42, -1149.15, 25.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.64, -1149.15, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.75, -1158.22, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.75, -1167.32, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.78, -1176.56, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.78, -1185.32, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 5017.80, -1194.38, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4951.81, -1115.30, 28.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4960.71, -1115.42, 28.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4961.01, -1112.55, 25.33, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4951.81, -1112.56, 25.33, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4951.62, -1110.40, 21.75, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1663, 4960.96, -1110.38, 21.75, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3197
CreateDynamicObject(-1661, 4286.74, -1102.82, 15.82, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3190
CreateDynamicObject(-1659, 4885.55, -959.57, 19.26, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4916.69, -1028.01, 19.74, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4916.69, -1043.10, 19.74, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1529, 4894.57, -1024.12, 30.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4874.46, -959.87, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4908.27, -967.41, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1659, 4881.77, -1029.63, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4892.29, -1029.63, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1659, 4904.04, -1029.63, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1664, 4871.38, -971.37, 15.06, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4895.87, -976.78, 14.60, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4911.13, -976.78, 14.60, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4871.38, -940.84, 15.06, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4893.25, -946.26, 14.85, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4878.53, -939.31, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4878.53, -969.83, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4878.53, -1000.35, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4871.38, -956.11, 15.06, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4878.53, -954.57, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4871.38, -986.63, 15.06, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4878.53, -985.09, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4880.88, -985.09, 14.85, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4880.88, -1000.35, 14.85, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4883.49, -1000.35, 14.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4880.88, -969.83, 14.85, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4926.39, -976.78, 14.60, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1665, 4871.38, -897.75, 16.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4853.08, -917.64, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1664, 4854.04, -907.21, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.11, -939.93, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -954.57, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -969.83, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -985.10, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -1000.36, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.06, -1046.14, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -1030.88, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4854.05, -1015.62, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1665, 4854.06, -1055.59, 14.85, 0.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4849.42, -917.64, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4849.42, -923.25, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4853.08, -923.25, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4849.42, -928.85, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4853.08, -928.85, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4848.45, -897.75, 16.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1666, 4878.53, -923.27, 14.72, 0.00, -180.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4880.88, -953.79, 14.97, 0.00, -180.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4883.49, -984.31, 14.72, 0.00, -180.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1659, 4888.17, -990.10, 19.02, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3184
CreateDynamicObject(-1665, 4872.33, -907.98, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4875.99, -907.98, 19.74, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4872.33, -913.59, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4875.99, -913.59, 19.74, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1667, 4876.96, -913.59, 10.27, -90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4876.96, -907.98, 10.27, -90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4876.96, -902.37, 10.27, -90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1665, 4875.99, -902.37, 19.74, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4872.33, -902.37, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4905.89, -1006.29, 16.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4901.58, -1006.21, 16.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1667, 4905.89, -1005.32, 26.25, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4901.58, -1005.24, 26.25, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1665, 4901.58, -1006.20, 35.70, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4905.89, -1006.27, 35.70, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1668, 4905.60, -1013.05, 36.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3204
CreateDynamicObject(-1667, 4918.25, -1012.86, 36.67, 0.00, -60.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4918.26, -1017.07, 36.66, 0.00, -60.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4939.03, -1012.81, 36.68, 0.00, -60.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4939.02, -1016.99, 36.69, 0.00, -60.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1668, 4951.67, -1016.83, 36.68, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3204
CreateDynamicObject(-1668, 4955.41, -1026.78, 36.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3204
CreateDynamicObject(-1666, 4928.60, -1017.02, 36.05, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4928.59, -1012.81, 36.06, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1667, 4928.59, -1012.81, 26.94, -90.00, 180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4928.60, -1017.02, 26.93, -90.00, 180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1666, 4928.60, -1013.43, 16.50, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4928.60, -1016.40, 16.50, 90.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1667, 4963.24, -1030.80, 26.94, -90.00, 180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4963.22, -1026.59, 26.95, -90.00, 180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1666, 4963.22, -1026.59, 36.07, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4963.24, -1030.80, 36.06, 0.00, -180.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1667, 4904.22, -1012.85, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4892.47, -1012.85, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4881.95, -1012.85, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4881.95, -1024.95, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4892.47, -1024.95, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4904.22, -1024.95, 13.47, 89.90, 120.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4912.01, -1042.92, 10.55, 90.00, -30.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4912.01, -1027.83, 10.55, 90.00, -30.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1669, 4991.63, -1034.33, 15.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3205
CreateDynamicObject(-1666, 4963.24, -1027.21, 16.51, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1666, 4963.24, -1030.18, 16.51, 90.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3202
CreateDynamicObject(-1665, 4854.04, -897.75, 14.85, 0.00, -180.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1664, 4848.45, -907.21, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.46, -939.31, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.46, -954.57, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.46, -969.83, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.47, -985.10, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.47, -1000.36, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.47, -1015.62, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.47, -1030.88, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1664, 4848.47, -1046.14, 15.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1665, 4848.47, -1055.59, 14.85, 0.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1670, 4878.53, -928.87, 15.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1664, 4871.39, -1001.89, 15.06, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3200
CreateDynamicObject(-1670, 4880.88, -959.39, 15.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4883.49, -989.92, 15.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1658, 4909.63, -936.46, 17.80, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3181
CreateDynamicObject(-1658, 4909.63, -967.65, 17.80, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3181
CreateDynamicObject(-1658, 4909.63, -999.09, 17.80, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3181
CreateDynamicObject(-1529, 4874.46, -916.29, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4874.46, -999.82, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1671, 4904.16, -915.51, 18.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3207
CreateDynamicObject(-1665, 4902.70, -946.27, 16.51, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4904.65, -946.27, 20.18, 0.00, 180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4957.07, -946.01, 14.61, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1670, 4871.38, -930.41, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4871.38, -902.37, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4871.38, -907.98, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4871.38, -913.59, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4854.04, -917.64, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4854.04, -923.25, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4854.04, -928.85, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4848.45, -917.64, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4848.45, -923.25, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4848.45, -928.85, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4871.38, -924.80, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1670, 4871.38, -919.20, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3206
CreateDynamicObject(-1665, 4870.42, -919.20, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4866.76, -919.20, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4866.76, -924.80, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4870.42, -924.80, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4870.42, -930.41, 19.73, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1665, 4866.76, -930.41, 19.74, 0.00, -180.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3201
CreateDynamicObject(-1667, 4865.79, -919.20, 10.28, 90.00, -30.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4865.79, -924.80, 10.28, 90.00, -30.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1667, 4865.79, -930.41, 10.28, 90.00, -30.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3203
CreateDynamicObject(-1106, 4965.57, -1149.28, 31.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1672, 5002.56, -1144.89, 16.69, -90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1106, 4965.57, -1147.57, 31.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 5008.43, -1195.18, 31.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 5008.43, -1196.89, 31.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 4950.26, -1119.93, 31.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 4950.26, -1121.57, 31.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 4950.26, -1123.16, 31.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1672, 5002.56, -1144.89, 20.30, -90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1672, 5002.56, -1144.89, 23.83, -90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1672, 5002.56, -1144.89, 27.47, -90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1672, 5002.56, -1144.89, 30.99, -90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1672, 4947.29, -1146.10, 16.82, -90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3211
CreateDynamicObject(-1673, 4982.92, -1154.01, 24.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3213
CreateDynamicObject(-1674, 4948.97, -972.17, 29.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3214
CreateDynamicObject(-1003, 4868.97, -1086.91, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4916.17, -1086.91, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4963.37, -1086.91, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4839.38, -1062.79, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4782.30, -1062.79, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4756.35, -1026.70, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4756.35, -959.57, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4756.35, -876.67, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4756.35, -804.76, 18.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4988.32, -1065.19, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5043.53, -1065.19, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4824.92, -1118.18, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4795.28, -1168.95, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4771.26, -1203.69, 18.48, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1675, 4813.08, -1157.97, 21.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3215
CreateDynamicObject(-1676, 4533.72, -828.72, 21.61, 89.97, -179.83, 0.00, -1, 0, -1,800.00, 800.00); // mainla3216
CreateDynamicObject(-1677, 4533.42, -851.44, 41.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3217
CreateDynamicObject(-1529, 4536.97, -966.25, 27.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1678, 5017.72, -1090.76, 20.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3218
CreateDynamicObject(-1679, 4867.93, -1092.67, 20.54, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3219
CreateDynamicObject(-1680, 4591.00, -789.04, 14.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3220
CreateDynamicObject(-1680, 4588.38, -789.04, 14.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3220
CreateDynamicObject(-1681, 4505.83, -830.74, 15.20, 0.00, 0.00, -67.50, -1, 0, -1,800.00, 800.00); // mainla3227
CreateDynamicObject(-1682, 4560.90, -830.86, 15.20, 0.00, 0.00, 25.50, -1, 0, -1,800.00, 800.00); // mainla3228
CreateDynamicObject(-1052, 4485.90, -824.83, 14.76, 0.00, 0.00, -179.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1052, 4486.37, -825.30, 14.76, 0.00, 0.00, 91.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1052, 4485.46, -825.28, 14.76, 0.00, 0.00, -89.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1052, 4485.92, -825.76, 14.76, 0.00, 0.00, 1.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1683, 4990.90, -1192.47, 16.32, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla3229
CreateDynamicObject(-1684, 4947.00, -1152.60, 14.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3243
CreateDynamicObject(-1684, 4946.98, -1151.65, 14.14, 0.00, 0.00, -120.00, -1, 0, -1,800.00, 800.00); // mainla3243
CreateDynamicObject(-1684, 4946.60, -1152.16, 14.24, 17.23, 10.31, -121.57, -1, 0, -1,800.00, 800.00); // mainla3243
CreateDynamicObject(-1685, 4972.57, -1171.27, 14.35, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4974.05, -1171.27, 14.35, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4975.52, -1171.27, 14.35, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4972.71, -1186.43, 14.35, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4974.18, -1186.43, 14.35, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4975.66, -1186.43, 14.35, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4987.30, -1180.19, 14.35, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4987.20, -1177.10, 14.35, 0.00, 0.00, -165.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4986.43, -1174.74, 14.35, 0.00, 0.00, -155.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4997.89, -1180.02, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4997.89, -1178.55, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4997.89, -1177.07, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4998.01, -1172.24, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4998.01, -1173.72, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4998.01, -1175.19, 14.20, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4986.13, -1183.13, 14.35, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4958.99, -1174.45, 14.35, 0.00, 0.00, -35.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4958.69, -1182.84, 14.35, 0.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4957.92, -1180.48, 14.35, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1685, 4957.82, -1177.38, 14.35, 0.00, 0.00, -15.00, -1, 0, -1,800.00, 800.00); // mainla2404
CreateDynamicObject(-1243, 4947.18, -1160.29, 16.32, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1686, 4957.56, -1024.72, 36.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4949.51, -1018.87, 36.68, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4907.75, -1010.99, 36.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4850.33, -896.79, 21.46, 0.00, 90.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4869.42, -896.77, 21.57, 0.00, 90.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4885.37, -978.65, 15.34, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4882.75, -948.12, 15.59, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4880.40, -917.60, 15.34, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1686, 4873.25, -1012.39, 15.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3245
CreateDynamicObject(-1687, 4956.25, -1076.05, 21.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3246
CreateDynamicObject(-1688, 4769.33, -933.78, 21.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3247
CreateDynamicObject(-1689, 4578.63, -1014.52, 19.68, 0.00, 0.00, -85.00, -1, 0, -1,800.00, 800.00); // mainla3248
CreateDynamicObject(-1689, 4412.40, -1062.71, 19.68, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3248
CreateDynamicObject(-1689, 4178.04, -1062.71, 19.68, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3248
CreateDynamicObject(-1689, 4697.89, -815.87, 19.68, 0.00, 0.00, -179.90, -1, 0, -1,800.00, 800.00); // mainla3248
CreateDynamicObject(-1690, 4738.87, -1309.10, 21.76, 0.00, 0.00, -24.25, -1, 0, -1,800.00, 800.00); // mainla3258
CreateDynamicObject(-1270, 4733.46, -1247.42, 30.55, 0.00, 0.00, 67.48, -1, 0, -1,800.00, 800.00); // mainla967
CreateDynamicObject(-1270, 4729.91, -1245.95, 30.55, 0.00, 0.00, 67.48, -1, 0, -1,800.00, 800.00); // mainla967
CreateDynamicObject(-1689, 4329.94, -783.82, 19.68, 0.00, 0.00, -157.43, -1, 0, -1,800.00, 800.00); // mainla3248
CreateDynamicObject(-1691, 4267.33, -1457.80, -20.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3260
CreateDynamicObject(-1692, 5469.41, 648.48, 9.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // sjmpalmbig
CreateDynamicObject(-1693, 4868.57, -1093.27, 17.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3262
CreateDynamicObject(-1694, 5017.14, -1091.32, 17.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3265
CreateDynamicObject(-1695, 4696.58, -1247.39, 13.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3266
CreateDynamicObject(-1696, 4595.27, -1370.47, -14.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3267
CreateDynamicObject(-1697, 4525.35, -1238.86, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3270
CreateDynamicObject(-1698, 5113.00, -1203.17, -16.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // sjmpalmtall
CreateDynamicObject(-1699, 4384.00, -1490.49, -14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3272
CreateDynamicObject(-1700, 4397.87, -1302.85, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3273
CreateDynamicObject(-1701, 4162.51, -1295.39, -4.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3274
CreateDynamicObject(-1702, 4279.74, -1303.54, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3275
CreateDynamicObject(-1703, 4413.36, -1087.38, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3276
CreateDynamicObject(-1704, 4163.64, -1087.39, -4.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3277
CreateDynamicObject(-1705, 4279.62, -1076.86, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3278
CreateDynamicObject(-1706, 4675.22, -1087.38, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3280
CreateDynamicObject(-1707, 4558.14, -1088.26, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3281
CreateDynamicObject(-1708, 4818.51, -1103.46, 16.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3282
CreateDynamicObject(-1709, 4163.20, -879.38, -4.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3283
CreateDynamicObject(-1710, 4316.94, -803.11, 13.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3284
CreateDynamicObject(-1711, 4670.65, -892.26, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3285
CreateDynamicObject(-1712, 4500.53, -892.31, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3286
CreateDynamicObject(-1713, 4316.94, -930.41, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3287
CreateDynamicObject(-1714, 4847.27, -964.96, 12.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3288
CreateDynamicObject(-1715, 4802.52, -799.16, 12.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3289
CreateDynamicObject(-1716, 4980.74, -983.78, 13.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3290
CreateDynamicObject(-1717, 4943.84, -1017.83, 15.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3291
CreateDynamicObject(-1718, 4782.48, -1239.03, 13.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3293
CreateDynamicObject(-1719, 5056.50, -1178.90, 12.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3294
CreateDynamicObject(-1720, 4533.71, -829.22, 21.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3295
CreateDynamicObject(-1721, 4539.30, -870.90, 17.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3296
CreateDynamicObject(-1722, 4480.47, -804.33, 19.57, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // mainla3300
CreateDynamicObject(-1723, 4587.92, -804.38, 19.75, 0.00, 0.00, 99.81, -1, 0, -1,800.00, 800.00); // mainla3303
CreateDynamicObject(-1724, 4320.86, -546.94, 9.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3304
CreateDynamicObject(-1725, 4331.94, -620.37, 17.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3310
CreateDynamicObject(-1726, 4334.86, -640.43, 13.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3311
CreateDynamicObject(-1727, 4521.85, -603.34, 18.61, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3312
CreateDynamicObject(-1728, 4567.33, -719.37, 7.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3314
CreateDynamicObject(-1729, 4256.23, -671.24, 6.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3315
CreateDynamicObject(-1730, 4488.95, -442.27, 5.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3316
CreateDynamicObject(-1731, 4320.54, -671.26, 8.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3317
CreateDynamicObject(-1732, 4600.06, -697.36, 5.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3318
CreateDynamicObject(-1733, 4267.33, -429.38, -30.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3319
CreateDynamicObject(-1734, 4621.11, -596.25, 15.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3320
CreateDynamicObject(-1735, 4245.92, -332.12, 14.03, 0.00, 0.00, 179.50, -1, 0, -1,800.00, 800.00); // mainla3322
CreateDynamicObject(-1736, 4488.30, -444.69, 16.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3323
CreateDynamicObject(-1737, 4263.27, -427.13, 16.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3327
CreateDynamicObject(-1738, 4621.39, -420.84, 11.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3329
CreateDynamicObject(-1739, 4216.42, -714.81, 12.54, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3333
CreateDynamicObject(-1740, 4431.93, -332.12, 14.03, 0.00, 0.00, 179.50, -1, 0, -1,800.00, 800.00); // mainla3334
CreateDynamicObject(-1741, 4617.69, -678.14, 18.26, 0.00, 0.00, 107.50, -1, 0, -1,800.00, 800.00); // mainla3335
CreateDynamicObject(-1742, 4593.41, -807.30, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3337
CreateDynamicObject(-1529, 4577.48, -482.22, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4495.47, -482.22, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4178.98, -429.06, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4178.98, -378.13, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4302.73, -369.53, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4475.10, -433.54, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4565.51, -631.94, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4661.38, -631.94, 27.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1743, 4160.86, -492.73, 15.88, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3338
CreateDynamicObject(-1744, 4205.49, -448.24, 15.88, 0.00, 0.00, 130.50, -1, 0, -1,800.00, 800.00); // mainla3339
CreateDynamicObject(-1745, 4465.49, -226.61, -10.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3340
CreateDynamicObject(-1746, 4586.29, -335.19, 10.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3341
CreateDynamicObject(-1747, 4151.12, -350.29, 14.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3343
CreateDynamicObject(-1748, 4248.74, -297.80, 15.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3344
CreateDynamicObject(-1749, 4217.60, -185.64, 39.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3345
CreateDynamicObject(-1750, 4269.41, -324.61, 4.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3348
CreateDynamicObject(-1751, 4232.10, -291.72, 21.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3349
CreateDynamicObject(-1752, 4285.64, -195.77, 13.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3350
CreateDynamicObject(-1753, 4291.33, -282.03, 16.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3351
CreateDynamicObject(-1754, 4303.98, -197.65, 21.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3352
CreateDynamicObject(-1755, 4376.36, -300.00, 26.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3356
CreateDynamicObject(-1756, 4351.51, -224.14, 18.15, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3358
CreateDynamicObject(-1757, 4342.74, -281.17, 17.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3360
CreateDynamicObject(-1757, 4364.39, -281.17, 17.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3360
CreateDynamicObject(-1757, 4320.20, -114.05, 17.73, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3360
CreateDynamicObject(-1757, 4342.23, -113.94, 17.73, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3360
CreateDynamicObject(-1755, 4193.01, -299.44, 26.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3356
CreateDynamicObject(-1755, 4375.49, -91.04, 26.77, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3356
CreateDynamicObject(-1756, 4274.14, -216.10, 18.15, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3358
CreateDynamicObject(-1140, 4735.66, -692.19, 11.06, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4725.82, -692.19, 11.06, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4732.65, -705.28, 15.16, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1140, 4728.89, -704.30, 15.16, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla572
CreateDynamicObject(-1541, 4735.10, -717.01, 15.07, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1717
CreateDynamicObject(-1758, 4351.10, -174.78, 18.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3362
CreateDynamicObject(-1759, 4342.55, -281.16, 21.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3363
CreateDynamicObject(-1760, 4345.66, -112.96, 21.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3365
CreateDynamicObject(-1266, 4199.83, -190.32, 37.92, 0.00, 0.00, -135.00, -1, 0, -1,800.00, 800.00); // mainla959
CreateDynamicObject(-1242, 4224.78, -181.32, 35.13, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1242, 4219.57, -192.17, 35.13, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // mainla859
CreateDynamicObject(-1003, 4258.95, -248.73, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4258.95, -198.95, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4308.08, -198.95, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4366.47, -198.95, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4369.14, -149.20, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4337.22, -149.20, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4288.80, -248.73, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4327.31, -248.73, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1761, 4259.19, -453.45, 14.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3366
CreateDynamicObject(-1762, 4494.62, -362.13, 15.88, 0.00, 0.00, -29.50, -1, 0, -1,800.00, 800.00); // mainla3367
CreateDynamicObject(-1529, 4248.37, -291.41, 28.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1529, 4154.41, -691.00, 27.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1669
CreateDynamicObject(-1763, 4123.56, -750.31, 6.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3368
CreateDynamicObject(-1764, 4135.70, -752.02, 27.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3372
CreateDynamicObject(-1765, 4381.16, -750.15, 15.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3373
CreateDynamicObject(-1766, 4219.34, -671.14, 14.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3375
CreateDynamicObject(-1767, 4586.33, -480.41, 15.29, 0.00, 0.00, -114.50, -1, 0, -1,800.00, 800.00); // mainla3377
CreateDynamicObject(-1755, 4264.47, -288.53, 26.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3356
CreateDynamicObject(-1768, 4284.67, -195.37, 16.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3378
CreateDynamicObject(-1769, 4112.43, -450.05, -5.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3379
CreateDynamicObject(-1770, 4614.35, -367.32, -10.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3380
CreateDynamicObject(-1771, 4142.21, -208.46, -5.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3381
CreateDynamicObject(-1772, 4281.36, -33.55, -4.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3382
CreateDynamicObject(-1773, 4322.06, -498.72, 35.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3383
CreateDynamicObject(-1003, 4308.08, -248.71, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1774, 4271.80, -351.08, 23.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3385
CreateDynamicObject(-1775, 4271.80, -351.29, 25.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3386
CreateDynamicObject(-1776, 4237.75, -351.31, 25.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3388
CreateDynamicObject(-1774, 4237.75, -351.08, 23.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3385
CreateDynamicObject(-1774, 4307.86, -351.08, 23.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3385
CreateDynamicObject(-1777, 4307.86, -351.31, 25.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3389
CreateDynamicObject(-1778, 4348.14, -351.31, 25.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3390
CreateDynamicObject(-1774, 4348.14, -351.08, 23.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3385
CreateDynamicObject(-1779, 4201.20, -351.31, 25.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3391
CreateDynamicObject(-1774, 4201.20, -351.08, 23.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3385
CreateDynamicObject(-1780, 4267.13, -351.47, 15.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3392
CreateDynamicObject(-1781, 4154.68, -354.62, 16.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3395
CreateDynamicObject(-1782, 4150.79, -490.18, 16.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3398
CreateDynamicObject(-1755, 4193.01, -91.04, 26.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3356
CreateDynamicObject(-1783, 4440.67, -174.02, -5.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3400
CreateDynamicObject(-1784, 4579.05, -240.61, -5.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3401
CreateDynamicObject(-1785, 4550.37, -598.72, 13.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3402
CreateDynamicObject(-1786, 4694.91, -666.98, 15.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3403
CreateDynamicObject(-1787, 4550.46, -737.04, 13.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3406
CreateDynamicObject(-1788, 4400.15, -736.31, 10.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3407
CreateDynamicObject(-1789, 4209.17, -599.70, 10.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3408
CreateDynamicObject(-1790, 4213.89, -725.97, 10.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3409
CreateDynamicObject(-1791, 4374.20, -604.04, 10.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3410
CreateDynamicObject(-1792, 4601.92, -609.12, 10.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3411
CreateDynamicObject(-1793, 4616.87, -731.26, 14.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3412
CreateDynamicObject(-1794, 4339.03, -674.37, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3413
CreateDynamicObject(-1795, 4176.86, -661.40, -4.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3414
CreateDynamicObject(-1796, 4479.77, -357.21, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3415
CreateDynamicObject(-1797, 4535.99, -442.34, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3416
CreateDynamicObject(-1798, 4448.78, -463.44, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3417
CreateDynamicObject(-1799, 4318.97, -493.09, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3418
CreateDynamicObject(-1800, 4205.77, -481.74, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3419
CreateDynamicObject(-1801, 4319.93, -387.23, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3420
CreateDynamicObject(-1802, 4209.83, -380.16, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3421
CreateDynamicObject(-1803, 4295.77, -317.17, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3422
CreateDynamicObject(-1804, 4145.79, -411.47, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3423
CreateDynamicObject(-1805, 4617.21, -428.24, 10.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3424
CreateDynamicObject(-1806, 4515.68, -319.10, 11.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3425
CreateDynamicObject(-1807, 4267.26, -486.60, 31.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3426
CreateDynamicObject(-1808, 4376.20, -500.92, 31.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3429
CreateDynamicObject(-1809, 4386.11, -233.95, 16.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3430
CreateDynamicObject(-1810, 4286.69, -444.19, 19.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3432
CreateDynamicObject(-1811, 4244.18, -444.19, 19.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3433
CreateDynamicObject(-1812, 5157.94, -74.33, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3434
CreateDynamicObject(-1813, 4969.15, -66.56, 12.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3436
CreateDynamicObject(-1814, 4986.02, -213.25, 12.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3437
CreateDynamicObject(-1815, 4963.03, -194.42, 9.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3438
CreateDynamicObject(-1816, 5112.88, -81.09, 12.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3442
CreateDynamicObject(-1817, 5090.27, -181.11, 14.07, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3450
CreateDynamicObject(-1818, 4942.28, -71.73, 9.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3455
CreateDynamicObject(-1819, 4987.12, -207.60, 9.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3456
CreateDynamicObject(-1820, 4987.78, -50.18, 9.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3457
CreateDynamicObject(-1821, 4812.07, -13.66, 17.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3458
CreateDynamicObject(-1822, 4760.64, -153.05, 14.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3468
CreateDynamicObject(-1823, 4828.21, -133.91, 15.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3473
CreateDynamicObject(-1824, 4879.29, -229.18, 19.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3477
CreateDynamicObject(-1825, 4882.10, -239.22, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3487
CreateDynamicObject(-1826, 4882.13, -239.18, 15.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3488
CreateDynamicObject(-1827, 4907.73, -209.74, 11.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3489
CreateDynamicObject(-1828, 4908.04, -267.33, 11.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3490
CreateDynamicObject(-1829, 4900.45, -123.52, 17.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3491
CreateDynamicObject(-1830, 5023.68, -203.48, 7.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3502
CreateDynamicObject(-1831, 5078.97, -57.76, 7.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3506
CreateDynamicObject(-1832, 5103.77, -52.51, 36.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3508
CreateDynamicObject(-1833, 5075.03, -194.23, 13.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3513
CreateDynamicObject(-1834, 4844.24, -43.78, 15.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3516
CreateDynamicObject(-1835, 4809.69, -218.14, 16.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3519
CreateDynamicObject(-1836, 4663.17, 27.39, 16.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3521
CreateDynamicObject(-1837, 4945.31, -61.09, 11.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3531
CreateDynamicObject(-1838, 4788.14, -232.97, 9.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3535
CreateDynamicObject(-1839, 4661.56, 26.32, 14.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3536
CreateDynamicObject(-1840, 4713.20, 22.64, -6.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3541
CreateDynamicObject(-1841, 4723.23, 35.26, 9.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3543
CreateDynamicObject(-1842, 4706.53, 79.02, 15.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3552
CreateDynamicObject(-1843, 4662.10, 78.42, 16.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3558
CreateDynamicObject(-1844, 4921.09, -82.65, 10.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3560
CreateDynamicObject(-1845, 5001.55, -247.97, 11.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3564
CreateDynamicObject(-1846, 4946.06, -60.76, 11.68, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3566
CreateDynamicObject(-1847, 5073.61, 14.82, 9.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3573
CreateDynamicObject(-1848, 4793.51, -79.81, 26.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3574
CreateDynamicObject(-1849, 4755.25, -160.85, -7.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3575
CreateDynamicObject(-1850, 5083.36, -220.51, -5.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3576
CreateDynamicObject(-1851, 5022.16, -278.92, 11.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3579
CreateDynamicObject(-1852, 4874.30, -198.39, 10.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3581
CreateDynamicObject(-1853, 5091.34, -106.53, 15.07, 0.00, 0.00, 153.00, -1, 0, -1,800.00, 800.00); // mainla3582
CreateDynamicObject(-1854, 5105.57, -113.82, 16.37, 0.00, 0.00, 153.00, -1, 0, -1,800.00, 800.00); // mainla3583
CreateDynamicObject(-1855, 5105.57, -113.82, 16.37, 0.00, 0.00, 153.00, -1, 0, -1,800.00, 800.00); // mainla3587
CreateDynamicObject(-1856, 4897.26, -288.85, 10.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3589
CreateDynamicObject(-1857, 5008.83, -59.59, 9.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3590
CreateDynamicObject(-1858, 4916.03, -54.26, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3591
CreateDynamicObject(-1858, 4917.33, -71.15, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3591
CreateDynamicObject(-1858, 4917.33, -100.23, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3591
CreateDynamicObject(-1052, 4856.08, -59.76, 11.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla288
CreateDynamicObject(-1003, 4800.77, -305.31, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1859, 5010.51, -185.17, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1860, 4951.81, -96.53, 10.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1859, 5010.51, -218.63, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5010.56, -151.97, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5010.16, -97.08, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5010.11, -66.27, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5010.11, -33.40, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5010.12, 11.98, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1860, 4933.78, -96.61, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1860, 4951.81, -82.84, 10.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1860, 4955.54, -73.07, 10.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1860, 4934.57, -72.74, 10.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1860, 4945.02, -89.96, 10.64, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1860, 4940.27, -90.20, 10.64, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3595
CreateDynamicObject(-1859, 5010.60, -248.37, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1428, 4793.60, -79.81, 16.78, 0.00, 0.00, 139.00, -1, 0, -1,800.00, 800.00); // mainla1344
CreateDynamicObject(-1859, 5043.12, 1.46, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.12, -24.16, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.12, -49.76, 10.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.12, -75.35, 10.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.24, -238.29, 10.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.24, -212.69, 10.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.24, -187.09, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5043.24, -161.47, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.52, -238.29, 10.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.52, -212.69, 10.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.52, -187.09, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.52, -161.47, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.39, -75.35, 10.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.39, -49.76, 10.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.39, -24.16, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1859, 5023.39, 1.46, 10.55, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3593
CreateDynamicObject(-1861, 4731.63, 7.24, 15.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3597
CreateDynamicObject(-1862, 4674.39, 101.16, 20.45, 0.00, 0.00, -170.00, -1, 0, -1,800.00, 800.00); // mainla3600
CreateDynamicObject(-1863, 4767.10, -43.36, 13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3609
CreateDynamicObject(-1864, 4754.43, -59.85, 11.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3614
CreateDynamicObject(-1865, 4706.76, -127.01, 11.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3616
CreateDynamicObject(-1866, 4706.15, -220.76, 11.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3617
CreateDynamicObject(-1105, 4801.39, -10.70, 18.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1106, 4739.23, -338.74, 15.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1107, 4815.32, -11.01, 16.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1284, 4767.31, -310.26, 17.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1107, 4815.32, -8.61, 16.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1105, 4795.87, -149.64, 13.92, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla461
CreateDynamicObject(-1284, 4803.41, -136.01, 16.13, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1867, 5006.12, -175.42, 12.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3618
CreateDynamicObject(-1867, 5006.12, -193.81, 12.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3618
CreateDynamicObject(-1867, 5006.12, -124.81, 12.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3618
CreateDynamicObject(-1867, 5006.12, -105.36, 12.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3618
CreateDynamicObject(-1868, 5003.57, -243.35, 12.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3623
CreateDynamicObject(-1869, 5004.18, -227.64, 12.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3628
CreateDynamicObject(-1870, 5002.94, -210.90, 11.99, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1871, 5006.23, -159.88, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3635
CreateDynamicObject(-1872, 5005.26, -143.69, 12.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3636
CreateDynamicObject(-1871, 5006.23, -90.22, 12.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3635
CreateDynamicObject(-1872, 5005.26, -74.04, 12.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3636
CreateDynamicObject(-1868, 5005.43, -40.04, 12.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3623
CreateDynamicObject(-1869, 5006.05, -24.71, 12.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3628
CreateDynamicObject(-1870, 5008.75, -9.00, 11.99, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1873, 5007.34, 4.18, 11.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3638
CreateDynamicObject(-1874, 4963.66, -237.40, 13.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3642
CreateDynamicObject(-1871, 4962.10, -220.80, 12.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3635
CreateDynamicObject(-1873, 4961.80, -209.09, 11.82, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3638
CreateDynamicObject(-1870, 4960.39, -198.93, 11.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1869, 4963.09, -185.91, 12.17, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3628
CreateDynamicObject(-1868, 4963.71, -171.82, 12.09, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3623
CreateDynamicObject(-1870, 4964.80, -157.12, 11.99, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1872, 4945.81, -104.57, 12.00, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3636
CreateDynamicObject(-1871, 4957.81, -103.60, 12.04, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3635
CreateDynamicObject(-1868, 4922.14, -92.25, 12.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3623
CreateDynamicObject(-1869, 4922.76, -78.94, 12.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3628
CreateDynamicObject(-1870, 4925.46, -65.45, 11.99, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1873, 4924.05, -55.79, 11.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3638
CreateDynamicObject(-1870, 4965.50, -90.56, 11.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3629
CreateDynamicObject(-1868, 4967.07, -77.97, 11.82, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3623
CreateDynamicObject(-1874, 4966.25, -16.43, 13.61, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // mainla3642
CreateDynamicObject(-1875, 4668.66, 142.83, 16.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3644
CreateDynamicObject(-1876, 4712.13, 145.00, 14.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3648
CreateDynamicObject(-1877, 5081.23, -266.14, 19.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3653
CreateDynamicObject(-1878, 4759.12, -267.21, 16.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3659
CreateDynamicObject(-1106, 4826.66, -240.23, 24.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1106, 4823.84, -240.23, 24.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1879, 4743.95, -319.25, -7.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3662
CreateDynamicObject(-1880, 4813.85, -64.58, 16.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3663
CreateDynamicObject(-1881, 5081.41, -258.19, 22.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3665
CreateDynamicObject(-1882, 4813.85, -64.66, 16.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3666
CreateDynamicObject(-1079, 4710.70, -99.23, 12.01, 0.00, 0.00, 175.00, -1, 0, -1,800.00, 800.00); // mainla390
CreateDynamicObject(-1078, 4715.76, -90.73, 10.98, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4715.76, -90.73, 11.88, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1078, 4714.86, -86.93, 11.01, 0.00, 0.00, 120.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1883, 4717.30, -92.09, 11.67, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3667
CreateDynamicObject(-1884, 4704.69, -94.89, -7.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3669
CreateDynamicObject(-1885, 4813.86, -64.48, 16.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3670
CreateDynamicObject(-1886, 4966.94, -63.45, 12.17, 0.00, 0.00, -1.71, -1, 0, -1,800.00, 800.00); // mainla3672
CreateDynamicObject(-1886, 5005.11, -58.55, 12.20, 0.00, 0.00, 178.29, -1, 0, -1,800.00, 800.00); // mainla3672
CreateDynamicObject(-1886, 4932.82, -104.79, 12.20, 0.00, 0.00, -90.13, -1, 0, -1,800.00, 800.00); // mainla3672
CreateDynamicObject(-1872, 5005.26, -74.04, 12.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3636
CreateDynamicObject(-1873, 5007.34, 4.18, 11.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3638
CreateDynamicObject(-1887, 4675.04, -318.19, 3.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3674
CreateDynamicObject(-1888, 4735.31, -287.59, 12.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3675
CreateDynamicObject(-1003, 4842.49, -308.75, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4859.92, -287.97, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4859.92, -238.62, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1889, 4843.49, -278.39, 19.56, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // mainla3676
CreateDynamicObject(-1003, 4902.41, -304.95, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1006, 4752.02, -340.66, 16.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla71
CreateDynamicObject(-1890, 4836.06, -93.24, 10.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3677
CreateDynamicObject(-1891, 4706.45, 27.24, 16.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3678
CreateDynamicObject(-1284, 4768.47, -310.26, 17.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1284, 4803.41, -135.01, 16.13, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1892, 5166.88, -158.01, -6.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3679
CreateDynamicObject(-1003, 4969.20, -230.17, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4999.85, -234.22, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1893, 4978.80, -197.20, 17.74, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // mainla3680
CreateDynamicObject(-1003, 4968.34, -179.69, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5044.34, -234.22, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5073.53, -240.46, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1894, 5036.16, -242.05, 23.00, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // mainla3681
CreateDynamicObject(-1003, 4999.49, -170.30, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5000.40, -111.65, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4963.55, -108.61, 14.45, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4926.19, -108.61, 14.38, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 5022.73, -81.79, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1895, 4945.14, -120.93, 20.72, 0.00, 0.00, 170.00, -1, 0, -1,800.00, 800.00); // mainla3682
CreateDynamicObject(-1896, 5008.92, -76.35, 24.35, 0.00, 0.00, 170.00, -1, 0, -1,800.00, 800.00); // mainla3683
CreateDynamicObject(-1003, 5022.73, -34.44, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4909.43, -26.31, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4971.22, -53.48, 14.67, 0.10, 0.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1897, 4933.50, -32.09, 18.35, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla3684
CreateDynamicObject(-1898, 5103.35, -36.61, 43.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3685
CreateDynamicObject(-1899, 5131.68, -55.85, 43.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3686
CreateDynamicObject(-1900, 4886.54, -263.75, 13.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3687
CreateDynamicObject(-1901, 5249.68, 317.62, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3689
CreateDynamicObject(-1902, 5094.16, 125.06, 25.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3690
CreateDynamicObject(-1903, 5228.79, 160.24, -6.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3693
CreateDynamicObject(-1904, 5206.39, 31.60, -3.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3694
CreateDynamicObject(-1905, 4989.88, 130.55, 9.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3695
CreateDynamicObject(-1906, 4882.31, 298.42, 12.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3699
CreateDynamicObject(-1907, 4820.62, 61.92, 10.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3702
CreateDynamicObject(-1908, 4946.93, 226.68, 10.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3703
CreateDynamicObject(-1909, 5088.78, 317.00, 10.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3704
CreateDynamicObject(-1910, 5065.57, 264.71, 19.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3705
CreateDynamicObject(-1911, 4972.34, 200.40, 13.11, 0.00, 0.00, -142.50, -1, 0, -1,800.00, 800.00); // mainla3714
CreateDynamicObject(-1912, 4813.17, 110.62, 19.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3718
CreateDynamicObject(-1913, 5074.90, 224.26, 9.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3723
CreateDynamicObject(-1914, 5122.18, 238.87, 11.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3732
CreateDynamicObject(-1915, 5193.54, 253.18, 32.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3734
CreateDynamicObject(-1916, 5164.86, 127.00, 47.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3741
CreateDynamicObject(-1917, 5184.97, 365.55, 101.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3745
CreateDynamicObject(-1918, 4722.45, 161.75, -7.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3750
CreateDynamicObject(-1919, 4867.61, 194.65, -7.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3751
CreateDynamicObject(-1920, 4888.28, 352.48, -7.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3752
CreateDynamicObject(-1921, 5043.98, 393.87, 10.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3753
CreateDynamicObject(-1922, 5020.80, 216.52, 10.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3754
CreateDynamicObject(-1923, 4911.26, 319.80, 13.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3755
CreateDynamicObject(-1924, 5225.09, 281.72, 16.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2488
CreateDynamicObject(-1925, 5225.95, 282.80, 15.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla2490
CreateDynamicObject(-1926, 5196.56, 139.34, 10.59, 0.00, 0.00, -10.50, -1, 0, -1,800.00, 800.00); // mainla3756
CreateDynamicObject(-1926, 5193.74, 125.19, 10.59, 0.00, 0.00, -10.50, -1, 0, -1,800.00, 800.00); // mainla3756
CreateDynamicObject(-1924, 5230.46, 277.83, 16.64, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // mainla2488
CreateDynamicObject(-1925, 5229.89, 279.08, 15.76, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // mainla2490
CreateDynamicObject(-1924, 5234.49, 280.88, 16.64, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // mainla2488
CreateDynamicObject(-1925, 5233.92, 282.14, 15.76, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // mainla2490
CreateDynamicObject(-1924, 5235.00, 275.59, 16.64, 0.00, 0.00, 137.50, -1, 0, -1,800.00, 800.00); // mainla2488
CreateDynamicObject(-1925, 5233.63, 275.38, 15.76, 0.00, 0.00, 137.50, -1, 0, -1,800.00, 800.00); // mainla2490
CreateDynamicObject(-1924, 5226.00, 277.02, 16.64, 0.00, 0.00, 137.50, -1, 0, -1,800.00, 800.00); // mainla2488
CreateDynamicObject(-1925, 5224.64, 276.81, 15.76, 0.00, 0.00, 137.50, -1, 0, -1,800.00, 800.00); // mainla2490
CreateDynamicObject(-1483, 5237.78, 283.68, 17.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5224.71, 286.20, 17.92, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1927, 4803.62, 85.41, 17.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3758
CreateDynamicObject(-1928, 4928.69, 45.65, 13.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3765
CreateDynamicObject(-1929, 5018.67, 108.42, 10.85, 90.00, 163.34, -26.84, -1, 0, -1,800.00, 800.00); // mainla3777
CreateDynamicObject(-1930, 5089.98, 110.75, 12.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3778
CreateDynamicObject(-1931, 4830.85, 49.64, 13.48, 0.00, 0.00, -1.00, -1, 0, -1,800.00, 800.00); // mainla3780
CreateDynamicObject(-1932, 5089.48, 130.92, 25.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3781
CreateDynamicObject(-1933, 4996.61, 169.62, 9.20, 0.00, 0.00, 95.50, -1, 0, -1,800.00, 800.00); // mainla3788
CreateDynamicObject(-1934, 5151.50, 260.71, 9.27, 0.00, 0.00, -174.50, -1, 0, -1,800.00, 800.00); // mainla3789
CreateDynamicObject(-1935, 5037.33, 65.64, 8.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3790
CreateDynamicObject(-1936, 4783.13, 85.20, 13.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3791
CreateDynamicObject(-1937, 4926.96, 82.52, 17.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3793
CreateDynamicObject(-1938, 4935.06, 192.90, 16.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3797
CreateDynamicObject(-1939, 4956.84, 321.29, 14.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3801
CreateDynamicObject(-1940, 5070.03, 48.75, 11.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3808
CreateDynamicObject(-1941, 5062.23, 346.98, 21.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3810
CreateDynamicObject(-1428, 5054.46, 209.85, 16.64, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1344
CreateDynamicObject(-1942, 5007.24, 148.76, 10.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3813
CreateDynamicObject(-1483, 5201.68, 142.75, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5197.00, 119.42, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5202.68, 147.10, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5196.09, 115.37, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5218.57, 251.91, 17.92, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5229.11, 249.91, 17.92, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5225.22, 231.14, 17.75, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1483, 5215.38, 233.28, 17.76, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // mainla1510
CreateDynamicObject(-1059, 5214.22, 96.34, 14.20, 0.00, 0.00, 169.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1059, 5229.19, 93.68, 14.20, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // mainla300
CreateDynamicObject(-1943, 4696.86, 211.84, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3820
CreateDynamicObject(-1944, 4833.39, 362.36, 10.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3821
CreateDynamicObject(-1945, 4806.15, 222.46, 10.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3822
CreateDynamicObject(-1946, 4969.00, 84.20, 11.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3823
CreateDynamicObject(-1947, 5020.21, 83.24, 11.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3829
CreateDynamicObject(-1948, 5008.60, 84.05, 10.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3833
CreateDynamicObject(-1949, 4975.58, 83.86, 10.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1948, 5002.07, 83.98, 10.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3833
CreateDynamicObject(-1950, 4982.47, 83.92, 10.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3838
CreateDynamicObject(-1950, 5014.18, 83.93, 10.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3838
CreateDynamicObject(-1949, 4988.93, 83.91, 10.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1947, 4962.21, 83.24, 11.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3829
CreateDynamicObject(-1951, 4999.88, 129.03, 9.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3843
CreateDynamicObject(-1948, 5000.05, 121.45, 9.79, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3833
CreateDynamicObject(-1952, 5000.01, 112.46, 9.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3844
CreateDynamicObject(-1953, 4999.84, 105.83, 9.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3845
CreateDynamicObject(-1947, 4988.58, 108.13, 9.92, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3829
CreateDynamicObject(-1948, 4982.30, 108.10, 9.91, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3833
CreateDynamicObject(-1954, 4978.33, 122.80, 9.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3846
CreateDynamicObject(-1949, 4975.79, 108.11, 9.96, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1946, 4978.36, 129.35, 9.93, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3823
CreateDynamicObject(-1955, 4977.67, 116.36, 9.95, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3847
CreateDynamicObject(-1949, 4986.95, 128.10, 9.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1946, 4971.59, 148.38, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3823
CreateDynamicObject(-1949, 4978.18, 148.04, 9.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1950, 4985.06, 148.11, 9.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3838
CreateDynamicObject(-1954, 4991.52, 148.09, 9.99, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla3846
CreateDynamicObject(-1949, 5018.35, 139.73, 10.13, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3834
CreateDynamicObject(-1955, 5020.21, 147.96, 10.08, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3847
CreateDynamicObject(-1956, 5135.20, 256.91, 10.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3853
CreateDynamicObject(-1411, 5133.27, 266.72, 10.08, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1411, 5109.24, 261.32, 9.38, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1411, 5095.29, 254.22, 9.44, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1411, 5067.28, 260.13, 9.39, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1106, 5002.90, 71.34, 14.93, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1243, 4973.83, 47.66, 17.24, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1243, 4973.83, 45.24, 17.24, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1284, 5044.02, 44.60, 14.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1243, 5022.39, 46.09, 12.59, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // mainla862
CreateDynamicObject(-1957, 4994.30, 59.26, 14.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3854
CreateDynamicObject(-1958, 4875.29, 141.59, 13.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3860
CreateDynamicObject(-1959, 5054.52, 209.86, 26.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3867
CreateDynamicObject(-1960, 5050.16, 51.74, 12.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3869
CreateDynamicObject(-1961, 4936.29, 128.34, 14.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3875
CreateDynamicObject(-1106, 4941.52, 145.72, 15.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla469
CreateDynamicObject(-1107, 4947.19, 153.48, 14.93, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla473
CreateDynamicObject(-1962, 5074.71, 162.33, 17.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3883
CreateDynamicObject(-1963, 4982.88, 339.59, 24.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3884
CreateDynamicObject(-1964, 4982.88, 337.38, 25.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3886
CreateDynamicObject(-1965, 4982.91, 337.24, 25.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3887
CreateDynamicObject(-1966, 5186.26, 366.01, 107.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3888
CreateDynamicObject(-1967, 4894.79, 353.33, 13.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3889
CreateDynamicObject(-1968, 4862.08, 360.49, 12.56, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3892
CreateDynamicObject(-1969, 4860.76, 120.16, 12.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3893
CreateDynamicObject(-1970, 5236.81, 395.76, 12.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3898
CreateDynamicObject(-1971, 4939.10, 156.02, 13.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3900
CreateDynamicObject(-1972, 4972.60, 288.11, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3901
CreateDynamicObject(-1973, 5187.01, 358.36, 9.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3903
CreateDynamicObject(-1974, 4892.49, 99.98, 19.16, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3904
CreateDynamicObject(-1975, 4882.07, 126.32, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3906
CreateDynamicObject(-1333, 4862.09, 312.84, 10.88, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1334, 4862.18, 312.84, 13.06, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // mainla1108
CreateDynamicObject(-1333, 4856.60, 318.07, 10.88, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // mainla1104
CreateDynamicObject(-1411, 4853.82, 340.43, 11.33, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1411, 4908.46, 362.80, 11.33, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // mainla1297
CreateDynamicObject(-1078, 4903.15, 361.07, 10.77, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // mainla384
CreateDynamicObject(-1976, 4904.16, 281.22, 12.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3907
CreateDynamicObject(-1977, 4988.54, 268.29, 8.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3908
CreateDynamicObject(-1978, 5082.36, 170.25, 9.53, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3910
CreateDynamicObject(-1979, 5078.12, 169.75, 9.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3913
CreateDynamicObject(-1980, 5097.12, 186.88, 10.10, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // mainla3915
CreateDynamicObject(-1981, 5192.82, 34.24, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3917
CreateDynamicObject(-1284, 5045.16, 44.60, 14.89, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla1000
CreateDynamicObject(-1982, 5305.05, 278.25, -6.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3918
CreateDynamicObject(-1983, 4911.99, 6.57, 13.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3919
CreateDynamicObject(-1003, 4984.93, 315.16, 14.97, -0.14, -5.00, -87.00, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1984, 4973.41, 308.55, 24.49, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // mainla3922
CreateDynamicObject(-1003, 4968.94, 285.77, 14.98, -0.14, 0.00, -86.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4948.48, 283.98, 14.98, -0.14, 0.00, -86.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4935.24, 181.71, 14.98, -0.14, 0.00, -41.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4948.89, 158.29, 14.98, -0.14, 0.00, -41.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1985, 4959.78, 148.99, 15.42, 0.00, 0.00, 150.00, -1, 0, -1,800.00, 800.00); // mainla3923
CreateDynamicObject(-1003, 4994.43, 150.71, 12.89, -0.14, 0.00, -81.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1003, 4889.24, 98.42, 14.98, -0.14, 0.00, -91.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1986, 4905.24, 136.26, 19.44, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // mainla3924
CreateDynamicObject(-1003, 4914.96, 136.32, 14.98, -0.14, 0.00, -91.99, -1, 0, -1,800.00, 800.00); // mainla48
CreateDynamicObject(-1987, 5208.97, 169.83, 48.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3925
CreateDynamicObject(-1988, 5160.54, 174.16, 48.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3926
CreateDynamicObject(-1989, 5369.32, 1714.32, -25.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3941
CreateDynamicObject(-1990, 4779.14, 1540.58, -39.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3942
CreateDynamicObject(-1991, 5208.97, 169.78, 48.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4227
CreateDynamicObject(-1992, 5186.26, 365.95, 107.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4228
CreateDynamicObject(-1993, 5131.68, -55.89, 43.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4229
CreateDynamicObject(-1994, 5748.58, 519.98, -2.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4301
CreateDynamicObject(-1995, 5440.44, 793.08, 114.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4319
CreateDynamicObject(-1996, 5476.09, 783.85, 201.84, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4320
CreateDynamicObject(-1997, 5440.77, 793.47, 189.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4321
CreateDynamicObject(-1998, 5613.45, 1237.88, 210.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4322
CreateDynamicObject(-1999, 5416.27, 1163.86, 196.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4324
CreateDynamicObject(-2000, 5450.21, 952.09, 203.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4326
CreateDynamicObject(-2001, 5416.38, 1178.45, 152.36, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // mainla4328
CreateDynamicObject(-2002, 5449.42, 952.65, 175.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4329
CreateDynamicObject(-2003, 5370.96, -931.00, 11.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4450
CreateDynamicObject(-2004, 5323.37, -928.56, 15.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4455
CreateDynamicObject(-2005, 5160.54, 174.10, 48.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4465
CreateDynamicObject(-2006, 5074.84, 162.29, 16.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4476
CreateDynamicObject(-2007, 4874.98, 141.90, 13.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4482
CreateDynamicObject(-2008, 5151.83, 260.83, 8.99, 0.00, 0.00, -174.50, -1, 0, -1,800.00, 800.00); // LODnla4486
CreateDynamicObject(-2009, 4936.43, 128.14, 14.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4488
CreateDynamicObject(-2010, 4923.81, 82.47, 16.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4495
CreateDynamicObject(-2011, 5228.72, 160.21, -7.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4505
CreateDynamicObject(-2012, 5249.61, 317.60, -8.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4512
CreateDynamicObject(-2013, 5043.98, 393.84, 9.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4513
CreateDynamicObject(-2014, 5191.27, 359.24, 9.68, 0.00, 0.00, 4.50, -1, 0, -1,800.00, 800.00); // LODnla4517
CreateDynamicObject(-2015, 5062.32, 347.00, 20.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4518
CreateDynamicObject(-2016, 4888.46, 352.28, -7.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4523
CreateDynamicObject(-2017, 5122.18, 238.84, 10.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4526
CreateDynamicObject(-2018, 5088.89, 317.06, 9.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4540
CreateDynamicObject(-2019, 4946.89, 226.79, 10.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4551
CreateDynamicObject(-2020, 4867.71, 194.14, -7.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4552
CreateDynamicObject(-2021, 4716.24, 161.92, -7.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4556
CreateDynamicObject(-2022, 4928.68, 45.73, 13.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4566
CreateDynamicObject(-2023, 4813.06, 110.71, 19.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4572
CreateDynamicObject(-2024, 4820.62, 62.02, 10.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4575
CreateDynamicObject(-2025, 5019.85, 216.61, 10.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4576
CreateDynamicObject(-2026, 5103.35, -36.66, 43.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4577
CreateDynamicObject(-2027, 4962.09, -220.82, 11.98, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4580
CreateDynamicObject(-2027, 4962.09, -220.82, 11.98, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4580
CreateDynamicObject(-2028, 4964.80, -157.13, 11.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODnla4582
CreateDynamicObject(-2029, 4963.70, -171.83, 12.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4583
CreateDynamicObject(-2030, 4836.07, -93.27, 10.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4584
CreateDynamicObject(-2031, 4675.04, -318.35, 10.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4585
CreateDynamicObject(-2032, 5081.17, -266.45, 19.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4587
CreateDynamicObject(-2033, 4932.82, -104.80, 12.21, 0.00, 0.00, -90.13, -1, 0, -1,800.00, 800.00); // LODnla4591
CreateDynamicObject(-2034, 4945.82, -104.57, 12.02, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODnla4592
CreateDynamicObject(-2035, 5006.05, -24.76, 12.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4590
CreateDynamicObject(-2029, 5005.44, -40.06, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4583
CreateDynamicObject(-2033, 5005.11, -58.57, 12.21, 0.00, 0.00, 178.29, -1, 0, -1,800.00, 800.00); // LODnla4591
CreateDynamicObject(-2027, 5006.24, -90.23, 11.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4580
CreateDynamicObject(-2027, 5006.24, -159.89, 11.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4580
CreateDynamicObject(-2028, 5002.93, -210.91, 11.90, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4582
CreateDynamicObject(-2035, 5004.19, -227.69, 12.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4590
CreateDynamicObject(-2029, 5003.57, -243.37, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4583
CreateDynamicObject(-2035, 4963.08, -185.89, 12.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4590
CreateDynamicObject(-2029, 4963.70, -171.83, 12.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla4583
CreateDynamicObject(-2029, 5005.44, -40.06, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4583
CreateDynamicObject(-2036, 5000.09, -59.49, 9.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4595
CreateDynamicObject(-2037, 4793.48, -79.76, 26.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4596
CreateDynamicObject(-2038, 4813.86, -64.49, 16.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4598
CreateDynamicObject(-2039, 4759.12, -267.23, 16.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4600
CreateDynamicObject(-2040, 5022.20, -278.95, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4609
CreateDynamicObject(-2041, 4897.26, -288.87, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4610
CreateDynamicObject(-2042, 5091.26, -106.41, 14.56, 0.00, 0.00, 152.50, -1, 0, -1,800.00, 800.00); // LODnla4611
CreateDynamicObject(-2043, 4874.29, -198.43, 10.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4615
CreateDynamicObject(-2044, 4744.18, -319.41, -7.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4616
CreateDynamicObject(-2045, 5000.09, -59.51, 9.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4618
CreateDynamicObject(-2046, 4950.19, -63.99, 11.12, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODnla4619
CreateDynamicObject(-2047, 4662.18, 78.46, 13.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4620
CreateDynamicObject(-2048, 4713.19, 22.71, -7.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4623
CreateDynamicObject(-2049, 5090.33, -180.97, 12.42, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODnla4624
CreateDynamicObject(-2050, 5110.57, -74.79, 12.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4627
CreateDynamicObject(-2051, 4900.33, -123.62, 16.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4629
CreateDynamicObject(-2052, 4810.46, -218.29, 16.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4637
CreateDynamicObject(-2053, 4942.43, -56.80, 11.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4641
CreateDynamicObject(-2054, 4884.38, -223.37, 22.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4642
CreateDynamicObject(-2055, 4663.41, 27.52, 14.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4645
CreateDynamicObject(-2056, 4812.06, -13.69, 16.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4648
CreateDynamicObject(-2057, 4963.03, -194.45, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4662
CreateDynamicObject(-2058, 4879.29, -229.23, 16.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4663
CreateDynamicObject(-2059, 4943.31, -61.56, 13.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4669
CreateDynamicObject(-2060, 4788.17, -232.99, 9.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4670
CreateDynamicObject(-2061, 4844.11, -55.11, 14.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4671
CreateDynamicObject(-2062, 4828.39, -133.77, 15.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4673
CreateDynamicObject(-2063, 4262.61, -498.65, 31.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4680
CreateDynamicObject(-2064, 4535.99, -442.38, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4681
CreateDynamicObject(-2065, 4479.77, -357.24, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4684
CreateDynamicObject(-2066, 4448.78, -463.48, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4685
CreateDynamicObject(-2067, 4515.66, -319.44, 11.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4688
CreateDynamicObject(-2068, 4318.97, -493.13, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4692
CreateDynamicObject(-2069, 4205.77, -481.77, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4693
CreateDynamicObject(-2070, 4319.93, -387.27, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4694
CreateDynamicObject(-2071, 4209.83, -380.20, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4695
CreateDynamicObject(-2072, 4177.99, -661.43, -5.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4696
CreateDynamicObject(-2073, 4602.22, -608.75, 9.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4697
CreateDynamicObject(-2074, 4591.95, -807.98, 13.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4698
CreateDynamicObject(-2075, 4209.19, -599.68, 8.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4699
CreateDynamicObject(-2076, 4374.40, -605.39, 8.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4700
CreateDynamicObject(-2077, 4379.09, -738.89, 9.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4701
CreateDynamicObject(-2078, 4549.69, -737.04, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4702
CreateDynamicObject(-2079, 4113.12, -450.47, -5.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4707
CreateDynamicObject(-2080, 4142.01, -208.41, -4.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4708
CreateDynamicObject(-2081, 4616.99, -428.27, 9.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4709
CreateDynamicObject(-2082, 4386.16, -233.96, 15.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4710
CreateDynamicObject(-2083, 4135.70, -752.05, 27.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4715
CreateDynamicObject(-2084, 4123.71, -750.37, 8.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4716
CreateDynamicObject(-2085, 4488.13, -444.87, 13.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4719
CreateDynamicObject(-2086, 4263.43, -427.14, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4721
CreateDynamicObject(-2087, 4616.87, -731.26, 13.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4726
CreateDynamicObject(-2088, 4145.81, -411.51, 13.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4727
CreateDynamicObject(-2089, 4238.25, -719.14, 9.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4728
CreateDynamicObject(-2090, 4339.61, -674.40, 13.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4729
CreateDynamicObject(-2091, 4549.74, -598.75, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4730
CreateDynamicObject(-2092, 4335.38, -640.42, 13.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4731
CreateDynamicObject(-2093, 4750.94, -1086.39, 17.51, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2093, 4705.77, -1154.97, 17.51, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2093, 4280.70, -1353.97, 17.51, 0.00, 0.00, -39.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2093, 4730.56, -839.18, 17.51, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2093, 4727.97, -955.71, 17.51, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2093, 4567.98, -1285.16, 17.51, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // LODnla4733
CreateDynamicObject(-2094, 4173.59, -1009.41, 20.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4732
CreateDynamicObject(-2094, 4173.59, -1135.53, 20.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4732
CreateDynamicObject(-2095, 4881.86, -897.62, 17.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4736
CreateDynamicObject(-2096, 4981.87, -1034.35, 18.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4741
CreateDynamicObject(-2097, 5056.49, -1178.92, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4742
CreateDynamicObject(-2098, 4980.73, -983.81, 12.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4743
CreateDynamicObject(-2099, 4871.73, -964.98, 16.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4745
CreateDynamicObject(-2100, 4316.94, -930.17, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4747
CreateDynamicObject(-2101, 4525.38, -1238.87, 13.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4748
CreateDynamicObject(-2102, 4675.57, -1087.40, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4750
CreateDynamicObject(-2103, 4558.14, -1088.28, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4751
CreateDynamicObject(-2104, 4500.57, -892.35, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4752
CreateDynamicObject(-2105, 4316.94, -803.06, 13.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4753
CreateDynamicObject(-2106, 4163.73, -879.23, -4.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4755
CreateDynamicObject(-2107, 4413.36, -1087.40, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4756
CreateDynamicObject(-2108, 4163.83, -1087.17, -4.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4758
CreateDynamicObject(-2109, 4398.82, -1303.36, 13.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4760
CreateDynamicObject(-2110, 4280.14, -1303.55, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4761
CreateDynamicObject(-2111, 4162.02, -1295.17, -4.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4762
CreateDynamicObject(-2112, 5106.40, -1195.69, 13.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-2113, 4412.53, -1062.73, 20.63, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODnla4768
CreateDynamicObject(-2113, 4578.76, -1014.52, 20.63, 0.00, 0.00, -85.00, -1, 0, -1,800.00, 800.00); // LODnla4768
CreateDynamicObject(-2113, 4697.89, -816.01, 20.63, 0.00, 0.00, -179.90, -1, 0, -1,800.00, 800.00); // LODnla4768
CreateDynamicObject(-2114, 4982.92, -1154.02, 24.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4769
CreateDynamicObject(-2115, 4533.42, -851.46, 41.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4772
CreateDynamicObject(-2116, 4951.49, -989.38, 11.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4773
CreateDynamicObject(-2117, 4873.42, -1187.27, 13.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4774
CreateDynamicObject(-2118, 4783.71, -735.68, 14.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4776
CreateDynamicObject(-2119, 4533.52, -849.45, 16.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4777
CreateDynamicObject(-2120, 4782.49, -1239.04, 13.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4779
CreateDynamicObject(-2121, 4824.56, -889.57, 11.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4780
CreateDynamicObject(-2122, 4818.86, -1103.62, 14.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4782
CreateDynamicObject(-2123, 4696.67, -1247.41, 13.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4783
CreateDynamicObject(-2124, 4614.86, -1010.96, 19.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4784
CreateDynamicObject(-2125, 4449.33, -1014.99, 19.41, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODnla4786
CreateDynamicObject(-2126, 4816.42, -1296.73, 12.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4787
CreateDynamicObject(-2127, 4810.45, -986.37, 13.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4796
CreateDynamicObject(-2128, 4804.88, -871.64, 21.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4800
CreateDynamicObject(-2129, 4607.61, -1250.03, 15.78, 0.00, 0.00, -142.00, -1, 0, -1,800.00, 800.00); // LODnla4804
CreateDynamicObject(-2130, 5116.27, -1044.41, 15.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4805
CreateDynamicObject(-2131, 5127.37, -1086.71, 13.48, 0.00, 0.00, 17.55, -1, 0, -1,800.00, 800.00); // LODnla4807
CreateDynamicObject(-2132, 5277.11, -1539.40, 15.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4811
CreateDynamicObject(-2133, 4842.29, -1418.19, 14.79, 0.00, 0.00, 66.98, -1, 0, -1,800.00, 800.00); // LODnla4814
CreateDynamicObject(-2134, 4845.97, -1311.67, 14.33, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // LODnla4816
CreateDynamicObject(-2135, 4835.96, -1333.23, 14.33, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // LODnla4817
CreateDynamicObject(-2136, 5002.16, -1345.13, 34.82, 0.00, 0.00, 107.79, -1, 0, -1,800.00, 800.00); // LODnla4818
CreateDynamicObject(-2137, 5114.24, -986.23, 19.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4820
CreateDynamicObject(-2138, 5333.56, -1486.75, 13.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4826
CreateDynamicObject(-2139, 5274.04, -1567.19, 2.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4830
CreateDynamicObject(-2140, 5290.05, -1513.81, 2.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4833
CreateDynamicObject(-2141, 5284.18, -1353.61, 6.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4835
CreateDynamicObject(-2142, 4932.79, -1466.68, 18.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4837
CreateDynamicObject(-2143, 5127.94, -1477.89, 123.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4842
CreateDynamicObject(-2144, 5091.64, -1477.79, 61.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4845
CreateDynamicObject(-2145, 5180.94, -1137.59, 9.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4852
CreateDynamicObject(-2146, 5134.06, -1499.80, 14.90, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // LODnla4853
CreateDynamicObject(-2147, 5313.67, -1480.23, 16.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4856
CreateDynamicObject(-2148, 5262.51, -1557.76, 16.41, 0.00, 0.00, -21.50, -1, 0, -1,800.00, 800.00); // LODnla4859
CreateDynamicObject(-2149, 5072.50, -1313.82, 17.40, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODnla4865
CreateDynamicObject(-2150, 5198.35, -1530.42, 15.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4875
CreateDynamicObject(-2151, 5343.34, -1495.82, 7.55, 0.00, 0.00, -21.50, -1, 0, -1,800.00, 800.00); // LODnla4878
CreateDynamicObject(-2152, 5287.57, -1514.93, 15.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4884
CreateDynamicObject(-2153, 5060.79, -1500.02, 14.11, 0.00, 0.00, 66.00, -1, 0, -1,800.00, 800.00); // LODnla4885
CreateDynamicObject(-2154, 4916.99, -1450.30, 14.04, 0.00, 0.00, 157.50, -1, 0, -1,800.00, 800.00); // LODnla4888
CreateDynamicObject(-2155, 4996.22, -1442.56, 14.10, 0.00, 0.00, -114.00, -1, 0, -1,800.00, 800.00); // LODnla4889
CreateDynamicObject(-2156, 5232.37, -1284.47, 14.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4890
CreateDynamicObject(-2157, 5216.95, -1394.72, 14.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4894
CreateDynamicObject(-2158, 5236.28, -1419.45, 9.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4898
CreateDynamicObject(-2159, 5233.51, -1277.46, 17.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4900
CreateDynamicObject(-2160, 5139.33, -1394.38, 22.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4901
CreateDynamicObject(-2161, 5051.10, -1358.35, 8.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4903
CreateDynamicObject(-2162, 5203.25, -1533.06, 9.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4904
CreateDynamicObject(-2163, 5049.18, -1443.35, 4.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4908
CreateDynamicObject(-2164, 4898.03, -1342.16, 1.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4919
CreateDynamicObject(-2165, 5223.92, -1157.46, -0.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4922
CreateDynamicObject(-2166, 4994.99, -1459.98, 43.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4926
CreateDynamicObject(-2167, 5112.84, -1515.69, 43.84, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // LODnla4929
CreateDynamicObject(-2168, 5218.67, 497.07, 29.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4937
CreateDynamicObject(-2169, 5172.33, 477.60, 29.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4939
CreateDynamicObject(-2170, 5174.06, 528.61, 29.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4940
CreateDynamicObject(-2171, 5340.51, 694.76, 30.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4944
CreateDynamicObject(-2172, 5311.03, 668.77, 30.43, 0.00, 0.00, -41.61, -1, 0, -1,800.00, 800.00); // LODnla4945
CreateDynamicObject(-2173, 5420.74, 561.06, -17.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4948
CreateDynamicObject(-2174, 5161.21, 506.19, 97.79, 0.00, 0.00, -59.95, -1, 0, -1,800.00, 800.00); // LODnla4955
CreateDynamicObject(-2175, 5001.95, 839.06, 63.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4957
CreateDynamicObject(-2176, 5437.18, 794.63, 114.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4958
CreateDynamicObject(-2177, 5394.73, 793.24, 201.84, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4959
CreateDynamicObject(-2178, 4973.91, 578.60, 80.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla4960
CreateDynamicObject(-2179, 5295.11, 870.03, 9.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4961
CreateDynamicObject(-2180, 5197.27, 870.75, 10.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4962
CreateDynamicObject(-2181, 5407.06, 862.99, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4966
CreateDynamicObject(-2182, 5019.96, 840.02, 47.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4968
CreateDynamicObject(-2183, 5169.38, 841.11, 9.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4973
CreateDynamicObject(-2184, 5499.62, 815.98, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4975
CreateDynamicObject(-2185, 5097.32, 748.49, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4976
CreateDynamicObject(-2186, 5068.83, 797.43, 13.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4991
CreateDynamicObject(-2187, 5264.23, 1023.15, 20.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4999
CreateDynamicObject(-2188, 5057.98, 540.92, 9.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5008
CreateDynamicObject(-2189, 5190.58, 691.06, 9.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5010
CreateDynamicObject(-2190, 5169.99, 786.29, 26.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5049
CreateDynamicObject(-2191, 5355.04, 743.35, 9.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5059
CreateDynamicObject(-2192, 5379.74, 683.24, 8.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5060
CreateDynamicObject(-2193, 5294.00, 686.72, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5061
CreateDynamicObject(-2194, 5289.75, 524.97, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5062
CreateDynamicObject(-2195, 4799.74, 1464.14, 6.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5073
CreateDynamicObject(-2196, 4520.45, 1430.83, 7.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5074
CreateDynamicObject(-2197, 5446.56, 952.67, 175.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5075
CreateDynamicObject(-2198, 5273.11, 1561.16, -6.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5083
CreateDynamicObject(-2199, 5520.88, 1284.23, 49.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5096
CreateDynamicObject(-2200, 5126.48, 1076.00, 55.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5097
CreateDynamicObject(-2201, 5018.00, 1330.99, 49.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5098
CreateDynamicObject(-2202, 5294.78, 1165.75, 46.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5099
CreateDynamicObject(-2203, 5413.94, 1195.06, 158.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5100
CreateDynamicObject(-2204, 5601.79, 1239.32, 226.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5102
CreateDynamicObject(-2205, 5463.88, 955.40, 164.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5104
CreateDynamicObject(-2206, 5032.08, 1337.09, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5106
CreateDynamicObject(-2207, 5005.15, 1330.86, 8.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5110
CreateDynamicObject(-2208, 5106.15, 1049.57, 9.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5116
CreateDynamicObject(-2209, 5287.96, 1072.66, 9.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5117
CreateDynamicObject(-2210, 4520.57, 1231.03, 34.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5118
CreateDynamicObject(-2211, 4950.03, 1330.69, 15.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5128
CreateDynamicObject(-2212, 5434.70, 1135.32, 8.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5131
CreateDynamicObject(-2213, 4520.57, 1430.79, 34.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5132
CreateDynamicObject(-2214, 5160.61, 1130.29, 18.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5137
CreateDynamicObject(-2215, 5159.08, 1460.51, 10.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5143
CreateDynamicObject(-2216, 5410.08, 1219.13, 11.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5146
CreateDynamicObject(-2217, 5205.16, 1256.01, 9.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5149
CreateDynamicObject(-2218, 5462.85, 1019.75, 9.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5153
CreateDynamicObject(-2219, 5363.01, 1212.02, 44.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5155
CreateDynamicObject(-2220, 5387.58, 952.73, 10.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5163
CreateDynamicObject(-2221, 5183.19, 1088.71, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5171
CreateDynamicObject(-2222, 5282.85, 1074.43, 10.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5173
CreateDynamicObject(-2223, 4975.16, 1407.74, 8.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5177
CreateDynamicObject(-2224, 5086.73, 1502.02, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5179
CreateDynamicObject(-2225, 5141.21, 1425.28, 18.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5194
CreateDynamicObject(-2226, 5144.00, 1332.73, 41.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5197
CreateDynamicObject(-2227, 5247.61, 1352.24, 23.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5200
CreateDynamicObject(-2228, 5338.18, 1426.13, 22.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5202
CreateDynamicObject(-2229, 5329.11, 1284.91, 21.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5211
CreateDynamicObject(-2230, 5385.51, 1298.13, 16.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5213
CreateDynamicObject(-2231, 5436.81, 1314.44, 19.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5216
CreateDynamicObject(-2232, 5261.67, 1273.12, 13.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5219
CreateDynamicObject(-2233, 5068.62, 1139.08, 21.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5227
CreateDynamicObject(-2234, 5063.08, 1003.48, 28.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5230
CreateDynamicObject(-2235, 5035.02, 1216.04, 40.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5234
CreateDynamicObject(-2236, 5021.04, 1103.34, 14.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5237
CreateDynamicObject(-2237, 5259.79, 1286.81, 15.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5238
CreateDynamicObject(-2238, 5520.65, 1282.46, 43.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5242
CreateDynamicObject(-2239, 5241.81, 1127.89, 21.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5245
CreateDynamicObject(-2240, 5509.08, 1056.59, 21.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5250
CreateDynamicObject(-2241, 5340.20, 1128.61, 22.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5255
CreateDynamicObject(-2242, 5477.58, 1142.99, 44.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5261
CreateDynamicObject(-2243, 5544.71, 1124.52, 41.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5266
CreateDynamicObject(-2244, 5220.43, 1178.84, 9.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5274
CreateDynamicObject(-2245, 5535.55, 1269.41, 9.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5277
CreateDynamicObject(-2246, 5284.32, 1337.07, 10.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5278
CreateDynamicObject(-2247, 5205.95, 1428.62, 10.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5279
CreateDynamicObject(-2248, 5487.86, 1363.55, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5283
CreateDynamicObject(-2249, 4895.28, -553.91, 13.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5299
CreateDynamicObject(-2250, 4735.38, -365.05, 19.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5300
CreateDynamicObject(-2251, 4754.36, -456.75, 11.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5301
CreateDynamicObject(-2252, 4844.21, -422.66, 13.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5302
CreateDynamicObject(-2253, 4783.15, -371.90, 14.53, 0.00, 0.00, -175.00, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2254, 4786.29, -395.45, 15.14, 0.00, 0.00, -176.96, -1, 0, -1,800.00, 800.00); // LODnla5304
CreateDynamicObject(-2253, 4739.69, -391.53, 14.57, 0.00, 0.00, 4.02, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2255, 4743.56, -416.19, 14.01, 0.00, 0.00, 3.16, -1, 0, -1,800.00, 800.00); // LODnla5305
CreateDynamicObject(-2255, 4745.04, -434.54, 13.95, 0.00, 0.00, 6.28, -1, 0, -1,800.00, 800.00); // LODnla5305
CreateDynamicObject(-2253, 4744.74, -457.67, 14.54, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2255, 4749.48, -478.91, 13.95, 0.00, 0.00, 13.98, -1, 0, -1,800.00, 800.00); // LODnla5305
CreateDynamicObject(-2253, 4760.10, -497.85, 14.63, 0.00, 0.00, 15.92, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2255, 4795.87, -451.31, 13.95, 0.00, 0.00, -174.70, -1, 0, -1,800.00, 800.00); // LODnla5305
CreateDynamicObject(-2253, 4802.21, -476.56, 14.71, 0.00, 0.00, -170.00, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2256, 4807.35, -520.31, 13.06, 0.00, 0.00, 98.15, -1, 0, -1,800.00, 800.00); // LODnla5306
CreateDynamicObject(-2253, 4832.30, -520.32, 14.54, 0.00, 0.00, 98.06, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2255, 4827.53, -474.39, 13.95, 0.00, 0.00, -82.77, -1, 0, -1,800.00, 800.00); // LODnla5305
CreateDynamicObject(-2254, 4848.07, -449.88, 15.05, 0.00, 0.00, 5.23, -1, 0, -1,800.00, 800.00); // LODnla5304
CreateDynamicObject(-2253, 4851.81, -472.66, 14.31, 0.00, 0.00, 6.83, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2253, 4808.31, -372.61, 14.34, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // LODnla5303
CreateDynamicObject(-2256, 4790.12, -421.32, 13.16, 0.00, 0.00, -176.03, -1, 0, -1,800.00, 800.00); // LODnla5306
CreateDynamicObject(-2257, 4998.88, -570.88, 22.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5307
CreateDynamicObject(-2258, 4888.97, -436.52, 24.92, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // LODnla5309
CreateDynamicObject(-2259, 4859.19, -330.21, 22.53, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODnla5311
CreateDynamicObject(-2260, 5018.42, -924.46, 12.93, 0.00, 0.00, -110.00, -1, 0, -1,800.00, 800.00); // LODnla5313
CreateDynamicObject(-2261, 5047.96, -937.54, 12.80, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // LODnla5315
CreateDynamicObject(-2262, 5031.70, -878.91, 12.88, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // LODnla5317
CreateDynamicObject(-2260, 5049.48, -880.45, 12.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5313
CreateDynamicObject(-2261, 5037.68, -836.70, 12.80, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODnla5315
CreateDynamicObject(-2263, 4925.41, -790.58, 13.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5318
CreateDynamicObject(-2264, 4884.01, -751.38, 14.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5320
CreateDynamicObject(-2265, 4900.20, -774.12, 15.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5321
CreateDynamicObject(-2266, 4986.95, -397.81, 13.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5323
CreateDynamicObject(-2267, 4814.62, -710.48, 12.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5326
CreateDynamicObject(-2268, 5129.17, -776.34, 27.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5330
CreateDynamicObject(-2269, 5032.44, -399.28, 78.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5331
CreateDynamicObject(-2270, 5119.05, -866.75, 19.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5333
CreateDynamicObject(-2271, 4817.61, -423.07, 10.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5334
CreateDynamicObject(-2272, 5035.84, -445.82, 9.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5344
CreateDynamicObject(-2273, 5059.88, -372.47, 12.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5345
CreateDynamicObject(-2274, 4965.59, -331.72, 11.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5347
CreateDynamicObject(-2275, 5166.05, -777.21, -7.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5350
CreateDynamicObject(-2276, 5101.89, -884.12, 10.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5357
CreateDynamicObject(-2277, 4999.28, -694.42, 14.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5358
CreateDynamicObject(-2278, 4801.09, -620.62, 16.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5361
CreateDynamicObject(-2279, 5028.18, -429.36, 10.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5365
CreateDynamicObject(-2280, 5070.85, -1028.37, 26.34, 0.00, 0.00, -166.00, -1, 0, -1,800.00, 800.00); // LODnla5366
CreateDynamicObject(-2281, 4752.10, -348.24, 15.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5372
CreateDynamicObject(-2282, 4837.19, -361.18, 14.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5378
CreateDynamicObject(-2283, 4909.91, -376.30, 20.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5386
CreateDynamicObject(-2284, 4940.72, -624.67, 14.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5389
CreateDynamicObject(-2285, 4768.96, -418.34, 9.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5393
CreateDynamicObject(-2286, 4832.88, -345.19, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5394
CreateDynamicObject(-2287, 4867.29, -416.73, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5395
CreateDynamicObject(-2288, 4829.66, -496.20, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5396
CreateDynamicObject(-2289, 5149.07, -577.49, -6.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5400
CreateDynamicObject(-2290, 4940.83, -410.42, 9.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5402
CreateDynamicObject(-2291, 4806.20, -642.44, 10.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5404
CreateDynamicObject(-2292, 4912.39, -675.88, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5405
CreateDynamicObject(-2293, 5012.85, -483.56, 13.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5409
CreateDynamicObject(-2294, 4865.11, -320.55, 12.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5410
CreateDynamicObject(-2295, 4783.63, -649.25, 15.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5413
CreateDynamicObject(-2296, 4829.96, -540.14, 18.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5414
CreateDynamicObject(-2297, 5094.19, -692.44, 17.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5420
CreateDynamicObject(-2298, 4930.97, -534.27, 15.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5426
CreateDynamicObject(-2299, 4853.85, -636.99, 17.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5427
CreateDynamicObject(-2300, 5029.31, -580.32, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla5431
CreateDynamicObject(-2301, 4759.12, -267.21, 16.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5436
CreateDynamicObject(-2302, 5295.38, -1267.75, 4.00, 0.00, 0.00, -156.50, -1, 0, -1,800.00, 800.00); // mainla5451
CreateDynamicObject(-2303, 4218.43, -162.29, 22.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5461
CreateDynamicObject(-2303, 4218.43, -162.29, 22.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5461
CreateDynamicObject(-2304, 5071.90, 797.79, 13.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5480
CreateDynamicObject(-2305, 5276.66, -1539.70, 33.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5498
CreateDynamicObject(-2306, 4874.70, 134.09, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5514
CreateDynamicObject(-2306, 4874.70, 134.09, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5514
CreateDynamicObject(-2307, 4913.44, -957.87, 25.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5569
CreateDynamicObject(-2307, 4913.44, -957.87, 25.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5569
CreateDynamicObject(-2308, 4941.56, -347.19, 16.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5592
CreateDynamicObject(-2309, 4814.41, -704.35, 11.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5632
CreateDynamicObject(-2310, 4320.35, -280.83, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5645
CreateDynamicObject(-2311, 5158.10, -1176.26, 13.06, 0.00, 0.00, 18.11, -1, 0, -1,800.00, 800.00); // mainla5652
CreateDynamicObject(-2312, 5160.27, -1194.34, 12.96, 0.00, 0.00, 18.11, -1, 0, -1,800.00, 800.00); // mainla5672
CreateDynamicObject(-2313, 4895.06, 353.50, 13.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5696
CreateDynamicObject(-2314, 4364.64, -122.83, 17.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5767
CreateDynamicObject(-2315, 5029.86, -849.93, 13.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5781
CreateDynamicObject(-2316, 5142.78, 1019.04, 80.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5796
CreateDynamicObject(-2317, 5070.30, 164.41, 17.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5825
CreateDynamicObject(-2318, 5341.28, 1208.65, 52.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5838
CreateDynamicObject(-2319, 5090.81, -267.72, 26.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla5886
CreateDynamicObject(-2320, 4843.38, -420.29, 12.73, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // mainla5932
CreateDynamicObject(-2322, 5138.45, -472.33, 10.87, 0.00, 0.00, -72.50, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2323, 5161.16, -342.36, -4.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach182
CreateDynamicObject(-2324, 5204.82, -499.57, 3.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach192
CreateDynamicObject(-2325, 5170.44, -500.50, 16.11, 0.00, 0.00, 103.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2325, 5174.09, -515.26, 16.11, 0.00, 0.00, -77.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2326, 5211.73, -805.03, 11.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach341
CreateDynamicObject(-2327, 5212.57, -804.39, 15.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach354
CreateDynamicObject(-2328, 5199.79, -839.68, 14.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach372
CreateDynamicObject(-2329, 5199.49, -839.58, 16.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach375
CreateDynamicObject(-2330, 5201.23, -778.58, -6.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach376
CreateDynamicObject(-2331, 5671.16, 1277.72, 22.44, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach424
CreateDynamicObject(-2332, 5609.89, 1108.76, 12.69, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2332, 5641.29, 1183.19, 14.78, 0.00, 0.00, 63.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2332, 5678.34, 1245.78, 14.78, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2332, 5676.27, 1304.30, 15.48, 0.00, 0.00, -76.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2332, 5652.42, 1347.26, 15.48, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2333, 5700.86, 1316.17, 31.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach491
CreateDynamicObject(-2334, 5672.89, 1418.32, 14.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach499
CreateDynamicObject(-2335, 5694.48, 1404.01, 13.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach500
CreateDynamicObject(-2335, 5694.48, 1367.87, 13.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach500
CreateDynamicObject(-2335, 5708.84, 1345.85, 13.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach500
CreateDynamicObject(-2335, 5708.84, 1315.60, 13.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach500
CreateDynamicObject(-2335, 5685.69, 1303.70, 14.15, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach500
CreateDynamicObject(-2336, 5692.01, 1418.58, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach497
CreateDynamicObject(-2336, 5652.58, 1376.24, 14.73, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach497
CreateDynamicObject(-2334, 5683.41, 1418.32, 13.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach499
CreateDynamicObject(-2337, 5669.54, 1277.57, 32.38, 0.00, 0.00, 179.70, -1, 0, -1,800.00, 800.00); // beach546
CreateDynamicObject(-2338, 5653.12, 1384.05, 14.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach554
CreateDynamicObject(-2332, 5604.42, 1048.69, 11.37, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach325
CreateDynamicObject(-2339, 5655.66, 1042.56, 15.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach759
CreateDynamicObject(-2340, 5320.98, -928.39, 15.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach774
CreateDynamicObject(-2341, 5234.33, -923.69, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach933
CreateDynamicObject(-2342, 5368.55, -930.99, 11.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach938
CreateDynamicObject(-2343, 5557.91, -935.04, 19.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach940
CreateDynamicObject(-2344, 5233.16, -926.53, 11.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach941
CreateDynamicObject(-2345, 5596.11, -934.10, 10.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach942
CreateDynamicObject(-2346, 5304.30, -930.00, 15.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach962
CreateDynamicObject(-2347, 5376.00, -931.26, 20.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach963
CreateDynamicObject(-2348, 5447.77, -931.47, 24.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach967
CreateDynamicObject(-2349, 5519.54, -932.40, 25.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach968
CreateDynamicObject(-2350, 5591.31, -934.17, 21.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach969
CreateDynamicObject(-2351, 5661.28, -936.93, 17.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach970
CreateDynamicObject(-2352, 5228.26, -925.87, 18.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach994
CreateDynamicObject(-2353, 6086.26, -948.36, 14.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1095
CreateDynamicObject(-2354, 6019.68, -1165.19, 12.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1101
CreateDynamicObject(-2355, 6099.31, -1064.25, 26.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1105
CreateDynamicObject(-2356, 6019.65, -1139.47, 19.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1112
CreateDynamicObject(-2357, 5933.09, -1105.47, 20.70, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1119
CreateDynamicObject(-2358, 6004.73, -1080.88, 11.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1124
CreateDynamicObject(-2359, 6005.18, -1057.99, 12.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1137
CreateDynamicObject(-2360, 6143.71, -1006.40, 19.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1140
CreateDynamicObject(-2361, 6144.93, -774.49, 19.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1148
CreateDynamicObject(-2362, 6137.98, -744.85, 18.54, 0.00, 0.00, -20.10, -1, 0, -1,800.00, 800.00); // beach1152
CreateDynamicObject(-2363, 6116.04, -790.34, 17.63, 0.00, 0.00, 62.20, -1, 0, -1,800.00, 800.00); // beach1156
CreateDynamicObject(-2364, 6088.23, -1017.06, 13.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1158
CreateDynamicObject(-2365, 6127.76, -700.32, 10.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1161
CreateDynamicObject(-2366, 6163.17, -1082.08, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1163
CreateDynamicObject(-2367, 6202.32, -681.75, 9.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1164
CreateDynamicObject(-2368, 6139.00, -815.62, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1165
CreateDynamicObject(-2369, 6055.61, -946.34, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1166
CreateDynamicObject(-2370, 6046.73, -1077.12, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1167
CreateDynamicObject(-2371, 5912.59, -1135.27, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1168
CreateDynamicObject(-2372, 5827.17, -1100.02, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1170
CreateDynamicObject(-2373, 5983.79, -1032.36, 9.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1171
CreateDynamicObject(-2374, 5810.09, -916.42, 10.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1172
CreateDynamicObject(-2375, 5896.73, -884.73, 8.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1173
CreateDynamicObject(-2376, 6071.25, -820.90, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1175
CreateDynamicObject(-2377, 6093.95, -772.25, -0.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1176
CreateDynamicObject(-2378, 5953.42, -849.96, -1.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1179
CreateDynamicObject(-2379, 5807.89, -892.08, -1.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1181
CreateDynamicObject(-2380, 5812.08, -973.63, 7.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1182
CreateDynamicObject(-2381, 5796.86, -1080.01, 9.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1186
CreateDynamicObject(-2382, 6107.19, -1074.26, 10.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1189
CreateDynamicObject(-2383, 6116.37, -980.95, 9.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1190
CreateDynamicObject(-2384, 5973.59, -1066.12, 9.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1191
CreateDynamicObject(-2385, 5979.06, -1131.78, 11.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1197
CreateDynamicObject(-2386, 6025.23, -1075.15, 12.39, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1200
CreateDynamicObject(-2387, 6008.22, -1072.32, 10.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1201
CreateDynamicObject(-2388, 5952.05, -1107.65, 10.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1204
CreateDynamicObject(-2389, 5843.16, -1156.03, 11.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1206
CreateDynamicObject(-2390, 5952.83, -851.98, 15.04, 0.00, 0.00, -54.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 5985.32, -850.21, 15.04, 0.00, 0.00, -54.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2391, 6067.07, -992.29, 13.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1211
CreateDynamicObject(-2390, 5765.07, -1051.72, 15.27, 0.00, 0.00, 91.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2392, 5787.45, -958.95, 9.64, -0.47, -0.03, 29.88, -1, 0, -1,800.00, 800.00); // beach1229
CreateDynamicObject(-2392, 5790.20, -955.07, 9.65, 0.52, 0.28, -49.54, -1, 0, -1,800.00, 800.00); // beach1229
CreateDynamicObject(-2390, 5773.48, -1031.06, 14.48, 0.00, 0.00, -178.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2393, 6201.90, -587.81, -0.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1233
CreateDynamicObject(-2394, 6153.73, -887.30, 21.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1234
CreateDynamicObject(-2395, 6199.62, -805.21, 18.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1245
CreateDynamicObject(-2396, 6247.02, -714.42, 22.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1254
CreateDynamicObject(-2397, 6280.17, -624.82, 17.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1266
CreateDynamicObject(-2398, 6307.20, -562.02, 32.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1282
CreateDynamicObject(-2399, 6156.83, -927.91, 13.64, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6162.18, -930.10, 13.61, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6167.80, -932.56, 13.91, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6135.06, -918.90, 15.76, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6149.71, -919.85, 15.75, 0.00, 0.00, -42.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6142.27, -922.55, 15.75, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6199.18, -897.32, 13.73, 0.00, 0.00, -33.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2400, 6227.53, -745.81, 11.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1285
CreateDynamicObject(-2401, 6178.78, -834.07, 60.29, 0.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // beach1287
CreateDynamicObject(-2402, 6076.46, -967.86, 13.51, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1289
CreateDynamicObject(-2403, 6124.14, -805.96, 17.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1295
CreateDynamicObject(-2404, 6280.83, -598.72, 11.51, 0.00, 0.00, 1.00, -1, 0, -1,800.00, 800.00); // beach1296
CreateDynamicObject(-2399, 6204.53, -889.21, 13.73, 0.00, 0.00, -33.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2405, 5865.85, -1158.29, 13.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1298
CreateDynamicObject(-2406, 5869.07, -1156.40, 13.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1305
CreateDynamicObject(-2407, 5815.36, -1139.18, 19.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1314
CreateDynamicObject(-2408, 5840.73, -1171.80, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5866.66, -1175.12, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5885.00, -1164.33, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5881.61, -1144.46, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5897.95, -1155.82, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5852.05, -1153.32, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5813.14, -1120.85, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5795.45, -1135.80, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5804.89, -1152.17, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5826.75, -1125.25, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2409, 5821.99, -1185.90, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5825.23, -1185.52, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5824.01, -1179.17, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5825.46, -1182.11, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5827.25, -1178.79, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5826.33, -1171.92, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5827.78, -1174.86, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5829.57, -1171.54, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5848.92, -1148.83, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5850.71, -1145.52, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5840.95, -1150.16, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5842.40, -1153.09, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5844.19, -1149.78, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5829.67, -1164.99, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5831.12, -1167.94, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5832.91, -1164.62, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2411, 5828.64, -1168.27, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5847.27, -1146.07, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5816.55, -1145.95, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5810.32, -1140.61, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5803.59, -1135.31, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5810.45, -1127.26, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5817.19, -1132.57, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 5823.42, -1137.91, 14.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2412, 5861.32, -1170.04, 12.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1327
CreateDynamicObject(-2413, 5945.33, -1130.86, 10.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1329
CreateDynamicObject(-2414, 6003.60, -1081.97, 11.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1330
CreateDynamicObject(-2415, 6099.79, -1106.29, 12.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1331
CreateDynamicObject(-2416, 6141.39, -1064.26, 12.42, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1332
CreateDynamicObject(-2409, 6165.67, -1000.99, 9.87, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6166.65, -1002.86, 10.85, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6164.97, -1004.19, 9.87, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6161.72, -1019.04, 9.90, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6162.83, -1020.42, 10.87, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6161.02, -1022.24, 9.90, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6158.11, -1018.36, 10.92, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6157.41, -1021.56, 10.92, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6155.94, -1015.76, 10.92, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6155.24, -1018.97, 10.92, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6162.62, -999.94, 10.89, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6161.92, -1003.15, 10.89, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6159.58, -1000.99, 10.89, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6158.88, -1004.20, 10.89, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6161.08, -1006.69, 10.89, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6158.78, -1014.66, 10.92, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2411, 6158.22, -1022.90, 12.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6163.59, -998.71, 12.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6166.13, -1006.99, 11.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6163.97, -1016.11, 11.48, 0.00, 0.00, 115.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2408, 5820.04, -1203.48, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5836.98, -1203.48, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5852.43, -1201.25, 14.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2409, 5820.43, -1192.38, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5821.88, -1195.32, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5823.67, -1192.01, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5823.44, -1188.84, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5843.02, -1202.90, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5844.47, -1205.83, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5846.26, -1202.52, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 5838.74, -1207.34, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 5840.19, -1210.28, 12.84, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 5841.98, -1206.96, 13.81, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2417, 6048.83, -797.50, 49.42, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach1333
CreateDynamicObject(-2399, 6047.74, -836.17, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6062.79, -819.01, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6074.89, -801.03, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6081.08, -789.58, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2418, 6050.35, -783.88, 10.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1341
CreateDynamicObject(-2399, 6015.23, -814.32, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6031.97, -787.21, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6055.61, -733.03, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6086.66, -739.85, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6074.48, -768.23, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2390, 6017.75, -831.66, 12.03, 0.00, 0.00, -167.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6010.18, -826.79, 13.78, 0.00, 0.00, -107.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6086.22, -765.70, 13.78, 0.00, 0.00, -107.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6094.31, -733.76, 13.78, 0.00, 0.00, -107.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2399, 6078.01, -795.48, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6055.52, -827.98, 14.02, 0.00, 0.00, -48.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2419, 6005.18, -1057.99, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1342
CreateDynamicObject(-2420, 6025.24, -1075.18, 15.01, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1344
CreateDynamicObject(-2421, 6004.67, -1073.75, 12.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1345
CreateDynamicObject(-2422, 6145.93, -1006.87, 20.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1346
CreateDynamicObject(-2423, 6110.27, -756.61, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1347
CreateDynamicObject(-2424, 5995.69, -862.71, 8.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1348
CreateDynamicObject(-2425, 5873.29, -939.20, 9.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1349
CreateDynamicObject(-2426, 5733.57, -934.72, 12.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1350
CreateDynamicObject(-2427, 5900.62, -1009.24, 9.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1351
CreateDynamicObject(-2428, 5899.15, -1068.95, 9.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1353
CreateDynamicObject(-2429, 5959.24, -1185.46, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1354
CreateDynamicObject(-2430, 6049.63, -1145.48, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1355
CreateDynamicObject(-2431, 6101.88, -1126.74, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1356
CreateDynamicObject(-2432, 6041.80, -1011.29, 9.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1357
CreateDynamicObject(-2433, 6091.80, -917.38, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1358
CreateDynamicObject(-2434, 6098.11, -873.55, 9.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1359
CreateDynamicObject(-2435, 6176.89, -756.52, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1360
CreateDynamicObject(-2436, 6077.90, -861.85, 17.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1361
CreateDynamicObject(-2437, 6019.43, -1151.00, 14.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1368
CreateDynamicObject(-2438, 6086.22, -934.12, 12.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1369
CreateDynamicObject(-2390, 5754.71, -950.57, 14.46, 0.00, 0.00, 91.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2439, 6167.17, -871.82, 10.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1370
CreateDynamicObject(-2440, 6141.40, -1079.85, 14.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1371
CreateDynamicObject(-2441, 6124.99, -917.27, 14.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1372
CreateDynamicObject(-2442, 5947.88, -1074.88, 13.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1373
CreateDynamicObject(-2443, 5962.11, -1148.41, 13.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1374
CreateDynamicObject(-2444, 6066.20, -1077.98, 14.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1375
CreateDynamicObject(-2445, 6192.16, -783.97, 14.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1376
CreateDynamicObject(-2446, 5919.22, -933.69, 14.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1377
CreateDynamicObject(-2447, 5811.01, -1095.23, 20.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1378
CreateDynamicObject(-2448, 5849.41, -1107.91, 14.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1379
CreateDynamicObject(-2449, 6005.32, -1062.37, 13.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1380
CreateDynamicObject(-2450, 5852.66, -1184.55, 16.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1381
CreateDynamicObject(-2451, 5788.19, -1169.59, 15.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1382
CreateDynamicObject(-2452, 6015.59, -945.29, 13.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1383
CreateDynamicObject(-2453, 5855.00, -997.89, 14.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1384
CreateDynamicObject(-2454, 6162.44, -709.52, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1385
CreateDynamicObject(-2390, 6164.85, -732.16, 13.78, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2455, 6169.28, -680.01, 10.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1386
CreateDynamicObject(-2456, 6147.96, -940.89, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1387
CreateDynamicObject(-2457, 6180.76, -990.95, 9.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1388
CreateDynamicObject(-2458, 5943.29, -1158.02, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2459, 5966.77, -1055.74, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1394
CreateDynamicObject(-2460, 5996.18, -1106.89, 21.13, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1399
CreateDynamicObject(-2458, 5963.71, -1158.02, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5963.71, -1137.30, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5943.30, -1137.36, 12.61, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5963.39, -1115.38, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5963.39, -1095.07, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5986.71, -1137.60, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2458, 5986.71, -1159.97, 12.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2459, 5930.59, -1057.07, 13.27, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1394
CreateDynamicObject(-2461, 6061.34, -752.93, 9.57, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // beach1409
CreateDynamicObject(-2325, 5872.55, -903.92, 13.41, 0.00, 0.00, 21.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2462, 5874.19, -903.51, 16.40, 0.00, -90.00, 111.00, -1, 0, -1,800.00, 800.00); // beach1410
CreateDynamicObject(-2325, 5858.44, -909.59, 13.41, 0.00, 0.00, -159.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2463, 6281.93, -609.01, 12.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1412
CreateDynamicObject(-2464, 6251.14, -711.32, 15.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1413
CreateDynamicObject(-2465, 6204.43, -798.29, 12.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1414
CreateDynamicObject(-2466, 6152.52, -887.58, 14.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1415
CreateDynamicObject(-2467, 6152.81, -719.54, 19.79, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6147.08, -717.66, 19.65, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6142.81, -715.92, 19.76, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6138.57, -714.84, 23.51, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6142.76, -716.23, 24.47, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6144.30, -716.41, 24.47, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6151.31, -719.06, 23.57, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6155.61, -720.48, 24.47, 0.00, 0.00, -19.11, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6135.20, -717.32, 24.47, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6134.06, -720.34, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6133.68, -722.22, 19.74, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6132.66, -724.95, 23.17, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6130.06, -731.13, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6129.20, -734.29, 23.17, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6127.54, -738.77, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6125.62, -743.12, 24.47, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6123.62, -749.36, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6120.50, -756.93, 23.17, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6120.21, -758.56, 23.17, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6118.47, -763.25, 23.17, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6117.05, -766.25, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2467, 6116.72, -767.98, 18.67, 0.00, 0.00, 70.89, -1, 0, -1,800.00, 800.00); // beach1418
CreateDynamicObject(-2468, 6204.40, -786.26, 70.52, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach1420
CreateDynamicObject(-2468, 6146.23, -896.50, 70.72, 0.00, 0.00, -17.46, -1, 0, -1,800.00, 800.00); // beach1420
CreateDynamicObject(-2469, 6030.86, -936.26, 9.40, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach1427
CreateDynamicObject(-2470, 6006.29, -970.94, 9.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-2471, 6003.88, -919.44, 9.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2472, 6031.84, -938.47, 9.28, 0.00, 0.00, -70.00, -1, 0, -1,800.00, 800.00); // beach1433
CreateDynamicObject(-2473, 6031.57, -937.09, 9.27, 0.00, 0.00, -70.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2474, 6007.57, -905.24, 10.50, 0.00, 0.00, -96.01, -1, 0, -1,800.00, 800.00); // beach1436
CreateDynamicObject(-2475, 6019.95, -983.91, 9.45, 0.00, 0.00, -70.00, -1, 0, -1,800.00, 800.00); // beach1437
CreateDynamicObject(-2476, 6032.14, -927.90, 10.16, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1439
CreateDynamicObject(-2474, 6027.63, -942.33, 10.71, 0.00, 0.00, 52.30, -1, 0, -1,800.00, 800.00); // beach1436
CreateDynamicObject(-2474, 6006.70, -977.27, 10.09, 0.00, 0.00, -89.84, -1, 0, -1,800.00, 800.00); // beach1436
CreateDynamicObject(-2476, 6032.14, -926.63, 10.13, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1439
CreateDynamicObject(-2476, 6032.14, -925.35, 10.12, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1439
CreateDynamicObject(-2469, 6031.19, -935.68, 9.40, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach1427
CreateDynamicObject(-2471, 6004.53, -919.44, 9.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6005.36, -989.34, 8.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6004.71, -989.34, 8.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6020.76, -918.17, 8.80, 0.00, 0.00, -125.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6021.13, -917.64, 8.80, 0.00, 0.00, -125.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2470, 6005.95, -968.27, 9.00, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-2477, 6142.54, -965.79, 13.86, 0.00, 0.00, 167.50, -1, 0, -1,800.00, 800.00); // beach1442
CreateDynamicObject(-2322, 6218.84, -650.20, 9.88, 0.00, 0.00, -29.58, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6219.90, -650.80, 9.88, 0.00, 0.00, -29.58, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2478, 5781.39, -989.44, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1447
CreateDynamicObject(-2479, 5972.11, -947.66, 10.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1450
CreateDynamicObject(-2480, 6023.80, -914.92, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2481, 6021.26, -914.88, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2480, 6018.72, -914.92, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6008.45, -914.92, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6013.53, -914.92, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6018.61, -937.78, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6023.69, -937.78, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6008.50, -963.16, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6013.57, -963.16, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6008.45, -937.76, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6013.53, -937.76, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6017.50, -963.16, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2481, 6011.00, -914.88, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2481, 6021.16, -937.76, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2481, 6011.02, -963.20, 9.92, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2480, 6023.69, -926.76, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6008.81, -926.75, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6008.53, -951.42, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2481, 6014.96, -951.42, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2480, 6012.42, -951.42, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2480, 6017.50, -951.42, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2481, 6008.52, -948.88, 9.92, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2480, 6008.55, -946.34, 10.15, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1453
CreateDynamicObject(-2475, 6020.46, -959.40, 9.42, 0.00, 0.00, -125.00, -1, 0, -1,800.00, 800.00); // beach1437
CreateDynamicObject(-2475, 6011.14, -935.88, 9.43, 0.00, 0.00, -125.00, -1, 0, -1,800.00, 800.00); // beach1437
CreateDynamicObject(-2471, 6009.71, -965.25, 8.59, -7.65, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6008.98, -965.25, 8.59, -7.65, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2482, 5716.65, -935.79, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1458
CreateDynamicObject(-2483, 6056.41, -968.09, 14.30, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1461
CreateDynamicObject(-2484, 6232.66, -820.09, 15.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1463
CreateDynamicObject(-2485, 6092.37, -905.00, 15.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1464
CreateDynamicObject(-2486, 6198.01, -755.17, 13.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1467
CreateDynamicObject(-2487, 6164.87, -907.12, 11.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1468
CreateDynamicObject(-2331, 5905.90, -876.11, 17.71, 0.00, 0.00, 43.52, -1, 0, -1,800.00, 800.00); // beach424
CreateDynamicObject(-2488, 6028.03, -1020.41, 19.73, 0.00, 0.00, 64.34, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-2489, 6027.75, -1021.18, 30.05, 0.00, 0.00, 74.20, -1, 0, -1,800.00, 800.00); // beach1473
CreateDynamicObject(-2490, 5907.10, -877.36, 28.91, 0.00, 0.00, 78.02, -1, 0, -1,800.00, 800.00); // beach1476
CreateDynamicObject(-2488, 6141.98, -693.74, 19.73, 0.00, 0.00, 73.35, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-2491, 5838.65, -1160.74, 65.68, 0.00, 0.00, -75.39, -1, 0, -1,800.00, 800.00); // beach1478
CreateDynamicObject(-2492, 6178.80, -835.12, 59.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1479
CreateDynamicObject(-2493, 5748.43, -1087.48, 54.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1480
CreateDynamicObject(-2494, 6050.72, -797.94, 54.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1481
CreateDynamicObject(-2495, 6146.23, -896.51, 75.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1482
CreateDynamicObject(-2496, 6204.44, -786.25, 79.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1483
CreateDynamicObject(-2497, 5840.47, -1157.90, 57.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1484
CreateDynamicObject(-2498, 5746.33, -1085.83, 59.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1487
CreateDynamicObject(-2499, 6039.52, -793.34, 48.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1488
CreateDynamicObject(-2500, 5831.96, -1156.22, 55.82, 0.00, 0.00, -75.39, -1, 0, -1,800.00, 800.00); // beach1489
CreateDynamicObject(-2481, 6016.07, -937.76, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1455
CreateDynamicObject(-2501, 6015.84, -927.10, 9.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1490
CreateDynamicObject(-2502, 6141.79, -693.69, 30.05, 0.00, 0.00, 74.20, -1, 0, -1,800.00, 800.00); // beach1491
CreateDynamicObject(-2503, 5833.97, -1046.82, 61.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1493
CreateDynamicObject(-2504, 5843.58, -1049.28, 54.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1494
CreateDynamicObject(-2505, 6068.53, -1220.01, 12.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1498
CreateDynamicObject(-2506, 6118.36, -1239.95, 13.41, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1500
CreateDynamicObject(-2507, 5839.04, -1384.36, 17.48, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1501
CreateDynamicObject(-2508, 5965.76, -1410.49, 20.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1505
CreateDynamicObject(-2509, 5971.66, -1373.43, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1509
CreateDynamicObject(-2510, 6013.88, -1254.49, 16.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1511
CreateDynamicObject(-2511, 5869.89, -1592.04, 14.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1523
CreateDynamicObject(-2512, 6074.60, -1152.90, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1531
CreateDynamicObject(-2513, 5882.58, -1416.69, 25.08, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1534
CreateDynamicObject(-2514, 6103.18, -1190.16, 16.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1535
CreateDynamicObject(-2515, 5824.27, -1310.96, 23.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1543
CreateDynamicObject(-2516, 6005.43, -1451.58, 20.17, 0.00, 0.00, -110.00, -1, 0, -1,800.00, 800.00); // beach1554
CreateDynamicObject(-2517, 5888.64, -1514.60, 16.38, 0.00, 0.00, 100.00, -1, 0, -1,800.00, 800.00); // beach1557
CreateDynamicObject(-2518, 6051.80, -1447.53, 18.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1565
CreateDynamicObject(-2519, 6067.90, -1405.75, 19.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1571
CreateDynamicObject(-2520, 6116.46, -1177.08, 12.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1575
CreateDynamicObject(-2521, 6016.85, -1419.12, 14.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1580
CreateDynamicObject(-2522, 6042.76, -1354.33, 17.09, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // beach1582
CreateDynamicObject(-2523, 6017.57, -1209.97, 18.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1586
CreateDynamicObject(-2524, 5872.58, -1497.78, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1595
CreateDynamicObject(-2525, 6013.87, -1582.85, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1596
CreateDynamicObject(-2526, 6094.71, -1434.23, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1597
CreateDynamicObject(-2527, 6139.29, -1249.73, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1598
CreateDynamicObject(-2528, 6029.42, -1317.84, 9.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1599
CreateDynamicObject(-2529, 5986.10, -1422.22, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1600
CreateDynamicObject(-2530, 5921.52, -1505.31, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1601
CreateDynamicObject(-2531, 5929.88, -1403.50, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1602
CreateDynamicObject(-2532, 5781.95, -1339.71, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1603
CreateDynamicObject(-2533, 5870.93, -1271.59, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1604
CreateDynamicObject(-2534, 5786.56, -1246.92, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1605
CreateDynamicObject(-2535, 6014.38, -1527.18, 8.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1606
CreateDynamicObject(-2536, 5972.09, -1414.54, 10.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1607
CreateDynamicObject(-2537, 6044.43, -1418.20, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1610
CreateDynamicObject(-2538, 6077.75, -1196.24, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1611
CreateDynamicObject(-2539, 5988.50, -1235.81, 10.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1612
CreateDynamicObject(-2540, 5889.81, -1343.07, 9.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1616
CreateDynamicObject(-2541, 5737.38, -1317.23, 4.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1617
CreateDynamicObject(-2542, 5853.60, -1210.01, 9.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1620
CreateDynamicObject(-2543, 5835.84, -1315.44, 10.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1623
CreateDynamicObject(-2544, 5895.47, -1322.38, 11.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1626
CreateDynamicObject(-2545, 5887.01, -1442.71, 11.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1628
CreateDynamicObject(-2546, 5981.51, -1459.65, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1631
CreateDynamicObject(-2547, 6023.65, -1528.77, 10.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1633
CreateDynamicObject(-2548, 5945.68, -1506.21, 10.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1634
CreateDynamicObject(-2549, 5978.11, -1648.86, 7.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1637
CreateDynamicObject(-2550, 6087.69, -1274.78, 9.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1639
CreateDynamicObject(-2551, 6103.18, -1189.95, 31.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1640
CreateDynamicObject(-2552, 6103.18, -1189.95, 24.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1643
CreateDynamicObject(-2553, 5734.50, -1300.49, 10.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1644
CreateDynamicObject(-2554, 5734.74, -1248.61, 10.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1648
CreateDynamicObject(-2555, 5744.52, -1338.04, 10.28, 0.00, 0.00, 13.00, -1, 0, -1,800.00, 800.00); // beach1649
CreateDynamicObject(-2556, 5751.71, -1367.06, 10.28, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1650
CreateDynamicObject(-2557, 5800.51, -1394.89, 7.56, 0.00, 0.00, 17.50, -1, 0, -1,800.00, 800.00); // beach1651
CreateDynamicObject(-2558, 6079.40, -1373.29, 15.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1654
CreateDynamicObject(-2399, 6079.56, -1486.04, 13.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2408, 5882.73, -1535.83, 11.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2390, 6054.49, -1610.88, 12.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2408, 5901.57, -1533.26, 11.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5904.31, -1504.40, 11.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5908.22, -1463.69, 11.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5909.38, -1447.45, 11.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2390, 6022.72, -1607.49, 12.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 5991.20, -1603.25, 12.51, 0.00, 0.00, 78.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 5961.44, -1597.10, 12.51, 0.00, 0.00, -54.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 5816.42, -1500.56, 14.13, 0.00, 0.00, -54.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2559, 6124.84, -1288.84, 14.34, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6124.15, -1295.17, 14.34, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6123.48, -1301.37, 14.32, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2560, 5899.48, -1546.42, 12.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1662
CreateDynamicObject(-2561, 6090.71, -1285.82, 20.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1667
CreateDynamicObject(-2562, 5981.92, -1515.40, 11.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1670
CreateDynamicObject(-2563, 5992.84, -1453.36, 17.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1674
CreateDynamicObject(-2399, 5955.69, -1466.96, 13.35, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 5978.04, -1402.83, 13.35, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 5970.29, -1421.58, 13.71, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2564, 5834.57, -1449.16, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1675
CreateDynamicObject(-2565, 5788.16, -1299.68, 9.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1676
CreateDynamicObject(-2566, 5825.92, -1385.67, 11.41, 0.00, 0.00, 76.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5822.68, -1401.85, 11.26, 0.00, 0.00, -179.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5821.21, -1407.60, 11.09, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5825.04, -1427.77, 11.34, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5826.43, -1430.71, 10.65, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5828.77, -1438.11, 11.49, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5905.05, -1492.08, 11.46, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5903.29, -1496.22, 11.90, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5903.57, -1500.61, 11.30, 0.00, 0.00, -166.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5814.75, -1224.68, 11.76, 0.00, 0.00, -8.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5812.98, -1225.74, 12.30, 0.00, 0.00, -158.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5805.34, -1225.69, 12.30, 0.00, 0.00, -173.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5801.21, -1225.91, 11.68, 0.00, 0.00, 6.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5790.44, -1224.47, 12.30, 0.00, 0.00, -8.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5794.00, -1225.16, 12.30, 0.00, 0.00, -83.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2567, 5730.51, -1244.43, 4.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1678
CreateDynamicObject(-2568, 5762.46, -1412.47, 4.18, 0.00, 0.00, 18.00, -1, 0, -1,800.00, 800.00); // beach1679
CreateDynamicObject(-2569, 5730.90, -1168.10, -3.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1680
CreateDynamicObject(-2570, 6030.53, -1346.95, 12.46, 0.00, -90.00, -20.00, -1, 0, -1,800.00, 800.00); // beach1681
CreateDynamicObject(-2566, 6049.83, -1278.76, 11.41, 0.00, 0.00, -152.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6048.65, -1284.19, 11.41, 0.00, 0.00, -152.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2571, 5732.51, -1301.19, 9.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1682
CreateDynamicObject(-2408, 5710.46, -1252.52, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5709.93, -1221.80, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5710.50, -1206.88, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5710.44, -1184.79, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5710.86, -1151.95, 9.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5711.33, -1282.69, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5716.09, -1319.03, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5722.85, -1353.66, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5726.09, -1367.39, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5734.06, -1392.81, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5743.42, -1424.64, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5754.97, -1460.90, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2572, 5704.63, -1214.55, 6.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1683
CreateDynamicObject(-2573, 5717.61, -1360.76, 6.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1688
CreateDynamicObject(-2574, 5708.99, -1256.11, 8.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1690
CreateDynamicObject(-2575, 5709.24, -1168.96, 8.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1692
CreateDynamicObject(-2576, 5715.21, -1319.50, 8.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1694
CreateDynamicObject(-2577, 5731.53, -1390.74, 8.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1696
CreateDynamicObject(-2578, 5759.60, -1446.04, 8.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1698
CreateDynamicObject(-2579, 5807.13, -1245.71, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1700
CreateDynamicObject(-2580, 5948.57, -1455.72, 13.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1701
CreateDynamicObject(-2581, 5841.75, -1384.36, 17.59, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1709
CreateDynamicObject(-2582, 6100.02, -1187.77, 26.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1710
CreateDynamicObject(-2583, 6079.94, -1322.98, 8.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1714
CreateDynamicObject(-2584, 6095.33, -1228.45, 14.13, 0.00, 0.00, 82.50, -1, 0, -1,800.00, 800.00); // beach1715
CreateDynamicObject(-2585, 6127.75, -1267.58, 13.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1717
CreateDynamicObject(-2586, 5880.80, -1508.21, 9.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1718
CreateDynamicObject(-2587, 5863.59, -1383.25, 10.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1719
CreateDynamicObject(-2588, 6065.45, -1523.82, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1722
CreateDynamicObject(-2589, 6009.77, -1475.16, 9.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1724
CreateDynamicObject(-2590, 5957.86, -1533.77, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1725
CreateDynamicObject(-2591, 6123.24, -1353.63, 9.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1726
CreateDynamicObject(-2592, 6150.12, -1153.68, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1727
CreateDynamicObject(-2593, 5989.93, -1362.96, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1728
CreateDynamicObject(-2594, 6035.82, -1205.39, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1729
CreateDynamicObject(-2595, 6040.10, -1261.89, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1730
CreateDynamicObject(-2596, 5842.84, -1507.56, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1731
CreateDynamicObject(-2597, 5906.64, -1560.93, 9.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1732
CreateDynamicObject(-2598, 5935.75, -1331.67, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1733
CreateDynamicObject(-2599, 5931.47, -1249.92, 9.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1734
CreateDynamicObject(-2600, 5771.77, -1163.11, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1735
CreateDynamicObject(-2601, 5807.02, -1429.82, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1736
CreateDynamicObject(-2602, 5989.50, -1309.94, 11.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1737
CreateDynamicObject(-2603, 5816.21, -1388.12, 5.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1739
CreateDynamicObject(-2604, 5966.58, -1265.16, 14.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1742
CreateDynamicObject(-2605, 5961.38, -1265.19, 17.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1745
CreateDynamicObject(-2606, 5950.46, -1265.21, 15.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1746
CreateDynamicObject(-2607, 5761.18, -1390.96, 7.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1750
CreateDynamicObject(-2608, 5761.34, -1390.92, 8.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1753
CreateDynamicObject(-2609, 6095.45, -1227.48, 13.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1756
CreateDynamicObject(-2610, 6095.43, -1227.64, 12.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1757
CreateDynamicObject(-2611, 5798.62, -1245.52, 9.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1758
CreateDynamicObject(-2612, 5792.94, -1245.29, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1759
CreateDynamicObject(-2566, 5910.53, -1237.44, 11.76, 0.00, 0.00, -3.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5912.69, -1233.62, 11.24, 0.00, 0.00, 56.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2613, 6019.56, -1541.47, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1761
CreateDynamicObject(-2614, 6019.81, -1540.39, 9.03, 0.00, 0.00, 79.50, -1, 0, -1,800.00, 800.00); // beach1762
CreateDynamicObject(-2399, 6007.69, -1566.14, 13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6008.16, -1559.56, 13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2615, 5917.04, -1625.41, 0.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1763
CreateDynamicObject(-2616, 5825.81, -1552.33, 1.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1765
CreateDynamicObject(-2617, 5732.52, -1168.23, 8.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1766
CreateDynamicObject(-2618, 5751.51, -1197.23, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1767
CreateDynamicObject(-2619, 5751.31, -1155.86, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1768
CreateDynamicObject(-2390, 5906.60, -1427.95, 15.24, 0.00, 0.00, -54.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2620, 5863.75, -1328.80, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1769
CreateDynamicObject(-2621, 5869.50, -1448.29, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1770
CreateDynamicObject(-2622, 5862.20, -1421.30, 9.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1772
CreateDynamicObject(-2623, 5823.66, -1337.21, 10.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1773
CreateDynamicObject(-2566, 5834.56, -1453.63, 11.25, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 5836.05, -1456.61, 11.61, 0.00, 0.00, 3.50, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2624, 5732.59, -1249.25, 7.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1774
CreateDynamicObject(-2625, 5745.72, -1351.32, 7.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1775
CreateDynamicObject(-2626, 5746.06, -1351.04, 8.91, 0.00, 0.00, 13.50, -1, 0, -1,800.00, 800.00); // beach1776
CreateDynamicObject(-2627, 5962.25, -1462.99, 13.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1777
CreateDynamicObject(-2628, 5813.67, -1380.69, 15.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1778
CreateDynamicObject(-2629, 5858.53, -1497.15, 11.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1779
CreateDynamicObject(-2630, 5853.67, -1255.22, 15.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1780
CreateDynamicObject(-2631, 5731.42, -1203.31, 12.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1781
CreateDynamicObject(-2632, 5881.77, -1583.83, 13.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1782
CreateDynamicObject(-2633, 6000.47, -1312.59, 15.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1783
CreateDynamicObject(-2634, 5788.60, -1299.20, 13.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1784
CreateDynamicObject(-2635, 5955.38, -1523.20, 12.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1785
CreateDynamicObject(-2636, 5894.91, -1255.96, 15.33, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1786
CreateDynamicObject(-2637, 5981.44, -1306.51, 11.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1787
CreateDynamicObject(-2638, 5998.01, -1543.25, 11.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1789
CreateDynamicObject(-2639, 5896.56, -1607.01, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1790
CreateDynamicObject(-2458, 5863.73, -1293.78, 12.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1389
CreateDynamicObject(-2460, 5897.65, -1454.44, 21.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1399
CreateDynamicObject(-2459, 5901.92, -1344.49, 13.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1394
CreateDynamicObject(-2459, 5903.40, -1303.83, 13.15, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1394
CreateDynamicObject(-2640, 6016.98, -1258.87, 16.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1795
CreateDynamicObject(-2641, 5899.48, -1546.42, 10.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1796
CreateDynamicObject(-2642, 5664.93, -1484.25, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1797
CreateDynamicObject(-2642, 5666.84, -1391.93, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1797
CreateDynamicObject(-2642, 5686.72, -1196.99, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1797
CreateDynamicObject(-2566, 5886.61, -1327.65, 10.95, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2643, 5760.51, -1391.08, 8.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1800
CreateDynamicObject(-2644, 6088.44, -1189.97, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6102.58, -1189.97, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6116.88, -1189.97, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6116.88, -1205.25, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6087.92, -1154.69, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6102.64, -1154.69, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2644, 6116.88, -1154.69, 19.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1801
CreateDynamicObject(-2645, 6087.92, -1189.97, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6102.64, -1189.97, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1189.97, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1205.25, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6087.92, -1154.69, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6102.65, -1154.69, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1154.69, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6102.65, -1154.69, 25.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1154.69, 25.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6087.92, -1154.69, 25.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1189.97, 25.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2645, 6116.88, -1205.25, 25.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1802
CreateDynamicObject(-2646, 5874.47, -1380.82, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1803
CreateDynamicObject(-2647, 5996.68, -1453.80, 20.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1804
CreateDynamicObject(-2648, 5986.16, -1312.58, 12.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1805
CreateDynamicObject(-2649, 6077.33, -1330.12, 9.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1811
CreateDynamicObject(-2650, 5658.13, -1724.28, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2651, 5698.19, -1669.62, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2652, 5650.57, -1707.19, 7.71, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1816
CreateDynamicObject(-2653, 5658.07, -1741.23, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2654, 5660.91, -1743.47, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2655, 5675.07, -1640.69, 10.88, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1819
CreateDynamicObject(-2656, 5674.25, -1707.32, 1.22, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1824
CreateDynamicObject(-2657, 5656.14, -1671.77, 11.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1825
CreateDynamicObject(-2655, 5605.98, -1702.54, 10.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1819
CreateDynamicObject(-2655, 5647.92, -1772.44, 10.88, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1819
CreateDynamicObject(-2655, 5713.62, -1682.79, 10.88, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1819
CreateDynamicObject(-2658, 5657.83, -1752.34, 7.05, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2654, 5654.70, -1743.47, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2653, 5658.07, -1707.36, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5658.13, -1690.47, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5658.83, -1672.76, 6.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5681.63, -1672.74, 1.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5664.62, -1672.76, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5695.34, -1360.73, 1.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5653.06, -1672.73, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5651.57, -1707.43, 6.72, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5624.31, -1232.48, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2658, 5642.07, -1672.67, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2654, 5649.72, -1669.04, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5649.62, -1677.08, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5648.93, -1703.94, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5648.93, -1710.63, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2653, 5698.62, -1672.76, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2654, 5700.86, -1669.71, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2658, 5646.33, -1740.50, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5669.88, -1740.50, 7.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5627.68, -1762.45, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5615.90, -1761.69, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2654, 5619.69, -1759.35, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5619.83, -1764.36, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2653, 5712.30, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5615.92, -1755.88, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5681.65, -1214.82, 1.76, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5615.92, -1733.85, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2654, 5612.15, -1757.76, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5612.20, -1764.56, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5619.05, -1730.84, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2656, 5615.95, -1777.11, 1.22, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1824
CreateDynamicObject(-2657, 5610.28, -1761.11, 9.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1825
CreateDynamicObject(-2658, 5604.14, -1754.99, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5615.97, -1722.82, 7.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2654, 5612.88, -1730.84, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2658, 5626.07, -1712.43, 7.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5615.97, -1682.22, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5665.10, -1660.97, 7.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5654.92, -1646.94, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5638.69, -1646.94, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5604.13, -1733.94, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5715.41, -1662.63, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2659, 5614.07, -1690.27, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2651, 5659.30, -1669.40, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2658, 5615.97, -1744.86, 7.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2654, 5619.05, -1737.07, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5612.88, -1737.07, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5619.05, -1752.34, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5612.88, -1752.34, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2651, 5612.67, -1760.83, 7.01, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5619.00, -1733.89, 7.01, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5619.19, -1755.95, 7.01, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2654, 5662.01, -1668.82, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5656.25, -1668.83, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2651, 5653.26, -1669.40, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2659, 5650.17, -1670.79, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5650.21, -1674.58, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5713.53, -1670.67, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5717.24, -1670.67, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5667.00, -1652.84, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5655.92, -1760.37, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5659.73, -1760.37, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5654.47, -1738.70, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5661.73, -1738.72, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5654.47, -1742.29, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5661.69, -1742.29, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5617.88, -1710.51, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5617.88, -1714.34, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5617.88, -1736.69, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5614.12, -1736.69, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5612.16, -1732.07, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5612.16, -1735.85, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2653, 5718.10, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5704.38, -1214.73, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5698.59, -1214.73, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2652, 5664.75, -1206.09, 7.71, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1816
CreateDynamicObject(-2654, 5673.04, -1364.46, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2658, 5627.74, -1349.02, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2656, 5664.71, -1230.91, 1.22, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1824
CreateDynamicObject(-2653, 5678.37, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5644.08, -1360.79, 1.76, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5672.57, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5666.79, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5668.67, -1367.31, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5668.67, -1373.11, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5661.03, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2654, 5664.39, -1364.46, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5624.66, -1364.60, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5663.58, -1356.91, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5624.66, -1357.04, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5675.82, -1356.91, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2653, 5627.10, -1360.78, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2658, 5627.74, -1372.57, 7.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5660.45, -1349.02, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5660.45, -1332.73, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5664.68, -1214.73, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5664.68, -1207.46, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5647.71, -1214.82, 1.76, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2654, 5667.99, -1204.10, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5661.21, -1204.10, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2658, 5678.96, -1348.97, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5627.74, -1332.74, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5630.72, -1214.73, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5624.24, -1215.50, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5624.31, -1278.08, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2653, 5624.24, -1261.09, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5624.24, -1295.06, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2650, 5606.56, -1255.43, 1.76, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1814
CreateDynamicObject(-2658, 5636.03, -1255.46, 7.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5624.24, -1249.47, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5624.24, -1255.29, 6.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2658, 5636.00, -1294.42, 7.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5612.45, -1294.42, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5589.58, -1255.29, 6.72, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2658, 5612.45, -1216.18, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2653, 5624.24, -1209.69, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5624.24, -1203.90, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2653, 5616.98, -1203.90, 6.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1817
CreateDynamicObject(-2656, 5616.97, -1188.46, 1.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1824
CreateDynamicObject(-2658, 5605.18, -1203.85, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5596.14, -1216.18, 7.05, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5590.24, -1243.51, 7.05, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2658, 5590.24, -1267.09, 7.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1826
CreateDynamicObject(-2642, 5613.46, -1244.01, 6.72, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // beach1797
CreateDynamicObject(-2654, 5628.00, -1297.51, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5620.54, -1297.51, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5628.05, -1252.34, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5628.05, -1258.55, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5628.11, -1211.07, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5628.11, -1200.66, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5620.89, -1200.78, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5613.13, -1200.73, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5613.13, -1206.96, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5620.89, -1207.10, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5620.89, -1213.06, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5587.10, -1251.76, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5587.10, -1259.20, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2659, 5680.85, -1356.97, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2651, 5624.61, -1360.80, 7.01, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5661.01, -1364.07, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5624.28, -1297.57, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5587.11, -1255.27, 7.01, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5617.02, -1206.49, 7.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5624.51, -1201.29, 7.01, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2651, 5697.39, -1211.50, 7.01, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1815
CreateDynamicObject(-2659, 5677.01, -1356.97, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2654, 5664.39, -1375.81, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2654, 5673.04, -1375.81, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2659, 5658.52, -1357.13, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5662.40, -1357.13, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5629.70, -1357.10, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5625.86, -1357.10, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5629.70, -1364.38, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5625.86, -1364.38, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5592.13, -1258.91, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5588.29, -1258.91, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5592.13, -1251.64, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5588.29, -1251.64, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5620.61, -1214.24, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5620.61, -1218.04, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5613.27, -1201.94, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5613.27, -1205.74, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5627.84, -1253.55, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5627.84, -1257.35, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5627.84, -1292.49, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5627.84, -1296.30, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5620.60, -1292.49, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2659, 5620.60, -1296.30, 7.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1827
CreateDynamicObject(-2660, 5617.74, -1708.31, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5617.74, -1704.29, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5617.74, -1700.27, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5617.74, -1696.25, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5617.74, -1692.23, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5719.34, -1671.04, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5711.36, -1671.04, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5707.37, -1671.04, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5703.38, -1671.04, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5637.74, -1760.70, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5641.68, -1760.70, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5645.71, -1760.70, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5649.67, -1760.70, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5653.68, -1760.70, 8.46, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5663.32, -1642.94, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5663.32, -1638.92, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5663.32, -1634.93, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5663.32, -1650.83, 8.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5669.18, -1628.51, 8.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2660, 5665.17, -1628.51, 8.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1828
CreateDynamicObject(-2661, 5875.41, -1592.29, 10.63, 0.00, 0.00, -120.00, -1, 0, -1,800.00, 800.00); // beach1829
CreateDynamicObject(-2662, 5900.75, -1477.64, 12.54, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach1830
CreateDynamicObject(-2663, 5981.05, -1526.57, 36.60, 0.00, 0.00, -4.14, -1, 0, -1,800.00, 800.00); // beach1834
CreateDynamicObject(-2664, 6038.79, -1531.96, 57.00, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // beach1835
CreateDynamicObject(-2665, 5844.03, -1451.51, 56.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1836
CreateDynamicObject(-2666, 5848.06, -1228.70, 52.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1837
CreateDynamicObject(-2667, 6090.91, -1285.78, 24.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1840
CreateDynamicObject(-2668, 5824.18, -1311.07, 23.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1841
CreateDynamicObject(-2669, 5743.87, -1297.30, 23.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1842
CreateDynamicObject(-2670, 5888.44, -1226.87, 23.14, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1851
CreateDynamicObject(-2671, 5891.37, -1221.39, 23.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2672, 5888.50, -1226.74, 23.56, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-2673, 5888.35, -1226.95, 23.56, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2674, 5891.37, -1222.32, 23.52, 0.00, 0.00, -65.00, -1, 0, -1,800.00, 800.00); // beach1859
CreateDynamicObject(-2675, 5882.10, -1221.09, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2676, 5890.48, -1221.45, 23.93, 0.00, 0.00, 20.00, -1, 0, -1,800.00, 800.00); // beach1864
CreateDynamicObject(-2677, 5891.30, -1221.27, 23.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1867
CreateDynamicObject(-2678, 5889.14, -1232.05, 23.43, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1869
CreateDynamicObject(-2679, 5882.00, -1223.95, 23.25, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1870
CreateDynamicObject(-2680, 5885.55, -1224.70, 26.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1872
CreateDynamicObject(-2681, 5884.02, -1223.97, 24.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1875
CreateDynamicObject(-2682, 5885.67, -1231.95, 23.56, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5892.60, -1232.25, 23.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5886.96, -1233.55, 23.56, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5889.11, -1230.48, 23.56, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5891.51, -1230.48, 23.56, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5889.06, -1233.55, 23.56, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5891.17, -1233.55, 23.56, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2682, 5886.84, -1230.48, 23.56, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1879
CreateDynamicObject(-2680, 5892.70, -1224.70, 26.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1872
CreateDynamicObject(-2680, 5899.84, -1224.70, 26.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1872
CreateDynamicObject(-2680, 5885.55, -1232.02, 26.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1872
CreateDynamicObject(-2680, 5892.70, -1232.02, 26.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1872
CreateDynamicObject(-2675, 5882.11, -1228.52, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2675, 5893.71, -1220.96, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2675, 5895.72, -1230.25, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2675, 5904.76, -1220.99, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2683, 6024.24, -1531.97, 53.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1881
CreateDynamicObject(-2679, 5883.26, -1235.46, 23.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1870
CreateDynamicObject(-2675, 5895.43, -1234.53, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2675, 5904.80, -1228.93, 23.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1862
CreateDynamicObject(-2684, 6036.28, -1197.19, 15.32, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach1888
CreateDynamicObject(-2685, 6008.24, -1196.38, 15.32, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach1890
CreateDynamicObject(-2686, 6033.38, -1219.97, 15.32, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach1891
CreateDynamicObject(-2687, 5966.15, -1226.38, 13.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1892
CreateDynamicObject(-2688, 5965.43, -1213.07, 14.72, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1894
CreateDynamicObject(-2689, 5950.66, -1213.07, 14.71, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1895
CreateDynamicObject(-2690, 5967.21, -1216.37, 21.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1897
CreateDynamicObject(-2691, 5950.62, -1226.17, 15.51, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1919
CreateDynamicObject(-2692, 5965.61, -1226.28, 13.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1921
CreateDynamicObject(-2693, 6022.46, -1637.49, 0.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1922
CreateDynamicObject(-2694, 5893.42, -1228.22, 24.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1923
CreateDynamicObject(-2695, 5656.11, -1671.83, 11.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1929
CreateDynamicObject(-2696, 5674.20, -1707.24, 1.34, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1930
CreateDynamicObject(-2695, 5610.22, -1761.12, 9.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1929
CreateDynamicObject(-2696, 5615.74, -1777.09, 0.62, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1930
CreateDynamicObject(-2696, 5664.85, -1230.81, 1.40, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach1930
CreateDynamicObject(-2696, 5617.03, -1188.48, 1.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1930
CreateDynamicObject(-2654, 5700.86, -1676.34, 1.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1818
CreateDynamicObject(-2697, 5965.24, -1232.84, 23.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1931
CreateDynamicObject(-2566, 5864.16, -1616.37, 10.85, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2408, 5865.76, -1618.26, 11.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2408, 5855.92, -1611.02, 11.26, 0.00, 0.00, -120.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2566, 5877.83, -1605.39, 10.85, 0.00, 0.00, -104.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2408, 5859.32, -1615.75, 11.26, 0.00, 0.00, -60.00, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2698, 5962.10, -1217.97, 10.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1933
CreateDynamicObject(-2699, 6080.27, -1323.08, 6.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1936
CreateDynamicObject(-2331, 6053.24, -1603.87, 13.96, 0.00, 0.00, -94.50, -1, 0, -1,800.00, 800.00); // beach424
CreateDynamicObject(-2488, 5807.05, -1467.43, 18.78, 0.00, 0.00, -69.86, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-2700, 5806.70, -1466.69, 29.10, 0.00, 0.00, -60.00, -1, 0, -1,800.00, 800.00); // beach1937
CreateDynamicObject(-2701, 6051.55, -1603.70, 25.16, 0.00, 0.00, -60.00, -1, 0, -1,800.00, 800.00); // beach1939
CreateDynamicObject(-2702, 5866.96, -1227.45, 59.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1941
CreateDynamicObject(-2703, 5840.38, -1453.20, 60.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1942
CreateDynamicObject(-2704, 5972.25, -1691.04, 1.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1943
CreateDynamicObject(-2705, 6264.69, -1173.85, 14.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1945
CreateDynamicObject(-2706, 6157.17, -1425.58, 19.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1946
CreateDynamicObject(-2707, 6207.29, -981.91, 18.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1950
CreateDynamicObject(-2708, 6183.57, -1086.46, 13.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1956
CreateDynamicObject(-2709, 6168.82, -1168.13, 18.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1961
CreateDynamicObject(-2710, 6146.07, -1356.22, 15.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1964
CreateDynamicObject(-2711, 6717.99, -1586.26, 3.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1970
CreateDynamicObject(-2712, 6184.43, -1405.68, 9.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1971
CreateDynamicObject(-2713, 6191.46, -1262.68, 9.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1973
CreateDynamicObject(-2714, 6243.08, -1132.75, 8.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1974
CreateDynamicObject(-2715, 6250.82, -981.03, 9.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1975
CreateDynamicObject(-2390, 6248.40, -1247.51, 14.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2716, 6214.09, -1173.57, 12.70, 0.00, 0.00, 26.50, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 6215.01, -1168.23, 12.70, 0.00, 0.00, 92.50, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2399, 6234.48, -1123.20, 14.52, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2408, 6217.94, -1207.52, 12.29, 0.00, 0.00, -11.50, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2399, 6222.75, -1180.43, 14.52, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2717, 6242.92, -1007.09, 10.73, 0.00, 0.00, -3.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2717, 6241.97, -1024.09, 10.73, 0.00, 0.00, -3.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2411, 6243.00, -1011.15, 12.09, 0.00, 0.00, 41.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6242.45, -1020.14, 12.09, 0.00, 0.00, 41.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2399, 6227.64, -1156.30, 14.51, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2408, 6211.71, -1248.56, 12.29, 0.00, 0.00, -11.50, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2399, 6214.85, -1227.74, 14.56, 0.00, 0.00, -7.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6207.57, -1271.26, 14.48, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2408, 6202.27, -1294.92, 12.24, 0.00, 0.00, -11.50, -1, 0, -1,800.00, 800.00); // beach1319
CreateDynamicObject(-2716, 6200.00, -1244.27, 12.58, 0.00, 0.00, 92.50, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2411, 6208.90, -1238.91, 12.84, 0.00, 0.00, 33.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2717, 6211.37, -1231.71, 10.70, 0.00, 0.00, -8.50, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2411, 6204.77, -1272.12, 12.00, 0.00, 0.00, 33.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2716, 6200.81, -1288.23, 11.78, 0.00, 0.00, 92.50, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2717, 6201.91, -1259.14, 11.73, 0.00, 0.00, -13.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2717, 6199.77, -1268.53, 11.73, 0.00, 0.00, -13.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2717, 6195.40, -1288.24, 11.73, 0.00, 0.00, -13.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2717, 6193.33, -1297.52, 11.73, 0.00, 0.00, -13.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2390, 6248.40, -1257.90, 14.99, 0.00, 0.00, -155.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6242.61, -1267.95, 14.99, 0.00, 0.00, 88.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6256.91, -1267.95, 14.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6288.59, -1077.57, 14.99, 0.00, 0.00, -155.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6297.10, -1087.62, 14.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6304.70, -991.00, 14.99, 0.00, 0.00, -13.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6301.19, -969.13, 14.99, 0.00, 0.00, -13.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6298.77, -979.23, 14.99, 0.00, 0.00, -169.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2399, 6240.90, -1087.23, 14.52, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6247.59, -1019.27, 14.47, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6249.95, -992.56, 14.51, 0.00, 0.00, -8.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6259.81, -955.14, 14.15, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6269.60, -929.65, 14.51, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2718, 6526.70, -1738.82, 6.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1978
CreateDynamicObject(-2719, 6262.71, -1702.16, 7.50, 0.00, 0.00, 0.01, -1, 0, -1,800.00, 800.00); // beach1980
CreateDynamicObject(-2390, 6194.48, -1614.99, 14.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6223.50, -1680.55, 14.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6174.05, -1667.85, 14.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2720, 6333.60, -1684.56, 13.47, 0.00, 0.00, -88.00, -1, 0, -1,800.00, 800.00); // beach1981
CreateDynamicObject(-2390, 6363.26, -1737.12, 11.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2721, 6247.74, -1533.02, 13.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1982
CreateDynamicObject(-2722, 6609.90, -1717.66, 60.09, -90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1983
CreateDynamicObject(-2723, 6088.67, -1555.03, 18.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1985
CreateDynamicObject(-2724, 6155.08, -1746.46, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6068.06, -1679.00, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 5943.95, -1749.16, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6548.46, -1640.61, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6622.63, -1483.85, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6683.88, -1523.28, -14.29, 0.00, 0.00, -21.00, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2725, 6344.94, -959.51, 10.70, 0.00, 0.00, -179.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6326.46, -1052.54, 10.70, 0.00, 0.00, 162.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6320.06, -1086.15, 10.70, 0.00, 0.00, 179.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2726, 6114.71, -1491.71, 11.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1989
CreateDynamicObject(-2727, 6087.43, -1515.12, 16.89, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // beach1991
CreateDynamicObject(-2728, 6122.54, -1414.78, 12.77, 0.00, 0.00, -23.10, -1, 0, -1,800.00, 800.00); // beach1998
CreateDynamicObject(-2729, 6103.83, -1464.57, 13.63, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach2002
CreateDynamicObject(-2730, 6081.86, -1539.50, 13.53, 0.00, 0.00, -106.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2731, 6074.67, -1538.01, 10.54, 0.00, 0.00, -106.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2732, 6092.79, -1529.14, 12.58, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2733, 6110.17, -1536.08, 18.32, 0.00, 0.00, -29.00, -1, 0, -1,800.00, 800.00); // beach2008
CreateDynamicObject(-2730, 6104.15, -1493.16, 14.23, 0.00, 0.00, 156.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2734, 6140.36, -1433.73, 11.85, 0.00, 0.00, -22.50, -1, 0, -1,800.00, 800.00); // beach2017
CreateDynamicObject(-2734, 6139.74, -1435.23, 11.85, 0.00, 0.00, -22.50, -1, 0, -1,800.00, 800.00); // beach2017
CreateDynamicObject(-2734, 6146.26, -1434.25, 12.74, 0.00, 0.00, -112.50, -1, 0, -1,800.00, 800.00); // beach2017
CreateDynamicObject(-2732, 6169.30, -1352.76, 12.47, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2732, 6168.80, -1355.34, 12.47, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2734, 6147.72, -1407.60, 14.76, 0.00, 0.00, -13.50, -1, 0, -1,800.00, 800.00); // beach2017
CreateDynamicObject(-2732, 6167.71, -1374.24, 15.43, 0.00, 0.00, -102.50, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2732, 6202.78, -1148.56, 15.19, 0.00, 0.00, -99.74, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2735, 6212.83, -1150.76, 11.41, 0.00, 0.00, -99.00, -1, 0, -1,800.00, 800.00); // beach2019
CreateDynamicObject(-2732, 6191.62, -1192.50, 14.72, 0.00, 0.00, -10.50, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2732, 6194.62, -1190.32, 14.72, 0.00, 0.00, -100.50, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2736, 6167.49, -1274.28, 11.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2020
CreateDynamicObject(-2730, 6170.56, -1262.59, 15.77, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6171.16, -1259.89, 15.77, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6181.51, -1247.82, 15.77, 0.00, 0.00, -101.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6164.22, -1258.78, 12.94, 0.00, 0.00, 170.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2737, 6181.57, -1329.48, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2021
CreateDynamicObject(-2738, 6179.70, -1328.11, 12.28, 0.00, 0.00, -26.50, -1, 0, -1,800.00, 800.00); // beach2024
CreateDynamicObject(-2739, 6201.65, -1094.08, 12.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2025
CreateDynamicObject(-2740, 6194.33, -1233.35, 13.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2026
CreateDynamicObject(-2741, 6120.74, -1541.84, 9.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2031
CreateDynamicObject(-2730, 6216.94, -1051.41, 13.91, 0.00, 0.00, -6.06, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2732, 6227.32, -1064.33, 14.22, 0.00, 0.00, -99.00, -1, 0, -1,800.00, 800.00); // beach2006
CreateDynamicObject(-2731, 6224.44, -1069.21, 11.29, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2734, 6214.56, -1083.83, 17.45, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // beach2017
CreateDynamicObject(-2742, 6225.45, -1024.80, 15.19, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2730, 6218.09, -1040.67, 13.91, 0.00, 0.00, -5.84, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6224.92, -974.54, 15.83, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6211.33, -1131.84, 13.23, 0.00, 0.00, -9.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2742, 6236.46, -944.91, 15.19, 0.00, 0.00, -20.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2730, 6182.43, -1160.37, 13.23, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2742, 6206.21, -1051.36, 15.19, 0.00, 0.00, 168.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6229.88, -930.05, 15.19, 0.00, 0.00, 163.00, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2724, 6489.21, -1886.32, -14.29, 0.00, 0.00, -52.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6260.52, -1880.69, -14.29, 0.00, 0.00, -44.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6333.48, -1961.35, -14.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6352.17, -1900.74, -14.29, 0.00, 0.00, 88.00, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2724, 6418.55, -1934.45, -14.29, 0.00, 0.00, -112.50, -1, 0, -1,800.00, 800.00); // beach1988
CreateDynamicObject(-2743, 6526.54, -945.57, 11.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6487.80, -1098.47, 11.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6454.73, -1237.64, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6408.56, -1399.46, 11.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2744, 6478.20, -1256.76, 11.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2037
CreateDynamicObject(-2745, 6428.22, -1148.60, 8.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2039
CreateDynamicObject(-2746, 6458.76, -1015.57, 4.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2041
CreateDynamicObject(-2747, 6571.22, -986.29, 7.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2042
CreateDynamicObject(-2748, 6440.75, -1406.57, 10.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2043
CreateDynamicObject(-2749, 6386.71, -1637.12, 4.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2044
CreateDynamicObject(-2750, 6563.38, -1126.37, 7.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2047
CreateDynamicObject(-2751, 6159.69, -1637.38, 0.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2048
CreateDynamicObject(-2752, 6574.96, -1414.30, 3.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2050
CreateDynamicObject(-2753, 6618.54, -1256.75, 6.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2051
CreateDynamicObject(-2754, 6404.70, -1274.86, 8.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2052
CreateDynamicObject(-2410, 6209.70, -1225.61, 14.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6210.02, -1225.78, 13.88, 0.00, 0.00, 39.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6209.56, -1229.60, 13.88, 0.00, 0.00, 39.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6209.24, -1229.43, 14.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6208.88, -1234.04, 13.88, 0.00, 0.00, 39.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6208.56, -1233.86, 14.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6206.42, -1238.99, 11.32, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6206.31, -1238.66, 12.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6202.07, -1242.73, 11.32, 0.00, 0.00, 89.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6201.70, -1242.90, 12.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6206.86, -1243.88, 11.32, 0.00, 0.00, 157.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6206.83, -1244.33, 12.25, 0.00, 0.00, 12.50, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2755, 6105.20, -1545.09, 11.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2053
CreateDynamicObject(-2756, 6104.63, -1544.87, 13.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2054
CreateDynamicObject(-2757, 6215.69, -1016.14, 9.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2055
CreateDynamicObject(-2758, 6623.43, -1414.79, -1.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2056
CreateDynamicObject(-2759, 6721.53, -986.85, 3.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2057
CreateDynamicObject(-2760, 6692.00, -1127.37, 2.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2058
CreateDynamicObject(-2761, 6667.23, -1257.76, 1.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2059
CreateDynamicObject(-2762, 6545.83, -1593.65, -4.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2060
CreateDynamicObject(-2763, 6134.82, -1475.56, 14.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2061
CreateDynamicObject(-2764, 6148.39, -1386.67, 13.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2062
CreateDynamicObject(-2409, 6069.14, -1566.55, 9.93, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6069.03, -1566.22, 10.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2410, 6068.90, -1570.80, 10.86, 0.00, 0.00, 54.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6069.23, -1570.91, 9.93, 0.00, 0.00, 54.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6073.26, -1571.38, 10.86, 0.00, 0.00, 138.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6073.40, -1571.06, 9.93, 0.00, 0.00, 138.50, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2765, 6230.56, -1046.52, 17.74, 0.00, 0.00, 17.53, -1, 0, -1,800.00, 800.00); // beach2063
CreateDynamicObject(-2766, 6229.92, -1045.73, 18.00, 0.00, 0.00, 17.53, -1, 0, -1,800.00, 800.00); // beach2066
CreateDynamicObject(-2767, 6223.45, -1096.60, 22.55, 0.00, 0.00, -9.56, -1, 0, -1,800.00, 800.00); // beach2072
CreateDynamicObject(-2768, 6207.81, -1169.52, 31.36, 0.00, 0.00, -11.65, -1, 0, -1,800.00, 800.00); // beach2078
CreateDynamicObject(-2769, 6192.23, -1166.75, 13.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2082
CreateDynamicObject(-2770, 6178.21, -1333.27, 22.55, 0.00, 0.00, -0.09, -1, 0, -1,800.00, 800.00); // beach2083
CreateDynamicObject(-2768, 6164.77, -1393.85, 31.43, 0.00, 0.00, -13.83, -1, 0, -1,800.00, 800.00); // beach2078
CreateDynamicObject(-2765, 6146.96, -1450.85, 17.47, 0.00, 0.00, 0.99, -1, 0, -1,800.00, 800.00); // beach2063
CreateDynamicObject(-2771, 6146.58, -1449.88, 17.73, 0.00, 0.00, 0.99, -1, 0, -1,800.00, 800.00); // beach2088
CreateDynamicObject(-2772, 6235.52, -985.66, 24.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2091
CreateDynamicObject(-2773, 6185.86, -1218.40, 13.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2099
CreateDynamicObject(-2774, 6114.21, -1538.28, 17.94, 0.00, 0.00, -29.00, -1, 0, -1,800.00, 800.00); // beach2104
CreateDynamicObject(-2775, 6127.12, -1496.69, 22.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2776, 6127.33, -1495.06, 21.15, 0.00, 0.00, 33.01, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6130.42, -1495.74, 21.15, 0.00, 0.00, 103.95, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6136.52, -1489.52, 21.15, 0.00, 0.00, 171.48, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6136.16, -1490.76, 21.15, 0.00, 0.00, 161.93, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2777, 6164.76, -1148.07, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2118
CreateDynamicObject(-2778, 6097.75, -1469.55, 11.97, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach2120
CreateDynamicObject(-2779, 6098.16, -1462.07, 12.84, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach2121
CreateDynamicObject(-2780, 6192.13, -1007.53, 12.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2122
CreateDynamicObject(-2781, 6251.00, -940.82, 24.34, 0.00, 0.00, -20.45, -1, 0, -1,800.00, 800.00); // beach2124
CreateDynamicObject(-2782, 6184.77, -1274.68, 26.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2129
CreateDynamicObject(-2783, 6157.77, -1268.51, 13.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2139
CreateDynamicObject(-2784, 6223.83, -1096.57, 22.31, 0.00, 0.00, -9.63, -1, 0, -1,800.00, 800.00); // beach2148
CreateDynamicObject(-2784, 6178.56, -1333.14, 22.31, 0.00, 0.00, -12.55, -1, 0, -1,800.00, 800.00); // beach2148
CreateDynamicObject(-2785, 6202.73, -1205.58, 20.28, 0.00, 0.00, -10.32, -1, 0, -1,800.00, 800.00); // beach2151
CreateDynamicObject(-2786, 6216.13, -1123.48, 20.70, 0.00, 0.00, -11.22, -1, 0, -1,800.00, 800.00); // beach2155
CreateDynamicObject(-2786, 6170.38, -1360.46, 20.49, 0.00, 0.00, -11.13, -1, 0, -1,800.00, 800.00); // beach2155
CreateDynamicObject(-2787, 6452.22, -1702.39, 1.20, 0.00, 0.00, -157.75, -1, 0, -1,800.00, 800.00); // beach2157
CreateDynamicObject(-2788, 6266.39, -1722.33, 2.90, 0.00, 0.00, 33.20, -1, 0, -1,800.00, 800.00); // beach2158
CreateDynamicObject(-2789, 6125.99, -1410.19, 18.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2159
CreateDynamicObject(-2790, 6094.86, -1525.97, 15.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2160
CreateDynamicObject(-2791, 6235.21, -1015.12, 24.12, 0.00, 0.00, -3.10, -1, 0, -1,800.00, 800.00); // beach2162
CreateDynamicObject(-2792, 6133.66, -1493.82, 15.78, 0.00, 0.00, 61.67, -1, 0, -1,800.00, 800.00); // beach2165
CreateDynamicObject(-2792, 6231.52, -1072.70, 15.89, 0.00, 0.00, 81.30, -1, 0, -1,800.00, 800.00); // beach2165
CreateDynamicObject(-2793, 6233.54, -1073.04, 17.61, 0.00, 0.00, 81.84, -1, 0, -1,800.00, 800.00); // beach2166
CreateDynamicObject(-2794, 6135.28, -1494.62, 17.51, 0.00, 0.00, 62.05, -1, 0, -1,800.00, 800.00); // beach2167
CreateDynamicObject(-2795, 6087.13, -1485.35, 11.35, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach2168
CreateDynamicObject(-2796, 6441.37, -1719.15, 34.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2170
CreateDynamicObject(-2797, 6441.64, -1718.47, 41.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2175
CreateDynamicObject(-2399, 6245.76, -1050.34, 14.71, 0.00, 0.00, -6.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2798, 6367.70, -1427.67, 8.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2183
CreateDynamicObject(-2799, 6117.51, -1512.13, 13.25, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach2184
CreateDynamicObject(-2800, 6281.68, -878.29, 23.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2190
CreateDynamicObject(-2801, 6292.15, -859.42, 14.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2196
CreateDynamicObject(-2802, 6309.25, -820.64, 15.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2200
CreateDynamicObject(-2803, 6316.65, -803.82, 16.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2205
CreateDynamicObject(-2804, 6336.70, -637.98, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2209
CreateDynamicObject(-2805, 6240.03, -844.23, 14.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2210
CreateDynamicObject(-2806, 6413.02, -282.96, -1.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2211
CreateDynamicObject(-2807, 6510.28, -366.15, 9.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2212
CreateDynamicObject(-2808, 6353.39, -647.18, 17.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2214
CreateDynamicObject(-2809, 6280.45, -799.92, 16.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2219
CreateDynamicObject(-2399, 6281.88, -902.06, 14.71, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6294.76, -874.34, 14.71, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6306.14, -850.19, 14.71, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6320.79, -817.97, 14.71, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6334.79, -783.89, 14.71, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6348.42, -754.05, 14.71, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6367.50, -713.01, 14.71, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6372.83, -702.18, 14.71, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6389.98, -667.01, 14.71, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2390, 6348.94, -847.81, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6343.29, -856.53, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6344.95, -869.60, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6386.93, -757.67, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6381.27, -766.38, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6382.93, -779.45, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6454.79, -630.42, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6449.13, -639.14, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6450.79, -652.21, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2399, 6414.83, -613.60, 14.71, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2390, 6514.20, -509.99, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6508.54, -518.70, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6510.20, -531.77, 14.99, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6596.13, -312.28, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6582.50, -313.43, 14.99, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6639.28, -288.59, 16.19, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6636.06, -257.18, 15.80, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6619.70, -208.83, 15.80, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6559.39, -156.86, 11.20, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6638.57, -273.58, 13.56, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6568.10, -216.91, 14.09, 0.00, 0.00, -28.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6593.41, -213.69, 14.09, 0.00, 0.00, -99.99, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6651.56, -288.37, 13.46, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6572.67, -298.86, 13.46, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6587.05, -160.45, 11.75, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6611.43, -291.75, 17.06, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6598.78, -340.46, 12.65, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6559.87, -373.60, 13.80, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6568.17, -354.05, 13.80, 0.00, 0.00, 120.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6638.91, -299.82, 13.80, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6509.47, -152.16, 14.09, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6471.15, -256.54, 14.31, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2717, 6444.05, -89.27, 11.43, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2399, 6420.57, -87.94, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6420.57, -80.71, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6420.57, -73.49, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6427.34, -87.94, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6434.10, -87.94, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6466.67, -73.34, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6451.78, -87.94, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2810, 6498.67, -124.93, 31.02, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach2223
CreateDynamicObject(-2811, 6498.67, -132.50, 35.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2225
CreateDynamicObject(-2812, 6442.60, -15.64, 11.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2226
CreateDynamicObject(-2813, 6467.00, -45.86, 10.10, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2228
CreateDynamicObject(-2814, 6536.82, -98.18, 22.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2229
CreateDynamicObject(-2815, 6541.88, -96.72, 31.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2236
CreateDynamicObject(-2816, 6545.10, -98.18, 17.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2237
CreateDynamicObject(-2817, 6306.26, -842.76, 20.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2244
CreateDynamicObject(-2818, 6299.69, -839.96, 18.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2247
CreateDynamicObject(-2819, 6321.72, -805.91, 17.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2250
CreateDynamicObject(-2725, 6536.32, -450.22, 10.69, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6530.92, -479.73, 10.69, 0.00, 0.00, 177.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6536.71, -533.50, 10.70, 0.00, 0.00, -179.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6535.23, -566.60, 10.70, 0.00, 0.00, 172.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6487.05, -643.19, 10.70, 0.00, 0.00, 148.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6469.69, -670.48, 10.70, 0.00, 0.00, 150.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6440.72, -728.57, 10.70, 0.00, 0.00, 159.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6426.71, -767.13, 10.70, 0.00, 0.00, 164.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6419.99, -810.72, 10.70, 0.00, 0.00, 164.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6400.65, -852.14, 10.70, 0.00, 0.00, 151.50, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2725, 6370.95, -886.84, 10.70, 0.00, 0.00, 147.00, -1, 0, -1,800.00, 800.00); // beach421
CreateDynamicObject(-2820, 6498.63, -127.98, 23.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2254
CreateDynamicObject(-2821, 6504.92, -253.17, 12.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2269
CreateDynamicObject(-2822, 6340.85, -764.41, 25.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2279
CreateDynamicObject(-2823, 6385.30, -669.37, 22.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2280
CreateDynamicObject(-2824, 6444.05, -453.68, 20.72, -0.49, -1.16, 23.00, -1, 0, -1,800.00, 800.00); // beach2283
CreateDynamicObject(-2825, 6444.85, -435.46, 14.33, -0.44, -1.23, 19.50, -1, 0, -1,800.00, 800.00); // beach2287
CreateDynamicObject(-2826, 6451.30, -436.05, 14.72, 90.00, -94.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2288
CreateDynamicObject(-2827, 6304.52, -788.06, 9.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2289
CreateDynamicObject(-2828, 6403.89, -575.41, 9.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2290
CreateDynamicObject(-2829, 6408.19, -614.52, 10.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2291
CreateDynamicObject(-2830, 6311.50, -813.56, 10.95, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // beach2292
CreateDynamicObject(-2831, 6311.35, -812.97, 11.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2293
CreateDynamicObject(-2832, 6401.20, -612.13, 13.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2294
CreateDynamicObject(-2730, 6437.94, -413.88, 13.57, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2742, 6429.46, -416.19, 12.71, 0.00, 0.00, 173.00, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6431.19, -481.41, 12.71, 0.00, 0.00, -1.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6432.94, -504.63, 15.11, 0.00, 0.00, -11.40, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6397.10, -567.96, 11.81, 0.00, 0.00, 155.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6382.61, -604.87, 12.17, 0.00, 0.00, 153.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6370.80, -645.46, 12.17, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6354.68, -660.42, 12.17, 0.00, 0.00, 158.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6323.94, -746.10, 12.17, 0.00, 0.00, 158.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6306.50, -790.58, 12.17, 0.00, 0.00, -111.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6270.15, -895.09, 12.17, 0.00, 0.00, -112.01, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2742, 6314.37, -730.28, 12.57, 0.00, 0.00, -112.50, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2730, 6435.42, -452.89, 12.52, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6444.12, -399.21, 12.52, 0.00, 0.00, -92.31, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6423.43, -386.26, 11.11, 0.00, 0.00, -96.50, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2730, 6423.38, -485.87, 14.84, 0.00, 0.00, 170.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2833, 6320.22, -443.66, -0.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2295
CreateDynamicObject(-2834, 6425.34, -67.37, -1.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2298
CreateDynamicObject(-2835, 6413.41, -500.43, 15.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2300
CreateDynamicObject(-2836, 6433.77, -515.25, 13.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2301
CreateDynamicObject(-2743, 6720.69, -224.30, 14.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6717.66, -368.50, 14.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6675.69, -496.67, 11.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6646.41, -650.78, 12.77, -1.53, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2743, 6607.32, -807.23, 11.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-2837, 6345.10, -478.72, 10.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2303
CreateDynamicObject(-2838, 6443.97, -67.00, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2304
CreateDynamicObject(-2839, 6454.77, -73.58, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2310
CreateDynamicObject(-2840, 6443.90, -68.45, 14.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2315
CreateDynamicObject(-2841, 6351.95, -349.04, 0.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2316
CreateDynamicObject(-2842, 6574.01, -254.05, 12.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2317
CreateDynamicObject(-2843, 6592.28, -227.96, 18.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2322
CreateDynamicObject(-2844, 6590.88, -226.28, 17.81, 90.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2330
CreateDynamicObject(-2845, 6590.74, -259.31, 10.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2332
CreateDynamicObject(-2846, 6549.54, -256.79, 17.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2340
CreateDynamicObject(-2847, 6530.97, -4.75, 92.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2342
CreateDynamicObject(-2848, 6655.07, -63.82, 8.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2346
CreateDynamicObject(-2849, 6520.88, -821.58, 4.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2349
CreateDynamicObject(-2850, 6588.64, -608.63, 7.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2350
CreateDynamicObject(-2851, 6632.44, -800.62, 6.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2351
CreateDynamicObject(-2852, 6795.14, -223.33, 5.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2352
CreateDynamicObject(-2853, 6715.99, -630.68, 6.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2353
CreateDynamicObject(-2854, 6774.85, -39.58, 9.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2354
CreateDynamicObject(-2855, 6912.75, -39.79, 4.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2355
CreateDynamicObject(-2856, 6919.39, -307.73, 0.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2356
CreateDynamicObject(-2857, 6860.16, -584.15, -0.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2357
CreateDynamicObject(-2858, 6780.89, -801.33, 1.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2358
CreateDynamicObject(-2859, 6465.15, -68.11, 9.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2359
CreateDynamicObject(-2860, 6432.97, -286.53, 10.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2361
CreateDynamicObject(-2861, 6462.99, -412.23, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2362
CreateDynamicObject(-2862, 6428.67, -577.72, 9.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2363
CreateDynamicObject(-2863, 6342.36, -797.32, 9.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2364
CreateDynamicObject(-2864, 6253.37, -494.68, 10.80, 0.00, 0.00, 56.00, -1, 0, -1,800.00, 800.00); // beach2365
CreateDynamicObject(-2865, 6339.93, -704.86, 14.13, 0.00, 0.00, -13.00, -1, 0, -1,800.00, 800.00); // beach2366
CreateDynamicObject(-2866, 6420.88, -437.83, 13.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2368
CreateDynamicObject(-2867, 6395.94, -537.78, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2372
CreateDynamicObject(-2868, 6421.82, -499.73, 13.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2375
CreateDynamicObject(-2864, 6432.01, -110.29, 11.24, 1.18, 0.06, -2.92, -1, 0, -1,800.00, 800.00); // beach2365
CreateDynamicObject(-2864, 6402.62, -332.28, 10.71, 0.00, 0.00, 170.00, -1, 0, -1,800.00, 800.00); // beach2365
CreateDynamicObject(-2869, 6373.72, -656.16, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2378
CreateDynamicObject(-2870, 6342.25, -473.44, 8.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2379
CreateDynamicObject(-2871, 6430.85, -457.37, 9.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2380
CreateDynamicObject(-2872, 6508.54, -272.92, 104.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2381
CreateDynamicObject(-2873, 6446.60, -389.18, 12.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2382
CreateDynamicObject(-2874, 6508.50, -272.89, 99.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2383
CreateDynamicObject(-2875, 6268.00, -909.56, 20.33, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // beach2388
CreateDynamicObject(-2876, 6534.81, -5.94, 18.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2391
CreateDynamicObject(-2877, 6453.77, -28.10, 11.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2397
CreateDynamicObject(-2878, 6456.25, -73.45, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2398
CreateDynamicObject(-2879, 6444.12, -75.81, 13.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2399
CreateDynamicObject(-2765, 6379.09, -658.97, 17.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2063
CreateDynamicObject(-2880, 6378.71, -657.98, 18.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2401
CreateDynamicObject(-2768, 6408.93, -588.73, 31.05, 0.00, 0.00, -26.80, -1, 0, -1,800.00, 800.00); // beach2078
CreateDynamicObject(-2881, 6540.13, -260.24, 13.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2882, 6567.87, -286.61, 14.26, 0.00, 0.00, 88.00, -1, 0, -1,800.00, 800.00); // beach2406
CreateDynamicObject(-2883, 6558.57, -281.83, 13.81, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-2670, 6577.22, -284.36, 13.05, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1851
CreateDynamicObject(-2671, 6577.55, -259.81, 12.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2672, 6591.26, -278.53, 13.81, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-2673, 6591.07, -277.90, 13.81, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2884, 6577.76, -286.88, 13.09, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // beach2410
CreateDynamicObject(-2885, 6603.30, -290.56, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2881, 6551.59, -261.95, 13.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2881, 6551.59, -250.39, 13.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2881, 6540.13, -253.40, 13.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2881, 6558.80, -236.39, 13.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2881, 6558.80, -277.83, 13.46, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2404
CreateDynamicObject(-2883, 6558.57, -282.90, 13.81, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-2885, 6600.11, -294.35, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6595.69, -297.06, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6604.97, -286.03, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6590.78, -297.87, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6585.97, -296.85, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6581.60, -294.46, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6578.42, -290.79, 12.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2672, 6578.12, -259.84, 12.95, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-2673, 6577.25, -284.27, 13.49, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2672, 6578.21, -287.37, 12.95, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-2886, 6615.66, -267.54, 13.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2414
CreateDynamicObject(-2775, 6573.09, -237.49, 14.17, 0.00, 0.00, 35.91, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2887, 6572.13, -254.38, 13.27, 0.00, 0.00, -67.08, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2775, 6555.92, -251.46, 14.17, 0.00, 0.00, -37.41, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6556.29, -262.72, 14.17, 0.00, 0.00, -103.17, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6574.82, -268.93, 14.17, 0.00, 0.00, 18.81, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6573.82, -275.16, 14.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6590.95, -262.34, 14.16, 0.00, 0.00, -35.99, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6592.16, -271.47, 14.16, 0.00, 0.00, -20.09, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6589.41, -274.34, 14.16, 0.00, 0.00, 106.77, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2775, 6592.54, -277.84, 14.16, 0.00, 0.00, 45.72, -1, 0, -1,800.00, 800.00); // beach2113
CreateDynamicObject(-2887, 6574.27, -238.54, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6574.72, -244.24, 13.27, 0.00, 0.00, -23.89, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6573.11, -241.08, 13.27, 0.00, 0.00, 34.12, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6554.81, -249.33, 13.27, 0.00, 0.00, 142.20, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6557.98, -251.65, 13.27, 0.00, 0.00, 34.36, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6589.88, -263.41, 13.27, 0.00, 0.00, 95.29, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6593.24, -272.73, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6589.84, -275.34, 13.27, 0.00, 0.00, -95.31, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6591.24, -278.62, 13.27, 0.00, 0.00, -23.48, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6574.67, -275.04, 13.27, 0.00, 0.00, -115.13, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6574.32, -269.98, 13.27, 0.00, 0.00, 22.00, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6575.03, -263.49, 13.27, 0.00, 0.00, 39.31, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6565.53, -270.88, 13.27, 0.00, 0.00, -31.99, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6560.81, -262.81, 13.27, 0.00, 0.00, 114.53, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6557.59, -261.80, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6554.66, -259.83, 13.27, 0.00, 0.00, 23.76, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6545.74, -263.22, 13.27, 0.00, 0.00, -39.17, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6540.18, -262.49, 13.27, 0.00, 0.00, -101.10, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6535.32, -263.35, 13.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6535.08, -250.25, 13.27, 0.00, 0.00, 32.66, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6539.95, -251.04, 13.27, 0.00, 0.00, 14.37, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2887, 6544.76, -250.98, 13.27, 0.00, 0.00, 86.87, -1, 0, -1,800.00, 800.00); // beach2416
CreateDynamicObject(-2888, 6335.60, -479.15, 28.67, 0.00, 0.00, 140.00, -1, 0, -1,800.00, 800.00); // beach2417
CreateDynamicObject(-2889, 6341.68, -498.83, 16.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2419
CreateDynamicObject(-2890, 6356.96, -498.53, 20.69, 0.00, 0.00, 37.71, -1, 0, -1,800.00, 800.00); // beach2424
CreateDynamicObject(-2891, 6357.80, -482.97, 22.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2426
CreateDynamicObject(-2892, 6342.18, -465.43, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6345.97, -468.62, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6370.72, -489.38, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6374.46, -492.52, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6324.90, -486.03, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6328.70, -489.21, 20.69, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2893, 6334.29, -507.83, 16.40, 0.00, 0.00, 50.00, -1, 0, -1,800.00, 800.00); // beach2429
CreateDynamicObject(-2776, 6578.06, -249.63, 13.21, 0.00, 0.00, -35.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.07, -252.71, 13.21, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.07, -254.66, 13.21, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.06, -260.74, 13.21, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.06, -279.31, 13.21, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.07, -281.27, 13.21, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.19, -285.60, 13.21, 0.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.07, -283.24, 13.21, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6578.89, -288.00, 13.21, 0.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6579.81, -289.49, 13.21, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2894, 6413.88, -591.59, 31.75, 0.00, 0.00, -8.83, -1, 0, -1,800.00, 800.00); // beach2431
CreateDynamicObject(-2895, 6305.71, -842.62, 23.43, 0.00, 0.00, -8.83, -1, 0, -1,800.00, 800.00); // beach2432
CreateDynamicObject(-2896, 6444.84, -75.93, 12.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2433
CreateDynamicObject(-2781, 6336.22, -746.15, 23.97, 0.00, 0.00, -25.94, -1, 0, -1,800.00, 800.00); // beach2124
CreateDynamicObject(-2781, 6424.56, -555.79, 24.03, 0.00, -1.36, -18.84, -1, 0, -1,800.00, 800.00); // beach2124
CreateDynamicObject(-2781, 6444.09, -413.47, 24.21, 0.00, 0.00, -2.31, -1, 0, -1,800.00, 800.00); // beach2124
CreateDynamicObject(-2897, 6418.66, -414.97, 12.97, 0.00, 0.00, 174.06, -1, 0, -1,800.00, 800.00); // beach2434
CreateDynamicObject(-2898, 6358.65, -604.21, 14.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2435
CreateDynamicObject(-2899, 6526.04, -4.83, 85.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2437
CreateDynamicObject(-2791, 6441.66, -507.49, 24.06, 0.00, 0.00, -9.01, -1, 0, -1,800.00, 800.00); // beach2162
CreateDynamicObject(-2784, 6439.64, -477.92, 22.31, 0.00, 0.00, -3.22, -1, 0, -1,800.00, 800.00); // beach2148
CreateDynamicObject(-2767, 6439.26, -478.02, 22.55, 0.00, 0.00, -3.07, -1, 0, -1,800.00, 800.00); // beach2072
CreateDynamicObject(-2791, 6327.68, -774.52, 23.99, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // beach2162
CreateDynamicObject(-2791, 6361.10, -703.61, 24.06, 0.00, 0.00, -26.70, -1, 0, -1,800.00, 800.00); // beach2162
CreateDynamicObject(-2785, 6393.15, -626.55, 20.18, 0.00, 0.00, -25.26, -1, 0, -1,800.00, 800.00); // beach2151
CreateDynamicObject(-2900, 6753.09, -532.07, 7.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2438
CreateDynamicObject(-2901, 6777.56, -390.22, 7.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2439
CreateDynamicObject(-2902, 6693.64, -408.95, 8.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2440
CreateDynamicObject(-2903, 6685.55, -243.22, 8.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2441
CreateDynamicObject(-2904, 6270.88, -456.37, 8.33, 0.00, 0.00, -19.74, -1, 0, -1,800.00, 800.00); // beach2442
CreateDynamicObject(-2905, 6251.30, -899.67, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2444
CreateDynamicObject(-2906, 6434.59, -6.47, 9.89, 0.00, 0.00, 2.99, -1, 0, -1,800.00, 800.00); // beach2445
CreateDynamicObject(-2390, 6426.30, 64.51, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2907, 6055.77, 222.99, 27.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2446
CreateDynamicObject(-2908, 6092.52, 236.09, 27.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2449
CreateDynamicObject(-2909, 5983.67, -212.85, 5.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2451
CreateDynamicObject(-2910, 5947.10, 302.82, 22.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2457
CreateDynamicObject(-2911, 6029.56, 41.09, 19.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2459
CreateDynamicObject(-2912, 6096.50, 343.09, 19.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2464
CreateDynamicObject(-2913, 6118.65, 534.26, 8.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2467
CreateDynamicObject(-2390, 6031.67, 277.03, 24.18, 0.00, 0.00, 171.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6118.98, -84.34, 13.03, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2914, 5996.67, 246.74, 23.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2471
CreateDynamicObject(-2915, 5979.80, 235.98, 23.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2473
CreateDynamicObject(-2916, 5998.55, 245.79, 21.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2474
CreateDynamicObject(-2390, 6171.51, 503.10, 13.56, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6188.18, 493.84, 14.80, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6049.04, 471.42, 18.40, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2917, 6121.06, 512.59, 13.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2475
CreateDynamicObject(-2918, 6048.12, 582.87, 16.79, 0.00, 0.00, -162.50, -1, 0, -1,800.00, 800.00); // beach2477
CreateDynamicObject(-2919, 6044.93, 583.44, 15.98, 0.00, 0.00, -162.50, -1, 0, -1,800.00, 800.00); // beach2482
CreateDynamicObject(-2920, 6111.30, 257.82, 21.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2484
CreateDynamicObject(-2921, 5996.76, 194.67, 23.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2485
CreateDynamicObject(-2922, 5922.85, 126.52, 19.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2486
CreateDynamicObject(-2923, 6008.83, 152.93, 23.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2487
CreateDynamicObject(-2924, 6049.21, 292.47, 10.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2488
CreateDynamicObject(-2925, 5954.45, 184.14, 2.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2492
CreateDynamicObject(-2926, 6115.95, 188.37, 8.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2493
CreateDynamicObject(-2927, 5953.86, 321.68, 11.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2494
CreateDynamicObject(-2928, 6114.64, 75.91, 7.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2495
CreateDynamicObject(-2929, 6101.25, -107.65, 6.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2496
CreateDynamicObject(-2930, 6061.32, 263.37, 27.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2497
CreateDynamicObject(-2931, 6066.55, 257.36, 21.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2507
CreateDynamicObject(-2932, 6068.84, 251.79, 21.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2509
CreateDynamicObject(-2933, 6096.44, 343.20, 22.01, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach2512
CreateDynamicObject(-2934, 6065.43, 254.01, 21.82, 0.00, 0.00, 84.50, -1, 0, -1,800.00, 800.00); // beach2515
CreateDynamicObject(-2392, 6058.07, 566.89, 13.72, 0.00, 0.00, -144.50, -1, 0, -1,800.00, 800.00); // beach1229
CreateDynamicObject(-2392, 6045.20, 583.16, 13.71, 0.00, 0.00, 111.00, -1, 0, -1,800.00, 800.00); // beach1229
CreateDynamicObject(-2935, 5972.14, 311.98, 34.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2517
CreateDynamicObject(-2936, 6051.59, 122.70, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2518
CreateDynamicObject(-2937, 5949.50, -60.66, 29.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2519
CreateDynamicObject(-2938, 6131.68, 573.19, 27.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2520
CreateDynamicObject(-2939, 5987.00, 96.35, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2521
CreateDynamicObject(-2940, 6061.13, 267.39, 22.13, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2523
CreateDynamicObject(-2941, 6155.70, 377.18, 12.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2526
CreateDynamicObject(-2942, 5971.41, 140.12, 17.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2527
CreateDynamicObject(-2943, 6080.49, 215.37, 18.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2529
CreateDynamicObject(-2944, 6179.12, 239.63, 14.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2530
CreateDynamicObject(-2945, 6133.65, 306.48, 9.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2531
CreateDynamicObject(-2946, 6074.57, 227.47, 21.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2532
CreateDynamicObject(-2947, 5957.90, 129.52, 26.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2536
CreateDynamicObject(-2948, 6082.78, 206.59, 19.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2537
CreateDynamicObject(-2949, 5938.68, 90.61, 19.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2538
CreateDynamicObject(-2325, 5902.25, 85.33, 21.30, 0.00, 0.00, 100.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2950, 5902.32, 85.59, 24.50, 86.39, -29.82, 127.69, -1, 0, -1,800.00, 800.00); // beach2539
CreateDynamicObject(-2951, 6003.32, -119.10, 14.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2542
CreateDynamicObject(-2952, 6028.50, 178.18, 20.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2543
CreateDynamicObject(-2390, 5871.58, 453.39, 14.15, 0.00, 0.00, -33.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2953, 5810.97, 516.36, 14.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2548
CreateDynamicObject(-2954, 5901.98, 524.13, -3.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2549
CreateDynamicObject(-2955, 5780.11, 476.80, 21.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2550
CreateDynamicObject(-2956, 5746.36, 521.84, -2.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2551
CreateDynamicObject(-2957, 6006.74, -13.59, 15.09, 0.00, 0.00, 46.22, -1, 0, -1,800.00, 800.00); // beach2555
CreateDynamicObject(-2958, 5843.56, 534.55, 10.73, 0.00, 0.00, 51.22, -1, 0, -1,800.00, 800.00); // beach2557
CreateDynamicObject(-2959, 6010.15, -151.66, 9.59, 0.00, 0.00, -25.38, -1, 0, -1,800.00, 800.00); // beach2558
CreateDynamicObject(-2960, 5946.02, 447.90, 7.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2559
CreateDynamicObject(-2961, 6089.17, -14.17, 6.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2560
CreateDynamicObject(-2962, 6166.10, 91.67, -0.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2562
CreateDynamicObject(-2963, 6146.38, 18.37, -0.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2563
CreateDynamicObject(-2964, 6185.41, 245.63, 2.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2564
CreateDynamicObject(-2965, 5992.72, -212.11, 20.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2566
CreateDynamicObject(-2966, 6073.76, -33.17, 27.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2567
CreateDynamicObject(-2967, 5956.02, 85.59, 41.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2568
CreateDynamicObject(-2968, 5954.30, 190.31, 36.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2569
CreateDynamicObject(-2969, 6087.93, 450.10, 18.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2570
CreateDynamicObject(-2970, 5800.69, 583.68, 27.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2571
CreateDynamicObject(-2971, 5864.05, 76.97, -2.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2572
CreateDynamicObject(-2972, 5247.23, 28.76, 5.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2577
CreateDynamicObject(-2973, 5432.64, 27.21, -2.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2578
CreateDynamicObject(-2974, 5644.68, 42.51, -2.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2580
CreateDynamicObject(-2975, 5790.29, 63.18, -2.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2582
CreateDynamicObject(-2976, 5285.14, 27.36, -2.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2584
CreateDynamicObject(-2977, 5530.75, 32.54, -2.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2586
CreateDynamicObject(-2978, 5747.36, 52.82, -2.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2588
CreateDynamicObject(-2979, 5358.91, 26.19, -2.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2590
CreateDynamicObject(-2980, 5904.13, 87.70, 8.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2592
CreateDynamicObject(-2981, 5862.63, 77.10, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2594
CreateDynamicObject(-2982, 5790.38, 63.18, 16.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2595
CreateDynamicObject(-2983, 5725.79, 52.95, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2596
CreateDynamicObject(-2984, 5644.75, 42.80, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2597
CreateDynamicObject(-2985, 5530.80, 32.70, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2598
CreateDynamicObject(-2986, 5432.71, 27.15, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2599
CreateDynamicObject(-2987, 5359.00, 26.08, 16.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2600
CreateDynamicObject(-2988, 5285.17, 27.24, 14.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2601
CreateDynamicObject(-2989, 5443.60, -232.73, 5.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2602
CreateDynamicObject(-2990, 5277.37, -432.22, 19.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2604
CreateDynamicObject(-2991, 5317.30, -270.13, 6.93, 0.00, 0.00, 38.00, -1, 0, -1,800.00, 800.00); // beach2606
CreateDynamicObject(-2992, 5721.91, -273.24, 6.32, 0.00, 0.00, -47.00, -1, 0, -1,800.00, 800.00); // beach2609
CreateDynamicObject(-2993, 5758.33, -432.24, 20.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2612
CreateDynamicObject(-2994, 5618.38, -419.51, 10.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2615
CreateDynamicObject(-2995, 5594.23, -463.29, 11.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2619
CreateDynamicObject(-2996, 5660.10, -424.95, 9.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2621
CreateDynamicObject(-2997, 5488.23, -275.09, 9.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2623
CreateDynamicObject(-2998, 5518.70, -290.56, 7.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2624
CreateDynamicObject(-2999, 5409.10, -405.74, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2634
CreateDynamicObject(-3000, 5664.21, -478.67, 10.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2638
CreateDynamicObject(-3001, 5632.89, -400.61, 10.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2642
CreateDynamicObject(-3002, 5378.30, -487.70, 10.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2643
CreateDynamicObject(-3003, 5798.15, -398.76, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2645
CreateDynamicObject(-3004, 5522.44, -419.34, 10.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2646
CreateDynamicObject(-3005, 5342.03, -315.23, 18.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2647
CreateDynamicObject(-3006, 5724.27, -322.16, 15.47, 0.00, 0.00, 44.50, -1, 0, -1,800.00, 800.00); // beach2650
CreateDynamicObject(-3007, 5277.82, -384.87, 9.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2657
CreateDynamicObject(-3008, 5639.36, -259.43, 9.47, 0.00, 0.00, 21.30, -1, 0, -1,800.00, 800.00); // beach2658
CreateDynamicObject(-3009, 5441.96, -404.97, 10.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2659
CreateDynamicObject(-3010, 5424.28, -422.09, 12.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2660
CreateDynamicObject(-3011, 5394.30, -437.06, 19.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2663
CreateDynamicObject(-2322, 5776.24, -459.36, 11.11, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-3012, 5425.95, -476.23, 10.94, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-2322, 5308.01, -457.21, 11.11, 0.00, 0.00, 87.00, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 5452.92, -239.74, 8.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-3013, 5523.67, -336.12, 11.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2668
CreateDynamicObject(-3014, 5429.41, -441.40, 12.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2670
CreateDynamicObject(-3015, 5429.30, -300.29, 15.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2677
CreateDynamicObject(-3016, 5847.81, -462.00, 6.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2682
CreateDynamicObject(-3017, 5746.36, -490.76, 4.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2686
CreateDynamicObject(-3018, 5612.54, -498.06, 11.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2688
CreateDynamicObject(-3019, 5434.09, -501.91, 10.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2689
CreateDynamicObject(-2322, 5777.07, -459.19, 11.11, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-3020, 5761.50, -392.50, 10.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2690
CreateDynamicObject(-3021, 5292.98, -425.88, 10.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2691
CreateDynamicObject(-3022, 5594.16, -464.97, 10.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2692
CreateDynamicObject(-3023, 5653.67, -420.94, 8.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2693
CreateDynamicObject(-3024, 5966.47, -449.92, 6.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2694
CreateDynamicObject(-3025, 5287.32, -490.64, 3.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2696
CreateDynamicObject(-3026, 5785.36, -472.61, 18.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2697
CreateDynamicObject(-3027, 5251.75, -489.66, 18.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2699
CreateDynamicObject(-3028, 6027.63, -447.15, 18.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2700
CreateDynamicObject(-3029, 5779.77, -454.31, 12.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2701
CreateDynamicObject(-3030, 5789.63, -486.35, 12.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2703
CreateDynamicObject(-3031, 5336.79, -315.31, 6.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2704
CreateDynamicObject(-3032, 5592.96, -230.58, 5.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2705
CreateDynamicObject(-3033, 5698.42, -364.91, 11.40, 0.00, 0.00, -19.00, -1, 0, -1,800.00, 800.00); // beach2708
CreateDynamicObject(-3034, 5717.73, -355.09, 7.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2711
CreateDynamicObject(-3035, 5663.73, -581.26, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2714
CreateDynamicObject(-3036, 5546.88, -512.28, 16.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2715
CreateDynamicObject(-3037, 5682.09, -612.21, 6.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2716
CreateDynamicObject(-3038, 5722.65, -533.06, 6.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2720
CreateDynamicObject(-3039, 5500.89, -563.98, 10.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2721
CreateDynamicObject(-3040, 5499.14, -542.07, 10.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2722
CreateDynamicObject(-3041, 5599.50, -537.88, 10.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2724
CreateDynamicObject(-3042, 5588.40, -602.54, 20.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2725
CreateDynamicObject(-3043, 5588.40, -538.51, 25.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2738
CreateDynamicObject(-3044, 5404.52, -552.57, 16.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2742
CreateDynamicObject(-3045, 5354.56, -551.09, 3.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2748
CreateDynamicObject(-3046, 5406.36, -504.19, 10.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2749
CreateDynamicObject(-3047, 5499.73, -608.70, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2750
CreateDynamicObject(-3048, 5565.72, -575.76, 30.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2751
CreateDynamicObject(-3049, 5588.22, -546.16, 30.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2752
CreateDynamicObject(-3050, 5554.85, -573.70, 23.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2753
CreateDynamicObject(-3051, 5333.73, -535.61, 16.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2756
CreateDynamicObject(-3052, 5534.67, -570.58, 12.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2757
CreateDynamicObject(-3053, 5727.98, -571.24, 15.68, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // beach2758
CreateDynamicObject(-3054, 5715.64, -588.25, 15.68, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // beach2759
CreateDynamicObject(-3055, 5660.47, -564.58, 16.14, 0.00, 0.00, 170.00, -1, 0, -1,800.00, 800.00); // beach2760
CreateDynamicObject(-3056, 5747.29, -372.32, 9.18, 0.00, 0.00, 35.24, -1, 0, -1,800.00, 800.00); // beach2761
CreateDynamicObject(-3057, 5465.31, -419.62, 17.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2762
CreateDynamicObject(-3058, 5614.54, -282.20, 17.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2764
CreateDynamicObject(-3059, 5588.68, -335.91, 11.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2766
CreateDynamicObject(-3060, 5605.66, -574.01, 37.15, 0.00, 0.00, 77.71, -1, 0, -1,800.00, 800.00); // beach2768
CreateDynamicObject(-3061, 5594.74, -406.65, 20.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2770
CreateDynamicObject(-3062, 5259.77, -425.41, 9.79, 0.00, 0.00, 163.50, -1, 0, -1,800.00, 800.00); // beach2775
CreateDynamicObject(-3062, 5262.75, -425.41, 9.79, 0.00, 0.00, 153.50, -1, 0, -1,800.00, 800.00); // beach2775
CreateDynamicObject(-2716, 5275.47, -408.82, 11.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5268.94, -408.82, 11.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5282.99, -408.82, 11.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5258.52, -417.85, 11.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3063, 5264.47, -411.30, 14.36, 0.00, 0.00, -2.00, -1, 0, -1,800.00, 800.00); // beach2777
CreateDynamicObject(-3064, 5290.64, -405.86, 11.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2780
CreateDynamicObject(-3065, 5250.88, -489.70, 17.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2781
CreateDynamicObject(-3066, 5765.75, -402.90, 10.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2782
CreateDynamicObject(-3067, 5259.86, -403.47, 10.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2783
CreateDynamicObject(-3068, 5293.47, -403.43, 6.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2784
CreateDynamicObject(-3069, 5652.73, -592.45, 12.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2786
CreateDynamicObject(-3069, 5652.73, -590.11, 12.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2786
CreateDynamicObject(-3069, 5652.73, -582.09, 12.39, 0.00, 0.00, -19.49, -1, 0, -1,800.00, 800.00); // beach2786
CreateDynamicObject(-3069, 5666.14, -595.96, 12.39, 0.00, 0.00, 111.13, -1, 0, -1,800.00, 800.00); // beach2786
CreateDynamicObject(-3062, 5652.76, -584.66, 12.24, 0.00, 0.00, 91.59, -1, 0, -1,800.00, 800.00); // beach2775
CreateDynamicObject(-2716, 5652.29, -563.42, 13.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5652.26, -597.76, 13.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5652.26, -577.85, 13.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2716, 5675.41, -597.76, 13.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3070, 5709.80, -617.52, 13.63, 0.00, 0.00, -115.56, -1, 0, -1,800.00, 800.00); // beach2790
CreateDynamicObject(-3071, 5509.15, -288.78, 19.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2793
CreateDynamicObject(-3072, 5307.69, -383.67, 20.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2794
CreateDynamicObject(-3073, 5424.61, -421.80, 18.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2795
CreateDynamicObject(-3074, 5692.39, -315.73, 23.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2796
CreateDynamicObject(-3075, 5619.22, -420.10, 20.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2797
CreateDynamicObject(-3076, 5520.60, -554.87, 12.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2798
CreateDynamicObject(-3077, 6117.52, 675.86, 0.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2799
CreateDynamicObject(-3078, 6249.26, 645.70, 0.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2803
CreateDynamicObject(-3079, 6322.32, 632.43, 0.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2805
CreateDynamicObject(-3080, 6466.39, 513.24, 9.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2807
CreateDynamicObject(-3081, 6425.53, 602.93, 10.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2808
CreateDynamicObject(-3082, 6233.35, 351.43, 0.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2810
CreateDynamicObject(-3083, 6432.94, 73.33, 10.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2812
CreateDynamicObject(-3084, 6415.35, 160.07, 11.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2813
CreateDynamicObject(-3085, 6395.22, 601.39, 17.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2816
CreateDynamicObject(-3086, 6410.51, 522.20, 13.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2827
CreateDynamicObject(-3087, 6402.41, 217.89, 14.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2830
CreateDynamicObject(-3088, 6420.05, 133.56, 14.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2835
CreateDynamicObject(-3089, 6432.84, 292.92, 17.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2836
CreateDynamicObject(-3090, 6348.49, 304.03, 18.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2842
CreateDynamicObject(-3091, 6386.99, 179.15, 14.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2852
CreateDynamicObject(-3092, 6443.01, 199.92, 14.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2853
CreateDynamicObject(-3093, 6508.63, 199.66, 53.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2871
CreateDynamicObject(-3094, 6505.56, 92.58, 33.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2878
CreateDynamicObject(-3095, 6522.20, 367.33, 64.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2884
CreateDynamicObject(-3096, 6265.78, 377.59, 25.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2889
CreateDynamicObject(-3097, 6263.07, 286.70, 15.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2896
CreateDynamicObject(-3098, 6296.60, 205.80, 14.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2899
CreateDynamicObject(-3099, 6453.28, 709.59, 22.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2902
CreateDynamicObject(-3100, 6351.77, 256.53, 18.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2905
CreateDynamicObject(-3101, 6386.19, 88.62, 16.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2910
CreateDynamicObject(-3102, 6392.02, 613.74, 11.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2916
CreateDynamicObject(-3103, 6395.15, 605.14, 16.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2918
CreateDynamicObject(-3104, 6392.36, 614.25, 13.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2919
CreateDynamicObject(-3105, 6364.96, 521.56, 13.44, 0.00, 0.00, -107.00, -1, 0, -1,800.00, 800.00); // beach2920
CreateDynamicObject(-3106, 6386.43, 523.97, 12.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2923
CreateDynamicObject(-3107, 6386.93, 524.00, 12.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2931
CreateDynamicObject(-3108, 6383.16, 517.20, 11.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2932
CreateDynamicObject(-3109, 6506.23, 95.10, 12.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2935
CreateDynamicObject(-3110, 6500.67, 191.71, 14.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2936
CreateDynamicObject(-3111, 6530.88, 360.66, 40.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2937
CreateDynamicObject(-3112, 6272.38, 278.46, 15.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2938
CreateDynamicObject(-3113, 6469.87, 513.94, 16.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2940
CreateDynamicObject(-3114, 6264.19, 372.09, 18.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2942
CreateDynamicObject(-3115, 6472.20, 560.83, 15.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2945
CreateDynamicObject(-3116, 6422.32, 131.22, 12.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2946
CreateDynamicObject(-3117, 6414.97, 187.09, 11.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2948
CreateDynamicObject(-3118, 6468.75, 564.46, 13.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2951
CreateDynamicObject(-3119, 6418.74, 164.96, 12.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2952
CreateDynamicObject(-3120, 6312.74, 517.30, 0.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2954
CreateDynamicObject(-3121, 6301.00, 770.92, 13.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2955
CreateDynamicObject(-3122, 6233.69, 699.41, 13.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2956
CreateDynamicObject(-3123, 6383.23, 517.15, 10.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2957
CreateDynamicObject(-3124, 6395.26, 622.74, 10.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2958
CreateDynamicObject(-3125, 6308.65, 143.35, -2.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2959
CreateDynamicObject(-3126, 6550.34, 507.95, 9.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2960
CreateDynamicObject(-3127, 6423.73, 347.00, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2961
CreateDynamicObject(-3128, 6480.21, 336.91, 10.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2962
CreateDynamicObject(-3129, 6363.61, 418.77, 18.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2963
CreateDynamicObject(-3130, 6431.98, 152.41, 10.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2974
CreateDynamicObject(-3131, 6342.03, 688.26, 10.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2975
CreateDynamicObject(-3132, 6164.49, 690.56, 9.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2976
CreateDynamicObject(-3133, 6256.07, 669.57, 10.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2977
CreateDynamicObject(-3134, 6360.29, 515.15, 10.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2978
CreateDynamicObject(-3135, 6268.99, 345.33, 9.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2979
CreateDynamicObject(-3136, 6341.26, 146.01, 9.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2980
CreateDynamicObject(-3137, 6356.48, 416.93, 14.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2981
CreateDynamicObject(-3138, 6347.93, 311.57, 14.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2982
CreateDynamicObject(-3139, 6439.96, 405.13, 13.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2983
CreateDynamicObject(-3140, 6431.74, 303.80, 13.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2984
CreateDynamicObject(-3141, 6268.33, 402.05, 13.51, 0.00, 0.00, -107.50, -1, 0, -1,800.00, 800.00); // beach2985
CreateDynamicObject(-3142, 6664.81, 310.76, 9.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2986
CreateDynamicObject(-3143, 6719.01, 332.11, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2987
CreateDynamicObject(-3144, 6698.69, 493.75, 11.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2988
CreateDynamicObject(-3145, 6850.86, 508.70, 8.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2989
CreateDynamicObject(-3146, 6841.53, 325.84, 9.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2990
CreateDynamicObject(-3147, 6918.48, 508.70, 0.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2991
CreateDynamicObject(-3148, 6913.50, 325.10, -0.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2992
CreateDynamicObject(-3149, 6207.93, 286.98, -0.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2993
CreateDynamicObject(-3150, 6261.99, 288.94, 12.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2994
CreateDynamicObject(-3151, 6300.46, 537.34, 0.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2995
CreateDynamicObject(-3152, 6353.71, 131.82, 14.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2996
CreateDynamicObject(-3153, 6252.19, 290.15, 20.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2999
CreateDynamicObject(-3154, 6274.83, 447.43, 5.13, 0.00, 0.00, 162.50, -1, 0, -1,800.00, 800.00); // beach3000
CreateDynamicObject(-3155, 6292.27, 439.23, 17.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3001
CreateDynamicObject(-3156, 6302.39, 435.87, 16.36, 0.00, 0.00, 162.50, -1, 0, -1,800.00, 800.00); // beach3003
CreateDynamicObject(-3157, 6302.39, 435.87, 16.36, 0.00, 0.00, 162.50, -1, 0, -1,800.00, 800.00); // beach3005
CreateDynamicObject(-3158, 6298.36, 712.82, 17.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3007
CreateDynamicObject(-3159, 6297.03, 714.65, 16.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3008
CreateDynamicObject(-3160, 6433.98, 714.03, 14.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3009
CreateDynamicObject(-3161, 6524.42, 368.35, 14.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3010
CreateDynamicObject(-3162, 6162.16, 653.34, 0.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3011
CreateDynamicObject(-3163, 6138.38, 724.71, 0.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3013
CreateDynamicObject(-3164, 6434.11, 712.29, 11.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3015
CreateDynamicObject(-3165, 6536.82, 535.09, 17.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3020
CreateDynamicObject(-3166, 6468.26, 564.32, 10.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3021
CreateDynamicObject(-3167, 6467.52, 515.37, 12.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3023
CreateDynamicObject(-3168, 6522.20, 367.03, 37.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3025
CreateDynamicObject(-3169, 6505.43, 94.59, 22.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3027
CreateDynamicObject(-3170, 6387.09, 94.11, -3.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3029
CreateDynamicObject(-3171, 6330.33, 207.19, 9.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3030
CreateDynamicObject(-3172, 6544.52, 459.91, 10.32, 0.00, 0.00, -14.04, -1, 0, -1,800.00, 800.00); // beach3034
CreateDynamicObject(-3173, 6544.91, 463.32, 10.08, 0.00, 0.00, -102.81, -1, 0, -1,800.00, 800.00); // beach3048
CreateDynamicObject(-3174, 6506.97, 92.64, 32.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3049
CreateDynamicObject(-3175, 6542.21, 539.93, 21.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3050
CreateDynamicObject(-3176, 6291.79, 439.14, 18.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3051
CreateDynamicObject(-3177, 6466.72, 374.82, 13.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3052
CreateDynamicObject(-3178, 6267.07, 756.35, 60.52, 0.00, 0.00, 109.61, -1, 0, -1,800.00, 800.00); // beach3053
CreateDynamicObject(-3179, 6256.02, 707.20, 13.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3054
CreateDynamicObject(-3180, 6455.22, 708.69, 23.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3055
CreateDynamicObject(-3181, 6527.92, 362.78, 66.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3056
CreateDynamicObject(-3182, 6514.45, 193.57, 58.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3058
CreateDynamicObject(-3183, 6296.76, 200.20, 14.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3059
CreateDynamicObject(-3184, 6538.77, 487.27, 10.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3060
CreateDynamicObject(-3185, 6258.48, 758.57, 19.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3061
CreateDynamicObject(-3186, 6468.54, 565.00, 11.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3064
CreateDynamicObject(-3187, 6332.98, 654.85, 28.67, 0.00, 0.00, -86.09, -1, 0, -1,800.00, 800.00); // beach3065
CreateDynamicObject(-3188, 6345.38, 163.94, 14.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3068
CreateDynamicObject(-3189, 6453.59, 333.42, 13.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3070
CreateDynamicObject(-3190, 6380.62, 202.12, 12.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3072
CreateDynamicObject(-3191, 6414.57, 195.17, 13.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3074
CreateDynamicObject(-3192, 6394.26, 155.82, 13.63, 0.00, 0.00, -4.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2399, 6383.87, 138.64, 14.57, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2390, 6442.83, 78.70, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3192, 6389.93, 202.48, 13.61, 0.00, 0.00, 35.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 6389.93, 210.27, 13.61, 0.00, 0.00, 35.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2399, 6374.42, 161.52, 14.60, 0.00, 0.00, 15.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6371.42, 190.71, 14.58, 0.00, 0.00, -2.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6373.19, 218.72, 14.33, 0.00, 0.00, -4.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6423.20, 229.37, 14.90, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6438.54, 229.34, 14.61, 0.00, 0.00, 1.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6457.70, 188.64, 14.59, 0.00, 0.00, 5.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6459.06, 170.68, 14.61, 0.00, 0.00, 1.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2717, 6418.65, 223.44, 11.22, 0.00, 0.00, 90.50, -1, 0, -1,800.00, 800.00); // beach1976
CreateDynamicObject(-2559, 6445.29, 114.80, 10.73, 0.00, 0.00, 121.50, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6450.51, 118.02, 10.73, 0.00, 0.00, 121.50, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6448.54, 187.58, 10.73, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6451.20, 163.72, 10.70, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6450.35, 126.64, 10.70, 0.00, 0.00, 177.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2390, 6505.94, 142.26, 14.10, 0.00, 0.00, 107.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6532.75, 142.26, 13.56, 0.00, 0.00, 107.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6506.06, 298.59, 14.33, 0.00, 0.00, 82.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6508.40, 246.15, 13.61, 0.00, 0.00, 74.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6378.76, 412.29, 14.72, 0.00, 0.00, 49.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6331.41, 404.91, 14.89, 0.00, 0.00, 17.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3193, 6406.96, 432.20, 11.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-2390, 6340.31, 405.88, 14.99, 0.00, 0.00, -136.48, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6349.03, 314.36, 15.09, 0.00, 0.00, 49.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3193, 6408.01, 435.68, 11.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6409.97, 442.32, 11.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3194, 6308.53, 392.08, 12.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6310.15, 398.46, 12.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6312.76, 299.14, 20.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6312.91, 295.70, 20.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6315.15, 301.46, 20.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6324.67, 301.46, 20.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6329.02, 421.79, 19.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3193, 6326.51, 443.74, 11.58, 0.00, 0.00, 20.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6318.46, 424.47, 11.48, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6311.53, 333.24, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6311.83, 330.25, 12.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-2390, 6370.08, 418.30, 15.54, 0.00, 0.00, -175.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6348.48, 426.74, 14.67, 0.00, 0.00, 18.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6342.90, 355.12, 14.89, 0.00, 0.00, 127.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6440.53, 369.06, 15.46, 0.00, 0.00, 153.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6422.32, 304.02, 14.53, 0.00, 0.00, 63.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3195, 6389.92, 633.18, 14.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6401.01, 633.15, 14.51, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6401.53, 623.90, 14.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6388.95, 623.46, 14.62, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-2411, 6381.65, 616.79, 13.13, 0.00, 0.00, -9.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6372.86, 616.99, 13.13, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6409.28, 616.55, 13.04, 0.00, 0.00, 15.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6417.84, 615.94, 13.01, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3196, 6387.44, 617.77, 11.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 6402.83, 617.80, 11.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 6410.12, 599.10, 11.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 6395.69, 592.83, 11.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3197, 6405.96, 608.30, 18.68, 0.00, 0.00, 149.50, -1, 0, -1,800.00, 800.00); // beach3083
CreateDynamicObject(-3197, 6384.42, 608.30, 18.68, 0.00, 0.00, 136.50, -1, 0, -1,800.00, 800.00); // beach3083
CreateDynamicObject(-3196, 6381.57, 605.96, 12.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 6408.85, 605.96, 12.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-2411, 6390.36, 632.18, 12.56, 0.00, 0.00, -9.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6400.59, 632.18, 12.53, 0.00, 0.00, -9.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6400.96, 611.34, 12.80, 0.00, 0.00, -9.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6389.99, 611.34, 12.86, 0.00, 0.00, -9.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3195, 6390.04, 524.93, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6392.56, 521.36, 14.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6378.96, 526.08, 14.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6375.44, 522.97, 14.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6375.43, 511.72, 14.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6378.86, 508.65, 14.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6389.94, 509.87, 14.91, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6386.62, 507.54, 14.91, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-2399, 6479.46, 195.61, 14.57, 0.00, 0.00, 6.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6481.38, 172.35, 14.57, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6481.66, 156.29, 14.57, 0.00, 0.00, -2.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6477.20, 220.65, 14.57, 0.00, 0.00, 4.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6476.58, 236.76, 14.93, 0.00, 0.00, 1.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3198, 6466.67, 576.45, 12.03, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6477.12, 577.63, 12.03, 0.00, 0.00, 49.50, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6466.55, 545.74, 12.03, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6466.48, 542.15, 12.03, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6477.55, 543.88, 12.03, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6477.55, 545.78, 12.03, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6466.10, 554.94, 18.96, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3198, 6466.10, 564.54, 18.96, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3012, 6312.28, 253.60, 10.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6355.74, 244.35, 10.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6388.51, 288.75, 11.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6415.96, 447.10, 11.13, 0.00, 0.00, -18.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6408.73, 491.96, 11.13, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6458.38, 491.18, 11.08, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6442.73, 621.22, 11.03, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6454.18, 667.17, 10.68, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6414.14, 674.96, 10.66, 0.00, 0.00, -6.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6363.04, 675.95, 10.95, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6304.32, 680.38, 10.77, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6357.02, 576.90, 11.25, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3012, 6327.19, 465.78, 11.37, 0.00, 0.00, -108.00, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-2813, 6449.32, 245.32, 10.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2228
CreateDynamicObject(-3199, 6410.39, 615.51, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6416.35, 615.51, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6410.17, 600.22, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6416.53, 600.22, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6373.73, 594.20, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6380.13, 594.20, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6373.73, 616.28, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3199, 6380.13, 616.28, 15.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3086
CreateDynamicObject(-3193, 6263.22, 285.31, 17.58, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6259.33, 285.40, 17.61, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3194, 6264.13, 278.63, 18.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3194, 6258.52, 278.54, 18.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3193, 6249.32, 270.60, 15.95, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6249.30, 268.37, 15.95, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6240.43, 257.17, 13.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6240.43, 267.57, 13.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6240.43, 262.16, 13.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3192, 6268.82, 295.69, 17.93, 0.00, 0.00, 35.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 6248.30, 261.58, 15.21, 0.00, 0.00, 88.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3200, 6265.77, 712.09, 12.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-2411, 6271.96, 718.55, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6262.23, 710.27, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6279.42, 729.17, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6287.05, 739.67, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6294.92, 749.90, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3200, 6268.21, 714.83, 12.37, 0.00, 0.00, -31.38, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6306.53, 737.33, 12.37, 0.00, 0.00, -20.32, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6275.31, 723.33, 12.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6290.33, 741.94, 12.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6298.40, 743.72, 12.37, 0.00, 0.00, -30.40, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6301.77, 744.29, 12.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-3200, 6300.69, 741.14, 12.37, 0.00, 0.00, 28.30, -1, 0, -1,800.00, 800.00); // beach3087
CreateDynamicObject(-2411, 6281.76, 732.07, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6284.98, 736.43, 13.99, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3201, 6101.09, 682.39, 11.16, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6093.58, 702.18, 11.16, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6118.50, 726.33, 11.16, 0.00, 0.00, 120.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6111.90, 659.27, 11.16, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6139.25, 631.96, 11.16, 0.00, 0.00, -115.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6201.93, 638.01, 11.16, 0.00, 0.00, -75.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6261.87, 640.89, 11.16, 0.00, 0.00, -75.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6318.25, 618.71, 11.16, 0.00, 0.00, -175.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6312.56, 574.67, 11.16, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6305.32, 525.19, 11.16, 0.00, 0.00, -20.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6284.79, 470.18, 11.16, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6224.38, 300.05, 10.26, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6181.20, 261.97, 10.26, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-3201, 6211.81, 277.14, 10.26, 0.00, 0.00, -50.00, -1, 0, -1,800.00, 800.00); // beach3088
CreateDynamicObject(-2390, 6495.55, 289.95, 13.61, 0.00, 0.00, 74.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3202, 6547.57, 462.12, 8.78, 0.00, 0.00, -103.69, -1, 0, -1,800.00, 800.00); // beach3089
CreateDynamicObject(-3203, 6548.18, 461.39, 8.79, 0.00, 0.00, -103.69, -1, 0, -1,800.00, 800.00); // beach3091
CreateDynamicObject(-3203, 6542.12, 463.31, 8.83, 0.00, 0.00, -103.69, -1, 0, -1,800.00, 800.00); // beach3091
CreateDynamicObject(-3204, 6539.80, 463.70, 8.95, 0.00, 0.00, -88.69, -1, 0, -1,800.00, 800.00); // beach3092
CreateDynamicObject(-2566, 6539.65, 466.75, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6536.42, 465.62, 9.91, 0.00, 0.00, 51.77, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6537.17, 468.11, 9.59, 0.00, 0.00, -146.81, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6552.69, 462.48, 9.88, 0.00, 0.00, -146.81, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6524.55, 465.59, 11.53, 0.00, 0.00, 110.07, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2559, 6284.60, 737.82, 12.59, 0.00, 0.00, -37.31, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2410, 6290.96, 742.93, 13.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2409, 6304.46, 740.84, 12.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2670, 6288.99, 736.62, 12.21, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach1851
CreateDynamicObject(-2673, 6288.83, 736.62, 12.64, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2409, 6270.68, 710.88, 12.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6270.52, 711.21, 14.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2559, 6280.21, 731.87, 12.59, 0.00, 0.00, -37.31, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6277.02, 727.47, 12.59, 0.00, 0.00, -37.31, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6287.79, 742.39, 12.59, 0.00, 0.00, -37.31, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2409, 6270.60, 705.13, 12.42, 0.00, 0.00, 41.01, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2410, 6270.27, 705.27, 14.03, 0.00, 0.00, 41.01, -1, 0, -1,800.00, 800.00); // beach1325
CreateDynamicObject(-2776, 6276.67, 701.41, 12.34, 0.00, 0.00, 50.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6275.29, 702.40, 12.34, 0.00, 0.00, 55.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6273.88, 703.35, 12.34, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6273.22, 714.56, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6274.23, 715.95, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6275.24, 717.32, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6276.27, 718.71, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6288.56, 735.72, 12.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6289.90, 737.44, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6290.63, 738.67, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6295.93, 751.29, 12.34, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6297.94, 750.84, 12.34, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6299.94, 750.45, 12.34, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6301.89, 750.02, 12.34, 0.00, 0.00, -105.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6313.79, 772.88, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6277.26, 720.10, 12.34, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-3205, 6480.67, 87.23, 12.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3206, 6495.61, 82.42, 11.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6495.61, 81.06, 11.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6495.61, 91.92, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6495.61, 93.28, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6495.61, 102.69, 11.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6495.61, 104.05, 11.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6521.09, 107.18, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6520.31, 99.50, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6520.31, 85.26, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6520.31, 90.37, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6520.31, 94.29, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6521.23, 77.78, 12.10, 0.00, 0.00, 43.14, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3205, 6484.65, 117.34, 12.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6478.64, 71.83, 12.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6526.99, 69.01, 12.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6532.58, 120.23, 12.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3206, 6505.51, 117.00, 11.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3012, 6357.05, 578.22, 11.25, 0.00, 0.00, 2.50, -1, 0, -1,800.00, 800.00); // beach2666
CreateDynamicObject(-3205, 6482.19, 99.06, 12.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-2488, 6332.97, 654.03, 18.35, 0.00, 0.00, -95.95, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-2411, 6260.00, 743.41, 13.94, 0.00, 0.00, 10.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6274.47, 764.08, 13.94, 0.00, 0.00, -159.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6279.10, 776.19, 13.94, 0.00, 0.00, 110.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6283.63, 788.32, 13.94, 0.00, 0.00, 110.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6249.89, 735.27, 13.94, 0.00, 0.00, 175.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6240.03, 726.92, 13.94, 0.00, 0.00, 165.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6231.19, 722.93, 13.94, 0.00, 0.00, 70.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6284.66, 797.74, 13.94, 0.00, 0.00, -139.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3207, 6122.52, 641.53, 9.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3095
CreateDynamicObject(-3208, 6795.04, 155.75, 6.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3096
CreateDynamicObject(-3209, 6651.78, 134.95, 7.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3097
CreateDynamicObject(-3210, 6917.67, 146.28, 1.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3098
CreateDynamicObject(-3211, 6290.06, 720.79, 11.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3099
CreateDynamicObject(-3212, 6212.77, 1298.16, 7.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3100
CreateDynamicObject(-3213, 6166.16, 1227.50, 9.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3102
CreateDynamicObject(-3214, 6206.40, 1164.76, 9.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3104
CreateDynamicObject(-3215, 6332.06, 1317.68, 7.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3106
CreateDynamicObject(-3216, 6426.44, 1315.03, 5.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3108
CreateDynamicObject(-3217, 6509.96, 1282.66, 0.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3110
CreateDynamicObject(-3218, 6518.48, 1155.77, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3112
CreateDynamicObject(-3219, 6525.29, 1016.75, 15.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3113
CreateDynamicObject(-3220, 6218.96, 1073.77, 3.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3114
CreateDynamicObject(-3221, 6250.88, 936.95, 1.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3116
CreateDynamicObject(-3222, 6563.38, 869.41, 11.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3118
CreateDynamicObject(-3223, 6556.84, 695.17, 8.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3119
CreateDynamicObject(-3224, 6563.80, 852.83, 51.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3120
CreateDynamicObject(-3225, 6520.92, 1015.45, 65.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3123
CreateDynamicObject(-3226, 6515.44, 1160.28, 29.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3129
CreateDynamicObject(-3227, 6448.01, 918.58, 25.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3131
CreateDynamicObject(-3228, 6459.68, 829.61, 22.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3133
CreateDynamicObject(-3229, 6334.87, 911.98, 19.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3136
CreateDynamicObject(-3230, 6372.96, 1314.11, 35.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3138
CreateDynamicObject(-3231, 6235.38, 1308.28, 26.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3142
CreateDynamicObject(-3232, 6512.13, 1286.29, 25.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3143
CreateDynamicObject(-2390, 6546.84, 1230.17, 20.14, 0.00, 0.00, -7.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6544.60, 943.80, 19.02, 0.00, 0.00, 131.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6216.54, 1138.19, 24.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6209.81, 1178.56, 27.13, 0.00, 0.00, 145.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6199.55, 1188.68, 27.13, 0.00, 0.00, -139.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6181.74, 1199.65, 25.90, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6231.86, 1179.74, 21.36, 0.00, 0.00, 4.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6255.07, 978.09, 16.02, 0.00, 0.00, 93.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6297.35, 1322.16, 25.90, 0.00, 0.00, -65.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6307.39, 1322.16, 25.90, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6316.47, 1322.16, 25.90, 0.00, 0.00, 92.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6556.84, 772.70, 13.35, 0.00, 0.00, 82.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6556.84, 621.30, 12.81, 0.00, 0.00, -155.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3233, 6165.32, 1231.08, 33.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3144
CreateDynamicObject(-2390, 6214.09, 1200.19, 21.82, 0.00, 0.00, 175.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6290.18, 1306.56, 21.18, 0.00, 0.00, -41.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6530.21, 623.19, 12.81, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6526.04, 945.66, 20.14, 0.00, 0.00, -130.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6569.96, 621.30, 12.81, 0.00, 0.00, -63.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6564.01, 611.03, 12.81, 0.00, 0.00, 52.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6496.61, 1073.95, 20.14, 0.00, 0.00, 19.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6590.92, 790.56, 12.58, 0.00, 0.00, 129.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6590.92, 801.62, 12.58, 0.00, 0.00, 129.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6592.73, 810.96, 12.58, 0.00, 0.00, -178.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6597.53, 823.63, 12.58, 0.00, 0.00, -58.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6602.18, 843.25, 14.87, 0.00, 0.00, -92.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6605.49, 859.98, 14.39, 0.00, 0.00, -19.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6604.63, 878.11, 15.26, 0.00, 0.00, -32.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6587.34, 915.23, 15.78, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6595.42, 897.55, 15.83, 0.00, 0.00, 23.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3234, 6433.16, 769.67, 10.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3146
CreateDynamicObject(-3235, 6237.89, 847.68, 0.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3147
CreateDynamicObject(-3236, 6195.31, 774.69, 0.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3149
CreateDynamicObject(-2411, 6445.79, 768.76, 13.94, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3206, 6404.60, 779.85, 12.94, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3193, 6475.41, 767.37, 12.81, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3206, 6417.96, 768.79, 12.94, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6433.71, 768.69, 12.94, 0.00, 0.00, 47.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3193, 6426.98, 768.11, 12.82, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-2399, 6444.52, 762.92, 14.94, 0.00, 0.00, -1.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6469.32, 763.00, 14.94, 0.00, 0.00, -1.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6415.16, 764.89, 14.92, 0.00, 0.00, -3.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6497.06, 761.91, 14.80, 0.00, 0.00, -3.50, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6399.85, 784.83, 14.91, 0.00, 0.00, -1.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6400.31, 806.01, 14.90, 0.00, 0.00, -1.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3192, 6555.01, 977.76, 22.76, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 6549.09, 967.01, 22.76, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 6527.08, 966.31, 22.76, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2716, 6524.71, 973.52, 21.75, 0.00, 0.00, -46.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3205, 6548.14, 1001.81, 17.69, 0.00, 0.00, -120.69, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-2411, 6537.72, 1008.83, 22.02, 0.00, 0.00, 51.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6515.16, 1000.95, 22.01, 0.00, 0.00, 78.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2716, 6546.96, 981.26, 21.77, 0.00, 0.00, 69.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3205, 6552.79, 990.06, 17.71, 0.00, 0.00, 73.00, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-2411, 6548.75, 984.59, 22.02, 0.00, 0.00, 44.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2716, 6542.34, 1003.79, 21.80, 0.00, 0.00, 54.50, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-2559, 6518.52, 999.92, 20.71, 0.00, 0.00, 110.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6534.99, 1005.63, 20.70, 0.00, 0.00, 110.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6542.92, 981.88, 20.70, 0.00, 0.00, 110.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6528.23, 976.75, 20.71, 0.00, 0.00, 110.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-3205, 6541.12, 1026.46, 17.72, 0.00, 0.00, 54.50, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6539.19, 1036.98, 17.70, 0.00, 0.00, 54.50, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3192, 6241.17, 990.23, 15.19, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2411, 6259.17, 1013.25, 14.47, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2716, 6254.52, 1026.65, 14.21, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3205, 6245.92, 1065.78, 14.43, 0.00, 0.00, 3.50, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-2411, 6249.85, 1041.00, 14.47, 0.00, 0.00, -25.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3192, 6262.08, 994.35, 15.19, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2716, 6245.72, 1052.83, 14.22, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // beach865
CreateDynamicObject(-3192, 6244.61, 1053.87, 15.12, 0.00, 0.00, 38.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3205, 6245.02, 1064.37, 14.46, 0.00, 0.00, 59.44, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6240.45, 976.70, 11.26, 0.00, 0.00, 3.50, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3205, 6252.82, 987.84, 14.43, 0.00, 0.00, 3.50, -1, 0, -1,800.00, 800.00); // beach867
CreateDynamicObject(-3206, 6254.66, 1022.00, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6256.07, 1017.89, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6251.65, 1031.16, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6250.12, 1035.70, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6247.09, 1044.69, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6245.88, 1048.57, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6259.73, 1006.97, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6260.92, 1003.47, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6253.88, 996.11, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6249.88, 994.77, 13.46, 0.00, 0.00, -26.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6227.68, 1046.60, 13.46, 0.00, 0.00, -21.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6238.97, 1050.22, 13.46, 0.00, 0.00, -27.50, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3193, 6414.54, 952.61, 17.97, 0.00, 0.00, -18.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6415.74, 949.67, 17.97, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6435.25, 957.80, 17.97, 0.00, 0.00, -22.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6433.96, 960.72, 17.97, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6453.74, 968.93, 17.97, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3193, 6455.03, 965.95, 17.97, 0.00, 0.00, -23.50, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3237, 6383.69, 969.38, 15.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3151
CreateDynamicObject(-3238, 6374.81, 977.61, 15.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3154
CreateDynamicObject(-3239, 6426.92, 987.70, 17.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3157
CreateDynamicObject(-3240, 6349.99, 986.02, 14.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3158
CreateDynamicObject(-2390, 6560.22, 948.67, 19.58, 0.00, 0.00, -138.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3241, 6566.80, 852.75, 18.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3159
CreateDynamicObject(-2390, 6239.20, 872.44, 12.87, 0.00, 0.00, -115.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2559, 6279.80, 1298.08, 17.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6315.69, 1296.94, 17.05, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 6419.72, 1295.81, 17.05, 0.00, 0.00, 86.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-3242, 6439.62, 798.19, 12.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3160
CreateDynamicObject(-2813, 6492.16, 761.82, 11.23, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2228
CreateDynamicObject(-3243, 6351.49, 760.18, 18.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3161
CreateDynamicObject(-3244, 6354.66, 813.90, 24.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3168
CreateDynamicObject(-3245, 6510.68, 696.62, 9.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3169
CreateDynamicObject(-3246, 6518.75, 867.70, 13.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3170
CreateDynamicObject(-3247, 6482.14, 1013.16, 16.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3171
CreateDynamicObject(-3248, 6476.19, 1157.23, 15.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3172
CreateDynamicObject(-3249, 6480.08, 1260.03, 15.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3173
CreateDynamicObject(-3250, 6416.87, 1279.58, 16.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3174
CreateDynamicObject(-3251, 6326.14, 1282.91, 16.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3175
CreateDynamicObject(-3252, 6225.57, 1273.66, 16.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3176
CreateDynamicObject(-3253, 6189.83, 1232.12, 16.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3177
CreateDynamicObject(-3254, 6232.80, 1189.70, 17.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3178
CreateDynamicObject(-3255, 6255.05, 1086.58, 16.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3179
CreateDynamicObject(-3256, 6334.81, 943.77, 13.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3180
CreateDynamicObject(-3257, 6309.06, 823.51, 10.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3181
CreateDynamicObject(-3258, 6229.79, 763.45, 9.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3182
CreateDynamicObject(-3259, 6448.88, 914.83, 13.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3183
CreateDynamicObject(-3260, 6708.13, 997.29, 8.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3185
CreateDynamicObject(-3261, 6691.38, 1168.42, 7.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3186
CreateDynamicObject(-3262, 6738.88, 659.07, 8.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3187
CreateDynamicObject(-3263, 6728.03, 1188.55, -0.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3188
CreateDynamicObject(-3264, 6907.78, 1017.14, -0.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3189
CreateDynamicObject(-3265, 6917.59, 854.17, 0.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3190
CreateDynamicObject(-3266, 6917.59, 683.15, 2.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3191
CreateDynamicObject(-3267, 6184.98, 974.32, 3.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3192
CreateDynamicObject(-3268, 6095.24, 997.95, 15.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3194
CreateDynamicObject(-3269, 6176.19, 970.45, 23.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3195
CreateDynamicObject(-2325, 6301.59, 959.52, 21.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2325, 6301.82, 944.32, 21.83, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-3270, 6301.70, 951.82, 24.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3196
CreateDynamicObject(-3271, 6164.94, 1283.10, 28.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3199
CreateDynamicObject(-3272, 6469.26, 1312.21, 21.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3200
CreateDynamicObject(-3273, 6269.60, 1208.76, 18.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3201
CreateDynamicObject(-3274, 6403.73, 1210.81, 18.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3204
CreateDynamicObject(-3275, 6303.96, 1082.42, 15.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3205
CreateDynamicObject(-3276, 6294.33, 1206.23, 22.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3206
CreateDynamicObject(-3277, 6321.69, 1206.23, 20.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3210
CreateDynamicObject(-3278, 6289.08, 1206.23, 23.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3211
CreateDynamicObject(-3279, 6321.69, 1206.23, 25.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3212
CreateDynamicObject(-3280, 6300.94, 1206.23, 22.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3213
CreateDynamicObject(-3281, 6381.30, 1047.18, 23.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3215
CreateDynamicObject(-3282, 6380.88, 1124.22, 23.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3219
CreateDynamicObject(-3283, 6389.50, 1202.93, 24.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3220
CreateDynamicObject(-3284, 6381.03, 1068.47, 41.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3221
CreateDynamicObject(-3285, 6411.96, 1079.38, 17.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3223
CreateDynamicObject(-2399, 6436.59, 1328.14, 23.75, 5.83, 0.10, -1.01, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2399, 6433.06, 1325.41, 21.52, 5.83, 0.10, 33.23, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3286, 6307.32, 1301.67, 28.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3227
CreateDynamicObject(-3287, 6248.44, 1026.16, 34.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3228
CreateDynamicObject(-3288, 6531.13, 990.40, 68.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3229
CreateDynamicObject(-3289, 6552.72, 682.72, 67.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3230
CreateDynamicObject(-3290, 6496.29, 1167.00, 24.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3231
CreateDynamicObject(-3291, 6413.85, 774.18, 15.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3232
CreateDynamicObject(-2390, 6236.77, 846.15, 12.87, 0.00, 0.00, -115.50, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3292, 6499.50, 1274.94, 31.40, 0.00, 90.00, -48.91, -1, 0, -1,800.00, 800.00); // beach3233
CreateDynamicObject(-3293, 6496.11, 1272.63, 37.77, 0.00, 0.00, -140.15, -1, 0, -1,800.00, 800.00); // beach3234
CreateDynamicObject(-3294, 6176.53, 1233.61, 31.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3237
CreateDynamicObject(-3295, 6381.62, 1064.94, 30.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3238
CreateDynamicObject(-2892, 6547.83, 634.72, 59.13, 0.00, 0.00, -2.04, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-2892, 6569.95, 656.15, 62.13, 0.00, 0.00, -2.04, -1, 0, -1,800.00, 800.00); // beach2428
CreateDynamicObject(-3296, 6343.81, 753.91, 14.80, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3239
CreateDynamicObject(-3297, 6365.48, 813.55, 14.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3240
CreateDynamicObject(-3298, 6381.06, 1187.19, 41.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3241
CreateDynamicObject(-3299, 6182.47, 1178.95, 27.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3242
CreateDynamicObject(-3300, 6402.65, 1330.28, 34.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3244
CreateDynamicObject(-3301, 6329.86, 1307.23, 43.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3246
CreateDynamicObject(-3302, 6495.77, 1007.64, 19.67, 0.00, 0.00, 0.11, -1, 0, -1,800.00, 800.00); // beach3248
CreateDynamicObject(-3303, 6381.12, 1197.36, 30.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3250
CreateDynamicObject(-2743, 6759.70, 686.60, 15.95, 1.39, -0.90, 0.00, -1, 0, -1,800.00, 800.00); // beach2032
CreateDynamicObject(-3304, 6460.38, 997.89, 19.11, 0.00, 0.00, 18.12, -1, 0, -1,800.00, 800.00); // beach3251
CreateDynamicObject(-3305, 6304.27, 962.14, 12.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3252
CreateDynamicObject(-3306, 6243.49, 1019.56, 30.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3257
CreateDynamicObject(-3307, 6575.46, 860.40, 59.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3263
CreateDynamicObject(-3308, 6384.47, 981.77, 14.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3264
CreateDynamicObject(-2411, 6409.36, 805.29, 13.94, 0.00, 0.00, 50.50, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6106.47, -488.27, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3206, 6010.39, -594.24, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3309, 6297.12, -137.40, 10.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3268
CreateDynamicObject(-3310, 6318.80, -45.13, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3269
CreateDynamicObject(-3311, 6083.20, -445.54, 7.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3270
CreateDynamicObject(-3312, 6236.14, -126.00, -2.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3271
CreateDynamicObject(-3313, 6262.04, -0.37, 12.56, 0.00, 0.00, -135.50, -1, 0, -1,800.00, 800.00); // beach3274
CreateDynamicObject(-3314, 6268.08, 30.32, 11.14, 0.00, 0.00, -135.50, -1, 0, -1,800.00, 800.00); // beach3275
CreateDynamicObject(-3315, 6206.92, -257.74, 10.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3276
CreateDynamicObject(-3316, 6262.22, 4.69, -1.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3277
CreateDynamicObject(-3317, 6350.29, -142.96, -1.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3279
CreateDynamicObject(-3318, 6174.24, -554.23, 2.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3280
CreateDynamicObject(-3319, 5994.74, -625.45, -1.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3282
CreateDynamicObject(-3320, 5970.33, -516.48, -0.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3284
CreateDynamicObject(-3321, 6048.64, -352.08, -1.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3286
CreateDynamicObject(-3322, 5990.16, -575.58, 10.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3289
CreateDynamicObject(-3323, 6300.63, -211.90, 10.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3290
CreateDynamicObject(-3324, 6195.91, -400.86, 16.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3291
CreateDynamicObject(-3325, 6219.57, -352.96, 18.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3294
CreateDynamicObject(-3326, 6209.30, -448.75, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3295
CreateDynamicObject(-3327, 6038.47, -575.41, 15.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3296
CreateDynamicObject(-3192, 6131.48, -494.77, 15.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 6130.90, -508.37, 15.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3328, 6252.34, -15.30, 10.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3297
CreateDynamicObject(-3195, 6241.27, 38.83, 14.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6257.64, 22.19, 14.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6275.35, 11.47, 14.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6304.07, 9.57, 14.11, 0.00, 0.00, 72.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6266.23, -12.52, 14.11, 0.00, 0.00, 72.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6248.65, 3.54, 14.11, 0.00, 0.00, 72.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6222.90, 0.08, 14.13, 0.00, 0.00, 72.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3195, 6283.84, -34.12, 14.51, 0.00, 0.00, 72.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3329, 6194.43, -171.62, -0.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3298
CreateDynamicObject(-3330, 6266.26, -307.95, 13.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3300
CreateDynamicObject(-3331, 6096.19, -484.00, 12.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3301
CreateDynamicObject(-3332, 5991.58, -594.46, 11.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3302
CreateDynamicObject(-2411, 6106.47, -478.94, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6086.35, -479.02, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-2411, 6086.35, -488.27, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach862
CreateDynamicObject(-3206, 6010.36, -604.01, 13.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 5968.82, -608.58, 13.66, 0.00, 0.00, -32.50, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 5968.82, -589.91, 13.66, 0.00, 0.00, -32.50, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 5961.21, -589.91, 13.66, 0.00, 0.00, -32.50, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 5961.21, -608.53, 13.66, 0.00, 0.00, -32.50, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6083.91, -511.40, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6080.54, -511.48, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6090.76, -519.57, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6090.76, -523.92, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6083.94, -529.24, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6080.52, -529.28, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6063.63, -522.27, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6058.87, -522.30, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6050.21, -514.13, 13.66, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6050.13, -509.81, 13.66, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6058.83, -502.42, 13.66, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6063.53, -502.36, 13.66, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3333, 6065.88, -515.90, 22.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3303
CreateDynamicObject(-3334, 6088.37, -587.09, 22.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3305
CreateDynamicObject(-3335, 6004.99, -553.72, 22.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3307
CreateDynamicObject(-3336, 6076.75, -551.28, 16.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3309
CreateDynamicObject(-3337, 6077.66, -551.29, 13.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3314
CreateDynamicObject(-3338, 6077.65, -551.24, 14.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3315
CreateDynamicObject(-3339, 6037.02, -496.89, 15.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3316
CreateDynamicObject(-3340, 6049.12, -604.96, 15.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3318
CreateDynamicObject(-3206, 6109.56, -534.97, 14.72, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6109.47, -540.05, 14.72, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6045.99, -540.05, 14.72, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6045.90, -534.97, 14.72, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6109.43, -552.55, 14.72, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6109.61, -567.44, 14.73, 0.00, 0.00, 47.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6108.39, -562.15, 14.73, 0.00, 0.00, 47.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6045.99, -562.28, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6045.87, -567.36, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6085.00, -560.86, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6085.00, -552.55, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6086.01, -552.55, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6086.01, -560.86, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6107.46, -560.85, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3206, 6107.46, -552.59, 14.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3341, 6106.07, -488.60, 12.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3323
CreateDynamicObject(-3342, 6138.91, -633.12, 2.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3324
CreateDynamicObject(-3343, 6078.40, -544.17, 11.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3325
CreateDynamicObject(-3344, 6079.15, -593.75, 10.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3326
CreateDynamicObject(-2390, 6341.10, -191.46, 14.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2566, 6269.97, -173.71, 12.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2390, 6341.10, -139.22, 14.53, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6313.96, -36.34, 14.53, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2566, 6263.84, -172.96, 12.20, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6278.40, -134.73, 12.44, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6278.79, -129.80, 12.44, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6291.59, -99.78, 11.49, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6293.75, -79.15, 11.49, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6293.53, -95.97, 11.49, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6309.25, -33.89, 11.53, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6313.57, -33.89, 11.53, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6311.31, -33.89, 11.53, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6311.31, -30.83, 11.53, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6251.43, -124.07, 12.11, 0.00, 0.00, 149.63, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2390, 6252.63, -64.16, 13.75, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6257.60, -53.37, 13.98, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6253.92, -77.23, 13.98, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3345, 6222.18, 27.99, 13.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3327
CreateDynamicObject(-3346, 6352.27, 21.41, 12.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3328
CreateDynamicObject(-3347, 6082.96, -625.97, -1.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3329
CreateDynamicObject(-3348, 6179.45, -547.15, 12.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3331
CreateDynamicObject(-3349, 6188.15, -224.86, -2.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3332
CreateDynamicObject(-3350, 6053.13, -489.49, 10.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3334
CreateDynamicObject(-3351, 6320.02, -323.42, -0.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3335
CreateDynamicObject(-3352, 6243.54, -425.75, 0.61, 0.00, 0.00, 136.00, -1, 0, -1,800.00, 800.00); // beach3337
CreateDynamicObject(-3353, 6297.87, -305.53, 11.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3339
CreateDynamicObject(-3354, 6105.61, -422.34, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3340
CreateDynamicObject(-3355, 6261.77, -129.03, 10.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3341
CreateDynamicObject(-3356, 6253.63, -16.70, 9.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3342
CreateDynamicObject(-3357, 6226.01, 27.42, 10.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3343
CreateDynamicObject(-3358, 6339.62, 14.65, 12.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3345
CreateDynamicObject(-3359, 6098.90, -483.36, 12.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3346
CreateDynamicObject(-3360, 6167.31, -494.42, 10.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3347
CreateDynamicObject(-3361, 6366.18, -164.18, 0.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3348
CreateDynamicObject(-3362, 6343.09, -32.75, -1.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3349
CreateDynamicObject(-3363, 6343.45, -230.90, -1.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3351
CreateDynamicObject(-3364, 6166.82, -470.65, 13.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3353
CreateDynamicObject(-3365, 6286.01, -462.55, 7.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3356
CreateDynamicObject(-3366, 6172.33, -438.17, 11.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3359
CreateDynamicObject(-3367, 6156.88, -462.46, 15.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3360
CreateDynamicObject(-2731, 6164.05, -460.31, 15.26, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2742, 6173.00, -459.77, 12.57, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach997
CreateDynamicObject(-2731, 6162.63, -460.31, 15.26, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 6176.66, -467.35, 15.26, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 6176.66, -465.94, 15.26, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-3368, 6048.08, -605.75, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3362
CreateDynamicObject(-3369, 6036.27, -495.85, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3364
CreateDynamicObject(-2325, 6079.19, -438.76, 14.78, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2325, 6079.43, -453.96, 14.78, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-3370, 6079.31, -446.77, 18.06, 0.00, -90.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3365
CreateDynamicObject(-3371, 6144.01, -553.64, 2.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3368
CreateDynamicObject(-3372, 6229.96, -455.48, 7.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3369
CreateDynamicObject(-2390, 6285.91, -123.43, 13.98, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6299.00, -72.85, 13.98, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6303.73, -49.41, 14.53, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-2390, 6268.59, -146.06, 15.86, 0.00, 0.00, 135.00, -1, 0, -1,800.00, 800.00); // beach71
CreateDynamicObject(-3373, 6063.39, -516.20, 14.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3370
CreateDynamicObject(-3374, 6234.94, 26.50, 10.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3371
CreateDynamicObject(-3375, 6228.04, 43.91, 10.64, 0.00, 0.00, -135.50, -1, 0, -1,800.00, 800.00); // beach3372
CreateDynamicObject(-3376, 6302.40, -158.98, 17.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3373
CreateDynamicObject(-3377, 6302.39, -159.00, 19.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3380
CreateDynamicObject(-3376, 6321.97, -110.01, 17.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3373
CreateDynamicObject(-3376, 6332.36, -61.68, 17.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3373
CreateDynamicObject(-3377, 6322.12, -109.73, 19.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3380
CreateDynamicObject(-3378, 6270.70, -29.06, 15.28, 0.00, 0.00, 30.18, -1, 0, -1,800.00, 800.00); // beach3381
CreateDynamicObject(-3378, 6236.77, 0.51, 14.26, 0.00, 0.00, 53.92, -1, 0, -1,800.00, 800.00); // beach3381
CreateDynamicObject(-3378, 6242.73, 54.58, 14.37, 0.00, 0.00, -135.96, -1, 0, -1,800.00, 800.00); // beach3381
CreateDynamicObject(-3378, 6292.18, 12.72, 14.43, 0.00, 0.00, -135.30, -1, 0, -1,800.00, 800.00); // beach3381
CreateDynamicObject(-3379, 6070.70, -515.88, 49.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3385
CreateDynamicObject(-3379, 6093.17, -587.05, 49.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3385
CreateDynamicObject(-3379, 6004.95, -549.20, 49.89, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3385
CreateDynamicObject(-3380, 6252.20, -302.60, 12.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3389
CreateDynamicObject(-2399, 6236.27, -265.69, 14.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3195, 6225.04, -238.20, 14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3381, 6309.81, -242.21, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3391
CreateDynamicObject(-2399, 6235.36, -250.69, 14.56, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3382, 6303.67, -296.26, 10.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3393
CreateDynamicObject(-3383, 6224.65, -281.89, 11.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3394
CreateDynamicObject(-3384, 6224.69, -281.91, 11.90, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3398
CreateDynamicObject(-3385, 6257.64, -203.19, 13.11, 0.00, 0.00, 18.61, -1, 0, -1,800.00, 800.00); // beach3402
CreateDynamicObject(-3386, 6258.28, -204.86, 11.17, 0.00, 0.00, 18.61, -1, 0, -1,800.00, 800.00); // beach3404
CreateDynamicObject(-3387, 6266.21, -200.41, 12.37, 0.00, 0.00, 18.61, -1, 0, -1,800.00, 800.00); // beach3406
CreateDynamicObject(-3388, 6258.09, -204.04, 11.25, 0.00, 0.00, 18.61, -1, 0, -1,800.00, 800.00); // beach3407
CreateDynamicObject(-3389, 6249.36, -206.13, 12.37, 0.00, 0.00, 18.61, -1, 0, -1,800.00, 800.00); // beach3408
CreateDynamicObject(-3390, 6258.24, -204.77, 10.86, 89.95, 18.61, 0.00, -1, 0, -1,800.00, 800.00); // beach3409
CreateDynamicObject(-3391, 6285.51, -208.87, 11.95, 0.00, 0.00, -15.23, -1, 0, -1,800.00, 800.00); // beach3411
CreateDynamicObject(-3392, 6208.45, -306.54, 11.83, 0.00, 0.00, -105.00, -1, 0, -1,800.00, 800.00); // beach3413
CreateDynamicObject(-2399, 6236.27, -265.69, 14.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3195, 6222.37, -242.86, 14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3393, 6261.10, -243.14, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-2470, 6237.79, -278.56, 10.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-3394, 6220.40, -315.78, 10.46, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3420
CreateDynamicObject(-3395, 6219.92, -286.65, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3422
CreateDynamicObject(-3396, 6220.09, -281.67, 11.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3426
CreateDynamicObject(-2471, 6237.96, -280.66, 12.30, 30.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2883, 6241.94, -275.63, 11.18, 0.00, 0.00, 140.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-3397, 6214.68, -314.57, 11.53, 0.00, 35.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3429
CreateDynamicObject(-3398, 6214.56, -313.79, 11.37, 0.00, 35.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3430
CreateDynamicObject(-3399, 6235.79, -287.28, 10.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3431
CreateDynamicObject(-3400, 6234.59, -285.64, 10.59, 89.98, 158.56, 156.44, -1, 0, -1,800.00, 800.00); // beach3432
CreateDynamicObject(-3401, 6221.90, -317.47, 11.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3434
CreateDynamicObject(-3402, 6214.01, -279.31, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3403, 6228.78, -318.31, 10.20, 89.98, 158.56, 156.44, -1, 0, -1,800.00, 800.00); // beach3438
CreateDynamicObject(-3404, 6220.85, -280.58, 10.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3441
CreateDynamicObject(-3405, 6221.48, -280.58, 10.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3443
CreateDynamicObject(-2470, 6237.57, -278.62, 12.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-2470, 6237.62, -282.14, 10.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-3402, 6215.61, -280.20, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6214.88, -283.90, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6217.15, -282.53, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6217.53, -279.07, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6218.94, -286.04, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6232.44, -285.44, 11.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6235.58, -280.64, 11.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6226.23, -284.68, 11.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6226.27, -279.41, 11.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6229.46, -283.60, 11.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6230.53, -277.69, 11.18, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3402, 6234.64, -283.55, 11.18, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3437
CreateDynamicObject(-3396, 6225.23, -276.82, 11.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3426
CreateDynamicObject(-3401, 6216.17, -286.58, 11.17, 0.00, 0.00, -15.00, -1, 0, -1,800.00, 800.00); // beach3434
CreateDynamicObject(-3406, 6219.85, -283.36, 11.16, 0.00, 0.00, -50.00, -1, 0, -1,800.00, 800.00); // beach3444
CreateDynamicObject(-3407, 6220.14, -285.27, 11.18, 0.00, 45.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3445
CreateDynamicObject(-3408, 6224.30, -286.48, 11.18, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3446
CreateDynamicObject(-2883, 6223.52, -281.27, 10.67, 0.00, 90.00, -5.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-2883, 6225.41, -280.54, 11.18, 0.00, 0.00, -50.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-3406, 6225.45, -278.73, 11.16, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3444
CreateDynamicObject(-2471, 6223.79, -279.34, 13.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6224.02, -283.27, 10.67, 17.67, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6222.10, -282.87, 10.27, 0.00, 0.00, 10.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-2471, 6222.33, -277.77, 10.24, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1432
CreateDynamicObject(-3406, 6236.11, -278.71, 11.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3444
CreateDynamicObject(-3407, 6234.53, -276.74, 11.18, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3445
CreateDynamicObject(-3408, 6216.31, -277.68, 11.18, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3446
CreateDynamicObject(-3407, 6219.50, -277.33, 11.18, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach3445
CreateDynamicObject(-3401, 6217.92, -276.70, 10.37, 0.00, -95.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3434
CreateDynamicObject(-2883, 6241.16, -274.97, 11.18, 0.00, 0.00, -40.00, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-3394, 6289.42, -271.58, 10.60, 0.00, 0.00, 41.94, -1, 0, -1,800.00, 800.00); // beach3420
CreateDynamicObject(-2473, 6247.14, -273.13, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6248.59, -273.13, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2472, 6249.87, -272.80, 10.18, 0.00, 0.00, -130.00, -1, 0, -1,800.00, 800.00); // beach1433
CreateDynamicObject(-2473, 6250.98, -271.93, 10.18, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6251.99, -270.94, 10.18, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6252.95, -269.96, 10.18, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-3409, 6222.55, -314.25, 11.14, 0.00, 0.00, 85.00, -1, 0, -1,800.00, 800.00); // beach3448
CreateDynamicObject(-3409, 6225.07, -316.30, 10.37, 0.00, -90.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3448
CreateDynamicObject(-2473, 6282.23, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6280.83, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6279.43, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6278.02, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6276.62, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6275.21, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6273.81, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6272.41, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6271.00, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6269.60, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6268.20, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6266.80, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6265.40, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6264.01, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6262.61, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6261.21, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6259.81, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6258.41, -271.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2472, 6257.03, -271.42, 10.18, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1433
CreateDynamicObject(-2473, 6255.91, -270.68, 10.18, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-2473, 6254.91, -269.68, 10.18, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach1435
CreateDynamicObject(-3393, 6266.67, -243.14, 11.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-3393, 6280.29, -253.01, 11.47, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-3393, 6249.57, -253.01, 11.48, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-2883, 6282.21, -269.85, 11.18, 0.00, 0.00, -1.27, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-2883, 6282.19, -270.93, 11.18, 0.00, 0.00, -1.27, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-3410, 6265.06, -244.08, 11.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6262.76, -244.08, 11.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6250.49, -244.15, 11.25, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6279.32, -244.15, 11.25, 0.00, 0.00, -45.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6279.39, -256.04, 11.25, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6279.42, -267.36, 11.25, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6250.40, -267.50, 11.25, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6250.44, -256.16, 11.25, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-2883, 6258.30, -207.14, 10.94, 0.00, 0.00, 108.56, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-3411, 6262.55, -203.33, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3412, 6261.97, -202.71, 11.15, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3413, 6260.59, -203.19, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3414, 6266.23, -200.43, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3456
CreateDynamicObject(-3415, 6260.83, -203.90, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3416, 6262.11, -203.00, 11.36, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3458
CreateDynamicObject(-3417, 6261.99, -202.61, 11.30, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3411, 6258.71, -204.62, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3411, 6257.49, -205.03, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3411, 6253.99, -206.19, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3415, 6261.31, -205.40, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3413, 6261.08, -204.67, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3414, 6249.35, -206.09, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3456
CreateDynamicObject(-3415, 6260.33, -202.42, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3412, 6256.86, -204.44, 11.15, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6254.15, -205.33, 11.15, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6258.87, -203.75, 11.15, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3415, 6255.34, -204.11, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3413, 6255.60, -204.88, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3413, 6256.09, -206.36, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3415, 6255.84, -205.59, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6256.32, -207.09, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3413, 6262.28, -204.24, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3413, 6259.48, -205.18, 10.37, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3413, 6254.77, -206.74, 10.37, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3417, 6256.95, -204.65, 11.30, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3417, 6254.07, -205.40, 11.30, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-2883, 6259.42, -206.75, 10.94, 0.00, 0.00, 108.56, -1, 0, -1,800.00, 800.00); // beach2408
CreateDynamicObject(-2470, 6237.62, -280.32, 10.74, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach1430
CreateDynamicObject(-3418, 6222.08, -300.39, 10.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3461
CreateDynamicObject(-2322, 6249.98, -205.53, 10.87, 0.00, 0.00, -162.61, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-3202, 6246.96, -269.28, 10.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3089
CreateDynamicObject(-3203, 6246.20, -269.28, 10.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3091
CreateDynamicObject(-3203, 6241.75, -210.08, 10.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3091
CreateDynamicObject(-3202, 6242.78, -209.66, 10.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3089
CreateDynamicObject(-2322, 6250.58, -205.33, 10.86, 0.00, 0.00, -162.61, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6251.18, -205.13, 10.87, 0.00, 0.00, -162.61, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6264.12, -203.08, 10.77, 0.00, 0.00, 17.70, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6264.72, -202.87, 10.77, 0.00, 0.00, 17.70, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6252.08, -207.12, 10.93, 0.00, 0.00, 17.70, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6252.68, -206.91, 10.93, 0.00, 0.00, 17.70, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6257.75, -226.08, 10.77, 0.00, 0.00, -1.47, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6257.12, -226.08, 10.77, 0.00, 0.00, -1.47, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6257.13, -225.63, 10.77, 0.00, 0.00, 178.53, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-2322, 6257.77, -225.63, 10.77, 0.00, 0.00, 178.53, -1, 0, -1,800.00, 800.00); // beach176
CreateDynamicObject(-3419, 6260.48, -196.25, 10.88, 0.00, 0.00, 110.00, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3419, 6256.16, -225.87, 10.51, 0.00, 0.00, -0.89, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3419, 6223.92, -241.49, 10.68, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3419, 6304.09, -271.20, 10.73, 0.00, 0.00, 45.00, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3419, 6211.82, -276.27, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3418, 6238.02, -284.17, 10.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3461
CreateDynamicObject(-3411, 6262.08, -222.21, 12.60, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3412, 6260.71, -223.10, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6263.73, -222.09, 11.22, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6262.77, -221.01, 11.22, 0.00, 0.00, -116.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6260.82, -221.67, 11.22, 0.00, 0.00, -26.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6261.66, -224.19, 11.22, 0.00, 0.00, 63.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6263.63, -223.52, 11.22, 0.00, 0.00, 153.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3420, 6260.87, -223.93, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3420, 6260.34, -222.36, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3420, 6263.57, -221.27, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3420, 6264.08, -222.83, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3420, 6263.34, -224.30, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3420, 6262.36, -224.62, 11.38, 0.00, 0.00, -66.48, -1, 0, -1,800.00, 800.00); // beach3467
CreateDynamicObject(-3421, 6262.28, -222.75, 11.80, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach3468
CreateDynamicObject(-3416, 6260.61, -222.88, 11.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3458
CreateDynamicObject(-3417, 6260.57, -222.03, 11.37, 0.00, 0.00, -23.27, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3416, 6263.75, -223.39, 11.42, 0.00, 0.00, 151.69, -1, 0, -1,800.00, 800.00); // beach3458
CreateDynamicObject(-3417, 6263.76, -221.97, 11.36, 0.00, 0.00, -158.62, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3419, 6257.69, -215.06, 10.56, 0.00, 0.00, -91.12, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3416, 6258.88, -204.04, 11.36, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3458
CreateDynamicObject(-3393, 6305.73, -241.53, 11.07, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-3422, 6304.25, -246.61, 10.58, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3471
CreateDynamicObject(-2399, 6232.14, -252.73, 14.56, 0.00, 0.00, -1.93, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3411, 6258.70, -204.62, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3411, 6257.49, -205.02, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3411, 6253.99, -206.19, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3453
CreateDynamicObject(-3415, 6255.34, -204.09, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6255.84, -205.57, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6256.32, -207.08, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3413, 6257.20, -205.96, 10.43, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3455
CreateDynamicObject(-3412, 6256.84, -204.43, 11.15, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6254.14, -205.33, 11.15, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3412, 6258.83, -203.76, 11.15, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3454
CreateDynamicObject(-3416, 6258.80, -203.68, 11.36, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3458
CreateDynamicObject(-3417, 6258.92, -204.07, 11.30, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3417, 6254.03, -205.09, 11.30, 0.00, 0.00, -161.48, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3417, 6256.82, -204.33, 11.30, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3460
CreateDynamicObject(-3423, 6224.65, -281.89, 12.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3473
CreateDynamicObject(-3423, 6208.48, -306.44, 12.79, 0.00, 0.00, -105.00, -1, 0, -1,800.00, 800.00); // beach3473
CreateDynamicObject(-3423, 6285.50, -208.89, 12.91, 0.00, 0.00, -15.00, -1, 0, -1,800.00, 800.00); // beach3473
CreateDynamicObject(-3424, 6238.03, -249.93, 10.87, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6232.01, -244.68, 10.73, 0.00, 0.00, 55.66, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6236.30, -260.91, 10.75, 0.00, 0.00, 41.29, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-2469, 6254.47, -268.67, 10.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1427
CreateDynamicObject(-3425, 6262.17, -201.46, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3426, 6293.37, -270.56, 11.29, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3427, 6293.39, -270.65, 11.58, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3485
CreateDynamicObject(-2469, 6254.47, -268.02, 10.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1427
CreateDynamicObject(-2469, 6254.47, -268.06, 11.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1427
CreateDynamicObject(-3428, 6297.15, -270.64, 11.58, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3486
CreateDynamicObject(-3426, 6297.13, -270.56, 11.29, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3429, 6300.91, -270.64, 11.58, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3488
CreateDynamicObject(-3426, 6300.89, -270.56, 11.29, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3429, 6238.49, -214.79, 11.50, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3488
CreateDynamicObject(-3426, 6238.58, -214.81, 11.21, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3427, 6236.05, -219.01, 11.49, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3485
CreateDynamicObject(-3426, 6236.14, -219.03, 11.19, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3428, 6233.64, -223.19, 11.47, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3486
CreateDynamicObject(-3426, 6233.72, -223.22, 11.18, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3429, 6230.91, -228.45, 11.47, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3488
CreateDynamicObject(-3426, 6230.99, -228.48, 11.18, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3428, 6228.97, -231.81, 11.43, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3486
CreateDynamicObject(-3426, 6229.05, -231.83, 11.14, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3427, 6227.03, -235.16, 11.46, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3485
CreateDynamicObject(-3426, 6227.12, -235.18, 11.17, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3480
CreateDynamicObject(-3430, 6259.24, -262.51, 10.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3489
CreateDynamicObject(-3419, 6232.46, -225.90, 10.69, 0.00, 0.00, -118.69, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3419, 6240.92, -210.72, 10.69, 0.00, 0.00, -130.69, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3431, 6273.69, -198.33, 11.73, 0.00, 0.00, 11.48, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6281.27, -198.67, 12.04, 0.00, 0.00, -14.92, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6288.78, -200.67, 12.07, 0.00, 0.00, -14.92, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6296.25, -202.78, 12.06, 0.00, 0.00, -16.50, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6303.42, -205.67, 12.05, 0.00, 0.00, -27.61, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6310.11, -209.61, 12.02, 0.00, 0.00, -33.49, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6315.78, -214.80, 11.90, 0.00, 0.00, -52.03, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6320.19, -221.19, 12.00, 0.00, 0.00, -59.32, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6323.02, -228.28, 11.99, 0.00, 0.00, -78.37, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6323.84, -235.96, 11.90, 0.00, 0.00, -90.31, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6323.84, -251.43, 11.54, 0.00, 0.00, -90.31, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6323.85, -259.19, 11.37, 0.00, 0.00, -90.31, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6323.84, -266.94, 11.31, 0.00, 0.00, -90.31, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6321.64, -274.03, 11.23, 0.00, 0.00, -125.38, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6242.17, -209.06, 11.17, 0.00, 0.00, 26.69, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6236.84, -214.22, 11.21, 0.00, 0.00, 59.57, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6232.91, -220.92, 11.21, 0.00, 0.00, 59.57, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6229.14, -227.62, 11.21, 0.00, 0.00, 60.96, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6218.45, -248.15, 11.22, 0.00, 0.00, 65.39, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6214.83, -254.96, 11.23, 0.00, 0.00, 58.59, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6225.40, -234.37, 11.20, 0.00, 0.00, 60.96, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6221.79, -241.20, 11.19, 0.00, 0.00, 62.94, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6210.81, -261.57, 11.29, 0.00, 0.00, 58.59, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6206.79, -268.17, 11.44, 0.00, 0.00, 58.59, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6200.01, -280.75, 12.09, 0.00, 0.00, 65.11, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6197.23, -287.95, 12.40, 0.00, 0.00, 72.07, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6194.85, -295.36, 12.62, 0.00, 0.00, 72.07, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6192.48, -302.69, 12.72, 0.00, 0.00, 72.07, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6190.18, -310.09, 12.57, 0.00, 0.00, 73.34, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6188.00, -317.51, 12.32, 0.00, 0.00, 73.34, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3431, 6185.97, -324.98, 11.92, 0.00, 0.00, 76.19, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3415, 6269.91, -199.14, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6273.70, -198.30, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6277.51, -197.68, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6281.28, -198.65, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6285.02, -199.69, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6288.79, -200.64, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6292.52, -201.70, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6296.28, -202.76, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6299.95, -203.91, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6303.44, -205.63, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6306.85, -207.50, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6310.15, -209.60, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6313.33, -211.77, 12.07, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6315.81, -214.78, 11.96, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6318.16, -217.86, 11.96, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6320.21, -221.17, 11.96, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6322.17, -224.50, 11.96, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.05, -228.26, 11.96, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.81, -232.06, 11.95, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.90, -235.97, 11.95, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.84, -239.80, 11.95, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3431, 6323.84, -243.70, 11.76, 0.00, 0.00, -90.31, -1, 0, -1,800.00, 800.00); // beach3490
CreateDynamicObject(-3415, 6323.87, -243.68, 11.84, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.81, -247.54, 11.73, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.88, -251.43, 11.57, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.83, -255.29, 11.56, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.86, -259.16, 11.49, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.83, -263.05, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.88, -266.93, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6323.82, -270.82, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6319.36, -277.10, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6245.66, -207.35, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6242.16, -209.03, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6238.80, -210.86, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6236.82, -214.21, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6234.92, -217.57, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6232.91, -220.90, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6231.03, -224.26, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6229.13, -227.60, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6227.31, -230.99, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6225.38, -234.35, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6223.56, -237.75, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6221.78, -241.18, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6220.08, -244.65, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6218.42, -248.13, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6216.84, -251.66, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6214.81, -254.92, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6212.86, -258.28, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6210.79, -261.54, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6208.82, -264.87, 11.49, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6206.78, -268.16, 11.70, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6200.00, -280.74, 12.26, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6198.46, -284.29, 12.39, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6197.20, -287.93, 12.46, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6196.06, -291.64, 12.46, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6194.85, -295.33, 12.46, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6193.69, -299.02, 12.70, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6192.47, -302.68, 12.77, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6191.33, -306.38, 12.75, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6190.18, -310.08, 12.64, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6189.12, -313.80, 12.46, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6187.99, -317.50, 12.46, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6186.92, -321.21, 12.38, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6185.95, -324.97, 12.19, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6185.10, -328.75, 11.95, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3415, 6321.66, -274.07, 11.22, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3457
CreateDynamicObject(-3419, 6266.61, -214.98, 10.68, 0.00, 0.00, 122.28, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3424, 6223.95, -265.72, 10.75, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6228.62, -262.51, 10.81, 0.00, 0.00, -77.53, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6240.51, -257.30, 10.86, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3414, 6204.79, -271.49, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3456
CreateDynamicObject(-3414, 6201.66, -277.25, 12.53, 0.00, 0.00, 18.52, -1, 0, -1,800.00, 800.00); // beach3456
CreateDynamicObject(-3195, 6247.32, -203.48, 14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-2399, 6264.45, -196.47, 14.56, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3425, 6260.81, -201.92, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6259.43, -202.36, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6258.07, -202.83, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6256.71, -203.30, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6255.34, -203.76, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6253.97, -204.21, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6252.89, -204.58, 13.62, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6261.50, -220.52, 12.52, 0.00, 0.00, -162.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6263.07, -220.73, 12.52, 0.00, 0.00, 153.27, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6264.06, -221.96, 12.52, 0.00, 0.00, 108.97, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6260.47, -221.54, 12.52, 0.00, 0.00, -115.90, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6260.38, -223.26, 12.52, 0.00, 0.00, -73.49, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3432, 6260.79, -202.04, 12.12, 90.00, 18.40, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6257.60, -203.10, 12.12, 90.00, 18.40, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6254.39, -204.16, 12.12, 90.00, 18.40, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3424, 6287.31, -262.84, 10.76, 0.00, 0.00, 95.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6296.42, -254.53, 10.72, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6288.13, -254.67, 10.75, 0.00, 0.00, 55.66, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6296.66, -262.95, 10.83, 0.00, 0.00, -77.53, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-2399, 6290.20, -260.07, 14.56, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3424, 6286.08, -225.49, 10.80, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6299.83, -239.64, 10.84, 0.00, 0.00, 41.29, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6282.15, -236.32, 10.87, 0.00, 0.00, -77.53, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6288.51, -234.67, 10.93, 0.00, 0.00, -30.00, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3195, 6290.04, -224.60, 14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-2399, 6286.52, -237.44, 14.56, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3419, 6279.34, -218.98, 10.72, 0.00, 0.00, -109.98, -1, 0, -1,800.00, 800.00); // beach3462
CreateDynamicObject(-3432, 6277.92, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6274.66, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6271.40, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6268.14, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6264.88, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6261.62, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6258.35, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6255.09, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6251.98, -244.09, 12.52, 90.00, 0.80, 179.21, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -265.42, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -262.16, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -258.90, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -255.64, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -252.38, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -249.12, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6279.41, -246.00, 12.50, 90.00, -89.98, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -245.90, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -249.16, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -252.42, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -255.68, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -258.94, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -262.20, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3432, 6250.46, -265.32, 12.43, 90.00, 90.02, -180.00, -1, 0, -1,800.00, 800.00); // beach3491
CreateDynamicObject(-3433, 6237.30, -278.22, 13.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3496
CreateDynamicObject(-3434, 6309.03, -243.19, 32.88, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3497
CreateDynamicObject(-3393, 6305.67, -244.61, 11.07, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3415
CreateDynamicObject(-3435, 6219.68, -169.84, 27.34, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach3509
CreateDynamicObject(-3436, 6228.03, -141.96, 14.33, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3513
CreateDynamicObject(-2566, 6235.73, -155.37, 12.48, 0.00, 0.00, 13.36, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6239.46, -137.58, 12.29, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6216.55, -191.79, 12.31, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6214.75, -205.77, 12.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6204.25, -187.55, 11.89, 0.00, 0.00, 52.78, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6244.29, -137.53, 12.30, 0.00, 0.00, -7.98, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6226.69, -127.72, 12.15, 0.00, 0.00, 64.24, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6230.16, -129.64, 12.28, 0.00, 0.00, 74.61, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6233.07, -131.63, 12.11, 0.00, 0.00, 121.38, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6201.98, -182.90, 11.89, 0.00, 0.00, 11.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-3410, 6305.13, -245.40, 10.83, -5.13, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3410, 6305.26, -240.65, 10.83, -5.13, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3449
CreateDynamicObject(-3437, 6218.50, -367.76, 21.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3515
CreateDynamicObject(-3438, 6101.46, -363.01, 11.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3516
CreateDynamicObject(-3439, 6128.54, -281.98, -0.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3517
CreateDynamicObject(-3195, 6164.51, -317.31, 14.00, 0.00, 0.00, 32.02, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3440, 6182.60, -238.61, 10.44, 0.00, 0.00, 105.00, -1, 0, -1,800.00, 800.00); // beach3519
CreateDynamicObject(-2399, 6169.08, -303.21, 14.09, 0.00, 0.00, -1.93, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2566, 6208.30, -210.40, 12.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-3441, 6154.68, -357.51, 10.05, 0.00, 0.00, -25.00, -1, 0, -1,800.00, 800.00); // beach3520
CreateDynamicObject(-3442, 6080.21, -429.77, 12.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3521
CreateDynamicObject(-3443, 6275.36, 27.35, 13.84, 0.00, 0.00, -129.58, -1, 0, -1,800.00, 800.00); // beach3523
CreateDynamicObject(-3443, 6259.07, 40.14, 13.86, 0.00, 0.00, -129.58, -1, 0, -1,800.00, 800.00); // beach3523
CreateDynamicObject(-3443, 6253.32, -13.88, 13.75, 0.00, 0.00, 50.84, -1, 0, -1,800.00, 800.00); // beach3523
CreateDynamicObject(-3444, 6165.18, -412.93, 13.41, 0.00, 0.00, -2.00, -1, 0, -1,800.00, 800.00); // beach3525
CreateDynamicObject(-2566, 6081.14, -315.03, 11.89, 0.00, 0.00, -148.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2399, 6082.06, -299.48, 15.39, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-3445, 6118.08, -341.18, 12.09, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3526
CreateDynamicObject(-2566, 6078.33, -304.81, 12.58, 0.00, 0.00, 11.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6114.48, -294.08, 9.71, 0.00, 0.00, 81.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2399, 6039.07, -312.30, 14.55, 0.00, 0.00, 28.16, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2566, 6047.32, -301.38, 11.56, 0.00, 0.00, 11.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6071.11, -294.42, 11.22, 0.00, 0.00, -88.75, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2399, 6155.04, -296.24, 14.09, 0.00, 0.00, -1.93, -1, 0, -1,800.00, 800.00); // beach1283
CreateDynamicObject(-2566, 6079.94, -303.07, 12.35, 0.00, 0.00, -48.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6094.82, -324.38, 10.51, 0.00, 0.00, 76.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6168.79, -298.70, 11.89, 0.00, 0.00, 11.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6139.08, -384.22, 11.78, 0.00, 0.00, 56.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6070.03, -356.70, 13.63, 0.00, 0.00, -93.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6051.35, -337.36, 11.84, 0.00, 0.00, -123.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6047.71, -340.14, 12.63, 0.00, 0.00, -93.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6067.93, -292.77, 11.22, 0.00, 0.00, -88.75, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-3424, 6105.46, -338.14, 9.12, 0.00, 0.00, 55.66, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3203, 6077.78, -317.00, 10.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3091
CreateDynamicObject(-3446, 6088.45, -310.60, 9.98, 0.00, 0.00, -42.02, -1, 0, -1,800.00, 800.00); // beach3527
CreateDynamicObject(-2566, 6159.69, -339.41, 11.16, 0.00, 0.00, 111.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-2566, 6150.60, -354.34, 10.79, 0.00, 0.00, -143.80, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-3424, 6120.51, -317.57, 9.03, 0.00, 0.00, 16.54, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6131.74, -318.86, 9.30, 0.00, 0.00, -46.71, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6137.93, -328.31, 9.89, 0.00, 0.00, 55.66, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6113.37, -331.90, 9.19, 0.00, 0.00, 87.12, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-3424, 6113.92, -348.64, 9.46, 0.00, 0.00, -28.59, -1, 0, -1,800.00, 800.00); // beach3478
CreateDynamicObject(-2566, 6112.16, -336.96, 9.88, 0.00, 0.00, 171.20, -1, 0, -1,800.00, 800.00); // beach1677
CreateDynamicObject(-3447, 6264.90, -255.89, 14.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3528
CreateDynamicObject(-3448, 6264.91, -255.61, 15.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3539
CreateDynamicObject(-3449, 6077.63, -551.27, 16.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3540
CreateDynamicObject(-3450, 6224.72, -159.82, 26.93, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach3541
CreateDynamicObject(-3451, 6264.90, -255.89, 13.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3542
CreateDynamicObject(-3452, 6244.52, -272.66, 11.44, 0.00, 0.00, -132.29, -1, 0, -1,800.00, 800.00); // beach3543
CreateDynamicObject(-3453, 6285.83, -270.25, 11.36, 0.00, 0.00, 179.66, -1, 0, -1,800.00, 800.00); // beach3547
CreateDynamicObject(-3454, 6282.79, -211.27, 13.91, 0.00, 0.00, 165.00, -1, 0, -1,800.00, 800.00); // beach3549
CreateDynamicObject(-3455, 6206.10, -303.72, 13.80, 0.00, 0.00, 75.00, -1, 0, -1,800.00, 800.00); // beach3550
CreateDynamicObject(-3456, 6215.37, -304.06, 12.42, 90.00, -105.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3551
CreateDynamicObject(-3425, 6262.13, -220.37, 14.95, 0.00, 0.00, 172.79, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6261.91, -220.57, 14.95, 0.00, 0.00, -97.21, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-3425, 6262.31, -220.62, 14.95, 0.00, 0.00, 82.79, -1, 0, -1,800.00, 800.00); // beach3479
CreateDynamicObject(-2488, 6249.03, -201.26, 19.63, 0.00, 0.00, 80.14, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-3457, 6249.03, -202.12, 28.39, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3553
CreateDynamicObject(-3195, 6249.98, -197.16, 14.47, 0.00, 0.00, -80.00, -1, 0, -1,800.00, 800.00); // beach3079
CreateDynamicObject(-3458, 6167.90, -476.33, 12.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3555
CreateDynamicObject(-3459, 6015.03, -548.70, 47.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3557
CreateDynamicObject(-3460, 6101.84, -588.40, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3558
CreateDynamicObject(-3461, 6079.30, -517.23, 50.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3559
CreateDynamicObject(-3462, 6243.71, -271.84, 13.20, 0.00, 0.00, 47.71, -1, 0, -1,800.00, 800.00); // beach3560
CreateDynamicObject(-3463, 6285.85, -269.10, 13.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3562
CreateDynamicObject(-3464, 6003.55, -548.84, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3564
CreateDynamicObject(-3465, 6060.24, -512.05, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3565
CreateDynamicObject(-3466, 6082.67, -583.24, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3566
CreateDynamicObject(-3467, 5907.43, 968.64, 2.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3567
CreateDynamicObject(-3468, 5917.51, 950.79, 14.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3571
CreateDynamicObject(-3469, 5877.40, 967.54, 16.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3575
CreateDynamicObject(-3470, 5979.98, 1124.08, 15.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3578
CreateDynamicObject(-3471, 5898.41, 1029.06, 21.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3579
CreateDynamicObject(-3472, 5964.76, 930.70, 14.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3582
CreateDynamicObject(-3473, 5962.34, 919.50, 11.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3585
CreateDynamicObject(-3474, 5929.15, 918.90, 15.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3586
CreateDynamicObject(-3475, 5978.35, 963.32, 15.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3590
CreateDynamicObject(-3476, 5867.29, 986.52, 13.66, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3592
CreateDynamicObject(-3477, 6023.16, 941.54, 16.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3594
CreateDynamicObject(-3478, 5958.19, 908.81, 14.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3599
CreateDynamicObject(-3479, 5936.93, 939.57, 9.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3600
CreateDynamicObject(-3480, 6060.08, 924.47, 11.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3602
CreateDynamicObject(-3481, 5954.55, 861.24, 15.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3603
CreateDynamicObject(-3482, 6040.30, 1052.25, 16.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3604
CreateDynamicObject(-3483, 6004.32, 936.04, 3.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3605
CreateDynamicObject(-3484, 5923.37, 1113.42, 18.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3606
CreateDynamicObject(-3485, 6021.98, 942.20, 15.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3607
CreateDynamicObject(-3486, 5950.96, 1220.74, 23.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3608
CreateDynamicObject(-3487, 6031.43, 1166.31, 24.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3614
CreateDynamicObject(-3488, 6041.63, 1104.68, 21.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3615
CreateDynamicObject(-3489, 5915.54, 1115.26, 19.98, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3616
CreateDynamicObject(-3490, 5984.63, 1163.59, 26.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3617
CreateDynamicObject(-2730, 6015.16, 951.12, 16.51, 0.00, 0.00, 77.00, -1, 0, -1,800.00, 800.00); // beach964
CreateDynamicObject(-2735, 6043.96, 915.66, 11.84, 0.00, 0.00, 77.50, -1, 0, -1,800.00, 800.00); // beach2019
CreateDynamicObject(-2731, 6046.02, 915.23, 11.21, 0.00, 0.00, 77.50, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-3491, 5929.15, 914.90, 13.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3619
CreateDynamicObject(-3492, 5898.80, 967.57, 17.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3620
CreateDynamicObject(-3493, 5868.52, 997.72, 10.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3622
CreateDynamicObject(-3494, 5971.20, 973.97, 11.57, 0.00, 0.00, 171.12, -1, 0, -1,800.00, 800.00); // beach3625
CreateDynamicObject(-3495, 5976.21, 1092.14, 18.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3629
CreateDynamicObject(-3496, 6041.45, 1104.46, 25.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3633
CreateDynamicObject(-3497, 5915.76, 1115.08, 25.12, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3642
CreateDynamicObject(-3498, 5839.20, 1026.88, -0.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3648
CreateDynamicObject(-2325, 6070.54, 1013.92, 14.11, 0.00, 0.00, 65.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2325, 5866.79, 1059.17, 14.70, 0.00, 0.00, -105.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-3499, 6069.77, 1011.51, 17.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3649
CreateDynamicObject(-3500, 5867.35, 1062.47, 17.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3651
CreateDynamicObject(-3501, 5897.89, 931.12, 11.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3652
CreateDynamicObject(-3502, 5894.81, 932.55, 14.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3656
CreateDynamicObject(-3503, 5931.29, 996.36, 17.75, 0.00, 0.00, -105.83, -1, 0, -1,800.00, 800.00); // beach3659
CreateDynamicObject(-3504, 5882.72, 932.54, 17.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3661
CreateDynamicObject(-3505, 5881.84, 932.91, 15.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3662
CreateDynamicObject(-3506, 5883.14, 932.59, 15.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3663
CreateDynamicObject(-3502, 5870.65, 932.60, 14.04, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3656
CreateDynamicObject(-3506, 5934.33, 1007.67, 15.44, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3663
CreateDynamicObject(-3505, 5934.71, 1007.83, 16.34, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3662
CreateDynamicObject(-3502, 5937.74, 1019.70, 14.04, 0.00, 0.00, 74.24, -1, 0, -1,800.00, 800.00); // beach3656
CreateDynamicObject(-3502, 5931.12, 996.46, 14.04, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3656
CreateDynamicObject(-3504, 5934.41, 1008.09, 17.71, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3661
CreateDynamicObject(-3506, 5961.94, 999.84, 15.44, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3663
CreateDynamicObject(-3505, 5962.31, 1000.00, 16.34, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3662
CreateDynamicObject(-3502, 5958.73, 988.63, 14.04, 0.00, 0.00, -105.76, -1, 0, -1,800.00, 800.00); // beach3656
CreateDynamicObject(-3507, 5930.86, 1195.95, 21.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3665
CreateDynamicObject(-2392, 5922.79, 1206.17, 20.64, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach1229
CreateDynamicObject(-3508, 5980.55, 1145.58, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3509, 5925.54, 1093.44, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3510, 5925.50, 1093.47, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3511, 6038.29, 1084.84, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3512, 5952.70, 1126.29, 17.27, 0.00, 0.00, -68.52, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3513, 6032.66, 1084.83, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6032.65, 1088.32, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6023.95, 1094.72, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6019.84, 1094.71, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6019.90, 1114.38, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6023.99, 1114.36, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6032.60, 1120.66, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6032.65, 1124.09, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6050.94, 1124.08, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6050.93, 1120.65, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6059.53, 1114.29, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6063.31, 1114.32, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6063.22, 1094.77, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6059.54, 1094.73, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6051.01, 1088.28, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3513, 6051.00, 1084.87, 26.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3675
CreateDynamicObject(-3511, 6032.63, 1084.84, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6032.69, 1088.30, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6024.16, 1088.31, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6023.92, 1094.71, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6019.84, 1094.75, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6019.81, 1114.26, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6024.02, 1114.33, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6024.15, 1120.73, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6032.60, 1120.66, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6032.66, 1124.06, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6050.88, 1124.04, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6050.96, 1120.60, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6059.44, 1120.68, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6059.69, 1114.43, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6063.28, 1114.34, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6063.18, 1094.75, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6059.50, 1094.76, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6059.46, 1088.35, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6050.96, 1088.29, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6050.95, 1084.89, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3511, 6045.35, 1084.83, 20.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3672
CreateDynamicObject(-3510, 5905.88, 1093.47, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5905.88, 1097.62, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5899.51, 1097.79, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5899.60, 1106.26, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5896.23, 1106.30, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5896.18, 1124.60, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5899.62, 1124.59, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5899.51, 1133.08, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5905.92, 1133.23, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5905.94, 1136.88, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5925.51, 1136.92, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5925.52, 1133.25, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5931.84, 1133.08, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5932.01, 1124.58, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5935.38, 1124.64, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5935.32, 1118.94, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5935.32, 1111.90, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5935.38, 1106.27, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5931.94, 1106.27, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5931.89, 1097.79, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3510, 5925.53, 1097.63, 18.38, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3671
CreateDynamicObject(-3509, 5905.89, 1093.45, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5905.91, 1097.61, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5899.54, 1097.73, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5899.65, 1106.29, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5896.16, 1106.34, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5896.23, 1124.64, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5899.61, 1124.63, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5899.62, 1133.06, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5905.89, 1133.28, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5905.85, 1136.88, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5925.50, 1136.98, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5925.48, 1133.26, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5931.86, 1133.07, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5931.98, 1124.61, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5935.42, 1124.55, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5935.31, 1118.92, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5935.37, 1111.94, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5935.43, 1106.27, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5931.92, 1106.26, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5931.91, 1097.92, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3509, 5925.54, 1097.65, 24.99, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3670
CreateDynamicObject(-3508, 5976.27, 1149.09, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5966.92, 1159.23, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5973.35, 1160.41, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5973.35, 1172.11, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5973.36, 1183.88, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5984.42, 1183.83, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5995.48, 1183.86, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5995.47, 1172.13, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5995.96, 1160.41, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 6002.33, 1159.14, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 6002.08, 1149.68, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5992.56, 1149.06, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3508, 5988.17, 1145.47, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-3512, 5928.54, 1154.93, 20.05, 0.00, 0.00, -5.95, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5919.92, 1169.31, 21.18, 0.00, 0.00, -27.36, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5936.26, 1168.59, 21.18, 0.00, 0.00, 3.90, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5971.70, 1081.81, 16.40, 0.00, 0.00, -61.49, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5969.43, 1072.12, 14.73, 0.00, 0.00, 26.24, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 6050.89, 1074.89, 17.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 6061.33, 1075.73, 17.27, 0.00, 0.00, -30.29, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5901.32, 1093.24, 13.97, 0.00, 0.00, 4.70, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-2409, 5983.90, 1205.07, 19.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6039.17, 1104.78, 32.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2409, 6045.86, 1129.09, 17.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2559, 5964.19, 1193.37, 21.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 5964.19, 1198.62, 21.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 5943.33, 1186.30, 21.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 5964.22, 1203.95, 21.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2409, 5947.88, 1213.27, 20.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1321
CreateDynamicObject(-2670, 5978.47, 1188.95, 18.78, 0.00, 0.00, -100.00, -1, 0, -1,800.00, 800.00); // beach1851
CreateDynamicObject(-2884, 5978.51, 1189.01, 19.34, 0.00, 0.00, -104.50, -1, 0, -1,800.00, 800.00); // beach2410
CreateDynamicObject(-2671, 5937.99, 1118.00, 14.51, 0.00, 0.00, 20.00, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2671, 5938.02, 1117.92, 14.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2671, 5937.81, 1117.35, 14.42, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2671, 5938.15, 1116.81, 14.43, 89.94, -130.70, 25.70, -1, 0, -1,800.00, 800.00); // beach1853
CreateDynamicObject(-2673, 5983.85, 1205.48, 19.64, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2672, 5983.77, 1205.71, 19.64, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-2673, 6039.00, 1105.22, 32.56, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-2672, 6038.95, 1105.11, 32.56, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-3196, 5996.61, 1206.44, 19.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5971.61, 1206.46, 19.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5979.86, 1211.19, 21.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5987.85, 1211.31, 21.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5976.13, 1144.78, 19.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5992.99, 1144.82, 19.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3193, 5996.68, 1197.01, 19.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3206, 5948.79, 1217.34, 21.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3198, 5953.75, 1216.85, 21.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3194, 5996.71, 1201.91, 19.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3193, 5996.71, 1188.02, 19.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3206, 5971.75, 1188.03, 19.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3198, 5973.67, 1188.07, 19.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3194, 5994.98, 1188.04, 19.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3193, 6022.24, 1088.83, 16.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3206, 6013.43, 1089.65, 15.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3198, 6016.39, 1089.16, 16.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3194, 6019.47, 1089.04, 16.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3193, 6021.93, 1078.83, 15.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3206, 6013.82, 1078.83, 13.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3198, 6016.60, 1078.92, 14.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3194, 6019.30, 1078.70, 15.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-2672, 5983.50, 1205.57, 19.64, 0.00, 0.00, -12.50, -1, 0, -1,800.00, 800.00); // beach1855
CreateDynamicObject(-3196, 5971.61, 1190.28, 19.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-3196, 5996.61, 1190.27, 19.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3081
CreateDynamicObject(-2559, 5943.29, 1179.73, 21.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 5954.67, 1189.88, 21.07, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-3193, 6024.44, 1078.82, 15.50, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3075
CreateDynamicObject(-3194, 6027.06, 1078.94, 16.03, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3198, 6029.76, 1078.72, 16.07, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3206, 6032.54, 1078.81, 15.76, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3093
CreateDynamicObject(-3198, 6040.42, 1107.62, 32.93, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach1068
CreateDynamicObject(-3194, 6040.41, 1099.23, 32.92, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3077
CreateDynamicObject(-3512, 5958.62, 1168.59, 21.65, 0.00, 0.00, 3.90, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 6004.03, 1196.84, 22.29, 0.00, 0.00, 3.90, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-2559, 5959.94, 1189.88, 21.07, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2559, 5948.03, 1189.88, 21.07, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1658
CreateDynamicObject(-2673, 5978.42, 1189.17, 18.56, -77.50, -90.00, -90.00, -1, 0, -1,800.00, 800.00); // beach1857
CreateDynamicObject(-3508, 5966.77, 1149.71, 25.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3668
CreateDynamicObject(-2885, 5970.53, 1204.70, 18.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-3514, 5975.19, 1207.38, 19.61, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-2885, 5970.53, 1198.51, 18.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5970.53, 1193.40, 18.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5965.04, 1196.07, 20.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5965.04, 1201.30, 20.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5964.99, 1189.11, 20.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5957.29, 1189.11, 20.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5951.56, 1189.11, 20.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.12, 1189.11, 20.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.12, 1182.87, 20.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.12, 1176.95, 20.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5997.90, 1204.70, 18.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5997.90, 1198.97, 18.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5997.90, 1192.84, 18.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5971.17, 1130.63, 16.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5974.54, 1136.06, 17.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5979.50, 1140.88, 18.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5997.09, 1141.79, 18.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6003.89, 1139.44, 18.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5993.47, 1125.42, 16.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-3512, 5967.16, 1134.07, 20.06, 0.00, 0.00, 147.62, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-2885, 6014.64, 1089.29, 14.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6021.28, 1088.88, 15.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6021.28, 1079.21, 14.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6015.12, 1079.21, 13.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6031.48, 1079.21, 14.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6041.69, 1079.21, 14.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 6051.90, 1079.21, 15.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.78, 1110.77, 14.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.78, 1118.70, 14.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.78, 1126.62, 15.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5944.78, 1134.54, 16.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2885, 5938.94, 1102.14, 13.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-3514, 5993.32, 1207.38, 19.33, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5983.68, 1209.38, 19.71, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5979.45, 1185.32, 19.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5991.02, 1185.32, 19.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5996.50, 1178.08, 19.85, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5996.49, 1165.25, 20.26, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6005.98, 1154.60, 19.58, 0.00, 0.00, -75.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5963.17, 1154.60, 19.94, 0.00, 0.00, 75.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5972.71, 1165.89, 19.94, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5972.70, 1178.40, 19.94, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5970.11, 1148.23, 19.64, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5998.96, 1148.26, 20.25, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5982.27, 1143.89, 19.51, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5987.00, 1143.91, 20.05, 0.00, 0.00, -160.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6041.69, 1115.48, 32.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6054.69, 1103.69, 32.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6041.51, 1092.74, 32.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6028.02, 1097.81, 32.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 6031.87, 1105.03, 32.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5915.44, 1101.60, 31.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5904.66, 1128.40, 31.24, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5927.63, 1128.57, 31.24, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5927.53, 1101.60, 31.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5904.84, 1101.60, 31.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5927.62, 1115.26, 31.24, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3515, 5984.58, 1165.49, 27.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3677
CreateDynamicObject(-2776, 5967.93, 1214.65, 20.82, 0.00, 0.00, -65.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 5973.06, 1215.01, 20.83, 0.00, 0.00, -95.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 5977.45, 1189.97, 18.93, 0.00, 0.00, 80.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 5974.41, 1190.35, 18.93, 0.00, 0.00, 65.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 5914.24, 1143.95, 15.67, 0.00, -4.60, 40.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 5918.05, 1143.75, 15.56, 0.00, -7.51, 120.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6039.37, 1130.48, 17.36, 3.50, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-2776, 6039.33, 1128.30, 16.94, 3.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // beach2114
CreateDynamicObject(-3516, 5975.88, 1126.77, 9.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3686
CreateDynamicObject(-3512, 6015.71, 1156.09, 21.18, 0.00, 0.00, -27.36, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3512, 5978.58, 1074.30, 15.91, 0.00, 0.00, -6.22, -1, 0, -1,800.00, 800.00); // beach3674
CreateDynamicObject(-3517, 5985.97, 1165.32, 50.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3689
CreateDynamicObject(-2885, 6004.66, 1128.56, 17.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach2412
CreateDynamicObject(-2731, 5926.84, 911.11, 10.46, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5922.48, 911.11, 10.46, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5918.08, 911.11, 14.20, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5926.87, 911.11, 14.20, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5940.12, 911.11, 14.20, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5935.81, 911.11, 10.47, 0.00, 0.00, 89.75, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5940.13, 925.75, 14.16, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5931.48, 925.75, 14.16, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5918.12, 925.75, 14.16, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5922.50, 925.75, 10.46, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5931.43, 925.75, 10.46, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2731, 5935.82, 925.75, 10.46, 0.00, 0.00, -90.25, -1, 0, -1,800.00, 800.00); // beach2005
CreateDynamicObject(-2488, 6019.72, 1006.41, 19.91, 0.00, 0.00, -9.86, -1, 0, -1,800.00, 800.00); // beach1470
CreateDynamicObject(-3518, 6018.86, 1006.41, 28.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3691
CreateDynamicObject(-3519, 5877.61, 967.57, 16.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3694
CreateDynamicObject(-3520, 5867.33, 967.53, 14.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3696
CreateDynamicObject(-3521, 5892.67, 955.28, 10.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3698
CreateDynamicObject(-3522, 5892.68, 975.72, 13.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3700
CreateDynamicObject(-3523, 5865.86, 967.20, 16.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3716
CreateDynamicObject(-3524, 5898.12, 969.37, 12.24, 0.00, 0.00, 30.00, -1, 0, -1,800.00, 800.00); // beach3722
CreateDynamicObject(-3525, 5878.21, 964.56, 15.91, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3524, 5880.38, 975.10, 12.24, 0.00, 0.00, 115.00, -1, 0, -1,800.00, 800.00); // beach3722
CreateDynamicObject(-3524, 5880.52, 960.92, 12.24, 0.00, 0.00, 70.00, -1, 0, -1,800.00, 800.00); // beach3722
CreateDynamicObject(-3525, 5878.21, 971.05, 15.91, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5870.48, 980.58, 15.91, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5864.66, 980.68, 15.91, 0.00, 0.00, 125.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5870.48, 954.47, 15.91, 0.00, 0.00, 20.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5864.64, 954.35, 15.91, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5865.30, 963.36, 19.47, 0.00, 0.00, 75.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3525, 5865.29, 971.76, 19.47, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach3726
CreateDynamicObject(-3514, 5851.92, 1025.62, 12.03, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3514, 5851.92, 1029.96, 12.03, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3676
CreateDynamicObject(-3526, 6047.71, 1092.52, 32.16, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // beach3727
CreateDynamicObject(-3527, 5889.68, 895.13, 13.64, 0.00, 0.00, 35.00, -1, 0, -1,800.00, 800.00); // beach3729
CreateDynamicObject(-3528, 5865.51, 899.32, 15.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3731
CreateDynamicObject(-3529, 5940.70, 927.92, 10.97, 0.00, 0.00, -167.39, -1, 0, -1,800.00, 800.00); // beach3732
CreateDynamicObject(-3530, 5898.91, 899.54, 10.81, 0.00, 0.00, -159.96, -1, 0, -1,800.00, 800.00); // beach3736
CreateDynamicObject(-3531, 5898.52, 899.54, 9.94, 0.00, 0.00, -159.96, -1, 0, -1,800.00, 800.00); // beach3739
CreateDynamicObject(-3532, 5878.46, 1002.78, 10.97, 0.00, 0.00, -16.26, -1, 0, -1,800.00, 800.00); // beach3740
CreateDynamicObject(-3533, 5103.18, -113.74, 16.37, 0.00, 0.00, 153.00, -1, 0, -1,800.00, 800.00); // beach3821
CreateDynamicObject(-3534, 5103.18, -113.74, 16.37, 0.00, 0.00, 153.00, -1, 0, -1,800.00, 800.00); // beach3823
CreateDynamicObject(-3535, 5164.49, -157.94, -6.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3831
CreateDynamicObject(-3536, 5129.29, -55.77, 43.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3836
CreateDynamicObject(-3192, 5194.62, 119.50, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-3192, 5193.70, 115.44, 12.37, 0.00, 0.00, 31.00, -1, 0, -1,800.00, 800.00); // beach871
CreateDynamicObject(-2325, 5224.85, 32.07, 19.79, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-3537, 5219.22, 61.42, 20.18, 0.00, -90.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3899
CreateDynamicObject(-2325, 5211.83, 96.42, 14.20, 0.00, 0.00, 169.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-2325, 5226.81, 93.76, 14.20, 0.00, 0.00, -11.00, -1, 0, -1,800.00, 800.00); // beach195
CreateDynamicObject(-3538, 5190.43, 34.32, 12.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3938
CreateDynamicObject(-3539, 6033.82, 702.14, -11.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3956
CreateDynamicObject(-3540, 7149.82, -382.97, -13.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3960
CreateDynamicObject(-3541, 7031.66, 1061.14, -13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3961
CreateDynamicObject(-3542, 7027.30, -957.91, -16.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3962
CreateDynamicObject(-3543, 6956.22, -1641.76, -16.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3963
CreateDynamicObject(-3544, 6140.42, -1716.58, -24.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3964
CreateDynamicObject(-3545, 6358.33, 1471.09, -21.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3966
CreateDynamicObject(-3546, 7137.41, 47.24, -14.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3968
CreateDynamicObject(-3547, 7137.41, 561.07, -13.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3969
CreateDynamicObject(-3548, 6992.57, 1423.26, -21.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3970
CreateDynamicObject(-3549, 5523.38, -1809.29, -22.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach3972
CreateDynamicObject(-3550, 5129.29, -55.82, 43.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4211
CreateDynamicObject(-3551, 6069.38, -512.09, 57.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4212
CreateDynamicObject(-3552, 6091.92, -588.41, 57.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4213
CreateDynamicObject(-3553, 6003.55, -548.87, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4214
CreateDynamicObject(-3554, 6567.27, 860.32, 59.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4215
CreateDynamicObject(-3555, 6372.09, 1197.28, 31.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4216
CreateDynamicObject(-3556, 6372.07, 1064.64, 31.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4217
CreateDynamicObject(-3557, 6550.45, 682.01, 67.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4218
CreateDynamicObject(-3558, 6520.88, 986.21, 68.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4219
CreateDynamicObject(-3559, 6185.06, 974.29, 3.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4220
CreateDynamicObject(-3560, 6514.45, 193.52, 58.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4224
CreateDynamicObject(-3561, 6527.92, 361.21, 67.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4225
CreateDynamicObject(-3562, 6267.07, 756.28, 65.68, 0.00, 0.00, 109.61, -1, 0, -1,800.00, 800.00); // beach4226
CreateDynamicObject(-3563, 5906.83, -459.40, 5.71, 1.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // LODch4227
CreateDynamicObject(-3564, 5285.17, 27.19, 14.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4232
CreateDynamicObject(-3565, 5359.00, 26.03, 16.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4233
CreateDynamicObject(-3566, 5432.71, 27.09, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4234
CreateDynamicObject(-3567, 5530.80, 32.65, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4235
CreateDynamicObject(-3568, 5644.75, 42.75, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4236
CreateDynamicObject(-3569, 5725.79, 52.89, 16.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4237
CreateDynamicObject(-3570, 5790.38, 63.13, 16.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4238
CreateDynamicObject(-3571, 5862.63, 77.05, 15.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4239
CreateDynamicObject(-3572, 5951.18, 194.09, 36.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4256
CreateDynamicObject(-3573, 5956.02, 83.39, 41.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4257
CreateDynamicObject(-3574, 6075.92, -33.58, 27.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4258
CreateDynamicObject(-3575, 5993.40, -212.39, 19.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4259
CreateDynamicObject(-3576, 5940.40, -73.57, 29.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4260
CreateDynamicObject(-3577, 6053.75, 122.65, 29.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4261
CreateDynamicObject(-3578, 5781.23, 480.13, 22.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4264
CreateDynamicObject(-3579, 5971.40, 140.06, 17.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4265
CreateDynamicObject(-3580, 6080.49, 215.32, 17.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4266
CreateDynamicObject(-3581, 5966.85, -57.70, 5.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4270
CreateDynamicObject(-3582, 6089.98, -12.37, 3.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4274
CreateDynamicObject(-3583, 6113.83, 75.97, 6.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4276
CreateDynamicObject(-3584, 5986.26, 93.07, 10.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4278
CreateDynamicObject(-3585, 6115.69, 189.53, 8.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4279
CreateDynamicObject(-3586, 5951.12, 321.15, 10.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4283
CreateDynamicObject(-3587, 5853.90, -1227.61, 55.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4290
CreateDynamicObject(-3588, 5867.49, -1223.38, 55.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4291
CreateDynamicObject(-3589, 5836.39, -1456.18, 56.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4292
CreateDynamicObject(-3590, 5833.87, -1457.28, 62.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4293
CreateDynamicObject(-3591, 6035.90, -1531.46, 57.00, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // beach4294
CreateDynamicObject(-3592, 6137.80, -893.46, 90.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4295
CreateDynamicObject(-3593, 6171.59, -832.71, 61.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4296
CreateDynamicObject(-3594, 6195.56, -781.09, 73.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4297
CreateDynamicObject(-3595, 5833.97, -1045.77, 63.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4298
CreateDynamicObject(-3596, 5741.36, -1086.19, 59.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4299
CreateDynamicObject(-3597, 6039.52, -793.36, 48.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4300
CreateDynamicObject(-3598, 5836.07, -1155.82, 71.85, 0.00, 0.00, -75.39, -1, 0, -1,800.00, 800.00); // beach4301
CreateDynamicObject(-3599, 5523.38, -1809.29, -22.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4315
CreateDynamicObject(-3600, 7137.41, 47.23, -14.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4316
CreateDynamicObject(-3601, 7149.82, -382.98, -13.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4317
CreateDynamicObject(-3602, 6956.22, -1641.76, -16.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4320
CreateDynamicObject(-3603, 7027.30, -957.93, -16.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4321
CreateDynamicObject(-3604, 7137.41, 561.05, -68.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4322
CreateDynamicObject(-3605, 7031.66, 1061.13, -13.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4323
CreateDynamicObject(-3606, 6992.57, 1423.24, -21.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4324
CreateDynamicObject(-3607, 6358.33, 1471.08, -21.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4325
CreateDynamicObject(-3608, 5962.01, 1000.29, 16.19, 0.00, 0.00, 0.34, -1, 0, -1,800.00, 800.00); // LODch4340
CreateDynamicObject(-3608, 5934.41, 1008.12, 16.19, 0.00, 0.00, 0.34, -1, 0, -1,800.00, 800.00); // LODch4340
CreateDynamicObject(-3609, 5979.09, 1125.02, 14.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4344
CreateDynamicObject(-3610, 5889.68, 895.12, 13.65, 0.00, 0.00, 35.00, -1, 0, -1,800.00, 800.00); // LODch4349
CreateDynamicObject(-3611, 5877.40, 967.54, 16.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4351
CreateDynamicObject(-3612, 5898.09, 1029.05, 21.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4352
CreateDynamicObject(-3613, 5868.52, 997.70, 10.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4358
CreateDynamicObject(-3614, 5915.69, 1115.03, 24.89, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch4361
CreateDynamicObject(-3615, 5984.46, 1165.09, 28.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4368
CreateDynamicObject(-3616, 6041.43, 1104.50, 25.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4370
CreateDynamicObject(-3617, 6004.10, 936.23, 3.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4377
CreateDynamicObject(-3618, 6101.50, -363.04, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4379
CreateDynamicObject(-3619, 6128.54, -282.39, -1.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4380
CreateDynamicObject(-3620, 6059.09, -352.64, -1.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4381
CreateDynamicObject(-3621, 6284.11, -293.71, 12.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4382
CreateDynamicObject(-3622, 6093.16, -587.19, 54.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4384
CreateDynamicObject(-3623, 6070.73, -516.05, 50.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4385
CreateDynamicObject(-3624, 6005.10, -548.87, 47.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4386
CreateDynamicObject(-3625, 6252.52, -14.10, 13.44, 0.00, 0.00, 45.38, -1, 0, -1,800.00, 800.00); // LODch4393
CreateDynamicObject(-3625, 6259.70, 39.90, 13.44, 0.00, 0.00, -135.90, -1, 0, -1,800.00, 800.00); // LODch4393
CreateDynamicObject(-3626, 6270.73, -28.99, 13.91, 0.00, 0.00, 30.19, -1, 0, -1,800.00, 800.00); // LODch4397
CreateDynamicObject(-3626, 6236.73, 0.47, 13.91, 0.00, 0.00, 53.68, -1, 0, -1,800.00, 800.00); // LODch4397
CreateDynamicObject(-3626, 6242.72, 54.50, 13.91, 0.00, 0.00, -135.73, -1, 0, -1,800.00, 800.00); // LODch4397
CreateDynamicObject(-3626, 6292.05, 12.70, 13.91, 0.00, 0.00, -135.73, -1, 0, -1,800.00, 800.00); // LODch4397
CreateDynamicObject(-3625, 6276.03, 27.22, 13.44, 0.00, 0.00, -135.90, -1, 0, -1,800.00, 800.00); // LODch4393
CreateDynamicObject(-3627, 6255.98, -457.57, 7.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4411
CreateDynamicObject(-3628, 6166.50, -470.68, 13.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4412
CreateDynamicObject(-3629, 6343.40, -230.94, -1.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4415
CreateDynamicObject(-3630, 6342.99, -33.02, -1.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4416
CreateDynamicObject(-3631, 6365.79, -164.24, 0.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4417
CreateDynamicObject(-3632, 6167.19, -494.43, 10.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4419
CreateDynamicObject(-3633, 6223.36, 27.36, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4420
CreateDynamicObject(-3634, 6339.68, 14.71, 12.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4421
CreateDynamicObject(-3635, 6253.63, -16.26, 8.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4423
CreateDynamicObject(-3636, 6261.81, -128.93, 9.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4424
CreateDynamicObject(-3637, 6105.25, -422.45, 9.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4425
CreateDynamicObject(-3638, 6053.08, -489.63, 10.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4426
CreateDynamicObject(-3639, 6188.71, -225.20, -2.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4427
CreateDynamicObject(-3640, 6080.21, -593.73, 10.66, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4428
CreateDynamicObject(-3641, 6082.77, -625.75, -2.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4430
CreateDynamicObject(-3642, 6352.40, 21.01, 12.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4431
CreateDynamicObject(-3643, 6037.08, -496.94, 14.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4433
CreateDynamicObject(-3644, 6049.12, -604.99, 14.69, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4436
CreateDynamicObject(-3645, 6177.96, -555.44, 2.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4437
CreateDynamicObject(-3646, 6078.33, -544.23, 10.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4439
CreateDynamicObject(-3647, 5994.98, -625.41, -2.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4457
CreateDynamicObject(-3648, 6194.48, -171.67, -0.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4459
CreateDynamicObject(-3649, 6252.34, -15.34, 10.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4460
CreateDynamicObject(-3650, 6291.53, -305.95, 10.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4461
CreateDynamicObject(-3651, 6210.01, -448.71, 10.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4462
CreateDynamicObject(-3652, 6297.40, -137.44, 9.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4463
CreateDynamicObject(-3653, 6300.23, -211.94, 9.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4464
CreateDynamicObject(-3654, 5990.14, -575.62, 10.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4465
CreateDynamicObject(-3655, 5970.49, -516.01, -2.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4466
CreateDynamicObject(-3656, 6248.58, -424.25, -0.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4467
CreateDynamicObject(-3657, 6319.42, -324.06, -1.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4468
CreateDynamicObject(-3658, 6342.22, -143.07, -1.91, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4469
CreateDynamicObject(-3659, 6262.86, 4.62, -1.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4470
CreateDynamicObject(-3660, 6206.95, -257.78, 9.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4471
CreateDynamicObject(-3661, 6267.76, 31.77, 10.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4472
CreateDynamicObject(-3662, 6236.68, -125.90, -3.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4473
CreateDynamicObject(-3663, 6083.23, -446.06, 7.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4474
CreateDynamicObject(-3664, 6318.80, -45.38, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4476
CreateDynamicObject(-3665, 6412.43, 1065.46, 30.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4477
CreateDynamicObject(-3666, 6402.46, 1197.55, 30.76, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4478
CreateDynamicObject(-3667, 6384.26, 981.54, 13.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4479
CreateDynamicObject(-3668, 6531.13, 990.97, 72.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4481
CreateDynamicObject(-3669, 6575.46, 860.36, 59.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4482
CreateDynamicObject(-3670, 6556.09, 688.70, 67.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4483
CreateDynamicObject(-3671, 6182.40, 1178.94, 27.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4484
CreateDynamicObject(-3672, 6496.30, 1272.75, 37.77, 0.00, 0.00, -140.15, -1, 0, -1,800.00, 800.00); // LODch4488
CreateDynamicObject(-3673, 6381.06, 1187.15, 41.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4490
CreateDynamicObject(-3674, 6496.29, 1166.97, 24.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4492
CreateDynamicObject(-3675, 6499.50, 1274.91, 31.40, 0.00, 90.00, -48.91, -1, 0, -1,800.00, 800.00); // beach4493
CreateDynamicObject(-3676, 6307.32, 1301.63, 28.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4494
CreateDynamicObject(-3677, 6176.53, 1233.58, 31.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4495
CreateDynamicObject(-3678, 6411.61, 1079.33, 17.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4496
CreateDynamicObject(-3679, 6303.84, 1082.32, 15.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4497
CreateDynamicObject(-3680, 6752.74, 687.81, 9.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4498
CreateDynamicObject(-3681, 6752.40, 856.14, 9.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4501
CreateDynamicObject(-3682, 6381.03, 1068.43, 41.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4502
CreateDynamicObject(-3683, 6301.73, 1206.16, 22.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4503
CreateDynamicObject(-3684, 6403.47, 1211.00, 18.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4508
CreateDynamicObject(-3685, 6266.73, 1210.94, 18.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4509
CreateDynamicObject(-3686, 6390.31, 1202.84, 23.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4511
CreateDynamicObject(-3687, 6381.31, 1047.26, 23.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4516
CreateDynamicObject(-3688, 6381.13, 1124.33, 23.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4518
CreateDynamicObject(-3689, 6448.89, 913.45, 12.88, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4519
CreateDynamicObject(-3690, 6727.29, 1017.99, 8.85, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4520
CreateDynamicObject(-3691, 6708.36, 1176.11, 7.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4522
CreateDynamicObject(-3692, 6230.16, 762.74, 9.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4523
CreateDynamicObject(-3693, 6309.17, 823.45, 9.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4524
CreateDynamicObject(-3694, 6255.43, 1086.56, 15.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4526
CreateDynamicObject(-3695, 6232.70, 1189.65, 17.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4527
CreateDynamicObject(-3696, 6189.80, 1233.05, 16.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4528
CreateDynamicObject(-3697, 6225.30, 1273.56, 15.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4529
CreateDynamicObject(-3698, 6326.14, 1282.88, 15.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4530
CreateDynamicObject(-3699, 6416.67, 1279.53, 16.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4531
CreateDynamicObject(-3700, 6480.21, 1259.46, 14.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4532
CreateDynamicObject(-3701, 6476.19, 1157.17, 15.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4533
CreateDynamicObject(-3702, 6482.14, 1012.72, 16.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4534
CreateDynamicObject(-3703, 6515.83, 869.39, 12.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4535
CreateDynamicObject(-3704, 6510.69, 697.07, 9.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4536
CreateDynamicObject(-3705, 6459.70, 829.60, 22.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4546
CreateDynamicObject(-3706, 6563.77, 852.79, 50.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4559
CreateDynamicObject(-3707, 6244.24, 1019.40, 30.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4564
CreateDynamicObject(-3708, 6163.43, 1228.85, 28.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4567
CreateDynamicObject(-3709, 6235.28, 1309.32, 26.39, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4569
CreateDynamicObject(-3710, 6515.67, 1160.20, 29.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4571
CreateDynamicObject(-3711, 6521.41, 1015.45, 64.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4573
CreateDynamicObject(-3712, 6549.15, 696.56, 54.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4577
CreateDynamicObject(-3713, 6372.88, 1314.04, 33.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4579
CreateDynamicObject(-3714, 6512.35, 1286.75, 25.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4581
CreateDynamicObject(-3715, 6383.70, 966.50, 15.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4583
CreateDynamicObject(-3716, 6195.38, 774.54, -0.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4584
CreateDynamicObject(-3717, 6238.09, 847.38, -0.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4585
CreateDynamicObject(-3718, 6433.15, 769.61, 9.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4586
CreateDynamicObject(-3719, 6555.29, 695.35, 9.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4587
CreateDynamicObject(-3720, 6562.16, 869.30, 11.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4588
CreateDynamicObject(-3721, 6250.67, 937.20, 0.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4589
CreateDynamicObject(-3722, 6219.77, 1073.79, 3.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4590
CreateDynamicObject(-3723, 6524.77, 1016.57, 15.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4591
CreateDynamicObject(-3724, 6509.55, 1282.40, -0.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4593
CreateDynamicObject(-3725, 6331.60, 1317.63, 6.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4596
CreateDynamicObject(-3726, 6212.87, 1298.14, 6.84, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4599
CreateDynamicObject(-3727, 6514.45, 193.54, 58.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4600
CreateDynamicObject(-3728, 6527.92, 362.75, 66.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4601
CreateDynamicObject(-3729, 6292.42, 764.98, 65.68, 0.00, 0.00, 109.61, -1, 0, -1,800.00, 800.00); // beach4602
CreateDynamicObject(-3730, 6465.60, 512.82, 7.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4603
CreateDynamicObject(-3731, 6388.83, 93.99, -3.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4607
CreateDynamicObject(-3732, 6440.71, 405.39, 13.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4611
CreateDynamicObject(-3733, 6431.85, 303.82, 13.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4613
CreateDynamicObject(-3734, 6350.91, 311.14, 14.20, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4614
CreateDynamicObject(-3735, 6353.41, 133.03, 13.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4615
CreateDynamicObject(-3736, 6301.00, 537.28, 1.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4621
CreateDynamicObject(-3737, 6207.81, 287.86, 0.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4622
CreateDynamicObject(-3738, 6841.53, 325.80, 8.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4623
CreateDynamicObject(-3739, 6850.86, 508.67, 8.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4624
CreateDynamicObject(-3740, 6682.17, 510.71, 12.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4625
CreateDynamicObject(-3741, 6578.51, 153.37, 9.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4626
CreateDynamicObject(-3742, 6719.01, 332.07, 13.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4628
CreateDynamicObject(-3743, 6795.04, 155.71, 5.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4629
CreateDynamicObject(-3744, 6578.72, 334.66, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4630
CreateDynamicObject(-3745, 6165.25, 690.93, 9.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4631
CreateDynamicObject(-3746, 6256.08, 669.80, 9.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4632
CreateDynamicObject(-3747, 6342.04, 688.15, 9.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4633
CreateDynamicObject(-3748, 6360.29, 515.04, 9.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4634
CreateDynamicObject(-3749, 6269.35, 344.61, 9.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4635
CreateDynamicObject(-3750, 6341.26, 146.10, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4636
CreateDynamicObject(-3751, 6432.94, 72.91, 9.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4637
CreateDynamicObject(-3752, 6432.38, 152.37, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4638
CreateDynamicObject(-3753, 6448.90, 417.35, 17.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4639
CreateDynamicObject(-3754, 6415.35, 160.04, 10.79, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4654
CreateDynamicObject(-3755, 6477.57, 336.87, 9.12, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4656
CreateDynamicObject(-3756, 6423.21, 347.26, 9.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4657
CreateDynamicObject(-3757, 6309.44, 517.20, -0.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4658
CreateDynamicObject(-3758, 6308.54, 143.66, -2.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4660
CreateDynamicObject(-3759, 6240.49, 764.13, 55.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4661
CreateDynamicObject(-3760, 6392.18, 613.96, 10.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4670
CreateDynamicObject(-3761, 6385.95, 88.99, 16.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4674
CreateDynamicObject(-3762, 6297.34, 205.28, 13.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4677
CreateDynamicObject(-3763, 6263.00, 286.88, 14.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4679
CreateDynamicObject(-3764, 6265.88, 377.54, 25.51, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4682
CreateDynamicObject(-3765, 6351.85, 256.43, 17.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4693
CreateDynamicObject(-3766, 6145.23, 684.26, -0.17, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4700
CreateDynamicObject(-3767, 6442.60, 199.86, 13.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4701
CreateDynamicObject(-3768, 6387.36, 179.17, 13.08, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4706
CreateDynamicObject(-3769, 6431.08, 293.21, 15.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4710
CreateDynamicObject(-3770, 6420.26, 134.23, 12.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4715
CreateDynamicObject(-3771, 6402.37, 217.44, 14.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4716
CreateDynamicObject(-3772, 6410.51, 522.84, 13.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4717
CreateDynamicObject(-3773, 6395.23, 601.58, 17.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4718
CreateDynamicObject(-3774, 6547.79, 507.33, 9.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4722
CreateDynamicObject(-3775, 6321.94, 632.23, -0.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4723
CreateDynamicObject(-3776, 6249.26, 645.89, -0.24, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4724
CreateDynamicObject(-3777, 6543.61, 534.64, 30.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4725
CreateDynamicObject(-3778, 6467.52, 515.33, 14.11, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4728
CreateDynamicObject(-3779, 6449.52, 710.13, 21.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4730
CreateDynamicObject(-3780, 5758.30, -432.28, 20.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4736
CreateDynamicObject(-3781, 5465.45, -420.24, 17.03, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4741
CreateDynamicObject(-3782, 5599.50, -537.91, 10.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4744
CreateDynamicObject(-3783, 5499.14, -542.09, 10.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4745
CreateDynamicObject(-3784, 5722.65, -532.74, 6.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4747
CreateDynamicObject(-3785, 5591.54, -538.39, 25.14, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4756
CreateDynamicObject(-3786, 5554.85, -573.39, 25.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4757
CreateDynamicObject(-3787, 5716.07, -355.14, 7.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4759
CreateDynamicObject(-3788, 6027.61, -447.11, 17.93, 0.00, 0.00, 0.50, -1, 0, -1,800.00, 800.00); // LODch4761
CreateDynamicObject(-3789, 5252.03, -489.67, 17.93, 0.00, 0.00, 2.49, -1, 0, -1,800.00, 800.00); // LODch4763
CreateDynamicObject(-3790, 5785.33, -472.58, 17.93, 0.00, 0.00, 12.50, -1, 0, -1,800.00, 800.00); // LODch4764
CreateDynamicObject(-3791, 5426.01, -300.82, 14.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4766
CreateDynamicObject(-3792, 5618.19, -419.76, 10.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4774
CreateDynamicObject(-3793, 5342.03, -315.26, 17.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4775
CreateDynamicObject(-3794, 5518.58, -290.41, 5.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4779
CreateDynamicObject(-3795, 5632.89, -400.64, 10.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4784
CreateDynamicObject(-3796, 5664.21, -478.70, 10.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4786
CreateDynamicObject(-3797, 5724.76, -321.68, 15.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4792
CreateDynamicObject(-3798, 5522.44, -419.42, 10.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4795
CreateDynamicObject(-3799, 5943.90, 449.15, 7.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4797
CreateDynamicObject(-3800, 6010.13, -151.68, 9.01, 0.00, 0.00, -25.38, -1, 0, -1,800.00, 800.00); // LODch4798
CreateDynamicObject(-3801, 6074.57, 227.46, 20.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4800
CreateDynamicObject(-3802, 6179.12, 239.64, 13.64, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4801
CreateDynamicObject(-3803, 6185.36, 245.33, 1.04, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4802
CreateDynamicObject(-3804, 5957.99, 129.58, 25.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4804
CreateDynamicObject(-3805, 6526.04, -4.87, 85.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4810
CreateDynamicObject(-3806, 6759.27, -223.37, 11.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4811
CreateDynamicObject(-3807, 6360.57, -703.32, 20.59, 0.00, 0.00, -25.94, -1, 0, -1,800.00, 800.00); // LODch4813
CreateDynamicObject(-3808, 6409.17, -588.64, 31.44, 0.00, 0.00, -25.79, -1, 0, -1,800.00, 800.00); // LODch4817
CreateDynamicObject(-3809, 6391.82, -626.32, 20.29, 0.00, 0.00, -24.30, -1, 0, -1,800.00, 800.00); // LODch4820
CreateDynamicObject(-3810, 6378.23, -658.08, 17.59, 0.00, 0.00, -23.00, -1, 0, -1,800.00, 800.00); // LODch4823
CreateDynamicObject(-3811, 6887.27, -223.37, 5.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4827
CreateDynamicObject(-3812, 6753.09, -532.10, 6.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4828
CreateDynamicObject(-3807, 6440.87, -507.46, 20.59, 0.00, 0.00, -8.32, -1, 0, -1,800.00, 800.00); // LODch4813
CreateDynamicObject(-3807, 6327.01, -774.45, 20.59, 0.00, 0.00, -22.90, -1, 0, -1,800.00, 800.00); // LODch4813
CreateDynamicObject(-3813, 6336.00, -745.73, 24.04, 0.00, 0.00, -25.06, -1, 0, -1,800.00, 800.00); // LODch4829
CreateDynamicObject(-3813, 6443.43, -412.93, 24.04, 0.00, 0.00, -1.29, -1, 0, -1,800.00, 800.00); // LODch4829
CreateDynamicObject(-3814, 6465.15, -68.27, 8.81, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4842
CreateDynamicObject(-3815, 6425.46, -67.41, -1.96, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4843
CreateDynamicObject(-3816, 6508.54, -272.95, 104.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4846
CreateDynamicObject(-3817, 6556.46, -39.83, 10.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4847
CreateDynamicObject(-3818, 6249.90, -907.58, 9.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4849
CreateDynamicObject(-3819, 6574.07, -254.04, 10.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4853
CreateDynamicObject(-3820, 6715.99, -630.71, 5.97, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4861
CreateDynamicObject(-3821, 6632.28, -807.07, 2.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4862
CreateDynamicObject(-3822, 6298.49, -791.51, 8.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4877
CreateDynamicObject(-3823, 6292.11, -859.43, 14.10, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4881
CreateDynamicObject(-3824, 6316.38, -803.73, 16.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4885
CreateDynamicObject(-3825, 6309.39, -820.73, 13.86, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4887
CreateDynamicObject(-3826, 6299.42, -839.98, 16.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4889
CreateDynamicObject(-3827, 6361.14, -651.78, 8.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4892
CreateDynamicObject(-3828, 6404.35, -582.83, 9.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4894
CreateDynamicObject(-3829, 6319.05, -527.38, 9.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4896
CreateDynamicObject(-3830, 6279.81, -799.94, 16.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4901
CreateDynamicObject(-3831, 6353.42, -647.21, 17.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4911
CreateDynamicObject(-3832, 6420.74, -438.08, 13.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4930
CreateDynamicObject(-3833, 6237.22, -843.23, 13.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4943
CreateDynamicObject(-3834, 6270.71, -1405.61, 7.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4947
CreateDynamicObject(-3835, 6441.07, -1681.00, 8.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4949
CreateDynamicObject(-3836, 6201.65, -1094.11, 12.60, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4963
CreateDynamicObject(-3837, 6215.69, -1016.16, 9.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4964
CreateDynamicObject(-3838, 6113.70, -1493.56, 13.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4965
CreateDynamicObject(-3839, 6567.10, -1411.92, 1.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4967
CreateDynamicObject(-3840, 6611.23, -1258.28, 4.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4969
CreateDynamicObject(-3841, 6531.60, -1730.24, 7.72, 0.00, 0.00, -14.00, -1, 0, -1,800.00, 800.00); // LODch4970
CreateDynamicObject(-3842, 6124.03, -1544.16, 8.02, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4971
CreateDynamicObject(-3843, 6440.37, -1403.25, 5.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4974
CreateDynamicObject(-3844, 6558.52, -1126.38, 5.93, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach4975
CreateDynamicObject(-3845, 6350.77, -1125.96, 8.82, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4979
CreateDynamicObject(-3846, 6156.65, -1425.60, 19.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4981
CreateDynamicObject(-3847, 6235.05, -986.28, 24.05, 0.00, 0.00, -8.50, -1, 0, -1,800.00, 800.00); // LODch4988
CreateDynamicObject(-3848, 6185.91, -1212.55, 17.65, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4992
CreateDynamicObject(-3849, 6147.17, -1400.74, 12.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch4993
CreateDynamicObject(-3850, 6109.48, -1535.71, 18.21, 0.00, 0.00, -29.00, -1, 0, -1,800.00, 800.00); // LODch4997
CreateDynamicObject(-3851, 6117.40, -1512.11, 13.63, 0.00, 0.00, 60.00, -1, 0, -1,800.00, 800.00); // LODch4998
CreateDynamicObject(-3852, 6122.52, -1414.76, 12.75, 0.00, 0.00, -23.10, -1, 0, -1,800.00, 800.00); // LODch5002
CreateDynamicObject(-3853, 6103.81, -1464.64, 13.64, 0.00, 0.00, -24.00, -1, 0, -1,800.00, 800.00); // LODch5007
CreateDynamicObject(-3854, 6146.95, -1356.48, 15.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5015
CreateDynamicObject(-3855, 6168.59, -1167.34, 17.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5027
CreateDynamicObject(-3856, 6183.82, -1086.46, 13.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5034
CreateDynamicObject(-3857, 6207.19, -982.15, 17.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5036
CreateDynamicObject(-3858, 6254.11, -983.36, 8.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5039
CreateDynamicObject(-3859, 6246.36, -1132.53, 8.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5040
CreateDynamicObject(-3860, 6197.42, -1259.62, 8.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5041
CreateDynamicObject(-3861, 6187.71, -1407.81, 8.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5042
CreateDynamicObject(-3810, 6146.08, -1449.95, 17.59, 0.00, 0.00, -22.01, -1, 0, -1,800.00, 800.00); // LODch4823
CreateDynamicObject(-3808, 6164.79, -1393.83, 31.34, 0.00, 0.00, -13.83, -1, 0, -1,800.00, 800.00); // LODch4817
CreateDynamicObject(-3810, 6229.46, -1045.93, 17.86, 0.00, 0.00, -5.47, -1, 0, -1,800.00, 800.00); // LODch4823
CreateDynamicObject(-3862, 6170.53, -1360.58, 21.41, 0.00, 0.00, -11.30, -1, 0, -1,800.00, 800.00); // LODch4952
CreateDynamicObject(-3863, 6044.34, -1532.26, 57.02, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // beach5045
CreateDynamicObject(-3864, 5848.06, -1228.71, 52.75, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5046
CreateDynamicObject(-3865, 5849.73, -1446.86, 56.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5047
CreateDynamicObject(-3866, 5840.38, -1453.20, 60.71, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5048
CreateDynamicObject(-3867, 5897.02, -1221.05, 64.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5049
CreateDynamicObject(-3868, 6051.65, -1603.65, 24.30, 0.00, 0.00, -60.00, -1, 0, -1,800.00, 800.00); // LODch5055
CreateDynamicObject(-3869, 6078.01, -1323.52, 8.32, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // LODch5057
CreateDynamicObject(-3870, 5627.92, -1332.95, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5627.94, -1348.67, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5627.81, -1372.07, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5590.22, -1243.62, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5590.24, -1267.49, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5654.94, -1647.23, 7.83, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3870, 5616.19, -1722.67, 7.83, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3871, 5624.39, -1220.80, 1.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3871, 5624.61, -1277.92, 1.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3871, 5666.49, -1360.61, 1.68, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3871, 5637.69, -1360.53, 1.68, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3871, 5695.29, -1360.77, 1.68, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3870, 5615.62, -1681.96, 7.83, 0.00, 0.00, 180.00, -1, 0, -1,800.00, 800.00); // LODch5059
CreateDynamicObject(-3871, 5658.05, -1690.34, 1.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5060
CreateDynamicObject(-3872, 5980.92, -1526.29, 34.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5061
CreateDynamicObject(-3873, 5863.81, -1328.86, 11.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5066
CreateDynamicObject(-3874, 5874.53, -1380.83, 11.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5069
CreateDynamicObject(-3875, 5899.48, -1546.28, 12.70, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5070
CreateDynamicObject(-3876, 5903.40, -1303.84, 13.07, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODch5074
CreateDynamicObject(-3876, 5901.92, -1344.50, 13.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5074
CreateDynamicObject(-3877, 5863.79, -1293.79, 12.44, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3878, 5872.58, -1497.79, 9.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5087
CreateDynamicObject(-3879, 5862.20, -1421.31, 9.31, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5090
CreateDynamicObject(-3880, 5889.81, -1343.09, 9.32, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5093
CreateDynamicObject(-3881, 5823.66, -1337.22, 9.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5094
CreateDynamicObject(-3882, 5869.53, -1449.34, 11.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5095
CreateDynamicObject(-3883, 5894.90, -1255.97, 15.33, 90.00, -180.00, -180.00, -1, 0, -1,800.00, 800.00); // LODch5097
CreateDynamicObject(-3884, 5737.91, -1300.46, 10.17, 0.00, 0.00, 8.00, -1, 0, -1,800.00, 800.00); // LODch5103
CreateDynamicObject(-3885, 5734.83, -1248.62, 10.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5105
CreateDynamicObject(-3886, 5717.61, -1360.77, 6.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5107
CreateDynamicObject(-3887, 5704.63, -1214.57, 6.73, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5108
CreateDynamicObject(-3888, 5981.96, -1515.41, 11.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5109
CreateDynamicObject(-3889, 5989.36, -1310.01, 10.09, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5110
CreateDynamicObject(-3890, 6087.69, -1274.80, 9.50, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5111
CreateDynamicObject(-3891, 6096.31, -1196.36, 9.30, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5112
CreateDynamicObject(-3892, 5935.49, -1331.43, 9.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5118
CreateDynamicObject(-3893, 5842.84, -1507.57, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5120
CreateDynamicObject(-3894, 6035.82, -1205.40, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5122
CreateDynamicObject(-3895, 5989.93, -1362.94, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5123
CreateDynamicObject(-3896, 6150.13, -1153.68, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5124
CreateDynamicObject(-3897, 6128.50, -1353.65, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5125
CreateDynamicObject(-3898, 6009.77, -1475.17, 9.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5127
CreateDynamicObject(-3899, 6065.45, -1523.83, 9.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5128
CreateDynamicObject(-3900, 5946.24, -1505.50, 10.34, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5129
CreateDynamicObject(-3901, 6023.34, -1528.96, 10.52, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5131
CreateDynamicObject(-3902, 5882.45, -1442.49, 10.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5133
CreateDynamicObject(-3903, 5895.57, -1323.48, 9.89, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5136
CreateDynamicObject(-3904, 6078.75, -1373.62, 14.98, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5137
CreateDynamicObject(-3905, 6067.50, -1405.69, 19.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5141
CreateDynamicObject(-3906, 6022.52, -1636.41, -0.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5146
CreateDynamicObject(-3907, 5916.97, -1623.85, -0.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5148
CreateDynamicObject(-3908, 5825.72, -1556.68, 0.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5149
CreateDynamicObject(-3909, 6017.60, -1210.20, 18.42, 0.00, 0.00, -2.50, -1, 0, -1,800.00, 800.00); // LODch5150
CreateDynamicObject(-3910, 5972.92, -1405.99, 10.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5155
CreateDynamicObject(-3911, 6014.38, -1527.19, 9.13, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5157
CreateDynamicObject(-3912, 5988.50, -1235.89, 10.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5158
CreateDynamicObject(-3913, 5965.76, -1410.50, 19.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5168
CreateDynamicObject(-3914, 6005.47, -1451.62, 20.22, 0.00, 0.00, -110.00, -1, 0, -1,800.00, 800.00); // LODch5174
CreateDynamicObject(-3915, 6016.85, -1413.60, 14.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5177
CreateDynamicObject(-3916, 6118.37, -1239.98, 13.33, 0.00, 0.00, -180.00, -1, 0, -1,800.00, 800.00); // LODch5180
CreateDynamicObject(-3917, 6116.46, -1177.10, 12.59, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5183
CreateDynamicObject(-3918, 5882.58, -1416.69, 24.92, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5189
CreateDynamicObject(-3919, 5971.64, -1373.81, 13.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5191
CreateDynamicObject(-3920, 5843.98, -1451.69, 52.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5193
CreateDynamicObject(-3921, 5737.49, -1317.17, 7.77, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5201
CreateDynamicObject(-3922, 5730.90, -1244.44, 7.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5205
CreateDynamicObject(-3923, 6076.90, -1329.86, 6.34, 0.00, 0.00, -10.00, -1, 0, -1,800.00, 800.00); // LODch5211
CreateDynamicObject(-3924, 6144.37, -1249.89, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5214
CreateDynamicObject(-3925, 5986.12, -1422.42, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5216
CreateDynamicObject(-3926, 6013.79, -1582.87, 9.26, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5217
CreateDynamicObject(-3927, 5929.88, -1403.26, 9.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5218
CreateDynamicObject(-3928, 5921.52, -1505.33, 9.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5219
CreateDynamicObject(-3929, 5781.95, -1339.64, 9.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5220
CreateDynamicObject(-3930, 5870.92, -1271.61, 9.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5222
CreateDynamicObject(-3931, 5853.60, -1210.03, 9.95, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5223
CreateDynamicObject(-3932, 6045.76, -1401.26, 9.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5224
CreateDynamicObject(-3933, 5888.68, -1514.81, 16.18, 0.00, 0.00, 100.00, -1, 0, -1,800.00, 800.00); // LODch5231
CreateDynamicObject(-3934, 5966.69, -1265.18, 14.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5238
CreateDynamicObject(-3935, 6074.69, -1153.22, 12.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5241
CreateDynamicObject(-3936, 5940.31, -1550.04, 13.56, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5244
CreateDynamicObject(-3937, 5866.97, -1223.39, 54.28, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5247
CreateDynamicObject(-3938, 6065.62, -1219.31, 12.67, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5255
CreateDynamicObject(-3939, 5840.82, -1049.30, 54.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5258
CreateDynamicObject(-3940, 5748.43, -1085.84, 54.07, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5259
CreateDynamicObject(-3941, 6204.44, -786.28, 79.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5260
CreateDynamicObject(-3942, 6146.23, -896.53, 79.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5261
CreateDynamicObject(-3943, 6178.83, -835.15, 59.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5262
CreateDynamicObject(-3944, 6050.72, -797.96, 54.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5263
CreateDynamicObject(-3945, 5838.65, -1160.76, 65.68, 0.00, 0.00, -75.39, -1, 0, -1,800.00, 800.00); // beach5264
CreateDynamicObject(-3946, 5907.02, -877.39, 28.05, 0.00, 0.00, 78.02, -1, 0, -1,800.00, 800.00); // LODch5265
CreateDynamicObject(-3876, 5930.59, -1057.09, 13.19, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // LODch5074
CreateDynamicObject(-3877, 5986.77, -1159.98, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5986.77, -1137.61, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5963.45, -1095.07, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5963.45, -1115.38, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5943.30, -1137.42, 12.55, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5963.77, -1137.31, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3877, 5963.77, -1158.03, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3947, 5996.19, -1106.90, 20.91, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODch5077
CreateDynamicObject(-3876, 5966.77, -1055.76, 13.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5074
CreateDynamicObject(-3877, 5943.34, -1158.03, 12.55, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5081
CreateDynamicObject(-3948, 6050.54, -783.87, 10.54, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5272
CreateDynamicObject(-3949, 5733.38, -934.65, 12.33, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5274
CreateDynamicObject(-3950, 6162.43, -709.51, 9.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5275
CreateDynamicObject(-3951, 6182.40, -990.97, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5276
CreateDynamicObject(-3952, 6176.90, -756.49, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5277
CreateDynamicObject(-3953, 6098.41, -873.59, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5278
CreateDynamicObject(-3954, 6091.62, -917.71, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5279
CreateDynamicObject(-3955, 6041.80, -1011.35, 9.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5280
CreateDynamicObject(-3956, 6049.51, -1145.43, 9.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5281
CreateDynamicObject(-3957, 6101.88, -1126.86, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5282
CreateDynamicObject(-3958, 5873.29, -939.22, 9.48, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5286
CreateDynamicObject(-3959, 5995.69, -862.74, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5287
CreateDynamicObject(-3960, 6110.15, -756.57, 9.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5288
CreateDynamicObject(-3961, 5952.14, -1107.71, 10.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5289
CreateDynamicObject(-3962, 6048.72, -797.46, 49.42, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5293
CreateDynamicObject(-3963, 6025.23, -1075.17, 12.36, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODch5298
CreateDynamicObject(-3964, 6114.84, -980.94, 9.23, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5301
CreateDynamicObject(-3965, 6307.32, -562.07, 31.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5302
CreateDynamicObject(-3966, 6249.17, -708.18, 21.43, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5314
CreateDynamicObject(-3967, 6200.57, -797.66, 18.00, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5325
CreateDynamicObject(-3968, 6152.40, -887.62, 21.40, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5333
CreateDynamicObject(-3969, 5933.09, -1105.49, 20.52, 0.00, 0.00, -90.00, -1, 0, -1,800.00, 800.00); // LODch5343
CreateDynamicObject(-3970, 6200.90, -588.09, 0.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5345
CreateDynamicObject(-3971, 6142.56, -1006.42, 19.74, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5346
CreateDynamicObject(-3972, 6142.18, -965.74, 13.86, 0.00, 0.00, 167.50, -1, 0, -1,800.00, 800.00); // LODch5350
CreateDynamicObject(-3973, 6086.08, -945.85, 13.61, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5351
CreateDynamicObject(-3974, 6076.72, -967.87, 12.46, 0.00, 0.00, 15.00, -1, 0, -1,800.00, 800.00); // LODch5354
CreateDynamicObject(-3975, 6067.04, -991.23, 13.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5356
CreateDynamicObject(-3976, 6088.21, -1016.25, 13.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5360
CreateDynamicObject(-3977, 6005.18, -1058.01, 12.36, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5366
CreateDynamicObject(-3978, 6144.90, -774.47, 19.05, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5372
CreateDynamicObject(-3979, 6124.12, -805.86, 17.53, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5375
CreateDynamicObject(-3980, 6137.56, -745.50, 18.31, 0.00, 0.00, -20.10, -1, 0, -1,800.00, 800.00); // LODch5377
CreateDynamicObject(-3981, 6116.19, -790.32, 17.38, 0.00, 0.00, 62.20, -1, 0, -1,800.00, 800.00); // LODch5379
CreateDynamicObject(-3982, 6178.78, -834.10, 60.15, 0.00, 0.00, 25.00, -1, 0, -1,800.00, 800.00); // LODch5384
CreateDynamicObject(-3983, 5811.60, -987.38, 20.06, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5386
CreateDynamicObject(-3984, 5839.81, -1047.26, 46.25, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5388
CreateDynamicObject(-3985, 5749.59, -1087.24, 47.27, 0.00, 0.00, 36.00, -1, 0, -1,800.00, 800.00); // LODch5390
CreateDynamicObject(-3986, 6163.17, -1082.07, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5391
CreateDynamicObject(-3987, 6147.96, -940.92, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5392
CreateDynamicObject(-3988, 6202.32, -681.79, 8.94, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5393
CreateDynamicObject(-3989, 6138.99, -815.59, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5394
CreateDynamicObject(-3990, 6056.48, -946.24, 9.19, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5396
CreateDynamicObject(-3991, 6071.10, -820.79, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5397
CreateDynamicObject(-3992, 5896.73, -884.76, 9.18, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5398
CreateDynamicObject(-3993, 5983.85, -1032.61, 9.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5399
CreateDynamicObject(-3994, 6046.73, -1077.08, 9.22, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5400
CreateDynamicObject(-3995, 5827.17, -1100.04, 9.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5401
CreateDynamicObject(-3996, 5953.43, -850.04, -1.46, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5403
CreateDynamicObject(-3997, 5807.96, -892.22, -1.57, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5404
CreateDynamicObject(-3998, 5810.02, -915.88, 9.68, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5405
CreateDynamicObject(-3999, 5842.92, -1155.95, 9.87, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5410
CreateDynamicObject(-4000, 6107.13, -1074.28, 10.01, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5412
CreateDynamicObject(-4001, 6093.76, -780.80, -0.35, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5414
CreateDynamicObject(-4002, 6077.89, -861.86, 16.16, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5415
CreateDynamicObject(-4003, 5596.11, -934.25, 10.92, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5421
CreateDynamicObject(-4004, 5368.57, -930.92, 11.37, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5422
CreateDynamicObject(-4005, 5557.89, -935.09, 19.38, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5423
CreateDynamicObject(-4006, 5320.98, -928.48, 15.72, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODch5425
CreateDynamicObject(-4007, 5713.62, -1682.80, 10.88, 0.00, 0.00, 90.00, -1, 0, -1,800.00, 800.00); // beach5475
CreateDynamicObject(-4008, 5903.77, -1477.38, 12.35, 0.00, 0.00, -5.00, -1, 0, -1,800.00, 800.00); // beach5476
CreateDynamicObject(-4009, 6221.27, -168.34, 507.91, 0.00, 0.00, 160.00, -1, 0, -1,800.00, 800.00); // beach5564
CreateDynamicObject(-4010, 5812.06, -986.91, 17.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5608
CreateDynamicObject(-4010, 5812.06, -986.91, 17.58, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5608
CreateDynamicObject(-4011, 5919.47, 920.39, 15.27, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5617
CreateDynamicObject(-4012, 5984.50, 1155.13, 32.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5699
CreateDynamicObject(-4013, 5984.65, 1173.76, 32.29, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5731
CreateDynamicObject(-4014, 5628.69, -560.67, 30.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5735
CreateDynamicObject(-4014, 5628.69, -560.67, 30.45, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach5735
CreateDynamicObject(-4015, 5709.04, 1078.45, 15.63, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach436
CreateDynamicObject(-4016, 5712.57, 1077.10, -4.62, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // beach539
CreateDynamicObject(-4017, 5292.97, 1197.11, 13.41, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // ammunation_dt
CreateDynamicObject(-4018, 5036.12, -685.15, 10.18, 0.00, 0.00, -174.48, -1, 0, -1,800.00, 800.00); // vcs_drug2_A
CreateDynamicObject(-4019, 5028.21, -333.41, 74.80, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // vcs_lhroof4
CreateDynamicObject(-4020, 5028.70, -332.17, 74.83, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // lhcoastsky2
CreateDynamicObject(-4021, 5203.74, -1122.52, 9.57, 0.00, 0.00, -95.74, -1, 0, -1,800.00, 800.00); // veg_palm01
CreateDynamicObject(-4021, 5192.81, -1076.66, 9.69, 0.00, 0.00, -171.72, -1, 0, -1,800.00, 800.00); // veg_palm01
CreateDynamicObject(-4021, 5206.77, -1133.52, 9.57, 0.00, 0.00, -134.81, -1, 0, -1,800.00, 800.00); // veg_palm01
CreateDynamicObject(-2112, 5196.38, -1093.29, 9.64, 0.00, 0.00, 39.23, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-2112, 5181.40, -959.60, 9.16, 0.00, 0.00, 41.82, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-2112, 5187.32, -1053.88, 9.67, 0.00, 0.00, 174.74, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-2112, 5190.84, -968.97, 9.06, 0.00, 0.00, -47.18, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-2112, 5180.97, -1015.92, 9.76, 0.00, 0.00, -135.18, -1, 0, -1,800.00, 800.00); // veg_palm02
CreateDynamicObject(-4022, 5191.47, -1066.91, 9.92, 0.00, 0.00, -153.27, -1, 0, -1,800.00, 800.00); // veg_palm04
CreateDynamicObject(-4022, 4998.79, -1401.22, 11.21, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // veg_palm04
CreateDynamicObject(-4022, 5227.37, -1194.18, 9.70, 0.00, 0.00, -88.02, -1, 0, -1,800.00, 800.00); // veg_palm04
CreateDynamicObject(-4023, 5139.00, -1459.60, 10.82, 44.28, -8.98, 12.76, -1, 0, -1,800.00, 800.00); // veg_palwee01
CreateDynamicObject(-4024, 5227.77, -1156.50, 9.16, 0.00, 0.00, 16.56, -1, 0, -1,800.00, 800.00); // veg_palwee02
CreateDynamicObject(-4025, 5231.53, -1181.95, 9.83, 0.00, 0.00, -131.10, -1, 0, -1,800.00, 800.00); // veg_palwee03
CreateDynamicObject(-4026, 5158.80, -975.66, 32.15, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // vcs_lhdroad5
CreateDynamicObject(-4027, 4200.36, -1530.73, -14.47, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3271
CreateDynamicObject(-4028, 4233.79, -1707.53, 8.78, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // mainla3261
CreateDynamicObject(-4029, 4233.15, -1706.68, 7.90, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4763
CreateDynamicObject(-4030, 4200.42, -1530.63, -15.49, 0.00, 0.00, 0.00, -1, 0, -1,800.00, 800.00); // LODnla4767
}


CMD:gotovc(playerid, params[])
{
	SetPlayerPos(playerid, 4581.61, -849.13, 24);
	return 1;
}

CMD:fairground(playerid, params[])
{
	SetPlayerPos(playerid, 6256.0649,-209.3622,10.9756);
	return 1;
}

CMD:select(playerid, params[])
{
	SelectObject(playerid);
	return 1;
}

CMD:day(playerid, params[])
{
	SetWorldTime(12);
	return 1;
}

CMD:night(playerid, params[])
{
	SetWorldTime(0);
	return 1;
}

public OnFilterScriptExit() {
    
	return true;
}

#if defined DEBUG_MODE
public OnPlayerShootDynamicObject(playerid, weaponid, objectid, Float:x, Float:y, Float:z) {
    new str[128], Float:px, Float:py, Float:pz, Float:rx, Float:ry, Float:rz;
    GetDynamicObjectPos(objectid, px, py, pz);
    GetDynamicObjectRot(objectid, rx, ry, rz);
    format(str, sizeof str, "ID: %d | Model: %d | Pos: %f, %f, %f, %f, %f, %f", objectid, GetDynamicObjectModel(objectid), px, py, pz, rx, ry, rz);
    SendClientMessageToAll(-1, str);
    return true;
}
#endif
