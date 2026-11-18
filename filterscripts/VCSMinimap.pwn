//   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   // 
//                                                                                                       
//    ##:  :##    :####:   :####:              .-''-.       .####.   ###  ###  ######:  
//    ##    ##    ######  :######            .' .-.  )      ######   ###  ###  #######: 
//    :##  ##:  :##:  .#  ##:  :#          / .'  / /.      :##  ##:  ###::###  ##   :## 
//    :##  ##:  ##        ##              (_/   / /        ##:  :##  ###  ###  ##    ## 
//     ## .##   ##.       ###:                 / /         ##    ##  ## ## ##  ##   :## 
//     ##::##   ##        :#####:             / /          ##    ##  ##:##:##  #######: 
//     ##::##   ##         .#####:           . '           ##    ##  ##.##.##  ######:  
//     :####:   ##.           :###         / /    _.-')    ##    ##  ## ## ##  ##       
//     .####.   ##              ##       .' '  _.'.-''     ##:  :##  ##    ##  ##       
//      ####    :##:  .#  #:.  :##     /  /.-'_.'          :##  ##:  ##    ##  ##       
//      ####      ######  #######:    /    _.'              ######   ##    ##  ##       
//       ##       :####:  .#####:    ( _.-'                 .####.   ##    ##  ##       
//                                                                                                       
//   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   //   // 
//                                        v1.0.6
//                                        Minimap
//                                   author: spicybung

#define FILTERSCRIPT
//#define VCS_RADAR_SHOW_PLAYERS

#include <open.mp> //   Credits to Amir & OMP Team
//  Credits to Incognito - and just in case
// BEGIN GENERATED VCS WORLD CONFIG
#define VCS_WORLD_SOURCE_OFFSET_X          (-2500.0)
#define VCS_WORLD_SOURCE_OFFSET_Y          (4000.0)
#define VCS_WORLD_OFFSET_X                 (6000.0)
#define VCS_WORLD_OFFSET_Y                 (0.0)
#define VCS_WORLD_SHIFT_X                  (VCS_WORLD_OFFSET_X - VCS_WORLD_SOURCE_OFFSET_X)
#define VCS_WORLD_SHIFT_Y                  (VCS_WORLD_OFFSET_Y - VCS_WORLD_SOURCE_OFFSET_Y)
#define VCS_WORLD_X(%0)                    ((%0) + VCS_WORLD_SHIFT_X)
#define VCS_WORLD_Y(%0)                    ((%0) + VCS_WORLD_SHIFT_Y)
// END GENERATED VCS WORLD CONFIG

// BEGIN GENERATED VCS RADAR ASSETS

#define VCS_RADAR_GRID_COLUMNS             (64)
#define VCS_RADAR_GRID_ROWS                (64)
#define VCS_RADAR_WINDOW_COUNT             (4096)
#define VCS_RADAR_GROUP_SIDE               (8)
#define VCS_RADAR_PACK_COLUMNS             (8)
#define VCS_RADAR_PACK_ROWS                (8)
#define VCS_RADAR_PACK_COUNT               (64)
#define VCS_RADAR_MODEL_BASE               (-5000)
#define VCS_RADAR_ICON_MODEL               (-5064)
#define VCS_RADAR_CELL_WORLD_SIZE          (62.5)
#define VCS_RADAR_WINDOW_WORLD_SIZE        (360.0)
#define VCS_RADAR_WORLD_MIN_X              (VCS_WORLD_OFFSET_X - 2000.0)
#define VCS_RADAR_WORLD_MAX_X              (VCS_WORLD_OFFSET_X + 2000.0)
#define VCS_RADAR_WORLD_MIN_Y              (VCS_WORLD_OFFSET_Y - 2000.0)
#define VCS_RADAR_WORLD_MAX_Y              (VCS_WORLD_OFFSET_Y + 2000.0)
#define VCS_RADAR_WORLD_OFFSET_X           (VCS_WORLD_OFFSET_X)
#define VCS_RADAR_WORLD_OFFSET_Y           (VCS_WORLD_OFFSET_Y)
#define VCS_RADAR_PACK_DIRECTORY           "vcs/RADARVCS/local_v3"
#define VCS_RADAR_ICON_TXD                 "vcs/RADARVCS/local_v3/player_icons.txd"
#define VCS_RADAR_LOADER_DFF               "vcs/RADARVCS/local_v3/radar_loader.dff"
#define VCS_RADAR_TEXTURE_PREFIX           "vcsr"
#define VCS_RADAR_PACK_PREFIX              "radarpack"

