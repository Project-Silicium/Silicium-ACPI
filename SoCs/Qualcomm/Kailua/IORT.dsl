/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20250404 (64-bit version)
 * Copyright (c) 2000 - 2025 Intel Corporation
 * 
 * Disassembly of IORT.aml
 *
 * ACPI Data Table [IORT]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue (in hex)
 */

[000h 0000 004h]                   Signature : "IORT"    [IO Remapping Table]
[004h 0004 004h]                Table Length : 00000EFB
[008h 0008 001h]                    Revision : 00
[009h 0009 001h]                    Checksum : 00     /* Incorrect checksum, should be 27 */
[00Ah 0010 006h]                      Oem ID : "QCOM  "
[010h 0016 008h]                Oem Table ID : "QCOMEDK2"
[018h 0024 004h]                Oem Revision : 00008550
[01Ch 0028 004h]             Asl Compiler ID : "QCOM"
[020h 0032 004h]       Asl Compiler Revision : 00000001

[024h 0036 004h]                  Node Count : 00000010
[028h 0040 004h]                 Node Offset : 00000030
[02Ch 0044 004h]                    Reserved : 00000000

[030h 0048 001h]                        Type : 03
[031h 0049 002h]                      Length : 034C
[033h 0051 001h]                    Revision : 00
[034h 0052 004h]                    Reserved : 00000000
[038h 0056 004h]               Mapping Count : 00000000
[03Ch 0060 004h]              Mapping Offset : 00000000

[040h 0064 008h]                Base Address : 0000000015000000
[048h 0072 008h]                        Span : 0000000000100000
[050h 0080 004h]                       Model : 00000003
[054h 0084 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[058h 0088 004h]     Global Interrupt Offset : 0000003C
[05Ch 0092 004h]     Context Interrupt Count : 00000060
[060h 0096 004h]    Context Interrupt Offset : 0000004C
[064h 0100 004h]         PMU Interrupt Count : 00000000
[068h 0104 004h]        PMU Interrupt Offset : 00000000

[06Ch 0108 004h]                     NSgIrpt : 00000061
[070h 0112 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[074h 0116 004h]                  NSgCfgIrpt : 00000000
[078h 0120 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[07Ch 0124 008h]           Context Interrupt : 0000000100000081
[084h 0132 008h]           Context Interrupt : 0000000100000082
[08Ch 0140 008h]           Context Interrupt : 0000000100000083
[094h 0148 008h]           Context Interrupt : 0000000100000084
[09Ch 0156 008h]           Context Interrupt : 0000000100000085
[0A4h 0164 008h]           Context Interrupt : 0000000100000086
[0ACh 0172 008h]           Context Interrupt : 0000000100000087
[0B4h 0180 008h]           Context Interrupt : 0000000100000088
[0BCh 0188 008h]           Context Interrupt : 0000000100000089
[0C4h 0196 008h]           Context Interrupt : 000000010000008A
[0CCh 0204 008h]           Context Interrupt : 000000010000008B
[0D4h 0212 008h]           Context Interrupt : 000000010000008C
[0DCh 0220 008h]           Context Interrupt : 000000010000008D
[0E4h 0228 008h]           Context Interrupt : 000000010000008E
[0ECh 0236 008h]           Context Interrupt : 000000010000008F
[0F4h 0244 008h]           Context Interrupt : 0000000100000090
[0FCh 0252 008h]           Context Interrupt : 0000000100000091
[104h 0260 008h]           Context Interrupt : 0000000100000092
[10Ch 0268 008h]           Context Interrupt : 0000000100000093
[114h 0276 008h]           Context Interrupt : 0000000100000094
[11Ch 0284 008h]           Context Interrupt : 0000000100000095
[124h 0292 008h]           Context Interrupt : 0000000100000096
[12Ch 0300 008h]           Context Interrupt : 00000001000000D5
[134h 0308 008h]           Context Interrupt : 00000001000000D6
[13Ch 0316 008h]           Context Interrupt : 00000001000000D7
[144h 0324 008h]           Context Interrupt : 00000001000000D8
[14Ch 0332 008h]           Context Interrupt : 00000001000000D9
[154h 0340 008h]           Context Interrupt : 00000001000000DA
[15Ch 0348 008h]           Context Interrupt : 00000001000000DB
[164h 0356 008h]           Context Interrupt : 00000001000000DC
[16Ch 0364 008h]           Context Interrupt : 00000001000000DD
[174h 0372 008h]           Context Interrupt : 00000001000000DE
[17Ch 0380 008h]           Context Interrupt : 00000001000000DF
[184h 0388 008h]           Context Interrupt : 00000001000000E0
[18Ch 0396 008h]           Context Interrupt : 000000010000015B
[194h 0404 008h]           Context Interrupt : 000000010000015C
[19Ch 0412 008h]           Context Interrupt : 000000010000015D
[1A4h 0420 008h]           Context Interrupt : 000000010000015E
[1ACh 0428 008h]           Context Interrupt : 000000010000015F
[1B4h 0436 008h]           Context Interrupt : 0000000100000160
[1BCh 0444 008h]           Context Interrupt : 0000000100000161
[1C4h 0452 008h]           Context Interrupt : 0000000100000162
[1CCh 0460 008h]           Context Interrupt : 0000000100000163
[1D4h 0468 008h]           Context Interrupt : 0000000100000164
[1DCh 0476 008h]           Context Interrupt : 0000000100000165
[1E4h 0484 008h]           Context Interrupt : 0000000100000166
[1ECh 0492 008h]           Context Interrupt : 0000000100000167
[1F4h 0500 008h]           Context Interrupt : 0000000100000168
[1FCh 0508 008h]           Context Interrupt : 0000000100000169
[204h 0516 008h]           Context Interrupt : 000000010000016A
[20Ch 0524 008h]           Context Interrupt : 000000010000016B
[214h 0532 008h]           Context Interrupt : 000000010000016C
[21Ch 0540 008h]           Context Interrupt : 000000010000016D
[224h 0548 008h]           Context Interrupt : 000000010000016E
[22Ch 0556 008h]           Context Interrupt : 000000010000016F
[234h 0564 008h]           Context Interrupt : 0000000100000170
[23Ch 0572 008h]           Context Interrupt : 0000000100000171
[244h 0580 008h]           Context Interrupt : 0000000100000172
[24Ch 0588 008h]           Context Interrupt : 0000000100000173
[254h 0596 008h]           Context Interrupt : 0000000100000174
[25Ch 0604 008h]           Context Interrupt : 0000000100000175
[264h 0612 008h]           Context Interrupt : 0000000100000176
[26Ch 0620 008h]           Context Interrupt : 0000000100000177
[274h 0628 008h]           Context Interrupt : 0000000100000178
[27Ch 0636 008h]           Context Interrupt : 0000000100000179
[284h 0644 008h]           Context Interrupt : 00000001000001AB
[28Ch 0652 008h]           Context Interrupt : 00000001000001AC
[294h 0660 008h]           Context Interrupt : 00000001000001AD
[29Ch 0668 008h]           Context Interrupt : 00000001000001AE
[2A4h 0676 008h]           Context Interrupt : 00000001000001AF
[2ACh 0684 008h]           Context Interrupt : 00000001000001B0
[2B4h 0692 008h]           Context Interrupt : 00000001000001B1
[2BCh 0700 008h]           Context Interrupt : 00000001000001B2
[2C4h 0708 008h]           Context Interrupt : 00000001000001B3
[2CCh 0716 008h]           Context Interrupt : 00000001000001B4
[2D4h 0724 008h]           Context Interrupt : 00000001000001B5
[2DCh 0732 008h]           Context Interrupt : 00000001000001B6
[2E4h 0740 008h]           Context Interrupt : 00000001000001B7
[2ECh 0748 008h]           Context Interrupt : 00000001000001B8
[2F4h 0756 008h]           Context Interrupt : 00000001000001B9
[2FCh 0764 008h]           Context Interrupt : 00000001000001C2
[304h 0772 008h]           Context Interrupt : 00000001000001C3
[30Ch 0780 008h]           Context Interrupt : 00000001000001BC
[314h 0788 008h]           Context Interrupt : 00000001000001C5
[31Ch 0796 008h]           Context Interrupt : 00000001000002E2
[324h 0804 008h]           Context Interrupt : 00000001000001C7
[32Ch 0812 008h]           Context Interrupt : 00000001000001C8
[334h 0820 008h]           Context Interrupt : 00000001000001C9
[33Ch 0828 008h]           Context Interrupt : 00000001000002D1
[344h 0836 008h]           Context Interrupt : 00000001000002D2
[34Ch 0844 008h]           Context Interrupt : 00000001000002D3
[354h 0852 008h]           Context Interrupt : 00000001000002D4
[35Ch 0860 008h]           Context Interrupt : 00000001000002D5
[364h 0868 008h]           Context Interrupt : 00000001000002D6
[36Ch 0876 008h]           Context Interrupt : 00000001000002D7
[374h 0884 008h]           Context Interrupt : 00000001000002D8

[37Ch 0892 001h]                        Type : 03
[37Dh 0893 002h]                      Length : 0114
[37Fh 0895 001h]                    Revision : 00
[380h 0896 004h]                    Reserved : 00000000
[384h 0900 004h]               Mapping Count : 00000000
[388h 0904 004h]              Mapping Offset : 00000000

[38Ch 0908 008h]                Base Address : 0000000003DA0000
[394h 0916 008h]                        Span : 0000000000040000
[39Ch 0924 004h]                       Model : 00000003
[3A0h 0928 004h]       Flags (decoded below) : 00000000
                               DVM Supported : 0
                               Coherent Walk : 0
[3A4h 0932 004h]     Global Interrupt Offset : 0000003C
[3A8h 0936 004h]     Context Interrupt Count : 00000019
[3ACh 0940 004h]    Context Interrupt Offset : 0000004C
[3B0h 0944 004h]         PMU Interrupt Count : 00000000
[3B4h 0948 004h]        PMU Interrupt Offset : 00000000

[3B8h 0952 004h]                     NSgIrpt : 000002C1
[3BCh 0956 004h] NSgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[3C0h 0960 004h]                  NSgCfgIrpt : 00000000
[3C4h 0964 004h] NSgCfgIrpt Flags (decoded below) : 00000000
                              Edge Triggered : 0
[3C8h 0968 008h]           Context Interrupt : 00000001000002C5
[3D0h 0976 008h]           Context Interrupt : 00000001000002C6
[3D8h 0984 008h]           Context Interrupt : 00000001000002C7
[3E0h 0992 008h]           Context Interrupt : 00000001000002C8
[3E8h 1000 008h]           Context Interrupt : 00000001000002C9
[3F0h 1008 008h]           Context Interrupt : 00000001000002CA
[3F8h 1016 008h]           Context Interrupt : 00000001000002CB
[400h 1024 008h]           Context Interrupt : 00000001000002CC
[408h 1032 008h]           Context Interrupt : 00000001000002CD
[410h 1040 008h]           Context Interrupt : 00000001000002CE
[418h 1048 008h]           Context Interrupt : 00000001000002CF
[420h 1056 008h]           Context Interrupt : 00000001000001C6
[428h 1064 008h]           Context Interrupt : 00000001000001FC
[430h 1072 008h]           Context Interrupt : 000000010000025E
[438h 1080 008h]           Context Interrupt : 000000010000025F
[440h 1088 008h]           Context Interrupt : 0000000100000260
[448h 1096 008h]           Context Interrupt : 0000000100000261
[450h 1104 008h]           Context Interrupt : 00000001000002B3
[458h 1112 008h]           Context Interrupt : 00000001000002B5
[460h 1120 008h]           Context Interrupt : 00000001000002B8
[468h 1128 008h]           Context Interrupt : 00000001000002B9
[470h 1136 008h]           Context Interrupt : 00000001000002BA
[478h 1144 008h]           Context Interrupt : 00000001000002BC
[480h 1152 008h]           Context Interrupt : 00000001000002BD
[488h 1160 008h]           Context Interrupt : 00000001000002DB

[490h 1168 001h]                        Type : 02
[491h 1169 002h]                      Length : 009C
[493h 1171 001h]                    Revision : 00
[494h 1172 004h]                    Reserved : 00000000
[498h 1176 004h]               Mapping Count : 00000006
[49Ch 1180 004h]              Mapping Offset : 00000024

[4A0h 1184 008h]           Memory Properties : [IORT Memory Access Properties]
[4A0h 1184 004h]             Cache Coherency : 00000001
[4A4h 1188 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[4A5h 1189 002h]                    Reserved : 0000
[4A7h 1191 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[4A8h 1192 004h]               ATS Attribute : 00000000
[4ACh 1196 004h]          PCI Segment Number : 00000000
[4B0h 1200 001h]           Memory Size Limit : 24
[4B1h 1201 002h]          PASID Capabilities : 0000
[4B3h 1203 001h]                    Reserved : 00

[4B4h 1204 004h]                  Input base : 87030000
[4B8h 1208 004h]                    ID Count : 00000001
[4BCh 1212 004h]                 Output Base : 00001400
[4C0h 1216 004h]            Output Reference : 00000030
[4C4h 1220 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4C8h 1224 004h]                  Input base : 87030002
[4CCh 1228 004h]                    ID Count : 00000003
[4D0h 1232 004h]                 Output Base : 00001404
[4D4h 1236 004h]            Output Reference : 00000030
[4D8h 1240 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4DCh 1244 004h]                  Input base : 87030006
[4E0h 1248 004h]                    ID Count : 00000007
[4E4h 1252 004h]                 Output Base : 00001408
[4E8h 1256 004h]            Output Reference : 00000030
[4ECh 1260 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[4F0h 1264 004h]                  Input base : 87030010
[4F4h 1268 004h]                    ID Count : 0000000F
[4F8h 1272 004h]                 Output Base : 00001410
[4FCh 1276 004h]            Output Reference : 00000030
[500h 1280 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[504h 1284 004h]                  Input base : 87030020
[508h 1288 004h]                    ID Count : 0000001F
[50Ch 1292 004h]                 Output Base : 00001420
[510h 1296 004h]            Output Reference : 00000030
[514h 1300 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[518h 1304 004h]                  Input base : 87030050
[51Ch 1308 004h]                    ID Count : 0000003F
[520h 1312 004h]                 Output Base : 00001440
[524h 1316 004h]            Output Reference : 00000030
[528h 1320 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[52Ch 1324 001h]                        Type : 02
[52Dh 1325 002h]                      Length : 009C
[52Fh 1327 001h]                    Revision : 00
[530h 1328 004h]                    Reserved : 00000000
[534h 1332 004h]               Mapping Count : 00000006
[538h 1336 004h]              Mapping Offset : 00000024

[53Ch 1340 008h]           Memory Properties : [IORT Memory Access Properties]
[53Ch 1340 004h]             Cache Coherency : 00000001
[540h 1344 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[541h 1345 002h]                    Reserved : 0000
[543h 1347 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[544h 1348 004h]               ATS Attribute : 00000000
[548h 1352 004h]          PCI Segment Number : 00000001
[54Ch 1356 001h]           Memory Size Limit : 24
[54Dh 1357 002h]          PASID Capabilities : 0000
[54Fh 1359 001h]                    Reserved : 00

[550h 1360 004h]                  Input base : 87030100
[554h 1364 004h]                    ID Count : 00000001
[558h 1368 004h]                 Output Base : 00001480
[55Ch 1372 004h]            Output Reference : 00000030
[560h 1376 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[564h 1380 004h]                  Input base : 87030102
[568h 1384 004h]                    ID Count : 00000003
[56Ch 1388 004h]                 Output Base : 00001484
[570h 1392 004h]            Output Reference : 00000030
[574h 1396 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[578h 1400 004h]                  Input base : 87030106
[57Ch 1404 004h]                    ID Count : 00000007
[580h 1408 004h]                 Output Base : 00001488
[584h 1412 004h]            Output Reference : 00000030
[588h 1416 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[58Ch 1420 004h]                  Input base : 87030110
[590h 1424 004h]                    ID Count : 0000000F
[594h 1428 004h]                 Output Base : 00001490
[598h 1432 004h]            Output Reference : 00000030
[59Ch 1436 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5A0h 1440 004h]                  Input base : 87030120
[5A4h 1444 004h]                    ID Count : 0000001F
[5A8h 1448 004h]                 Output Base : 000014A0
[5ACh 1452 004h]            Output Reference : 00000030
[5B0h 1456 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5B4h 1460 004h]                  Input base : 87030150
[5B8h 1464 004h]                    ID Count : 0000003F
[5BCh 1468 004h]                 Output Base : 000014C0
[5C0h 1472 004h]            Output Reference : 00000030
[5C4h 1476 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[5C8h 1480 001h]                        Type : 01
[5C9h 1481 002h]                      Length : 01A5
[5CBh 1483 001h]                    Revision : 00
[5CCh 1484 004h]                    Reserved : 00000000
[5D0h 1488 004h]               Mapping Count : 00000012
[5D4h 1492 004h]              Mapping Offset : 0000003D

[5D8h 1496 004h]                  Node Flags : 00000000
[5DCh 1500 008h]           Memory Properties : [IORT Memory Access Properties]
[5DCh 1500 004h]             Cache Coherency : 00000000
[5E0h 1504 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[5E1h 1505 002h]                    Reserved : 0000
[5E3h 1507 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[5E4h 1508 001h]           Memory Size Limit : 30
[5E5h 1509 00Ah]                 Device Name : "\_SB.GPU0"
[5EFh 1519 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 5FFh 1535   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[605h 1541 004h]                  Input base : 03030000
[609h 1545 004h]                    ID Count : 00000000
[60Dh 1549 004h]                 Output Base : 00000000
[611h 1553 004h]            Output Reference : 0000037C
[615h 1557 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[619h 1561 004h]                  Input base : 03030020
[61Dh 1565 004h]                    ID Count : 00000000
[621h 1569 004h]                 Output Base : 00000001
[625h 1573 004h]            Output Reference : 0000037C
[629h 1577 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[62Dh 1581 004h]                  Input base : 03030040
[631h 1585 004h]                    ID Count : 00000000
[635h 1589 004h]                 Output Base : 00000004
[639h 1593 004h]            Output Reference : 0000037C
[63Dh 1597 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[641h 1601 004h]                  Input base : 03030060
[645h 1605 004h]                    ID Count : 00000000
[649h 1609 004h]                 Output Base : 00000005
[64Dh 1613 004h]            Output Reference : 0000037C
[651h 1617 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[655h 1621 004h]                  Input base : 03030080
[659h 1625 004h]                    ID Count : 00000000
[65Dh 1629 004h]                 Output Base : 00000007
[661h 1633 004h]            Output Reference : 0000037C
[665h 1637 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[669h 1641 004h]                  Input base : 030A0000
[66Dh 1645 004h]                    ID Count : 00000000
[671h 1649 004h]                 Output Base : 00000002
[675h 1653 004h]            Output Reference : 0000037C
[679h 1657 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[67Dh 1661 004h]                  Input base : 00030000
[681h 1665 004h]                    ID Count : 00000000
[685h 1669 004h]                 Output Base : 00001C00
[689h 1673 004h]            Output Reference : 00000030
[68Dh 1677 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[691h 1681 004h]                  Input base : 00030001
[695h 1685 004h]                    ID Count : 00000000
[699h 1689 004h]                 Output Base : 00001C02
[69Dh 1693 004h]            Output Reference : 00000030
[6A1h 1697 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6A5h 1701 004h]                  Input base : 000A0000
[6A9h 1705 004h]                    ID Count : 00000000
[6ADh 1709 004h]                 Output Base : 00001C01
[6B1h 1713 004h]            Output Reference : 00000030
[6B5h 1717 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6B9h 1721 004h]                  Input base : 0C030000
[6BDh 1725 004h]                    ID Count : 00000000
[6C1h 1729 004h]                 Output Base : 00000480
[6C5h 1733 004h]            Output Reference : 00000030
[6C9h 1737 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6CDh 1741 004h]                  Input base : 0C030020
[6D1h 1745 004h]                    ID Count : 00000000
[6D5h 1749 004h]                 Output Base : 00000481
[6D9h 1753 004h]            Output Reference : 00000030
[6DDh 1757 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6E1h 1761 004h]                  Input base : 0C090000
[6E5h 1765 004h]                    ID Count : 00000000
[6E9h 1769 004h]                 Output Base : 00000483
[6EDh 1773 004h]            Output Reference : 00000030
[6F1h 1777 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[6F5h 1781 004h]                  Input base : 04030000
[6F9h 1785 004h]                    ID Count : 00000000
[6FDh 1789 004h]                 Output Base : 00001940
[701h 1793 004h]            Output Reference : 00000030
[705h 1797 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[709h 1801 004h]                  Input base : 04030020
[70Dh 1805 004h]                    ID Count : 00000000
[711h 1809 004h]                 Output Base : 00001947
[715h 1813 004h]            Output Reference : 00000030
[719h 1817 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[71Dh 1821 004h]                  Input base : 04090000
[721h 1825 004h]                    ID Count : 00000000
[725h 1829 004h]                 Output Base : 00001941
[729h 1833 004h]            Output Reference : 00000030
[72Dh 1837 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[731h 1841 004h]                  Input base : 04090001
[735h 1845 004h]                    ID Count : 00000000
[739h 1849 004h]                 Output Base : 00001945
[73Dh 1853 004h]            Output Reference : 00000030
[741h 1857 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[745h 1861 004h]                  Input base : 040A0000
[749h 1865 004h]                    ID Count : 00000000
[74Dh 1869 004h]                 Output Base : 00001943
[751h 1873 004h]            Output Reference : 00000030
[755h 1877 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[759h 1881 004h]                  Input base : 040B0000
[75Dh 1885 004h]                    ID Count : 00000000
[761h 1889 004h]                 Output Base : 00001944
[765h 1893 004h]            Output Reference : 00000030
[769h 1897 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[76Dh 1901 001h]                        Type : 01
[76Eh 1902 002h]                      Length : 0051
[770h 1904 001h]                    Revision : 00
[771h 1905 004h]                    Reserved : 00000000
[775h 1909 004h]               Mapping Count : 00000001
[779h 1913 004h]              Mapping Offset : 0000003D

[77Dh 1917 004h]                  Node Flags : 00000000
[781h 1921 008h]           Memory Properties : [IORT Memory Access Properties]
[781h 1921 004h]             Cache Coherency : 00000000
[785h 1925 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[786h 1926 002h]                    Reserved : 0000
[788h 1928 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[789h 1929 001h]           Memory Size Limit : 24
[78Ah 1930 00Ah]                 Device Name : "\_SB.JPGE"
[794h 1940 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 7A4h 1956   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[7AAh 1962 004h]                  Input base : 02030000
[7AEh 1966 004h]                    ID Count : 00000000
[7B2h 1970 004h]                 Output Base : 000018A0
[7B6h 1974 004h]            Output Reference : 00000030
[7BAh 1978 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[7BEh 1982 001h]                        Type : 01
[7BFh 1983 002h]                      Length : 0399
[7C1h 1985 001h]                    Revision : 00
[7C2h 1986 004h]                    Reserved : 00000000
[7C6h 1990 004h]               Mapping Count : 0000002B
[7CAh 1994 004h]              Mapping Offset : 0000003D

[7CEh 1998 004h]                  Node Flags : 00000000
[7D2h 2002 008h]           Memory Properties : [IORT Memory Access Properties]
[7D2h 2002 004h]             Cache Coherency : 00000000
[7D6h 2006 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[7D7h 2007 002h]                    Reserved : 0000
[7D9h 2009 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[7DAh 2010 001h]           Memory Size Limit : 24
[7DBh 2011 00Ah]                 Device Name : "\_SB.ARPC"
[7E5h 2021 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* 7F5h 2037   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[7FBh 2043 004h]                  Input base : 17030000
[7FFh 2047 004h]                    ID Count : 00000000
[803h 2051 004h]                 Output Base : 00000C01
[807h 2055 004h]            Output Reference : 00000030
[80Bh 2059 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[80Fh 2063 004h]                  Input base : 17030001
[813h 2067 004h]                    ID Count : 00000000
[817h 2071 004h]                 Output Base : 00000C21
[81Bh 2075 004h]            Output Reference : 00000030
[81Fh 2079 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[823h 2083 004h]                  Input base : 17030020
[827h 2087 004h]                    ID Count : 00000000
[82Bh 2091 004h]                 Output Base : 00000C02
[82Fh 2095 004h]            Output Reference : 00000030
[833h 2099 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[837h 2103 004h]                  Input base : 17030021
[83Bh 2107 004h]                    ID Count : 00000000
[83Fh 2111 004h]                 Output Base : 00000C22
[843h 2115 004h]            Output Reference : 00000030
[847h 2119 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[84Bh 2123 004h]                  Input base : 17030040
[84Fh 2127 004h]                    ID Count : 00000000
[853h 2131 004h]                 Output Base : 00000C03
[857h 2135 004h]            Output Reference : 00000030
[85Bh 2139 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[85Fh 2143 004h]                  Input base : 17030041
[863h 2147 004h]                    ID Count : 00000000
[867h 2151 004h]                 Output Base : 00000C23
[86Bh 2155 004h]            Output Reference : 00000030
[86Fh 2159 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[873h 2163 004h]                  Input base : 17030060
[877h 2167 004h]                    ID Count : 00000000
[87Bh 2171 004h]                 Output Base : 00000C04
[87Fh 2175 004h]            Output Reference : 00000030
[883h 2179 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[887h 2183 004h]                  Input base : 17030061
[88Bh 2187 004h]                    ID Count : 00000000
[88Fh 2191 004h]                 Output Base : 00000C24
[893h 2195 004h]            Output Reference : 00000030
[897h 2199 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[89Bh 2203 004h]                  Input base : 17030080
[89Fh 2207 004h]                    ID Count : 00000000
[8A3h 2211 004h]                 Output Base : 00000C05
[8A7h 2215 004h]            Output Reference : 00000030
[8ABh 2219 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8AFh 2223 004h]                  Input base : 17030081
[8B3h 2227 004h]                    ID Count : 00000000
[8B7h 2231 004h]                 Output Base : 00000C25
[8BBh 2235 004h]            Output Reference : 00000030
[8BFh 2239 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8C3h 2243 004h]                  Input base : 170300A0
[8C7h 2247 004h]                    ID Count : 00000000
[8CBh 2251 004h]                 Output Base : 00000C06
[8CFh 2255 004h]            Output Reference : 00000030
[8D3h 2259 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8D7h 2263 004h]                  Input base : 170300A1
[8DBh 2267 004h]                    ID Count : 00000000
[8DFh 2271 004h]                 Output Base : 00000C26
[8E3h 2275 004h]            Output Reference : 00000030
[8E7h 2279 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8EBh 2283 004h]                  Input base : 170300C0
[8EFh 2287 004h]                    ID Count : 00000000
[8F3h 2291 004h]                 Output Base : 00000C27
[8F7h 2295 004h]            Output Reference : 00000030
[8FBh 2299 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[8FFh 2303 004h]                  Input base : 170300C1
[903h 2307 004h]                    ID Count : 00000000
[907h 2311 004h]                 Output Base : 00000C07
[90Bh 2315 004h]            Output Reference : 00000030
[90Fh 2319 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[913h 2323 004h]                  Input base : 170300E0
[917h 2327 004h]                    ID Count : 00000000
[91Bh 2331 004h]                 Output Base : 00000C28
[91Fh 2335 004h]            Output Reference : 00000030
[923h 2339 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[927h 2343 004h]                  Input base : 170300E1
[92Bh 2347 004h]                    ID Count : 00000000
[92Fh 2351 004h]                 Output Base : 00000C08
[933h 2355 004h]            Output Reference : 00000030
[937h 2359 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[93Bh 2363 004h]                  Input base : 17030100
[93Fh 2367 004h]                    ID Count : 00000000
[943h 2371 004h]                 Output Base : 00000C2C
[947h 2375 004h]            Output Reference : 00000030
[94Bh 2379 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[94Fh 2383 004h]                  Input base : 17030101
[953h 2387 004h]                    ID Count : 00000000
[957h 2391 004h]                 Output Base : 00000C0C
[95Bh 2395 004h]            Output Reference : 00000030
[95Fh 2399 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[963h 2403 004h]                  Input base : 17030120
[967h 2407 004h]                    ID Count : 00000000
[96Bh 2411 004h]                 Output Base : 00000C2D
[96Fh 2415 004h]            Output Reference : 00000030
[973h 2419 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[977h 2423 004h]                  Input base : 17030121
[97Bh 2427 004h]                    ID Count : 00000000
[97Fh 2431 004h]                 Output Base : 00000C0D
[983h 2435 004h]            Output Reference : 00000030
[987h 2439 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[98Bh 2443 004h]                  Input base : 17030140
[98Fh 2447 004h]                    ID Count : 00000000
[993h 2451 004h]                 Output Base : 00000C2E
[997h 2455 004h]            Output Reference : 00000030
[99Bh 2459 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[99Fh 2463 004h]                  Input base : 17030141
[9A3h 2467 004h]                    ID Count : 00000000
[9A7h 2471 004h]                 Output Base : 00000C0E
[9ABh 2475 004h]            Output Reference : 00000030
[9AFh 2479 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9B3h 2483 004h]                  Input base : 17030160
[9B7h 2487 004h]                    ID Count : 00000000
[9BBh 2491 004h]                 Output Base : 00000C2F
[9BFh 2495 004h]            Output Reference : 00000030
[9C3h 2499 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9C7h 2503 004h]                  Input base : 17030161
[9CBh 2507 004h]                    ID Count : 00000000
[9CFh 2511 004h]                 Output Base : 00000C0F
[9D3h 2515 004h]            Output Reference : 00000030
[9D7h 2519 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9DBh 2523 004h]                  Input base : 17030180
[9DFh 2527 004h]                    ID Count : 00000000
[9E3h 2531 004h]                 Output Base : 00001063
[9E7h 2535 004h]            Output Reference : 00000030
[9EBh 2539 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[9EFh 2543 004h]                  Input base : 17030181
[9F3h 2547 004h]                    ID Count : 00000000
[9F7h 2551 004h]                 Output Base : 00001003
[9FBh 2555 004h]            Output Reference : 00000030
[9FFh 2559 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A03h 2563 004h]                  Input base : 17030182
[A07h 2567 004h]                    ID Count : 00000000
[A0Bh 2571 004h]                 Output Base : 00001083
[A0Fh 2575 004h]            Output Reference : 00000030
[A13h 2579 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A17h 2583 004h]                  Input base : 170301A0
[A1Bh 2587 004h]                    ID Count : 00000000
[A1Fh 2591 004h]                 Output Base : 00001064
[A23h 2595 004h]            Output Reference : 00000030
[A27h 2599 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A2Bh 2603 004h]                  Input base : 170301A1
[A2Fh 2607 004h]                    ID Count : 00000000
[A33h 2611 004h]                 Output Base : 00001004
[A37h 2615 004h]            Output Reference : 00000030
[A3Bh 2619 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A3Fh 2623 004h]                  Input base : 170301A2
[A43h 2627 004h]                    ID Count : 00000000
[A47h 2631 004h]                 Output Base : 00001084
[A4Bh 2635 004h]            Output Reference : 00000030
[A4Fh 2639 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A53h 2643 004h]                  Input base : 170301C0
[A57h 2647 004h]                    ID Count : 00000000
[A5Bh 2651 004h]                 Output Base : 00001065
[A5Fh 2655 004h]            Output Reference : 00000030
[A63h 2659 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A67h 2663 004h]                  Input base : 170301C1
[A6Bh 2667 004h]                    ID Count : 00000000
[A6Fh 2671 004h]                 Output Base : 00001005
[A73h 2675 004h]            Output Reference : 00000030
[A77h 2679 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A7Bh 2683 004h]                  Input base : 170301C2
[A7Fh 2687 004h]                    ID Count : 00000000
[A83h 2691 004h]                 Output Base : 00001085
[A87h 2695 004h]            Output Reference : 00000030
[A8Bh 2699 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[A8Fh 2703 004h]                  Input base : 170301E0
[A93h 2707 004h]                    ID Count : 00000000
[A97h 2711 004h]                 Output Base : 00001066
[A9Bh 2715 004h]            Output Reference : 00000030
[A9Fh 2719 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AA3h 2723 004h]                  Input base : 170301E1
[AA7h 2727 004h]                    ID Count : 00000000
[AABh 2731 004h]                 Output Base : 00001006
[AAFh 2735 004h]            Output Reference : 00000030
[AB3h 2739 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AB7h 2743 004h]                  Input base : 170301E2
[ABBh 2747 004h]                    ID Count : 00000000
[ABFh 2751 004h]                 Output Base : 00001086
[AC3h 2755 004h]            Output Reference : 00000030
[AC7h 2759 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ACBh 2763 004h]                  Input base : 17030200
[ACFh 2767 004h]                    ID Count : 00000000
[AD3h 2771 004h]                 Output Base : 00001067
[AD7h 2775 004h]            Output Reference : 00000030
[ADBh 2779 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ADFh 2783 004h]                  Input base : 17030201
[AE3h 2787 004h]                    ID Count : 00000000
[AE7h 2791 004h]                 Output Base : 00001007
[AEBh 2795 004h]            Output Reference : 00000030
[AEFh 2799 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[AF3h 2803 004h]                  Input base : 17030202
[AF7h 2807 004h]                    ID Count : 00000000
[AFBh 2811 004h]                 Output Base : 00001087
[AFFh 2815 004h]            Output Reference : 00000030
[B03h 2819 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B07h 2823 004h]                  Input base : 170A0000
[B0Bh 2827 004h]                    ID Count : 00000000
[B0Fh 2831 004h]                 Output Base : 00000C29
[B13h 2835 004h]            Output Reference : 00000030
[B17h 2839 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B1Bh 2843 004h]                  Input base : 170A0001
[B1Fh 2847 004h]                    ID Count : 00000000
[B23h 2851 004h]                 Output Base : 00000C09
[B27h 2855 004h]            Output Reference : 00000030
[B2Bh 2859 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B2Fh 2863 004h]                  Input base : 16030000
[B33h 2867 004h]                    ID Count : 00000000
[B37h 2871 004h]                 Output Base : 000010C3
[B3Bh 2875 004h]            Output Reference : 00000030
[B3Fh 2879 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B43h 2883 004h]                  Input base : 16030020
[B47h 2887 004h]                    ID Count : 00000000
[B4Bh 2891 004h]                 Output Base : 000010D6
[B4Fh 2895 004h]            Output Reference : 00000030
[B53h 2899 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[B57h 2903 001h]                        Type : 01
[B58h 2904 002h]                      Length : 0051
[B5Ah 2906 001h]                    Revision : 00
[B5Bh 2907 004h]                    Reserved : 00000000
[B5Fh 2911 004h]               Mapping Count : 00000001
[B63h 2915 004h]              Mapping Offset : 0000003D

[B67h 2919 004h]                  Node Flags : 00000000
[B6Bh 2923 008h]           Memory Properties : [IORT Memory Access Properties]
[B6Bh 2923 004h]             Cache Coherency : 00000000
[B6Fh 2927 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[B70h 2928 002h]                    Reserved : 0000
[B72h 2930 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[B73h 2931 001h]           Memory Size Limit : 24
[B74h 2932 00Ah]                 Device Name : "\_SB.USBA"
[B7Eh 2942 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* B8Eh 2958   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[B94h 2964 004h]                  Input base : 07030000
[B98h 2968 004h]                    ID Count : 00000000
[B9Ch 2972 004h]                 Output Base : 0000100B
[BA0h 2976 004h]            Output Reference : 00000030
[BA4h 2980 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BA8h 2984 001h]                        Type : 01
[BA9h 2985 002h]                      Length : 0079
[BABh 2987 001h]                    Revision : 00
[BACh 2988 004h]                    Reserved : 00000000
[BB0h 2992 004h]               Mapping Count : 00000003
[BB4h 2996 004h]              Mapping Offset : 0000003D

[BB8h 3000 004h]                  Node Flags : 00000000
[BBCh 3004 008h]           Memory Properties : [IORT Memory Access Properties]
[BBCh 3004 004h]             Cache Coherency : 00000000
[BC0h 3008 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[BC1h 3009 002h]                    Reserved : 0000
[BC3h 3011 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[BC4h 3012 001h]           Memory Size Limit : 28
[BC5h 3013 00Ah]                 Device Name : "\_SB.QDSS"
[BCFh 3023 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* BDFh 3039   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[BE5h 3045 004h]                  Input base : 19030000
[BE9h 3049 004h]                    ID Count : 00000000
[BEDh 3053 004h]                 Output Base : 000004C0
[BF1h 3057 004h]            Output Reference : 00000030
[BF5h 3061 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[BF9h 3065 004h]                  Input base : 19030001
[BFDh 3069 004h]                    ID Count : 00000000
[C01h 3073 004h]                 Output Base : 000004E0
[C05h 3077 004h]            Output Reference : 00000030
[C09h 3081 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C0Dh 3085 004h]                  Input base : 19030020
[C11h 3089 004h]                    ID Count : 00000000
[C15h 3093 004h]                 Output Base : 00000500
[C19h 3097 004h]            Output Reference : 00000030
[C1Dh 3101 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C21h 3105 001h]                        Type : 01
[C22h 3106 002h]                      Length : 0079
[C24h 3108 001h]                    Revision : 00
[C25h 3109 004h]                    Reserved : 00000000
[C29h 3113 004h]               Mapping Count : 00000003
[C2Dh 3117 004h]              Mapping Offset : 0000003D

[C31h 3121 004h]                  Node Flags : 00000000
[C35h 3125 008h]           Memory Properties : [IORT Memory Access Properties]
[C35h 3125 004h]             Cache Coherency : 00000000
[C39h 3129 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[C3Ah 3130 002h]                    Reserved : 0000
[C3Ch 3132 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[C3Dh 3133 001h]           Memory Size Limit : 24
[C3Eh 3134 00Fh]                 Device Name : "\_SB.ADSP.ADCM"
[C4Dh 3149 011h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* C5Dh 3165   1 */                            51                                              /* Q */\

[C5Eh 3166 004h]                  Input base : 07030020
[C62h 3170 004h]                    ID Count : 00000000
[C66h 3174 004h]                 Output Base : 00001061
[C6Ah 3178 004h]            Output Reference : 00000030
[C6Eh 3182 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C72h 3186 004h]                  Input base : 07030021
[C76h 3190 004h]                    ID Count : 00000000
[C7Ah 3194 004h]                 Output Base : 00001001
[C7Eh 3198 004h]            Output Reference : 00000030
[C82h 3202 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C86h 3206 004h]                  Input base : 07030022
[C8Ah 3210 004h]                    ID Count : 00000000
[C8Eh 3214 004h]                 Output Base : 00001081
[C92h 3218 004h]            Output Reference : 00000030
[C96h 3222 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[C9Ah 3226 001h]                        Type : 01
[C9Bh 3227 002h]                      Length : 0065
[C9Dh 3229 001h]                    Revision : 00
[C9Eh 3230 004h]                    Reserved : 00000000
[CA2h 3234 004h]               Mapping Count : 00000002
[CA6h 3238 004h]              Mapping Offset : 0000003D

[CAAh 3242 004h]                  Node Flags : 00000000
[CAEh 3246 008h]           Memory Properties : [IORT Memory Access Properties]
[CAEh 3246 004h]             Cache Coherency : 00000000
[CB2h 3250 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[CB3h 3251 002h]                    Reserved : 0000
[CB5h 3253 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[CB6h 3254 001h]           Memory Size Limit : 28
[CB7h 3255 00Ah]                 Device Name : "\_SB.SDC2"
[CC1h 3265 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* CD1h 3281   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[CD7h 3287 004h]                  Input base : 86030000
[CDBh 3291 004h]                    ID Count : 00000000
[CDFh 3295 004h]                 Output Base : 00000540
[CE3h 3299 004h]            Output Reference : 00000030
[CE7h 3303 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CEBh 3307 004h]                  Input base : 86030020
[CEFh 3311 004h]                    ID Count : 00000000
[CF3h 3315 004h]                 Output Base : 00000080
[CF7h 3319 004h]            Output Reference : 00000030
[CFBh 3323 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[CFFh 3327 001h]                        Type : 01
[D00h 3328 002h]                      Length : 0051
[D02h 3330 001h]                    Revision : 00
[D03h 3331 004h]                    Reserved : 00000000
[D07h 3335 004h]               Mapping Count : 00000001
[D0Bh 3339 004h]              Mapping Offset : 0000003D

[D0Fh 3343 004h]                  Node Flags : 00000000
[D13h 3347 008h]           Memory Properties : [IORT Memory Access Properties]
[D13h 3347 004h]             Cache Coherency : 00000001
[D17h 3351 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D18h 3352 002h]                    Reserved : 0000
[D1Ah 3354 001h] Memory Flags (decoded below) : 01
                                   Coherency : 1
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[D1Bh 3355 001h]           Memory Size Limit : 28
[D1Ch 3356 00Ah]                 Device Name : "\_SB.UFS0"
[D26h 3366 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* D36h 3382   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[D3Ch 3388 004h]                  Input base : 81030000
[D40h 3392 004h]                    ID Count : 00000000
[D44h 3396 004h]                 Output Base : 00000060
[D48h 3400 004h]            Output Reference : 00000030
[D4Ch 3404 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[D50h 3408 001h]                        Type : 01
[D51h 3409 002h]                      Length : 0051
[D53h 3411 001h]                    Revision : 00
[D54h 3412 004h]                    Reserved : 00000000
[D58h 3416 004h]               Mapping Count : 00000001
[D5Ch 3420 004h]              Mapping Offset : 0000003D

[D60h 3424 004h]                  Node Flags : 00000000
[D64h 3428 008h]           Memory Properties : [IORT Memory Access Properties]
[D64h 3428 004h]             Cache Coherency : 00000000
[D68h 3432 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[D69h 3433 002h]                    Reserved : 0000
[D6Bh 3435 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[D6Ch 3436 001h]           Memory Size Limit : 28
[D6Dh 3437 00Ah]                 Device Name : "\_SB.URS0"
[D77h 3447 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* D87h 3463   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[D8Dh 3469 004h]                  Input base : 80030000
[D91h 3473 004h]                    ID Count : 00000000
[D95h 3477 004h]                 Output Base : 00000040
[D99h 3481 004h]            Output Reference : 00000030
[D9Dh 3485 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DA1h 3489 001h]                        Type : 01
[DA2h 3490 002h]                      Length : 00C9
[DA4h 3492 001h]                    Revision : 00
[DA5h 3493 004h]                    Reserved : 00000000
[DA9h 3497 004h]               Mapping Count : 00000007
[DADh 3501 004h]              Mapping Offset : 0000003D

[DB1h 3505 004h]                  Node Flags : 00000000
[DB5h 3509 008h]           Memory Properties : [IORT Memory Access Properties]
[DB5h 3509 004h]             Cache Coherency : 00000000
[DB9h 3513 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[DBAh 3514 002h]                    Reserved : 0000
[DBCh 3516 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[DBDh 3517 001h]           Memory Size Limit : 24
[DBEh 3518 00Fh]                 Device Name : "\_SB.GPU0.AVS0"
[DCDh 3533 011h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* DDDh 3549   1 */                            51                                              /* Q */\

[DDEh 3550 004h]                  Input base : 01030000
[DE2h 3554 004h]                    ID Count : 00000000
[DE6h 3558 004h]                 Output Base : 00000800
[DEAh 3562 004h]            Output Reference : 00000030
[DEEh 3566 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[DF2h 3570 004h]                  Input base : 01030001
[DF6h 3574 004h]                    ID Count : 00000000
[DFAh 3578 004h]                 Output Base : 00000820
[DFEh 3582 004h]            Output Reference : 00000030
[E02h 3586 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E06h 3590 004h]                  Input base : 01030020
[E0Ah 3594 004h]                    ID Count : 00000000
[E0Eh 3598 004h]                 Output Base : 00001800
[E12h 3602 004h]            Output Reference : 00000030
[E16h 3606 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E1Ah 3610 004h]                  Input base : 01030021
[E1Eh 3614 004h]                    ID Count : 00000000
[E22h 3618 004h]                 Output Base : 00001820
[E26h 3622 004h]            Output Reference : 00000030
[E2Ah 3626 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E2Eh 3630 004h]                  Input base : 01030022
[E32h 3634 004h]                    ID Count : 00000000
[E36h 3638 004h]                 Output Base : 00001840
[E3Ah 3642 004h]            Output Reference : 00000030
[E3Eh 3646 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E42h 3650 004h]                  Input base : 01030023
[E46h 3654 004h]                    ID Count : 00000000
[E4Ah 3658 004h]                 Output Base : 00001880
[E4Eh 3662 004h]            Output Reference : 00000030
[E52h 3666 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E56h 3670 004h]                  Input base : 01030024
[E5Ah 3674 004h]                    ID Count : 00000000
[E5Eh 3678 004h]                 Output Base : 000018C0
[E62h 3682 004h]            Output Reference : 00000030
[E66h 3686 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[E6Ah 3690 001h]                        Type : 01
[E6Bh 3691 002h]                      Length : 0079
[E6Dh 3693 001h]                    Revision : 00
[E6Eh 3694 004h]                    Reserved : 00000000
[E72h 3698 004h]               Mapping Count : 00000003
[E76h 3702 004h]              Mapping Offset : 0000003D

[E7Ah 3706 004h]                  Node Flags : 00000000
[E7Eh 3710 008h]           Memory Properties : [IORT Memory Access Properties]
[E7Eh 3710 004h]             Cache Coherency : 00000000
[E82h 3714 001h]       Hints (decoded below) : 00
                                   Transient : 0
                              Write Allocate : 0
                               Read Allocate : 0
                                    Override : 0
[E83h 3715 002h]                    Reserved : 0000
[E85h 3717 001h] Memory Flags (decoded below) : 00
                                   Coherency : 0
                            Device Attribute : 0
               Ensured Coherency of Accesses : 0
[E86h 3718 001h]           Memory Size Limit : 24
[E87h 3719 00Ah]                 Device Name : "\_SB.EVA0"
[E91h 3729 016h]                     Padding : 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20 /* IORT......QCOM   */\
/* EA1h 3745   6 */                            51 43 4F 4D 45 44                               /* QCOMED */\

[EA7h 3751 004h]                  Input base : 1A030000
[EABh 3755 004h]                    ID Count : 00000000
[EAFh 3759 004h]                 Output Base : 00001920
[EB3h 3763 004h]            Output Reference : 00000030
[EB7h 3767 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EBBh 3771 004h]                  Input base : 1A0A0000
[EBFh 3775 004h]                    ID Count : 00000000
[EC3h 3779 004h]                 Output Base : 00001923
[EC7h 3783 004h]            Output Reference : 00000030
[ECBh 3787 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[ECFh 3791 004h]                  Input base : 1A0B0000
[ED3h 3795 004h]                    ID Count : 00000000
[ED7h 3799 004h]                 Output Base : 00001924
[EDBh 3803 004h]            Output Reference : 00000030
[EDFh 3807 004h]       Flags (decoded below) : 00000000
                              Single Mapping : 0

[EE3h 3811 001h]                        Type : 00
[EE4h 3812 002h]                      Length : 0018
[EE6h 3814 001h]                    Revision : 00
[EE7h 3815 004h]                    Reserved : 00000000
[EEBh 3819 004h]               Mapping Count : 00000000
[EEFh 3823 004h]              Mapping Offset : 00000000

[EF3h 3827 004h]                    ItsCount : 00000001
[EF7h 3831 004h]                 Identifiers : 00000000

Raw Table Data: Length 3835 (0xEFB)

    0000: 49 4F 52 54 FB 0E 00 00 00 00 51 43 4F 4D 20 20  // IORT......QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 50 85 00 00 51 43 4F 4D  // QCOMEDK2P...QCOM
    0020: 01 00 00 00 10 00 00 00 30 00 00 00 00 00 00 00  // ........0.......
    0030: 03 4C 03 00 00 00 00 00 00 00 00 00 00 00 00 00  // .L..............
    0040: 00 00 00 15 00 00 00 00 00 00 10 00 00 00 00 00  // ................
    0050: 03 00 00 00 00 00 00 00 3C 00 00 00 60 00 00 00  // ........<...`...
    0060: 4C 00 00 00 00 00 00 00 00 00 00 00 61 00 00 00  // L...........a...
    0070: 00 00 00 00 00 00 00 00 00 00 00 00 81 00 00 00  // ................
    0080: 01 00 00 00 82 00 00 00 01 00 00 00 83 00 00 00  // ................
    0090: 01 00 00 00 84 00 00 00 01 00 00 00 85 00 00 00  // ................
    00A0: 01 00 00 00 86 00 00 00 01 00 00 00 87 00 00 00  // ................
    00B0: 01 00 00 00 88 00 00 00 01 00 00 00 89 00 00 00  // ................
    00C0: 01 00 00 00 8A 00 00 00 01 00 00 00 8B 00 00 00  // ................
    00D0: 01 00 00 00 8C 00 00 00 01 00 00 00 8D 00 00 00  // ................
    00E0: 01 00 00 00 8E 00 00 00 01 00 00 00 8F 00 00 00  // ................
    00F0: 01 00 00 00 90 00 00 00 01 00 00 00 91 00 00 00  // ................
    0100: 01 00 00 00 92 00 00 00 01 00 00 00 93 00 00 00  // ................
    0110: 01 00 00 00 94 00 00 00 01 00 00 00 95 00 00 00  // ................
    0120: 01 00 00 00 96 00 00 00 01 00 00 00 D5 00 00 00  // ................
    0130: 01 00 00 00 D6 00 00 00 01 00 00 00 D7 00 00 00  // ................
    0140: 01 00 00 00 D8 00 00 00 01 00 00 00 D9 00 00 00  // ................
    0150: 01 00 00 00 DA 00 00 00 01 00 00 00 DB 00 00 00  // ................
    0160: 01 00 00 00 DC 00 00 00 01 00 00 00 DD 00 00 00  // ................
    0170: 01 00 00 00 DE 00 00 00 01 00 00 00 DF 00 00 00  // ................
    0180: 01 00 00 00 E0 00 00 00 01 00 00 00 5B 01 00 00  // ............[...
    0190: 01 00 00 00 5C 01 00 00 01 00 00 00 5D 01 00 00  // ....\.......]...
    01A0: 01 00 00 00 5E 01 00 00 01 00 00 00 5F 01 00 00  // ....^......._...
    01B0: 01 00 00 00 60 01 00 00 01 00 00 00 61 01 00 00  // ....`.......a...
    01C0: 01 00 00 00 62 01 00 00 01 00 00 00 63 01 00 00  // ....b.......c...
    01D0: 01 00 00 00 64 01 00 00 01 00 00 00 65 01 00 00  // ....d.......e...
    01E0: 01 00 00 00 66 01 00 00 01 00 00 00 67 01 00 00  // ....f.......g...
    01F0: 01 00 00 00 68 01 00 00 01 00 00 00 69 01 00 00  // ....h.......i...
    0200: 01 00 00 00 6A 01 00 00 01 00 00 00 6B 01 00 00  // ....j.......k...
    0210: 01 00 00 00 6C 01 00 00 01 00 00 00 6D 01 00 00  // ....l.......m...
    0220: 01 00 00 00 6E 01 00 00 01 00 00 00 6F 01 00 00  // ....n.......o...
    0230: 01 00 00 00 70 01 00 00 01 00 00 00 71 01 00 00  // ....p.......q...
    0240: 01 00 00 00 72 01 00 00 01 00 00 00 73 01 00 00  // ....r.......s...
    0250: 01 00 00 00 74 01 00 00 01 00 00 00 75 01 00 00  // ....t.......u...
    0260: 01 00 00 00 76 01 00 00 01 00 00 00 77 01 00 00  // ....v.......w...
    0270: 01 00 00 00 78 01 00 00 01 00 00 00 79 01 00 00  // ....x.......y...
    0280: 01 00 00 00 AB 01 00 00 01 00 00 00 AC 01 00 00  // ................
    0290: 01 00 00 00 AD 01 00 00 01 00 00 00 AE 01 00 00  // ................
    02A0: 01 00 00 00 AF 01 00 00 01 00 00 00 B0 01 00 00  // ................
    02B0: 01 00 00 00 B1 01 00 00 01 00 00 00 B2 01 00 00  // ................
    02C0: 01 00 00 00 B3 01 00 00 01 00 00 00 B4 01 00 00  // ................
    02D0: 01 00 00 00 B5 01 00 00 01 00 00 00 B6 01 00 00  // ................
    02E0: 01 00 00 00 B7 01 00 00 01 00 00 00 B8 01 00 00  // ................
    02F0: 01 00 00 00 B9 01 00 00 01 00 00 00 C2 01 00 00  // ................
    0300: 01 00 00 00 C3 01 00 00 01 00 00 00 BC 01 00 00  // ................
    0310: 01 00 00 00 C5 01 00 00 01 00 00 00 E2 02 00 00  // ................
    0320: 01 00 00 00 C7 01 00 00 01 00 00 00 C8 01 00 00  // ................
    0330: 01 00 00 00 C9 01 00 00 01 00 00 00 D1 02 00 00  // ................
    0340: 01 00 00 00 D2 02 00 00 01 00 00 00 D3 02 00 00  // ................
    0350: 01 00 00 00 D4 02 00 00 01 00 00 00 D5 02 00 00  // ................
    0360: 01 00 00 00 D6 02 00 00 01 00 00 00 D7 02 00 00  // ................
    0370: 01 00 00 00 D8 02 00 00 01 00 00 00 03 14 01 00  // ................
    0380: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 DA 03  // ................
    0390: 00 00 00 00 00 00 04 00 00 00 00 00 03 00 00 00  // ................
    03A0: 00 00 00 00 3C 00 00 00 19 00 00 00 4C 00 00 00  // ....<.......L...
    03B0: 00 00 00 00 00 00 00 00 C1 02 00 00 00 00 00 00  // ................
    03C0: 00 00 00 00 00 00 00 00 C5 02 00 00 01 00 00 00  // ................
    03D0: C6 02 00 00 01 00 00 00 C7 02 00 00 01 00 00 00  // ................
    03E0: C8 02 00 00 01 00 00 00 C9 02 00 00 01 00 00 00  // ................
    03F0: CA 02 00 00 01 00 00 00 CB 02 00 00 01 00 00 00  // ................
    0400: CC 02 00 00 01 00 00 00 CD 02 00 00 01 00 00 00  // ................
    0410: CE 02 00 00 01 00 00 00 CF 02 00 00 01 00 00 00  // ................
    0420: C6 01 00 00 01 00 00 00 FC 01 00 00 01 00 00 00  // ................
    0430: 5E 02 00 00 01 00 00 00 5F 02 00 00 01 00 00 00  // ^......._.......
    0440: 60 02 00 00 01 00 00 00 61 02 00 00 01 00 00 00  // `.......a.......
    0450: B3 02 00 00 01 00 00 00 B5 02 00 00 01 00 00 00  // ................
    0460: B8 02 00 00 01 00 00 00 B9 02 00 00 01 00 00 00  // ................
    0470: BA 02 00 00 01 00 00 00 BC 02 00 00 01 00 00 00  // ................
    0480: BD 02 00 00 01 00 00 00 DB 02 00 00 01 00 00 00  // ................
    0490: 02 9C 00 00 00 00 00 00 06 00 00 00 24 00 00 00  // ............$...
    04A0: 01 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00  // ................
    04B0: 24 00 00 00 00 00 03 87 01 00 00 00 00 14 00 00  // $...............
    04C0: 30 00 00 00 00 00 00 00 02 00 03 87 03 00 00 00  // 0...............
    04D0: 04 14 00 00 30 00 00 00 00 00 00 00 06 00 03 87  // ....0...........
    04E0: 07 00 00 00 08 14 00 00 30 00 00 00 00 00 00 00  // ........0.......
    04F0: 10 00 03 87 0F 00 00 00 10 14 00 00 30 00 00 00  // ............0...
    0500: 00 00 00 00 20 00 03 87 1F 00 00 00 20 14 00 00  // .... ....... ...
    0510: 30 00 00 00 00 00 00 00 50 00 03 87 3F 00 00 00  // 0.......P...?...
    0520: 40 14 00 00 30 00 00 00 00 00 00 00 02 9C 00 00  // @...0...........
    0530: 00 00 00 00 06 00 00 00 24 00 00 00 01 00 00 00  // ........$.......
    0540: 00 00 00 01 00 00 00 00 01 00 00 00 24 00 00 00  // ............$...
    0550: 00 01 03 87 01 00 00 00 80 14 00 00 30 00 00 00  // ............0...
    0560: 00 00 00 00 02 01 03 87 03 00 00 00 84 14 00 00  // ................
    0570: 30 00 00 00 00 00 00 00 06 01 03 87 07 00 00 00  // 0...............
    0580: 88 14 00 00 30 00 00 00 00 00 00 00 10 01 03 87  // ....0...........
    0590: 0F 00 00 00 90 14 00 00 30 00 00 00 00 00 00 00  // ........0.......
    05A0: 20 01 03 87 1F 00 00 00 A0 14 00 00 30 00 00 00  //  ...........0...
    05B0: 00 00 00 00 50 01 03 87 3F 00 00 00 C0 14 00 00  // ....P...?.......
    05C0: 30 00 00 00 00 00 00 00 01 A5 01 00 00 00 00 00  // 0...............
    05D0: 12 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    05E0: 00 00 00 00 30 5C 5F 53 42 2E 47 50 55 30 00 00  // ....0\_SB.GPU0..
    05F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0600: 00 00 00 00 00 00 00 03 03 00 00 00 00 00 00 00  // ................
    0610: 00 7C 03 00 00 00 00 00 00 20 00 03 03 00 00 00  // .|....... ......
    0620: 00 01 00 00 00 7C 03 00 00 00 00 00 00 40 00 03  // .....|.......@..
    0630: 03 00 00 00 00 04 00 00 00 7C 03 00 00 00 00 00  // .........|......
    0640: 00 60 00 03 03 00 00 00 00 05 00 00 00 7C 03 00  // .`...........|..
    0650: 00 00 00 00 00 80 00 03 03 00 00 00 00 07 00 00  // ................
    0660: 00 7C 03 00 00 00 00 00 00 00 00 0A 03 00 00 00  // .|..............
    0670: 00 02 00 00 00 7C 03 00 00 00 00 00 00 00 00 03  // .....|..........
    0680: 00 00 00 00 00 00 1C 00 00 30 00 00 00 00 00 00  // .........0......
    0690: 00 01 00 03 00 00 00 00 00 02 1C 00 00 30 00 00  // .............0..
    06A0: 00 00 00 00 00 00 00 0A 00 00 00 00 00 01 1C 00  // ................
    06B0: 00 30 00 00 00 00 00 00 00 00 00 03 0C 00 00 00  // .0..............
    06C0: 00 80 04 00 00 30 00 00 00 00 00 00 00 20 00 03  // .....0....... ..
    06D0: 0C 00 00 00 00 81 04 00 00 30 00 00 00 00 00 00  // .........0......
    06E0: 00 00 00 09 0C 00 00 00 00 83 04 00 00 30 00 00  // .............0..
    06F0: 00 00 00 00 00 00 00 03 04 00 00 00 00 40 19 00  // .............@..
    0700: 00 30 00 00 00 00 00 00 00 20 00 03 04 00 00 00  // .0....... ......
    0710: 00 47 19 00 00 30 00 00 00 00 00 00 00 00 00 09  // .G...0..........
    0720: 04 00 00 00 00 41 19 00 00 30 00 00 00 00 00 00  // .....A...0......
    0730: 00 01 00 09 04 00 00 00 00 45 19 00 00 30 00 00  // .........E...0..
    0740: 00 00 00 00 00 00 00 0A 04 00 00 00 00 43 19 00  // .............C..
    0750: 00 30 00 00 00 00 00 00 00 00 00 0B 04 00 00 00  // .0..............
    0760: 00 44 19 00 00 30 00 00 00 00 00 00 00 01 51 00  // .D...0........Q.
    0770: 00 00 00 00 00 01 00 00 00 3D 00 00 00 00 00 00  // .........=......
    0780: 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E 4A  // .........$\_SB.J
    0790: 50 47 45 00 00 00 00 00 00 00 00 00 00 00 00 00  // PGE.............
    07A0: 00 00 00 00 00 00 00 00 00 00 00 00 03 02 00 00  // ................
    07B0: 00 00 A0 18 00 00 30 00 00 00 00 00 00 00 01 99  // ......0.........
    07C0: 03 00 00 00 00 00 2B 00 00 00 3D 00 00 00 00 00  // ......+...=.....
    07D0: 00 00 00 00 00 00 00 00 00 00 24 5C 5F 53 42 2E  // ..........$\_SB.
    07E0: 41 52 50 43 00 00 00 00 00 00 00 00 00 00 00 00  // ARPC............
    07F0: 00 00 00 00 00 00 00 00 00 00 00 00 00 03 17 00  // ................
    0800: 00 00 00 01 0C 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    0810: 00 03 17 00 00 00 00 21 0C 00 00 30 00 00 00 00  // .......!...0....
    0820: 00 00 00 20 00 03 17 00 00 00 00 02 0C 00 00 30  // ... ...........0
    0830: 00 00 00 00 00 00 00 21 00 03 17 00 00 00 00 22  // .......!......."
    0840: 0C 00 00 30 00 00 00 00 00 00 00 40 00 03 17 00  // ...0.......@....
    0850: 00 00 00 03 0C 00 00 30 00 00 00 00 00 00 00 41  // .......0.......A
    0860: 00 03 17 00 00 00 00 23 0C 00 00 30 00 00 00 00  // .......#...0....
    0870: 00 00 00 60 00 03 17 00 00 00 00 04 0C 00 00 30  // ...`...........0
    0880: 00 00 00 00 00 00 00 61 00 03 17 00 00 00 00 24  // .......a.......$
    0890: 0C 00 00 30 00 00 00 00 00 00 00 80 00 03 17 00  // ...0............
    08A0: 00 00 00 05 0C 00 00 30 00 00 00 00 00 00 00 81  // .......0........
    08B0: 00 03 17 00 00 00 00 25 0C 00 00 30 00 00 00 00  // .......%...0....
    08C0: 00 00 00 A0 00 03 17 00 00 00 00 06 0C 00 00 30  // ...............0
    08D0: 00 00 00 00 00 00 00 A1 00 03 17 00 00 00 00 26  // ...............&
    08E0: 0C 00 00 30 00 00 00 00 00 00 00 C0 00 03 17 00  // ...0............
    08F0: 00 00 00 27 0C 00 00 30 00 00 00 00 00 00 00 C1  // ...'...0........
    0900: 00 03 17 00 00 00 00 07 0C 00 00 30 00 00 00 00  // ...........0....
    0910: 00 00 00 E0 00 03 17 00 00 00 00 28 0C 00 00 30  // ...........(...0
    0920: 00 00 00 00 00 00 00 E1 00 03 17 00 00 00 00 08  // ................
    0930: 0C 00 00 30 00 00 00 00 00 00 00 00 01 03 17 00  // ...0............
    0940: 00 00 00 2C 0C 00 00 30 00 00 00 00 00 00 00 01  // ...,...0........
    0950: 01 03 17 00 00 00 00 0C 0C 00 00 30 00 00 00 00  // ...........0....
    0960: 00 00 00 20 01 03 17 00 00 00 00 2D 0C 00 00 30  // ... .......-...0
    0970: 00 00 00 00 00 00 00 21 01 03 17 00 00 00 00 0D  // .......!........
    0980: 0C 00 00 30 00 00 00 00 00 00 00 40 01 03 17 00  // ...0.......@....
    0990: 00 00 00 2E 0C 00 00 30 00 00 00 00 00 00 00 41  // .......0.......A
    09A0: 01 03 17 00 00 00 00 0E 0C 00 00 30 00 00 00 00  // ...........0....
    09B0: 00 00 00 60 01 03 17 00 00 00 00 2F 0C 00 00 30  // ...`......./...0
    09C0: 00 00 00 00 00 00 00 61 01 03 17 00 00 00 00 0F  // .......a........
    09D0: 0C 00 00 30 00 00 00 00 00 00 00 80 01 03 17 00  // ...0............
    09E0: 00 00 00 63 10 00 00 30 00 00 00 00 00 00 00 81  // ...c...0........
    09F0: 01 03 17 00 00 00 00 03 10 00 00 30 00 00 00 00  // ...........0....
    0A00: 00 00 00 82 01 03 17 00 00 00 00 83 10 00 00 30  // ...............0
    0A10: 00 00 00 00 00 00 00 A0 01 03 17 00 00 00 00 64  // ...............d
    0A20: 10 00 00 30 00 00 00 00 00 00 00 A1 01 03 17 00  // ...0............
    0A30: 00 00 00 04 10 00 00 30 00 00 00 00 00 00 00 A2  // .......0........
    0A40: 01 03 17 00 00 00 00 84 10 00 00 30 00 00 00 00  // ...........0....
    0A50: 00 00 00 C0 01 03 17 00 00 00 00 65 10 00 00 30  // ...........e...0
    0A60: 00 00 00 00 00 00 00 C1 01 03 17 00 00 00 00 05  // ................
    0A70: 10 00 00 30 00 00 00 00 00 00 00 C2 01 03 17 00  // ...0............
    0A80: 00 00 00 85 10 00 00 30 00 00 00 00 00 00 00 E0  // .......0........
    0A90: 01 03 17 00 00 00 00 66 10 00 00 30 00 00 00 00  // .......f...0....
    0AA0: 00 00 00 E1 01 03 17 00 00 00 00 06 10 00 00 30  // ...............0
    0AB0: 00 00 00 00 00 00 00 E2 01 03 17 00 00 00 00 86  // ................
    0AC0: 10 00 00 30 00 00 00 00 00 00 00 00 02 03 17 00  // ...0............
    0AD0: 00 00 00 67 10 00 00 30 00 00 00 00 00 00 00 01  // ...g...0........
    0AE0: 02 03 17 00 00 00 00 07 10 00 00 30 00 00 00 00  // ...........0....
    0AF0: 00 00 00 02 02 03 17 00 00 00 00 87 10 00 00 30  // ...............0
    0B00: 00 00 00 00 00 00 00 00 00 0A 17 00 00 00 00 29  // ...............)
    0B10: 0C 00 00 30 00 00 00 00 00 00 00 01 00 0A 17 00  // ...0............
    0B20: 00 00 00 09 0C 00 00 30 00 00 00 00 00 00 00 00  // .......0........
    0B30: 00 03 16 00 00 00 00 C3 10 00 00 30 00 00 00 00  // ...........0....
    0B40: 00 00 00 20 00 03 16 00 00 00 00 D6 10 00 00 30  // ... ...........0
    0B50: 00 00 00 00 00 00 00 01 51 00 00 00 00 00 00 01  // ........Q.......
    0B60: 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00 00  // ...=............
    0B70: 00 00 00 24 5C 5F 53 42 2E 55 53 42 41 00 00 00  // ...$\_SB.USBA...
    0B80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0B90: 00 00 00 00 00 00 03 07 00 00 00 00 0B 10 00 00  // ................
    0BA0: 30 00 00 00 00 00 00 00 01 79 00 00 00 00 00 00  // 0........y......
    0BB0: 03 00 00 00 3D 00 00 00 00 00 00 00 00 00 00 00  // ....=...........
    0BC0: 00 00 00 00 28 5C 5F 53 42 2E 51 44 53 53 00 00  // ....(\_SB.QDSS..
    0BD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0BE0: 00 00 00 00 00 00 00 03 19 00 00 00 00 C0 04 00  // ................
    0BF0: 00 30 00 00 00 00 00 00 00 01 00 03 19 00 00 00  // .0..............
    0C00: 00 E0 04 00 00 30 00 00 00 00 00 00 00 20 00 03  // .....0....... ..
    0C10: 19 00 00 00 00 00 05 00 00 30 00 00 00 00 00 00  // .........0......
    0C20: 00 01 79 00 00 00 00 00 00 03 00 00 00 3D 00 00  // ..y..........=..
    0C30: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    0C40: 53 42 2E 41 44 53 50 2E 41 44 43 4D 00 00 00 00  // SB.ADSP.ADCM....
    0C50: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 00  // .............. .
    0C60: 03 07 00 00 00 00 61 10 00 00 30 00 00 00 00 00  // ......a...0.....
    0C70: 00 00 21 00 03 07 00 00 00 00 01 10 00 00 30 00  // ..!...........0.
    0C80: 00 00 00 00 00 00 22 00 03 07 00 00 00 00 81 10  // ......".........
    0C90: 00 00 30 00 00 00 00 00 00 00 01 65 00 00 00 00  // ..0........e....
    0CA0: 00 00 02 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    0CB0: 00 00 00 00 00 00 28 5C 5F 53 42 2E 53 44 43 32  // ......(\_SB.SDC2
    0CC0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0CD0: 00 00 00 00 00 00 00 00 00 03 86 00 00 00 00 40  // ...............@
    0CE0: 05 00 00 30 00 00 00 00 00 00 00 20 00 03 86 00  // ...0....... ....
    0CF0: 00 00 00 80 00 00 00 30 00 00 00 00 00 00 00 01  // .......0........
    0D00: 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00 00  // Q..........=....
    0D10: 00 00 00 01 00 00 00 00 00 00 01 28 5C 5F 53 42  // ...........(\_SB
    0D20: 2E 55 46 53 30 00 00 00 00 00 00 00 00 00 00 00  // .UFS0...........
    0D30: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 81  // ................
    0D40: 00 00 00 00 60 00 00 00 30 00 00 00 00 00 00 00  // ....`...0.......
    0D50: 01 51 00 00 00 00 00 00 01 00 00 00 3D 00 00 00  // .Q..........=...
    0D60: 00 00 00 00 00 00 00 00 00 00 00 00 28 5C 5F 53  // ............(\_S
    0D70: 42 2E 55 52 53 30 00 00 00 00 00 00 00 00 00 00  // B.URS0..........
    0D80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03  // ................
    0D90: 80 00 00 00 00 40 00 00 00 30 00 00 00 00 00 00  // .....@...0......
    0DA0: 00 01 C9 00 00 00 00 00 00 07 00 00 00 3D 00 00  // .............=..
    0DB0: 00 00 00 00 00 00 00 00 00 00 00 00 00 24 5C 5F  // .............$\_
    0DC0: 53 42 2E 47 50 55 30 2E 41 56 53 30 00 00 00 00  // SB.GPU0.AVS0....
    0DD0: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0DE0: 03 01 00 00 00 00 00 08 00 00 30 00 00 00 00 00  // ..........0.....
    0DF0: 00 00 01 00 03 01 00 00 00 00 20 08 00 00 30 00  // .......... ...0.
    0E00: 00 00 00 00 00 00 20 00 03 01 00 00 00 00 00 18  // ...... .........
    0E10: 00 00 30 00 00 00 00 00 00 00 21 00 03 01 00 00  // ..0.......!.....
    0E20: 00 00 20 18 00 00 30 00 00 00 00 00 00 00 22 00  // .. ...0.......".
    0E30: 03 01 00 00 00 00 40 18 00 00 30 00 00 00 00 00  // ......@...0.....
    0E40: 00 00 23 00 03 01 00 00 00 00 80 18 00 00 30 00  // ..#...........0.
    0E50: 00 00 00 00 00 00 24 00 03 01 00 00 00 00 C0 18  // ......$.........
    0E60: 00 00 30 00 00 00 00 00 00 00 01 79 00 00 00 00  // ..0........y....
    0E70: 00 00 03 00 00 00 3D 00 00 00 00 00 00 00 00 00  // ......=.........
    0E80: 00 00 00 00 00 00 24 5C 5F 53 42 2E 45 56 41 30  // ......$\_SB.EVA0
    0E90: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0EA0: 00 00 00 00 00 00 00 00 00 03 1A 00 00 00 00 20  // ............... 
    0EB0: 19 00 00 30 00 00 00 00 00 00 00 00 00 0A 1A 00  // ...0............
    0EC0: 00 00 00 23 19 00 00 30 00 00 00 00 00 00 00 00  // ...#...0........
    0ED0: 00 0B 1A 00 00 00 00 24 19 00 00 30 00 00 00 00  // .......$...0....
    0EE0: 00 00 00 00 18 00 00 00 00 00 00 00 00 00 00 00  // ................
    0EF0: 00 00 00 01 00 00 00 00 00 00 00                 // ...........