new const gVCSRadarTextureIndex[VCS_RADAR_WINDOW_COUNT] =
{
    0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8,
    16, 16, 16, 16, 16, 16, 16, 16, 24, 24, 24, 24, 24, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8,
    16, 16, 16, 16, 16, 16, 16, 16, 24, 24, 24, 24, 24, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8,
    16, 16, 16, 16, 16, 16, 16, 16, 24, 24, 24, 24, 24, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 205, 206, 207,
    208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 0, 0, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271,
    272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 0, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335,
    336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 24, 24, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399,
    400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 24,
    32, 32, 32, 32, 32, 32, 32, 32, 40, 40, 40, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    0, 0, 0, 0, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463,
    464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 24,
    32, 32, 32, 32, 32, 485, 486, 487, 488, 489, 490, 40, 40, 40, 40, 40,
    48, 48, 48, 48, 48, 48, 48, 48, 56, 56, 56, 56, 56, 56, 56, 56,
    512, 512, 512, 512, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527,
    528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543,
    544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 558,
    560, 560, 560, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591,
    592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607,
    608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623,
    624, 560, 560, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655,
    656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671,
    672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687,
    688, 689, 560, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719,
    720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735,
    736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751,
    752, 753, 560, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783,
    784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799,
    800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815,
    816, 817, 560, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847,
    848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863,
    864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879,
    880, 881, 882, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911,
    912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927,
    928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943,
    944, 945, 946, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    512, 512, 512, 512, 964, 965, 966, 967, 968, 969, 970, 971, 972, 973, 974, 975,
    976, 977, 978, 979, 980, 981, 982, 983, 984, 985, 986, 987, 988, 989, 990, 991,
    992, 993, 994, 995, 996, 997, 998, 999, 1000, 1001, 1002, 1003, 1004, 1005, 1006, 1007,
    1008, 1009, 1010, 560, 560, 560, 560, 560, 568, 568, 568, 568, 568, 568, 568, 568,
    1024, 1024, 1024, 1024, 1024, 1024, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039,
    1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1052, 1053, 1054, 1055,
    1056, 1057, 1058, 1059, 1060, 1061, 1062, 1063, 1064, 1065, 1066, 1067, 1068, 1069, 1070, 1071,
    1072, 1073, 1074, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1098, 1099, 1100, 1101, 1102, 1103,
    1104, 1105, 1106, 1107, 1108, 1109, 1110, 1111, 1112, 1113, 1114, 1115, 1116, 1117, 1118, 1119,
    1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1128, 1129, 1130, 1131, 1132, 1133, 1134, 1135,
    1136, 1137, 1138, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1162, 1163, 1164, 1165, 1166, 1167,
    1168, 1169, 1170, 1171, 1172, 1173, 1174, 1175, 1176, 1177, 1178, 1179, 1180, 1181, 1182, 1183,
    1184, 1185, 1186, 1187, 1188, 1189, 1190, 1191, 1192, 1193, 1194, 1195, 1196, 1197, 1198, 1199,
    1200, 1201, 1202, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1226, 1227, 1228, 1229, 1230, 1231,
    1232, 1233, 1234, 1235, 1236, 1237, 1238, 1239, 1240, 1241, 1242, 1243, 1244, 1245, 1246, 1247,
    1248, 1249, 1250, 1251, 1252, 1253, 1254, 1255, 1256, 1257, 1258, 1259, 1260, 1261, 1262, 1263,
    1264, 1265, 1266, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1290, 1291, 1292, 1293, 1294, 1295,
    1296, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1305, 1306, 1307, 1308, 1309, 1310, 1311,
    1312, 1313, 1314, 1315, 1316, 1317, 1318, 1319, 1320, 1321, 1322, 1323, 1324, 1325, 1326, 1327,
    1328, 1329, 1266, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1354, 1355, 1356, 1357, 1358, 1359,
    1360, 1361, 1362, 1363, 1364, 1365, 1366, 1367, 1368, 1369, 1370, 1371, 1372, 1373, 1374, 1375,
    1376, 1377, 1378, 1379, 1380, 1381, 1382, 1383, 1384, 1385, 1386, 1387, 1388, 1389, 1390, 1391,
    1392, 1393, 1394, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1418, 1419, 1420, 1421, 1422, 1423,
    1424, 1425, 1426, 1427, 1428, 1429, 1430, 1431, 1432, 1433, 1434, 1435, 1436, 1437, 1438, 1439,
    1440, 1441, 1442, 1443, 1444, 1445, 1446, 1447, 1448, 1449, 1450, 1451, 1452, 1453, 1454, 1455,
    1456, 1457, 1458, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1024, 1024, 1024, 1024, 1024, 1024, 1024, 1024, 1096, 1096, 1482, 1483, 1484, 1485, 1486, 1487,
    1488, 1489, 1490, 1491, 1492, 1493, 1494, 1495, 1496, 1497, 1498, 1499, 1500, 1501, 1502, 1503,
    1504, 1505, 1506, 1507, 1508, 1509, 1510, 1511, 1512, 1513, 1514, 1515, 1516, 1517, 1518, 1519,
    1520, 1521, 1522, 1075, 1075, 1075, 1075, 1075, 1080, 1080, 1080, 1080, 1080, 1080, 1080, 1080,
    1536, 1536, 1536, 1536, 1536, 1536, 1536, 1536, 1544, 1544, 1546, 1547, 1548, 1549, 1550, 1551,
    1552, 1553, 1554, 1555, 1556, 1557, 1558, 1559, 1560, 1561, 1562, 1563, 1564, 1565, 1566, 1567,
    1568, 1569, 1570, 1571, 1572, 1573, 1574, 1575, 1576, 1577, 1578, 1579, 1580, 1581, 1582, 1583,
    1584, 1585, 1586, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592,
    1536, 1536, 1536, 1536, 1536, 1536, 1536, 1536, 1544, 1544, 1610, 1611, 1612, 1613, 1614, 1615,
    1616, 1617, 1618, 1619, 1620, 1621, 1622, 1623, 1624, 1625, 1626, 1627, 1628, 1629, 1630, 1631,
    1632, 1633, 1634, 1635, 1636, 1637, 1638, 1639, 1640, 1641, 1642, 1643, 1644, 1645, 1646, 1647,
    1648, 1649, 1650, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592,
    1536, 1536, 1536, 1536, 1536, 1536, 1536, 1671, 1672, 1673, 1674, 1675, 1676, 1677, 1678, 1679,
    1680, 1681, 1682, 1683, 1684, 1685, 1686, 1687, 1688, 1689, 1690, 1691, 1692, 1693, 1694, 1695,
    1696, 1697, 1698, 1699, 1700, 1701, 1702, 1703, 1704, 1705, 1706, 1707, 1708, 1709, 1710, 1711,
    1712, 1713, 1714, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592,
    1536, 1536, 1536, 1536, 1536, 1536, 1536, 1735, 1736, 1737, 1738, 1739, 1740, 1741, 1742, 1743,
    1744, 1745, 1746, 1747, 1748, 1749, 1750, 1751, 1752, 1753, 1754, 1755, 1756, 1757, 1758, 1759,
    1760, 1761, 1762, 1763, 1764, 1765, 1766, 1767, 1768, 1769, 1770, 1771, 1772, 1773, 1774, 1775,
    1776, 1777, 1587, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1786, 1787, 1788, 1789, 1790, 1791,
    1536, 1536, 1536, 1536, 1536, 1536, 1536, 1799, 1800, 1801, 1802, 1803, 1804, 1805, 1806, 1807,
    1808, 1809, 1810, 1811, 1812, 1813, 1814, 1815, 1816, 1817, 1818, 1819, 1820, 1821, 1822, 1823,
    1824, 1825, 1826, 1827, 1828, 1829, 1830, 1831, 1832, 1833, 1834, 1835, 1836, 1837, 1838, 1839,
    1840, 1841, 1587, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1850, 1851, 1852, 1853, 1854, 1855,
    1536, 1857, 1858, 1859, 1860, 1861, 1862, 1863, 1864, 1865, 1866, 1867, 1868, 1869, 1870, 1871,
    1872, 1873, 1874, 1875, 1876, 1877, 1878, 1879, 1880, 1881, 1882, 1883, 1884, 1885, 1886, 1887,
    1888, 1889, 1890, 1891, 1892, 1893, 1894, 1895, 1896, 1897, 1898, 1899, 1900, 1901, 1902, 1903,
    1904, 1905, 1587, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1914, 1915, 1916, 1917, 1918, 1919,
    1920, 1921, 1922, 1923, 1924, 1925, 1926, 1927, 1928, 1929, 1930, 1931, 1932, 1933, 1934, 1935,
    1936, 1937, 1938, 1939, 1940, 1941, 1942, 1943, 1944, 1945, 1946, 1947, 1948, 1949, 1950, 1951,
    1952, 1953, 1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967,
    1968, 1969, 1587, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 1978, 1979, 1980, 1981, 1982, 1983,
    1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999,
    2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015,
    2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030, 2031,
    2032, 2033, 1587, 1587, 1587, 1587, 1587, 1587, 1592, 1592, 2042, 2043, 2044, 2045, 2046, 2047,
    2048, 2049, 2050, 2051, 2052, 2053, 2054, 2055, 2056, 2057, 2058, 2059, 2060, 2061, 2062, 2063,
    2064, 2065, 2066, 2067, 2068, 2069, 2070, 2071, 2072, 2073, 2074, 2075, 2076, 2077, 2078, 2079,
    2080, 2081, 2082, 2083, 2084, 2085, 2086, 2087, 2088, 2089, 2090, 2091, 2092, 2093, 2094, 2095,
    2096, 2097, 2098, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2112, 2113, 2114, 2115, 2116, 2117, 2118, 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2127,
    2128, 2129, 2130, 2131, 2132, 2133, 2134, 2135, 2136, 2137, 2138, 2139, 2140, 2141, 2142, 2143,
    2144, 2145, 2146, 2147, 2148, 2149, 2150, 2151, 2152, 2153, 2154, 2155, 2156, 2157, 2158, 2159,
    2160, 2161, 2162, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2176, 2177, 2178, 2179, 2180, 2181, 2182, 2183, 2184, 2185, 2186, 2187, 2188, 2189, 2190, 2191,
    2192, 2193, 2194, 2195, 2196, 2197, 2198, 2199, 2200, 2201, 2202, 2203, 2204, 2205, 2206, 2207,
    2208, 2209, 2210, 2211, 2212, 2213, 2214, 2215, 2216, 2217, 2218, 2219, 2220, 2221, 2222, 2223,
    2224, 2225, 2226, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2240, 2241, 2242, 2243, 2244, 2245, 2246, 2247, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255,
    2256, 2257, 2258, 2259, 2260, 2261, 2262, 2263, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2271,
    2272, 2273, 2274, 2275, 2276, 2277, 2278, 2279, 2280, 2281, 2282, 2283, 2284, 2285, 2286, 2287,
    2288, 2289, 2290, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2304, 2305, 2306, 2307, 2308, 2309, 2310, 2311, 2312, 2313, 2314, 2315, 2316, 2317, 2318, 2319,
    2320, 2321, 2322, 2323, 2324, 2325, 2326, 2327, 2328, 2329, 2330, 2331, 2332, 2333, 2334, 2335,
    2336, 2337, 2338, 2339, 2340, 2341, 2342, 2343, 2344, 2345, 2346, 2347, 2348, 2349, 2350, 2351,
    2352, 2353, 2354, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2368, 2369, 2370, 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2378, 2379, 2380, 2381, 2382, 2383,
    2384, 2385, 2386, 2387, 2388, 2389, 2390, 2391, 2392, 2393, 2394, 2395, 2396, 2397, 2398, 2399,
    2400, 2401, 2402, 2403, 2404, 2405, 2406, 2407, 2408, 2409, 2410, 2411, 2412, 2413, 2414, 2415,
    2416, 2417, 2418, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2432, 2433, 2434, 2435, 2436, 2437, 2438, 2439, 2440, 2441, 2442, 2443, 2444, 2445, 2446, 2447,
    2448, 2449, 2450, 2451, 2452, 2453, 2454, 2455, 2456, 2457, 2458, 2459, 2460, 2461, 2462, 2463,
    2464, 2465, 2466, 2467, 2468, 2469, 2470, 2471, 2472, 2473, 2474, 2475, 2476, 2477, 2478, 2479,
    2480, 2481, 2482, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2496, 2497, 2498, 2499, 2500, 2501, 2502, 2503, 2504, 2505, 2506, 2507, 2508, 2509, 2510, 2511,
    2512, 2513, 2514, 2515, 2516, 2517, 2518, 2519, 2520, 2521, 2522, 2523, 2524, 2525, 2526, 2527,
    2528, 2529, 2530, 2531, 2532, 2533, 2534, 2535, 2536, 2537, 2538, 2539, 2540, 2541, 2542, 2543,
    2544, 2545, 2546, 2099, 2099, 2099, 2099, 2099, 2104, 2104, 2104, 2104, 2104, 2104, 2104, 2104,
    2560, 2561, 2562, 2563, 2564, 2565, 2566, 2567, 2568, 2569, 2570, 2571, 2572, 2573, 2574, 2575,
    2576, 2577, 2578, 2579, 2580, 2581, 2582, 2583, 2584, 2585, 2586, 2587, 2588, 2589, 2590, 2591,
    2592, 2593, 2594, 2595, 2596, 2597, 2598, 2599, 2600, 2601, 2602, 2603, 2604, 2605, 2606, 2607,
    2608, 2609, 2610, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2624, 2625, 2626, 2627, 2628, 2629, 2630, 2631, 2632, 2633, 2634, 2635, 2636, 2637, 2638, 2639,
    2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2649, 2650, 2651, 2652, 2653, 2654, 2655,
    2656, 2657, 2658, 2659, 2660, 2661, 2662, 2663, 2664, 2665, 2666, 2667, 2668, 2669, 2670, 2671,
    2672, 2673, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2688, 2689, 2690, 2691, 2692, 2693, 2694, 2695, 2696, 2697, 2698, 2699, 2700, 2701, 2702, 2703,
    2704, 2705, 2706, 2707, 2708, 2709, 2710, 2711, 2712, 2713, 2714, 2715, 2716, 2717, 2718, 2719,
    2720, 2721, 2722, 2723, 2724, 2725, 2726, 2727, 2728, 2729, 2730, 2731, 2732, 2733, 2734, 2735,
    2736, 2737, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2752, 2753, 2754, 2755, 2756, 2757, 2758, 2759, 2760, 2761, 2762, 2763, 2764, 2765, 2766, 2767,
    2768, 2769, 2770, 2771, 2772, 2773, 2774, 2775, 2776, 2777, 2778, 2779, 2780, 2781, 2782, 2783,
    2784, 2785, 2786, 2787, 2788, 2789, 2790, 2791, 2792, 2793, 2794, 2795, 2796, 2797, 2798, 2799,
    2800, 2801, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2816, 2817, 2818, 2819, 2820, 2821, 2822, 2823, 2824, 2825, 2826, 2827, 2828, 2829, 2830, 2831,
    2832, 2833, 2834, 2835, 2836, 2837, 2838, 2839, 2840, 2841, 2842, 2843, 2844, 2845, 2846, 2847,
    2848, 2849, 2850, 2851, 2852, 2853, 2854, 2855, 2856, 2857, 2858, 2859, 2860, 2861, 2862, 2863,
    2864, 2865, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2880, 2881, 2882, 2883, 2884, 2885, 2886, 2887, 2888, 2889, 2890, 2891, 2892, 2893, 2894, 2895,
    2896, 2897, 2898, 2899, 2900, 2901, 2902, 2903, 2904, 2905, 2906, 2907, 2908, 2909, 2910, 2911,
    2912, 2913, 2914, 2915, 2916, 2917, 2918, 2919, 2920, 2921, 2922, 2923, 2924, 2925, 2926, 2927,
    2928, 2929, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    2944, 2945, 2946, 2947, 2948, 2949, 2950, 2951, 2952, 2953, 2954, 2955, 2956, 2957, 2958, 2959,
    2960, 2961, 2962, 2963, 2964, 2965, 2966, 2967, 2968, 2969, 2970, 2971, 2972, 2973, 2974, 2975,
    2976, 2977, 2978, 2979, 2980, 2981, 2982, 2983, 2984, 2985, 2986, 2987, 2988, 2989, 2990, 2991,
    2992, 2611, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    3008, 3009, 3010, 3011, 3012, 3013, 3014, 3015, 3016, 3017, 3018, 3019, 3020, 3021, 3022, 3023,
    3024, 3025, 3026, 3027, 3028, 3029, 3030, 3031, 3032, 3033, 3034, 3035, 3036, 3037, 3038, 3039,
    3040, 3041, 3042, 3043, 3044, 3045, 3046, 3047, 3048, 3049, 3050, 3051, 3052, 3053, 3054, 3055,
    3056, 2611, 2611, 2611, 2611, 2611, 2611, 2611, 2616, 2616, 2616, 2616, 2616, 2616, 2616, 2616,
    3072, 3073, 3074, 3075, 3076, 3077, 3078, 3079, 3080, 3081, 3082, 3083, 3084, 3085, 3086, 3087,
    3088, 3089, 3090, 3091, 3092, 3093, 3094, 3095, 3096, 3097, 3098, 3099, 3100, 3101, 3102, 3103,
    3104, 3105, 3106, 3107, 3108, 3109, 3110, 3111, 3112, 3113, 3114, 3115, 3116, 3117, 3118, 3119,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3136, 3137, 3138, 3139, 3140, 3141, 3142, 3143, 3144, 3145, 3146, 3147, 3148, 3149, 3150, 3151,
    3152, 3153, 3154, 3155, 3156, 3157, 3158, 3159, 3160, 3161, 3162, 3163, 3164, 3165, 3166, 3167,
    3168, 3169, 3170, 3171, 3172, 3173, 3174, 3175, 3176, 3177, 3178, 3179, 3180, 3181, 3182, 3183,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3200, 3201, 3202, 3203, 3204, 3205, 3206, 3207, 3208, 3209, 3210, 3211, 3212, 3213, 3214, 3215,
    3216, 3217, 3218, 3219, 3220, 3221, 3222, 3223, 3224, 3225, 3226, 3227, 3228, 3229, 3230, 3231,
    3232, 3233, 3234, 3235, 3236, 3237, 3238, 3239, 3240, 3241, 3242, 3243, 3244, 3245, 3246, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3264, 3265, 3266, 3267, 3268, 3269, 3270, 3271, 3272, 3273, 3274, 3275, 3276, 3277, 3278, 3279,
    3280, 3281, 3282, 3283, 3284, 3285, 3286, 3287, 3288, 3289, 3290, 3291, 3292, 3293, 3294, 3295,
    3296, 3297, 3298, 3299, 3300, 3301, 3302, 3303, 3304, 3305, 3306, 3307, 3308, 3309, 3310, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3328, 3329, 3330, 3331, 3332, 3333, 3334, 3335, 3336, 3337, 3338, 3339, 3340, 3341, 3342, 3343,
    3344, 3345, 3346, 3347, 3348, 3349, 3350, 3351, 3352, 3353, 3354, 3355, 3356, 3357, 3358, 3359,
    3360, 3361, 3362, 3363, 3364, 3365, 3366, 3367, 3368, 3369, 3370, 3371, 3372, 3373, 3374, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3392, 3393, 3394, 3395, 3396, 3397, 3398, 3399, 3400, 3401, 3402, 3403, 3404, 3405, 3406, 3407,
    3408, 3409, 3410, 3411, 3412, 3413, 3414, 3415, 3416, 3417, 3418, 3419, 3420, 3421, 3422, 3423,
    3424, 3425, 3426, 3427, 3428, 3429, 3430, 3431, 3432, 3433, 3434, 3435, 3436, 3437, 3438, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3456, 3457, 3458, 3459, 3460, 3461, 3462, 3463, 3464, 3465, 3466, 3467, 3468, 3469, 3470, 3471,
    3472, 3473, 3474, 3475, 3476, 3477, 3478, 3479, 3480, 3481, 3482, 3483, 3484, 3485, 3486, 3487,
    3488, 3489, 3490, 3491, 3492, 3493, 3494, 3495, 3496, 3497, 3498, 3499, 3500, 3501, 3502, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3520, 3521, 3522, 3523, 3524, 3525, 3526, 3527, 3528, 3529, 3530, 3531, 3532, 3533, 3534, 3535,
    3536, 3537, 3538, 3539, 3540, 3541, 3542, 3543, 3544, 3545, 3546, 3547, 3548, 3549, 3550, 3551,
    3552, 3553, 3554, 3555, 3556, 3557, 3558, 3559, 3560, 3561, 3562, 3563, 3564, 3565, 3566, 3247,
    3120, 3120, 3120, 3120, 3120, 3120, 3120, 3120, 3128, 3128, 3128, 3128, 3128, 3128, 3128, 3128,
    3584, 3585, 3586, 3587, 3588, 3589, 3590, 3591, 3592, 3593, 3594, 3595, 3596, 3597, 3598, 3599,
    3600, 3601, 3602, 3603, 3604, 3605, 3606, 3607, 3608, 3609, 3610, 3611, 3612, 3613, 3614, 3615,
    3616, 3617, 3618, 3619, 3620, 3621, 3622, 3623, 3624, 3625, 3626, 3627, 3628, 3629, 3630, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3648, 3649, 3650, 3651, 3652, 3653, 3654, 3655, 3656, 3657, 3658, 3659, 3660, 3661, 3662, 3663,
    3664, 3665, 3666, 3667, 3668, 3669, 3670, 3671, 3672, 3673, 3674, 3675, 3676, 3677, 3678, 3679,
    3680, 3681, 3682, 3683, 3684, 3685, 3686, 3687, 3688, 3689, 3690, 3691, 3692, 3693, 3694, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3712, 3713, 3714, 3715, 3716, 3717, 3718, 3719, 3720, 3721, 3722, 3723, 3724, 3725, 3726, 3727,
    3728, 3729, 3730, 3731, 3732, 3733, 3734, 3735, 3736, 3737, 3738, 3739, 3740, 3741, 3742, 3743,
    3744, 3745, 3746, 3747, 3748, 3749, 3750, 3751, 3752, 3753, 3754, 3755, 3756, 3757, 3758, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3776, 3777, 3778, 3779, 3780, 3781, 3782, 3783, 3784, 3785, 3785, 3785, 3785, 3789, 3790, 3791,
    3792, 3793, 3794, 3795, 3796, 3797, 3798, 3799, 3800, 3801, 3802, 3803, 3804, 3805, 3806, 3807,
    3808, 3809, 3810, 3811, 3812, 3813, 3814, 3815, 3816, 3817, 3818, 3819, 3820, 3821, 3822, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3840, 3841, 3842, 3843, 3844, 3845, 3846, 3847, 3785, 3785, 3785, 3785, 3785, 3785, 3785, 3785,
    3856, 3857, 3858, 3859, 3860, 3861, 3862, 3863, 3864, 3865, 3866, 3867, 3868, 3869, 3870, 3871,
    3872, 3873, 3874, 3875, 3876, 3877, 3878, 3879, 3880, 3881, 3882, 3883, 3884, 3885, 3886, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3904, 3905, 3906, 3907, 3908, 3909, 3910, 3911, 3785, 3785, 3785, 3785, 3785, 3785, 3785, 3785,
    3920, 3920, 3920, 3920, 3920, 3920, 3920, 3927, 3928, 3929, 3930, 3931, 3932, 3933, 3934, 3935,
    3936, 3937, 3938, 3939, 3940, 3941, 3942, 3943, 3944, 3945, 3946, 3947, 3948, 3631, 3631, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3904, 3969, 3970, 3971, 3972, 3973, 3974, 3975, 3785, 3785, 3785, 3785, 3785, 3785, 3785, 3785,
    3920, 3920, 3920, 3920, 3920, 3920, 3920, 3991, 3992, 3993, 3994, 3995, 3996, 3997, 3998, 3999,
    4000, 4001, 4002, 4003, 4004, 4005, 4006, 4007, 4008, 4009, 4010, 4011, 4012, 3631, 3631, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640,
    3904, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 3785, 3785, 3785, 3785, 3785, 3785, 3785, 3785,
    3920, 3920, 3920, 3920, 3920, 3920, 3920, 4055, 4056, 4057, 4058, 4059, 4060, 4061, 4062, 4063,
    4064, 4065, 4066, 4067, 4068, 4069, 4070, 4071, 4072, 4073, 4074, 4075, 4076, 3631, 3631, 3631,
    3632, 3632, 3632, 3632, 3632, 3632, 3632, 3632, 3640, 3640, 3640, 3640, 3640, 3640, 3640, 3640
};
// END GENERATED VCS RADAR ASSETS
// BEGIN VCS RADAR LINK
#define VCS_RADAR_INTERIOR_PVAR "VCS:radar_interior"
// END VCS RADAR LINK
#define VCS_RADAR_SOURCE_AREA_PVAR "VCS:enex_area"

#define VCS_RADAR_X                         (40.0)
#define VCS_RADAR_BOTTOM                    (420.0)
#define VCS_RADAR_STOCK_WIDTH               (94.0)
#define VCS_RADAR_STOCK_HEIGHT              (76.0)
#define VCS_RADAR_LARGE_HEIGHT              (120.0)
#define VCS_RADAR_STOCK_ARROW_SIZE          (16.0)
#define VCS_RADAR_LARGE_ARROW_SIZE          (20.0)
#define VCS_RADAR_BORDER_SIZE               (4.0)
#define VCS_RADAR_POSITION_OUTLINE_SIZE     (3.0)
#define VCS_RADAR_POSITION_CENTRE_SIZE      (1.0)
#define VCS_RADAR_UPDATE_MS                 (75)
#define VCS_RADAR_HYSTERESIS_WORLD          (8.0)
#define VCS_RADAR_POSITION_THRESHOLD        (0.15)
#define VCS_RADAR_VIRTUAL_WORLD             (0)
#define VCS_RADAR_OUTLINE_CANVAS_SCALE      (2.0)
#define VCS_RADAR_OUTLINE_RADIUS_RATIO      (0.0625)
#define VCS_RADAR_REMOTE_CAP                (45)
#define VCS_RADAR_REMOTE_RETRY_MS           (1000)
#define VCS_RADAR_SPRITE_LIMIT              (100)
#define VCS_RADAR_BASE_SPRITES              (9)
#define VCS_RADAR_SPRITE_RESERVE            (4)
#define VCS_RADAR_BUDGET_UPDATE_MS          (1000)

#define VCS_RADAR_COLOUR                    (0xFFFFFFFF)
#define VCS_RADAR_BORDER_COLOUR             (0x17131FFF)
#define VCS_RADAR_ARROW_COLOUR              (0xFFFFFFFF)
#define VCS_RADAR_LOCAL_OUTLINE_COLOUR      (0xFF69B4FF)
#define VCS_RADAR_MESSAGE_COLOUR            (0xE85DDCFF)
#define VCS_RADAR_ERROR_COLOUR              (0xFF7777FF)

#if defined VCS_RADAR_SHOW_PLAYERS
const bool:VCS_RADAR_PLAYERS_ENABLED = true;
#else
const bool:VCS_RADAR_PLAYERS_ENABLED = false;
#endif

new PlayerText:gVCSRadarWindow[MAX_PLAYERS];
new PlayerText:gVCSRadarBorders[MAX_PLAYERS][4];
new PlayerText:gVCSRadarArrow[MAX_PLAYERS];
new PlayerText:gVCSRadarArrowOutline[MAX_PLAYERS];
new PlayerText:gVCSRadarPositionPoint[MAX_PLAYERS][2];
new bool:gVCSRadarLargeLayout[MAX_PLAYERS];
new bool:gVCSRadarCreated[MAX_PLAYERS];
new bool:gVCSRadarEnabled[MAX_PLAYERS];
new bool:gVCSRadarVisible[MAX_PLAYERS];
new bool:gVCSRadarDownloadsReady[MAX_PLAYERS];
new bool:gVCSRadarAllocationFailed[MAX_PLAYERS];
new gVCSRadarLastWindow[MAX_PLAYERS];
new gVCSRadarLastDirection[MAX_PLAYERS];
new Float:gVCSRadarLastArrowX[MAX_PLAYERS];
new Float:gVCSRadarLastArrowY[MAX_PLAYERS];
new bool:gVCSRadarModelsReady;
new gVCSRadarTimer;
new bool:gVCSRadarRemoteLimitNotice[MAX_PLAYERS];
new gVCSRadarRemoteCount[MAX_PLAYERS];
new gVCSRadarRemoteEligible[MAX_PLAYERS];
new gVCSRadarRemoteOverlapHidden[MAX_PLAYERS];
new gVCSRadarRemoteRetryAt[MAX_PLAYERS];
new gVCSRadarRemoteBudget[MAX_PLAYERS];
new gVCSRadarBudgetCheckAt[MAX_PLAYERS];
new PlayerText:gVCSRadarRemoteDraws[MAX_PLAYERS][VCS_RADAR_REMOTE_CAP][2];
new gVCSRadarRemoteTarget[MAX_PLAYERS][VCS_RADAR_REMOTE_CAP];
new gVCSRadarRemoteDirection[MAX_PLAYERS][VCS_RADAR_REMOTE_CAP];
new Float:gVCSRadarRemoteX[MAX_PLAYERS][VCS_RADAR_REMOTE_CAP];
new Float:gVCSRadarRemoteY[MAX_PLAYERS][VCS_RADAR_REMOTE_CAP];

enum E_VCSRadarSnapshot
{
    bool:VCS_RADAR_SNAPSHOT_VALID,
    Float:VCS_RADAR_SNAPSHOT_X,
    Float:VCS_RADAR_SNAPSHOT_Y,
    VCS_RADAR_SNAPSHOT_WORLD,
    VCS_RADAR_SNAPSHOT_INTERIOR,
    VCS_RADAR_SNAPSHOT_AREA,
    VCS_RADAR_SNAPSHOT_INTERIOR_FLAG,
    VCS_RADAR_SNAPSHOT_DIRECTION,
    VCS_RADAR_SNAPSHOT_NEXT
};
new gVCSRadarSnapshot[MAX_PLAYERS][E_VCSRadarSnapshot];
new gVCSRadarSnapshotPlayers[MAX_PLAYERS];
new gVCSRadarSnapshotCount;
new gVCSRadarSnapshotTime;
new gVCSRadarSnapshotCells[VCS_RADAR_WINDOW_COUNT];
new bool:gVCSRadarUpdatingAll;

new const gVCSRadarArrowTextures[8][] =
{
    "player_icon_n", "player_icon_nw", "player_icon_w", "player_icon_sw",
    "player_icon_s", "player_icon_se", "player_icon_e", "player_icon_ne"
};
new const gVCSRadarOutlineTextures[8][] =
{
    "player_outline_n", "player_outline_nw", "player_outline_w", "player_outline_sw",
    "player_outline_s", "player_outline_se", "player_outline_e", "player_outline_ne"
};

forward VCSRadarUpdateAll();

stock VCSRadarResetPlayer(playerid)
{
    gVCSRadarWindow[playerid] = INVALID_PLAYER_TEXT_DRAW;
    gVCSRadarArrow[playerid] = INVALID_PLAYER_TEXT_DRAW;
    gVCSRadarArrowOutline[playerid] = INVALID_PLAYER_TEXT_DRAW;
    gVCSRadarRemoteLimitNotice[playerid] = false;
    gVCSRadarRemoteCount[playerid] = 0;
    gVCSRadarRemoteEligible[playerid] = 0;
    gVCSRadarRemoteOverlapHidden[playerid] = 0;
    gVCSRadarRemoteRetryAt[playerid] = 0;
    gVCSRadarRemoteBudget[playerid] = 0;
    gVCSRadarBudgetCheckAt[playerid] = 0;
    gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_VALID] = false;
    for (new slot = 0; slot < VCS_RADAR_REMOTE_CAP; slot++)
    {
        gVCSRadarRemoteDraws[playerid][slot][0] = INVALID_PLAYER_TEXT_DRAW;
        gVCSRadarRemoteDraws[playerid][slot][1] = INVALID_PLAYER_TEXT_DRAW;
        gVCSRadarRemoteTarget[playerid][slot] = INVALID_PLAYER_ID;
        gVCSRadarRemoteDirection[playerid][slot] = -1;
    }
    for (new index = 0; index < 2; index++)
    {
        gVCSRadarPositionPoint[playerid][index] = INVALID_PLAYER_TEXT_DRAW;
    }
    gVCSRadarLargeLayout[playerid] = true;
    for (new index = 0; index < 4; index++)
    {
        gVCSRadarBorders[playerid][index] = INVALID_PLAYER_TEXT_DRAW;
    }
    gVCSRadarCreated[playerid] = false;
    gVCSRadarEnabled[playerid] = true;
    gVCSRadarVisible[playerid] = false;
    gVCSRadarDownloadsReady[playerid] = false;
    gVCSRadarAllocationFailed[playerid] = false;
    gVCSRadarLastWindow[playerid] = -1;
    gVCSRadarLastDirection[playerid] = -1;
    gVCSRadarLastArrowX[playerid] = -10000.0;
    gVCSRadarLastArrowY[playerid] = -10000.0;
    return 1;
}

stock bool:VCSRadarModelMatches(modelid, const texturePath[])
{
    new actualDff[256];
    new actualTxd[256];
    if (!GetCustomModelPath(modelid, actualDff, sizeof actualDff, actualTxd, sizeof actualTxd))
    {
        return false;
    }
    return strcmp(actualDff, VCS_RADAR_LOADER_DFF) == 0 && strcmp(actualTxd, texturePath) == 0;
}

stock bool:VCSRadarCheckModelSlot(modelid, const texturePath[])
{
    if (!IsValidCustomModel(modelid) || VCSRadarModelMatches(modelid, texturePath))
    {
        return true;
    }
    printf("[VCSMinimap] ERROR: model ID %d is already registered with different assets.", modelid);
    printf("[VCSMinimap] Stop the server process, install this package, then restart it.");
    return false;
}

stock bool:VCSRadarRegisterModel(modelid, const texturePath[])
{
    if (IsValidCustomModel(modelid))
    {
        return VCSRadarModelMatches(modelid, texturePath);
    }
    if (!AddSimpleModel(-1, 19379, modelid, VCS_RADAR_LOADER_DFF, texturePath))
    {
        printf("[VCSMinimap] ERROR: failed to register model %d, TXD %s.", modelid, texturePath);
        printf("[VCSMinimap] Check artwork.enable and files below artwork.models_path (normally models/).");
        printf("[VCSMinimap] Loader DFF: %s", VCS_RADAR_LOADER_DFF);
        return false;
    }
    return true;
}

stock bool:VCSRadarRegisterModels()
{
    new texturePath[128];
    for (new packIndex = 0; packIndex < VCS_RADAR_PACK_COUNT; packIndex++)
    {
        format(texturePath, sizeof texturePath, "%s/%s%02d.txd", VCS_RADAR_PACK_DIRECTORY, VCS_RADAR_PACK_PREFIX, packIndex);
        if (!VCSRadarCheckModelSlot(VCS_RADAR_MODEL_BASE - packIndex, texturePath))
        {
            return false;
        }
    }
    if (!VCSRadarCheckModelSlot(VCS_RADAR_ICON_MODEL, VCS_RADAR_ICON_TXD))
    {
        return false;
    }
    for (new packIndex = 0; packIndex < VCS_RADAR_PACK_COUNT; packIndex++)
    {
        format(texturePath, sizeof texturePath, "%s/%s%02d.txd", VCS_RADAR_PACK_DIRECTORY, VCS_RADAR_PACK_PREFIX, packIndex);
        if (!VCSRadarRegisterModel(VCS_RADAR_MODEL_BASE - packIndex, texturePath))
        {
            return false;
        }
    }
    return VCSRadarRegisterModel(VCS_RADAR_ICON_MODEL, VCS_RADAR_ICON_TXD);
}

stock VCSRadarFormatWindowSprite(windowIndex, output[], outputSize)
{
    new row = windowIndex / VCS_RADAR_GRID_COLUMNS;
    new column = windowIndex % VCS_RADAR_GRID_COLUMNS;
    new packIndex = (row / VCS_RADAR_GROUP_SIDE) * VCS_RADAR_PACK_COLUMNS + column / VCS_RADAR_GROUP_SIDE;
    format(output, outputSize, "mdl%d:%s%04d", VCS_RADAR_MODEL_BASE - packIndex,
        VCS_RADAR_TEXTURE_PREFIX, gVCSRadarTextureIndex[windowIndex]);
    return 1;
}

stock VCSRadarGetLayout(playerid, &Float:top, &Float:width, &Float:height, &Float:arrowSize)
{
    height = gVCSRadarLargeLayout[playerid] ? VCS_RADAR_LARGE_HEIGHT : VCS_RADAR_STOCK_HEIGHT;
    width = VCS_RADAR_STOCK_WIDTH * height / VCS_RADAR_STOCK_HEIGHT;
    top = VCS_RADAR_BOTTOM - height;
    arrowSize = gVCSRadarLargeLayout[playerid] ? VCS_RADAR_LARGE_ARROW_SIZE : VCS_RADAR_STOCK_ARROW_SIZE;
    return 1;
}

stock VCSRadarConfigureSprite(playerid, PlayerText:textdraw, Float:width, Float:height, colour)
{
    PlayerTextDrawFont(playerid, textdraw, TEXT_DRAW_FONT_SPRITE);
    PlayerTextDrawTextSize(playerid, textdraw, width, height);
    PlayerTextDrawColour(playerid, textdraw, colour);
    PlayerTextDrawSetShadow(playerid, textdraw, 0);
    PlayerTextDrawSetOutline(playerid, textdraw, 0);
    PlayerTextDrawSetProportional(playerid, textdraw, false);
    PlayerTextDrawSetSelectable(playerid, textdraw, false);
    return 1;
}

stock bool:VCSRadarCreateBorder(playerid, borderIndex, Float:x, Float:y, Float:width, Float:height)
{
    gVCSRadarBorders[playerid][borderIndex] = CreatePlayerTextDraw(playerid, x, y, "LD_SPAC:white");
    if (gVCSRadarBorders[playerid][borderIndex] == INVALID_PLAYER_TEXT_DRAW)
    {
        return false;
    }
    VCSRadarConfigureSprite(playerid, gVCSRadarBorders[playerid][borderIndex], width, height, VCS_RADAR_BORDER_COLOUR);
    return true;
}

stock VCSRadarDestroyRemoteSlot(playerid, slot)
{
    for (new layer = 0; layer < 2; layer++)
    {
        if (gVCSRadarRemoteDraws[playerid][slot][layer] != INVALID_PLAYER_TEXT_DRAW)
        {
            PlayerTextDrawDestroy(playerid, gVCSRadarRemoteDraws[playerid][slot][layer]);
            gVCSRadarRemoteDraws[playerid][slot][layer] = INVALID_PLAYER_TEXT_DRAW;
        }
    }
    gVCSRadarRemoteTarget[playerid][slot] = INVALID_PLAYER_ID;
    gVCSRadarRemoteDirection[playerid][slot] = -1;
    return 1;
}

stock VCSRadarDestroyRemotePlayers(playerid)
{
    while (gVCSRadarRemoteCount[playerid] > 0)
    {
        VCSRadarDestroyRemoteSlot(playerid, --gVCSRadarRemoteCount[playerid]);
    }
    gVCSRadarRemoteEligible[playerid] = 0;
    gVCSRadarRemoteOverlapHidden[playerid] = 0;
    gVCSRadarRemoteRetryAt[playerid] = 0;
    gVCSRadarRemoteBudget[playerid] = 0;
    gVCSRadarBudgetCheckAt[playerid] = 0;
    return 1;
}

stock VCSRadarUpdateSpriteBudget(playerid)
{
    if (gVCSRadarBudgetCheckAt[playerid] != 0 && gVCSRadarSnapshotTime - gVCSRadarBudgetCheckAt[playerid] < 0)
    {
        return 1;
    }
    new bool:owned[_:MAX_PLAYER_TEXT_DRAWS];
    if (gVCSRadarCreated[playerid])
    {
        owned[_:gVCSRadarWindow[playerid]] = true;
        owned[_:gVCSRadarArrow[playerid]] = true;
        owned[_:gVCSRadarArrowOutline[playerid]] = true;
        for (new index = 0; index < 4; index++)
        {
            owned[_:gVCSRadarBorders[playerid][index]] = true;
        }
        for (new index = 0; index < 2; index++)
        {
            owned[_:gVCSRadarPositionPoint[playerid][index]] = true;
        }
    }
    for (new slot = 0; slot < gVCSRadarRemoteCount[playerid]; slot++)
    {
        owned[_:gVCSRadarRemoteDraws[playerid][slot][0]] = true;
        owned[_:gVCSRadarRemoteDraws[playerid][slot][1]] = true;
    }
    new externalSprites;
    for (new PlayerText:textdraw = PlayerText:0; textdraw < MAX_PLAYER_TEXT_DRAWS; textdraw++)
    {
        if (!owned[_:textdraw] && IsValidPlayerTextDraw(playerid, textdraw) && IsPlayerTextDrawVisible(playerid, textdraw))
        {
            new TEXT_DRAW_FONT:font = PlayerTextDrawGetFont(playerid, textdraw);
            if (font == TEXT_DRAW_FONT_SPRITE || font == TEXT_DRAW_FONT_MODEL_PREVIEW)
            {
                externalSprites++;
            }
        }
    }
    for (new Text:textdraw = Text:0; textdraw < MAX_TEXT_DRAWS; textdraw++)
    {
        if (IsValidTextDraw(textdraw) && IsTextDrawVisibleForPlayer(playerid, textdraw))
        {
            new TEXT_DRAW_FONT:font = TextDrawGetFont(textdraw);
            if (font == TEXT_DRAW_FONT_SPRITE || font == TEXT_DRAW_FONT_MODEL_PREVIEW)
            {
                externalSprites++;
            }
        }
    }
    gVCSRadarRemoteBudget[playerid] = clamp(
        (VCS_RADAR_SPRITE_LIMIT - VCS_RADAR_BASE_SPRITES - externalSprites - VCS_RADAR_SPRITE_RESERVE) / 2,
        0, VCS_RADAR_REMOTE_CAP);
    gVCSRadarBudgetCheckAt[playerid] = gVCSRadarSnapshotTime + VCS_RADAR_BUDGET_UPDATE_MS;
    return 1;
}

stock VCSRadarPlayerOutlineColour(playerid)
{
    new hue = (playerid * 577 + 123) % 1530;
    new sector = hue / 255;
    new step = hue % 255;
    new red;
    new green;
    new blue;
    switch (sector)
    {
        case 0: { red = 255; green = step; }
        case 1: { red = 255 - step; green = 255; }
        case 2: { green = 255; blue = step; }
        case 3: { green = 255 - step; blue = 255; }
        case 4: { red = step; blue = 255; }
        case 5: { red = 255; blue = 255 - step; }
    }
    return (red << 24) | (green << 16) | (blue << 8) | 0xFF;
}

stock VCSRadarCapturePlayers()
{
    gVCSRadarSnapshotCount = 0;
    gVCSRadarSnapshotTime = GetTickCount();
    for (new cell = 0; cell < VCS_RADAR_WINDOW_COUNT; cell++)
    {
        gVCSRadarSnapshotCells[cell] = INVALID_PLAYER_ID;
    }
    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_VALID] = false;
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_NEXT] = INVALID_PLAYER_ID;
        if (!IsPlayerConnected(playerid))
        {
            continue;
        }
        gVCSRadarSnapshotPlayers[gVCSRadarSnapshotCount++] = playerid;
        if (IsPlayerNPC(playerid))
        {
            continue;
        }
        new PLAYER_STATE:playerState = GetPlayerState(playerid);
        if (!((playerState >= PLAYER_STATE_ONFOOT && playerState < PLAYER_STATE_WASTED) || playerState == PLAYER_STATE_SPAWNED))
        {
            continue;
        }
        new Float:x;
        new Float:y;
        new Float:z;
        if (!GetPlayerPos(playerid, x, y, z) ||
            !(x >= -100000000.0 && x <= 100000000.0 && y >= -100000000.0 && y <= 100000000.0))
        {
            continue;
        }
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_X] = x;
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_Y] = y;
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_WORLD] = GetPlayerVirtualWorld(playerid);
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_INTERIOR] = GetPlayerInterior(playerid);
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_AREA] = GetPVarInt(playerid, VCS_RADAR_SOURCE_AREA_PVAR);
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_INTERIOR_FLAG] = GetPVarInt(playerid, VCS_RADAR_INTERIOR_PVAR);
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_DIRECTION] = VCSRadarGetPlayerDirection(playerid);
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_VALID] = true;
        if (x < VCS_RADAR_WORLD_MIN_X - VCS_RADAR_WINDOW_WORLD_SIZE * 0.5 ||
            x > VCS_RADAR_WORLD_MAX_X + VCS_RADAR_WINDOW_WORLD_SIZE * 0.5 ||
            y < VCS_RADAR_WORLD_MIN_Y - VCS_RADAR_WINDOW_WORLD_SIZE * 0.5 ||
            y > VCS_RADAR_WORLD_MAX_Y + VCS_RADAR_WINDOW_WORLD_SIZE * 0.5)
        {
            continue;
        }
        new column = clamp(floatround((x - VCS_RADAR_WORLD_MIN_X) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
            0, VCS_RADAR_GRID_COLUMNS - 1);
        new row = clamp(floatround((VCS_RADAR_WORLD_MAX_Y - y) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
            0, VCS_RADAR_GRID_ROWS - 1);
        new cell = row * VCS_RADAR_GRID_COLUMNS + column;
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_NEXT] = gVCSRadarSnapshotCells[cell];
        gVCSRadarSnapshotCells[cell] = playerid;
    }
    return 1;
}

stock bool:VCSRadarIsFarther(Float:firstDistance, firstPlayer, Float:secondDistance, secondPlayer)
{
    return firstDistance > secondDistance || (firstDistance == secondDistance && firstPlayer > secondPlayer);
}

stock VCSRadarHeapSiftDown(players[], Float:distances[], count, root)
{
    while (root * 2 + 1 < count)
    {
        new child = root * 2 + 1;
        if (child + 1 < count && VCSRadarIsFarther(distances[child + 1], players[child + 1], distances[child], players[child]))
        {
            child++;
        }
        if (!VCSRadarIsFarther(distances[child], players[child], distances[root], players[root]))
        {
            break;
        }
        new swapPlayer = players[root];
        new Float:swapDistance = distances[root];
        players[root] = players[child];
        distances[root] = distances[child];
        players[child] = swapPlayer;
        distances[child] = swapDistance;
        root = child;
    }
    return 1;
}

stock VCSRadarHeapInsert(players[], Float:distances[], &count, playerid, Float:distance)
{
    if (count == VCS_RADAR_REMOTE_CAP)
    {
        if (VCSRadarIsFarther(distances[0], players[0], distance, playerid))
        {
            players[0] = playerid;
            distances[0] = distance;
            VCSRadarHeapSiftDown(players, distances, count, 0);
        }
        return 1;
    }
    new index = count++;
    players[index] = playerid;
    distances[index] = distance;
    while (index > 0)
    {
        new parent = (index - 1) / 2;
        if (!VCSRadarIsFarther(distances[index], players[index], distances[parent], players[parent]))
        {
            break;
        }
        new swapPlayer = players[parent];
        new Float:swapDistance = distances[parent];
        players[parent] = players[index];
        distances[parent] = distances[index];
        players[index] = swapPlayer;
        distances[index] = swapDistance;
        index = parent;
    }
    return 1;
}

stock VCSRadarSelectRemotePlayers(playerid, Float:centerX, Float:centerY, Float:width, Float:height,
    Float:arrowSize, players[], &eligibleCount)
{
    new count;
    new Float:distances[VCS_RADAR_REMOTE_CAP];
    new Float:halfWidth = VCS_RADAR_WINDOW_WORLD_SIZE * 0.5 -
        arrowSize * (0.5 + VCS_RADAR_OUTLINE_RADIUS_RATIO) * VCS_RADAR_WINDOW_WORLD_SIZE / width;
    new Float:halfHeight = VCS_RADAR_WINDOW_WORLD_SIZE * 0.5 -
        arrowSize * (0.5 + VCS_RADAR_OUTLINE_RADIUS_RATIO) * VCS_RADAR_WINDOW_WORLD_SIZE / height;
    new minimumColumn = clamp(floatround((centerX - halfWidth - VCS_RADAR_WORLD_MIN_X) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
        0, VCS_RADAR_GRID_COLUMNS - 1);
    new maximumColumn = clamp(floatround((centerX + halfWidth - VCS_RADAR_WORLD_MIN_X) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
        0, VCS_RADAR_GRID_COLUMNS - 1);
    new minimumRow = clamp(floatround((VCS_RADAR_WORLD_MAX_Y - centerY - halfHeight) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
        0, VCS_RADAR_GRID_ROWS - 1);
    new maximumRow = clamp(floatround((VCS_RADAR_WORLD_MAX_Y - centerY + halfHeight) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor),
        0, VCS_RADAR_GRID_ROWS - 1);
    eligibleCount = 0;
    gVCSRadarRemoteOverlapHidden[playerid] = 0;
    new Float:ownerClearance = arrowSize * (1.0 + 2.0 * VCS_RADAR_OUTLINE_RADIUS_RATIO);
    for (new row = minimumRow; row <= maximumRow; row++)
    {
        for (new column = minimumColumn; column <= maximumColumn; column++)
        {
            new targetid = gVCSRadarSnapshotCells[row * VCS_RADAR_GRID_COLUMNS + column];
            while (targetid != INVALID_PLAYER_ID)
            {
                new candidate = targetid;
                targetid = gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_NEXT];
                if (candidate == playerid ||
                    gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_WORLD] != gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_WORLD] ||
                    gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_INTERIOR] != gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_INTERIOR] ||
                    gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_AREA] != gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_AREA] ||
                    gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_INTERIOR_FLAG] != 0 ||
                    floatabs(gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_X] - centerX) > halfWidth ||
                    floatabs(gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_Y] - centerY) > halfHeight)
                {
                    continue;
                }
                new Float:distanceX = gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_X] - gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_X];
                new Float:distanceY = gVCSRadarSnapshot[candidate][VCS_RADAR_SNAPSHOT_Y] - gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_Y];
                if (floatabs(distanceX) * width / VCS_RADAR_WINDOW_WORLD_SIZE < ownerClearance &&
                    floatabs(distanceY) * height / VCS_RADAR_WINDOW_WORLD_SIZE < ownerClearance)
                {
                    gVCSRadarRemoteOverlapHidden[playerid]++;
                    continue;
                }
                eligibleCount++;
                VCSRadarHeapInsert(players, distances, count, candidate, distanceX * distanceX + distanceY * distanceY);
            }
        }
    }
    for (new end = count - 1; end > 0; end--)
    {
        new swapPlayer = players[0];
        new Float:swapDistance = distances[0];
        players[0] = players[end];
        distances[0] = distances[end];
        players[end] = swapPlayer;
        distances[end] = swapDistance;
        VCSRadarHeapSiftDown(players, distances, end, 0);
    }
    return count;
}

stock bool:VCSRadarCreateRemoteSlot(playerid, slot, Float:arrowSize)
{
    for (new layer = 0; layer < 2; layer++)
    {
        new sprite[48];
        if (layer == 0)
        {
            format(sprite, sizeof sprite, "mdl%d:player_outline_n", VCS_RADAR_ICON_MODEL);
        }
        else
        {
            format(sprite, sizeof sprite, "mdl%d:player_icon_n", VCS_RADAR_ICON_MODEL);
        }
        gVCSRadarRemoteDraws[playerid][slot][layer] = CreatePlayerTextDraw(playerid, 0.0, 0.0, sprite);
        if (gVCSRadarRemoteDraws[playerid][slot][layer] == INVALID_PLAYER_TEXT_DRAW)
        {
            VCSRadarDestroyRemoteSlot(playerid, slot);
            return false;
        }
        new Float:size = layer == 0 ? arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE : arrowSize;
        VCSRadarConfigureSprite(playerid, gVCSRadarRemoteDraws[playerid][slot][layer], size, size, VCS_RADAR_ARROW_COLOUR);
    }
    gVCSRadarRemoteTarget[playerid][slot] = INVALID_PLAYER_ID;
    gVCSRadarRemoteDirection[playerid][slot] = -1;
    gVCSRadarRemoteX[playerid][slot] = -10000.0;
    gVCSRadarRemoteY[playerid][slot] = -10000.0;
    return true;
}

stock VCSRadarUpdateRemotePlayers(playerid, Float:centerX, Float:centerY, Float:top, Float:width,
    Float:height, Float:arrowSize, bool:windowChanged)
{
    #if !defined VCS_RADAR_SHOW_PLAYERS
    #pragma unused centerX, centerY, top, width, height, arrowSize, windowChanged
    VCSRadarDestroyRemotePlayers(playerid);
    return 1;
    #else
    new players[VCS_RADAR_REMOTE_CAP];
    VCSRadarUpdateSpriteBudget(playerid);
    new wantedCount = VCSRadarSelectRemotePlayers(playerid, centerX, centerY, width, height, arrowSize,
        players, gVCSRadarRemoteEligible[playerid]);
    if (wantedCount > gVCSRadarRemoteBudget[playerid])
    {
        wantedCount = gVCSRadarRemoteBudget[playerid];
    }
    while (gVCSRadarRemoteCount[playerid] > wantedCount)
    {
        VCSRadarDestroyRemoteSlot(playerid, --gVCSRadarRemoteCount[playerid]);
    }
    if (gVCSRadarRemoteRetryAt[playerid] == 0 || gVCSRadarSnapshotTime - gVCSRadarRemoteRetryAt[playerid] >= 0)
    {
        while (gVCSRadarRemoteCount[playerid] < wantedCount)
        {
            if (!VCSRadarCreateRemoteSlot(playerid, gVCSRadarRemoteCount[playerid], arrowSize))
            {
                gVCSRadarRemoteRetryAt[playerid] = gVCSRadarSnapshotTime + VCS_RADAR_REMOTE_RETRY_MS;
                break;
            }
            gVCSRadarRemoteCount[playerid]++;
            gVCSRadarRemoteRetryAt[playerid] = 0;
        }
    }
    for (new slot = 0; slot < gVCSRadarRemoteCount[playerid]; slot++)
    {
        new targetid = players[slot];
        new direction = gVCSRadarSnapshot[targetid][VCS_RADAR_SNAPSHOT_DIRECTION];
        new bool:targetChanged = targetid != gVCSRadarRemoteTarget[playerid][slot];
        new Float:pointX = VCS_RADAR_X + width * 0.5 +
            (gVCSRadarSnapshot[targetid][VCS_RADAR_SNAPSHOT_X] - centerX) * width / VCS_RADAR_WINDOW_WORLD_SIZE;
        new Float:pointY = top + height * 0.5 +
            (centerY - gVCSRadarSnapshot[targetid][VCS_RADAR_SNAPSHOT_Y]) * height / VCS_RADAR_WINDOW_WORLD_SIZE;
        if (targetChanged)
        {
            PlayerTextDrawColour(playerid, gVCSRadarRemoteDraws[playerid][slot][0], VCSRadarPlayerOutlineColour(targetid));
            gVCSRadarRemoteTarget[playerid][slot] = targetid;
        }
        if (direction != gVCSRadarRemoteDirection[playerid][slot])
        {
            new sprite[48];
            format(sprite, sizeof sprite, "mdl%d:%s", VCS_RADAR_ICON_MODEL, gVCSRadarOutlineTextures[direction]);
            PlayerTextDrawSetString(playerid, gVCSRadarRemoteDraws[playerid][slot][0], sprite);
            format(sprite, sizeof sprite, "mdl%d:%s", VCS_RADAR_ICON_MODEL, gVCSRadarArrowTextures[direction]);
            PlayerTextDrawSetString(playerid, gVCSRadarRemoteDraws[playerid][slot][1], sprite);
            gVCSRadarRemoteDirection[playerid][slot] = direction;
        }
        if (targetChanged || windowChanged ||
            floatabs(pointX - gVCSRadarRemoteX[playerid][slot]) >= VCS_RADAR_POSITION_THRESHOLD ||
            floatabs(pointY - gVCSRadarRemoteY[playerid][slot]) >= VCS_RADAR_POSITION_THRESHOLD)
        {
            for (new layer = 0; layer < 2; layer++)
            {
                new Float:size = layer == 0 ? arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE : arrowSize;
                PlayerTextDrawSetPos(playerid, gVCSRadarRemoteDraws[playerid][slot][layer], pointX - size * 0.5, pointY - size * 0.5);
                PlayerTextDrawShow(playerid, gVCSRadarRemoteDraws[playerid][slot][layer]);
            }
            gVCSRadarRemoteX[playerid][slot] = pointX;
            gVCSRadarRemoteY[playerid][slot] = pointY;
        }
    }
    if (gVCSRadarRemoteEligible[playerid] > gVCSRadarRemoteCount[playerid] && !gVCSRadarRemoteLimitNotice[playerid])
    {
        new message[144];
        format(message, sizeof message, "Radar players: nearest %d of %d in view; current sprite budget %d, hard maximum %d arrows.",
            gVCSRadarRemoteCount[playerid], gVCSRadarRemoteEligible[playerid],
            gVCSRadarRemoteBudget[playerid], VCS_RADAR_REMOTE_CAP);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, message);
        gVCSRadarRemoteLimitNotice[playerid] = true;
    }
    return 1;
    #endif
}

stock VCSRadarSetVisible(playerid, bool:visible)
{
    if (!visible)
    {
        VCSRadarDestroyRemotePlayers(playerid);
    }
    if (!gVCSRadarCreated[playerid] || gVCSRadarVisible[playerid] == visible)
    {
        return 1;
    }
    if (visible)
    {
        PlayerTextDrawShow(playerid, gVCSRadarWindow[playerid]);
        for (new index = 0; index < 4; index++)
        {
            PlayerTextDrawShow(playerid, gVCSRadarBorders[playerid][index]);
        }
        PlayerTextDrawShow(playerid, gVCSRadarArrowOutline[playerid]);
        PlayerTextDrawShow(playerid, gVCSRadarArrow[playerid]);
        for (new index = 0; index < 2; index++)
        {
            PlayerTextDrawShow(playerid, gVCSRadarPositionPoint[playerid][index]);
        }
    }
    else
    {
        for (new index = 0; index < 2; index++)
        {
            PlayerTextDrawHide(playerid, gVCSRadarPositionPoint[playerid][index]);
        }
        PlayerTextDrawHide(playerid, gVCSRadarArrow[playerid]);
        PlayerTextDrawHide(playerid, gVCSRadarArrowOutline[playerid]);
        for (new index = 0; index < 4; index++)
        {
            PlayerTextDrawHide(playerid, gVCSRadarBorders[playerid][index]);
        }
        PlayerTextDrawHide(playerid, gVCSRadarWindow[playerid]);
    }
    gVCSRadarVisible[playerid] = visible;
    return 1;
}

stock VCSRadarDestroyPlayer(playerid)
{
    VCSRadarDestroyRemotePlayers(playerid);
    for (new index = 0; index < 2; index++)
    {
        if (gVCSRadarPositionPoint[playerid][index] != INVALID_PLAYER_TEXT_DRAW)
        {
            PlayerTextDrawDestroy(playerid, gVCSRadarPositionPoint[playerid][index]);
            gVCSRadarPositionPoint[playerid][index] = INVALID_PLAYER_TEXT_DRAW;
        }
    }
    if (gVCSRadarWindow[playerid] != INVALID_PLAYER_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, gVCSRadarWindow[playerid]);
        gVCSRadarWindow[playerid] = INVALID_PLAYER_TEXT_DRAW;
    }
    if (gVCSRadarArrow[playerid] != INVALID_PLAYER_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, gVCSRadarArrow[playerid]);
        gVCSRadarArrow[playerid] = INVALID_PLAYER_TEXT_DRAW;
    }
    if (gVCSRadarArrowOutline[playerid] != INVALID_PLAYER_TEXT_DRAW)
    {
        PlayerTextDrawDestroy(playerid, gVCSRadarArrowOutline[playerid]);
        gVCSRadarArrowOutline[playerid] = INVALID_PLAYER_TEXT_DRAW;
    }
    for (new index = 0; index < 4; index++)
    {
        if (gVCSRadarBorders[playerid][index] != INVALID_PLAYER_TEXT_DRAW)
        {
            PlayerTextDrawDestroy(playerid, gVCSRadarBorders[playerid][index]);
            gVCSRadarBorders[playerid][index] = INVALID_PLAYER_TEXT_DRAW;
        }
    }
    gVCSRadarCreated[playerid] = false;
    gVCSRadarVisible[playerid] = false;
    gVCSRadarLastWindow[playerid] = -1;
    gVCSRadarLastDirection[playerid] = -1;
    return 1;
}

stock bool:VCSRadarAllocationFailure(playerid)
{
    VCSRadarDestroyPlayer(playerid);
    gVCSRadarAllocationFailed[playerid] = true;
    printf("[VCSMinimap] ERROR: player %d has insufficient player-textdraw slots (nine required).", playerid);
    return false;
}

stock bool:VCSRadarCreatePlayer(playerid)
{
    if (gVCSRadarCreated[playerid])
    {
        return true;
    }
    new Float:top;
    new Float:width;
    new Float:height;
    new Float:arrowSize;
    VCSRadarGetLayout(playerid, top, width, height, arrowSize);
    new spriteName[48];
    VCSRadarFormatWindowSprite(0, spriteName, sizeof spriteName);
    gVCSRadarWindow[playerid] = CreatePlayerTextDraw(playerid, VCS_RADAR_X, top, spriteName);
    if (gVCSRadarWindow[playerid] == INVALID_PLAYER_TEXT_DRAW)
    {
        return VCSRadarAllocationFailure(playerid);
    }
    VCSRadarConfigureSprite(playerid, gVCSRadarWindow[playerid], width, height, VCS_RADAR_COLOUR);
    if (!VCSRadarCreateBorder(playerid, 0, VCS_RADAR_X - VCS_RADAR_BORDER_SIZE,
        top - VCS_RADAR_BORDER_SIZE, width + 2.0 * VCS_RADAR_BORDER_SIZE, VCS_RADAR_BORDER_SIZE))
    {
        return VCSRadarAllocationFailure(playerid);
    }
    if (!VCSRadarCreateBorder(playerid, 1, VCS_RADAR_X - VCS_RADAR_BORDER_SIZE,
        VCS_RADAR_BOTTOM, width + 2.0 * VCS_RADAR_BORDER_SIZE, VCS_RADAR_BORDER_SIZE))
    {
        return VCSRadarAllocationFailure(playerid);
    }
    if (!VCSRadarCreateBorder(playerid, 2, VCS_RADAR_X - VCS_RADAR_BORDER_SIZE,
        top, VCS_RADAR_BORDER_SIZE, height))
    {
        return VCSRadarAllocationFailure(playerid);
    }
    if (!VCSRadarCreateBorder(playerid, 3, VCS_RADAR_X + width,
        top, VCS_RADAR_BORDER_SIZE, height))
    {
        return VCSRadarAllocationFailure(playerid);
    }
    format(spriteName, sizeof spriteName, "mdl%d:player_outline_n", VCS_RADAR_ICON_MODEL);
    new Float:outlineSize = arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE;
    gVCSRadarArrowOutline[playerid] = CreatePlayerTextDraw(playerid,
        VCS_RADAR_X + (width - outlineSize) * 0.5,
        top + (height - outlineSize) * 0.5, spriteName);
    if (gVCSRadarArrowOutline[playerid] == INVALID_PLAYER_TEXT_DRAW)
    {
        return VCSRadarAllocationFailure(playerid);
    }
    VCSRadarConfigureSprite(playerid, gVCSRadarArrowOutline[playerid], outlineSize, outlineSize, VCS_RADAR_LOCAL_OUTLINE_COLOUR);
    format(spriteName, sizeof spriteName, "mdl%d:player_icon_n", VCS_RADAR_ICON_MODEL);
    gVCSRadarArrow[playerid] = CreatePlayerTextDraw(playerid,
        VCS_RADAR_X + (width - arrowSize) * 0.5,
        top + (height - arrowSize) * 0.5, spriteName);
    if (gVCSRadarArrow[playerid] == INVALID_PLAYER_TEXT_DRAW)
    {
        return VCSRadarAllocationFailure(playerid);
    }
    VCSRadarConfigureSprite(playerid, gVCSRadarArrow[playerid], arrowSize, arrowSize, VCS_RADAR_ARROW_COLOUR);
    for (new index = 0; index < 2; index++)
    {
        new Float:pointSize = index == 0 ? VCS_RADAR_POSITION_OUTLINE_SIZE : VCS_RADAR_POSITION_CENTRE_SIZE;
        new pointColour = index == 0 ? 0x000000FF : 0xFFFFFFFF;
        gVCSRadarPositionPoint[playerid][index] = CreatePlayerTextDraw(playerid,
            VCS_RADAR_X + (width - pointSize) * 0.5,
            top + (height - pointSize) * 0.5, "LD_SPAC:white");
        if (gVCSRadarPositionPoint[playerid][index] == INVALID_PLAYER_TEXT_DRAW)
        {
            return VCSRadarAllocationFailure(playerid);
        }
        VCSRadarConfigureSprite(playerid, gVCSRadarPositionPoint[playerid][index], pointSize, pointSize, pointColour);
    }
    gVCSRadarCreated[playerid] = true;
    gVCSRadarLastWindow[playerid] = -1;
    gVCSRadarLastDirection[playerid] = -1;
    gVCSRadarLastArrowX[playerid] = -10000.0;
    gVCSRadarLastArrowY[playerid] = -10000.0;
    return true;
}

stock VCSRadarApplyLayout(playerid, bool:large)
{
    VCSRadarSetVisible(playerid, false);
    gVCSRadarLargeLayout[playerid] = large;
    if (gVCSRadarCreated[playerid])
    {
        new Float:top;
        new Float:width;
        new Float:height;
        new Float:arrowSize;
        VCSRadarGetLayout(playerid, top, width, height, arrowSize);
        PlayerTextDrawSetPos(playerid, gVCSRadarWindow[playerid], VCS_RADAR_X, top);
        PlayerTextDrawTextSize(playerid, gVCSRadarWindow[playerid], width, height);
        PlayerTextDrawTextSize(playerid, gVCSRadarArrow[playerid], arrowSize, arrowSize);
        PlayerTextDrawTextSize(playerid, gVCSRadarArrowOutline[playerid],
            arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE, arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE);
        PlayerTextDrawSetPos(playerid, gVCSRadarBorders[playerid][0],
            VCS_RADAR_X - VCS_RADAR_BORDER_SIZE, top - VCS_RADAR_BORDER_SIZE);
        PlayerTextDrawTextSize(playerid, gVCSRadarBorders[playerid][0],
            width + VCS_RADAR_BORDER_SIZE * 2.0, VCS_RADAR_BORDER_SIZE);
        PlayerTextDrawSetPos(playerid, gVCSRadarBorders[playerid][1],
            VCS_RADAR_X - VCS_RADAR_BORDER_SIZE, VCS_RADAR_BOTTOM);
        PlayerTextDrawTextSize(playerid, gVCSRadarBorders[playerid][1],
            width + VCS_RADAR_BORDER_SIZE * 2.0, VCS_RADAR_BORDER_SIZE);
        PlayerTextDrawSetPos(playerid, gVCSRadarBorders[playerid][2], VCS_RADAR_X - VCS_RADAR_BORDER_SIZE, top);
        PlayerTextDrawTextSize(playerid, gVCSRadarBorders[playerid][2], VCS_RADAR_BORDER_SIZE, height);
        PlayerTextDrawSetPos(playerid, gVCSRadarBorders[playerid][3], VCS_RADAR_X + width, top);
        PlayerTextDrawTextSize(playerid, gVCSRadarBorders[playerid][3], VCS_RADAR_BORDER_SIZE, height);
    }
    gVCSRadarLastArrowX[playerid] = -10000.0;
    gVCSRadarLastArrowY[playerid] = -10000.0;
    VCSRadarUpdatePlayer(playerid);
    return 1;
}

stock VCSRadarGetWindow(Float:playerX, Float:playerY, previousWindow)
{
    new column = floatround((playerX - VCS_RADAR_WORLD_MIN_X) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor);
    new row = floatround((VCS_RADAR_WORLD_MAX_Y - playerY) / VCS_RADAR_CELL_WORLD_SIZE, floatround_floor);
    if (previousWindow >= 0 && previousWindow < VCS_RADAR_GRID_COLUMNS * VCS_RADAR_GRID_ROWS)
    {
        new previousColumn = previousWindow % VCS_RADAR_GRID_COLUMNS;
        new previousRow = previousWindow / VCS_RADAR_GRID_COLUMNS;
        new Float:centerX = VCS_RADAR_WORLD_MIN_X + (float(previousColumn) + 0.5) * VCS_RADAR_CELL_WORLD_SIZE;
        new Float:centerY = VCS_RADAR_WORLD_MAX_Y - (float(previousRow) + 0.5) * VCS_RADAR_CELL_WORLD_SIZE;
        new Float:retentionRadius = VCS_RADAR_CELL_WORLD_SIZE * 0.5 + VCS_RADAR_HYSTERESIS_WORLD;
        if (floatabs(playerX - centerX) <= retentionRadius)
        {
            column = previousColumn;
        }
        if (floatabs(playerY - centerY) <= retentionRadius)
        {
            row = previousRow;
        }
    }
    column = clamp(column, 0, VCS_RADAR_GRID_COLUMNS - 1);
    row = clamp(row, 0, VCS_RADAR_GRID_ROWS - 1);
    return row * VCS_RADAR_GRID_COLUMNS + column;
}

stock VCSRadarGetPlayerDirection(playerid)
{
    new Float:angle;
    new vehicleid = GetPlayerVehicleID(playerid);
    if (vehicleid != 0 && vehicleid != INVALID_VEHICLE_ID)
    {
        GetVehicleZAngle(vehicleid, angle);
    }
    else
    {
        GetPlayerFacingAngle(playerid, angle);
    }
    if (!(angle >= -36000.0 && angle <= 36000.0))
    {
        angle = 0.0;
    }
    angle -= float(floatround(angle / 360.0, floatround_floor)) * 360.0;
    return floatround((angle + 22.5) / 45.0, floatround_floor) % 8;
}

stock VCSRadarUpdatePlayer(playerid)
{
    if (!gVCSRadarUpdatingAll)
    {
        VCSRadarCapturePlayers();
    }
    if (!gVCSRadarModelsReady || !gVCSRadarEnabled[playerid] || !gVCSRadarDownloadsReady[playerid] ||
        gVCSRadarAllocationFailed[playerid] || !gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_VALID] ||
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_INTERIOR] != 0 ||
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_AREA] != 0 ||
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_INTERIOR_FLAG] != 0 ||
        gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_WORLD] != VCS_RADAR_VIRTUAL_WORLD)
    {
        VCSRadarSetVisible(playerid, false);
        return 1;
    }
    new Float:playerX = gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_X];
    new Float:playerY = gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_Y];
    if (!(playerX >= VCS_RADAR_WORLD_MIN_X && playerX <= VCS_RADAR_WORLD_MAX_X &&
          playerY >= VCS_RADAR_WORLD_MIN_Y && playerY <= VCS_RADAR_WORLD_MAX_Y))
    {
        VCSRadarSetVisible(playerid, false);
        return 1;
    }
    if (!VCSRadarCreatePlayer(playerid))
    {
        return 1;
    }
    new windowIndex = VCSRadarGetWindow(playerX, playerY, gVCSRadarLastWindow[playerid]);
    new bool:windowChanged = windowIndex != gVCSRadarLastWindow[playerid];
    if (windowChanged)
    {
        new spriteName[48];
        VCSRadarFormatWindowSprite(windowIndex, spriteName, sizeof spriteName);
        PlayerTextDrawSetString(playerid, gVCSRadarWindow[playerid], spriteName);
        gVCSRadarLastWindow[playerid] = windowIndex;
    }
    new column = windowIndex % VCS_RADAR_GRID_COLUMNS;
    new row = windowIndex / VCS_RADAR_GRID_COLUMNS;
    new Float:centerX = VCS_RADAR_WORLD_MIN_X + (float(column) + 0.5) * VCS_RADAR_CELL_WORLD_SIZE;
    new Float:centerY = VCS_RADAR_WORLD_MAX_Y - (float(row) + 0.5) * VCS_RADAR_CELL_WORLD_SIZE;
    new Float:top;
    new Float:width;
    new Float:height;
    new Float:arrowSize;
    VCSRadarGetLayout(playerid, top, width, height, arrowSize);
    new Float:pointX = VCS_RADAR_X + width * 0.5 + (playerX - centerX) * width / VCS_RADAR_WINDOW_WORLD_SIZE;
    new Float:pointY = top + height * 0.5 + (centerY - playerY) * height / VCS_RADAR_WINDOW_WORLD_SIZE;
    new Float:arrowX = pointX - arrowSize * 0.5;
    new Float:arrowY = pointY - arrowSize * 0.5;
    new direction = gVCSRadarSnapshot[playerid][VCS_RADAR_SNAPSHOT_DIRECTION];
    if (direction != gVCSRadarLastDirection[playerid])
    {
        new spriteName[48];
        format(spriteName, sizeof spriteName, "mdl%d:%s", VCS_RADAR_ICON_MODEL, gVCSRadarArrowTextures[direction]);
        PlayerTextDrawSetString(playerid, gVCSRadarArrow[playerid], spriteName);
        format(spriteName, sizeof spriteName, "mdl%d:%s", VCS_RADAR_ICON_MODEL, gVCSRadarOutlineTextures[direction]);
        PlayerTextDrawSetString(playerid, gVCSRadarArrowOutline[playerid], spriteName);
        gVCSRadarLastDirection[playerid] = direction;
    }
    if (windowChanged || floatabs(arrowX - gVCSRadarLastArrowX[playerid]) >= VCS_RADAR_POSITION_THRESHOLD ||
        floatabs(arrowY - gVCSRadarLastArrowY[playerid]) >= VCS_RADAR_POSITION_THRESHOLD)
    {
        PlayerTextDrawSetPos(playerid, gVCSRadarArrow[playerid], arrowX, arrowY);
        new Float:outlineSize = arrowSize * VCS_RADAR_OUTLINE_CANVAS_SCALE;
        PlayerTextDrawSetPos(playerid, gVCSRadarArrowOutline[playerid], pointX - outlineSize * 0.5, pointY - outlineSize * 0.5);
        if (gVCSRadarVisible[playerid])
        {
            // Re-show after moving it.
            PlayerTextDrawShow(playerid, gVCSRadarArrowOutline[playerid]);
            PlayerTextDrawShow(playerid, gVCSRadarArrow[playerid]);
        }
        for (new index = 0; index < 2; index++)
        {
            new Float:pointSize = index == 0 ? VCS_RADAR_POSITION_OUTLINE_SIZE : VCS_RADAR_POSITION_CENTRE_SIZE;
            PlayerTextDrawSetPos(playerid, gVCSRadarPositionPoint[playerid][index], pointX - pointSize * 0.5, pointY - pointSize * 0.5);
            if (gVCSRadarVisible[playerid])
            {
                PlayerTextDrawShow(playerid, gVCSRadarPositionPoint[playerid][index]);
            }
        }
        gVCSRadarLastArrowX[playerid] = arrowX;
        gVCSRadarLastArrowY[playerid] = arrowY;
    }
    VCSRadarSetVisible(playerid, true);
    VCSRadarUpdateRemotePlayers(playerid, centerX, centerY, top, width, height, arrowSize, windowChanged);
    return 1;
}

public OnFilterScriptInit()
{
    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        VCSRadarResetPlayer(playerid);
    }
    gVCSRadarModelsReady = VCSRadarRegisterModels();
    if (!gVCSRadarModelsReady)
    {
        printf("[VCSMinimap] DISABLED: model registration failed. Fix the reported error and restart.");
        return 1;
    }
    gVCSRadarTimer = SetTimer("VCSRadarUpdateAll", VCS_RADAR_UPDATE_MS, true);
    if (gVCSRadarTimer == 0)
    {
        gVCSRadarModelsReady = false;
        printf("[VCSMinimap] DISABLED: failed to create the update timer.");
        return 1;
    }
    return 1;
}

public OnFilterScriptExit()
{
    if (gVCSRadarTimer != 0)
    {
        KillTimer(gVCSRadarTimer);
        gVCSRadarTimer = 0;
    }
    for (new playerid = 0; playerid < MAX_PLAYERS; playerid++)
    {
        VCSRadarDestroyPlayer(playerid);
    }
    gVCSRadarModelsReady = false;
    return 1;
}

public OnPlayerConnect(playerid)
{
    VCSRadarResetPlayer(playerid);
    return 1;
}

public OnPlayerFinishedDownloading(playerid, virtualworld)
{
    #pragma unused virtualworld
    if (IsPlayerConnected(playerid) && !IsPlayerNPC(playerid))
    {
        gVCSRadarDownloadsReady[playerid] = true;
    }
    // Start on the next tick.
    return 1;
}

public OnPlayerDisconnect(playerid, reason)
{
    #pragma unused reason
    VCSRadarDestroyPlayer(playerid);
    VCSRadarResetPlayer(playerid);
    for (new viewer = 0; viewer < MAX_PLAYERS; viewer++)
    {
        for (new slot = 0; slot < gVCSRadarRemoteCount[viewer]; slot++)
        {
            if (gVCSRadarRemoteTarget[viewer][slot] == playerid)
            {
                VCSRadarDestroyRemotePlayers(viewer);
                break;
            }
        }
    }
    return 1;
}

public OnPlayerSpawn(playerid)
{
    VCSRadarUpdatePlayer(playerid);
    return 1;
}

public OnPlayerDeath(playerid, killerid, WEAPON:reason)
{
    #pragma unused killerid, reason
    VCSRadarSetVisible(playerid, false);
    return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
    #pragma unused classid
    VCSRadarSetVisible(playerid, false);
    return 1;
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    #pragma unused oldinteriorid
    if (newinteriorid != 0)
    {
        VCSRadarSetVisible(playerid, false);
    }
    return 1;
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    if (!strcmp(cmdtext, "/radarsize sa", true))
    {
        VCSRadarApplyLayout(playerid, false);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "Radar: original GTA SA screen dimensions, 360-unit local view.");
        return 1;
    }
    if (!strcmp(cmdtext, "/radarsize large", true))
    {
        VCSRadarApplyLayout(playerid, true);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "Radar: enlarged SA proportions, 360-unit local view.");
        return 1;
    }
    if (!strcmp(cmdtext, "/radarsize", true))
    {
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "Use /radarsize sa for original SA dimensions, or /radarsize large for the larger default.");
        return 1;
    }
    if (!strcmp(cmdtext, "/minimap", true))
    {
        if (!gVCSRadarModelsReady)
        {
            SendClientMessage(playerid, VCS_RADAR_ERROR_COLOUR, "VCS minimap unavailable: see the server's VCSMinimap error log.");
            return 1;
        }
        gVCSRadarEnabled[playerid] = !gVCSRadarEnabled[playerid];
        if (gVCSRadarEnabled[playerid])
        {
            gVCSRadarAllocationFailed[playerid] = false;
            VCSRadarUpdatePlayer(playerid);
            if (gVCSRadarAllocationFailed[playerid])
            {
                SendClientMessage(playerid, VCS_RADAR_ERROR_COLOUR, "VCS minimap could not allocate nine player-textdraw slots.");
            }
            else if (!gVCSRadarDownloadsReady[playerid])
            {
                SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "VCS minimap enabled; waiting for model downloads. Reconnect after installing radar assets.");
            }
            else
            {
                SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "VCS local minimap enabled.");
            }
        }
        else
        {
            VCSRadarSetVisible(playerid, false);
            SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, "VCS local minimap disabled.");
        }
        return 1;
    }
    if (!strcmp(cmdtext, "/radarcoords", true))
    {
        new Float:x;
        new Float:y;
        new Float:z;
        new message[144];
        GetPlayerPos(playerid, x, y, z);
        format(message, sizeof message, "VCS %.2f, %.2f, %.2f | radar offset %.0f, %.0f | local view %.0f units",
            x, y, z, VCS_RADAR_WORLD_OFFSET_X, VCS_RADAR_WORLD_OFFSET_Y, VCS_RADAR_WINDOW_WORLD_SIZE);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, message);
        format(message, sizeof message, "Radar: models=%d downloaded=%d enabled=%d visible=%d window=%d allocation_error=%d",
            gVCSRadarModelsReady, gVCSRadarDownloadsReady[playerid], gVCSRadarEnabled[playerid],
            gVCSRadarVisible[playerid], gVCSRadarLastWindow[playerid], gVCSRadarAllocationFailed[playerid]);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, message);
        format(message, sizeof message, "Radar players: enabled=%d shown=%d eligible=%d overlap_hidden=%d budget=%d cap=%d; your outline is pink.",
            VCS_RADAR_PLAYERS_ENABLED, gVCSRadarRemoteCount[playerid],
            gVCSRadarRemoteEligible[playerid], gVCSRadarRemoteOverlapHidden[playerid],
            gVCSRadarRemoteBudget[playerid], VCS_RADAR_REMOTE_CAP);
        SendClientMessage(playerid, VCS_RADAR_MESSAGE_COLOUR, message);
        return 1;
    }
    return 0;
}

public VCSRadarUpdateAll()
{
    VCSRadarCapturePlayers();
    gVCSRadarUpdatingAll = true;
    for (new index = 0; index < gVCSRadarSnapshotCount; index++)
    {
        VCSRadarUpdatePlayer(gVCSRadarSnapshotPlayers[index]);
    }
    gVCSRadarUpdatingAll = false;
    return 1;
}
