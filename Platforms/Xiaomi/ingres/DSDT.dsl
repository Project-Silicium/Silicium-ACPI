/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20241212 (32-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of //wsl.localhost/Ubuntu-22.04/home/nikka/Mu-Silicium/Silicium-ACPI/Platforms/Xiaomi/ingres/DSDT7.aml
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000439E (17310)
 *     Revision         0x02
 *     Checksum         0xBA
 *     OEM ID           "QCOMM "
 *     OEM Table ID     "SM8450 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "DSDT", 2, "QCOMM ", "SM8450 ", 0x00000003)
{
    External (_SB_.DPP0, IntObj)
    External (_SB_.DPP1, IntObj)
    External (_SB_.MBCL, UnknownObj)
    External (_SB_.MPP0, IntObj)
    External (_SB_.MPP1, IntObj)
    External (_SB_.MSKN, UnknownObj)
    External (_SB_.PRS0, IntObj)
    External (_SB_.PRS2, IntObj)
    External (_SB_.TZ11._CRT, IntObj)
    External (_SB_.TZ11._MTL, IntObj)
    External (_SB_.TZ11.TCRT, UnknownObj)
    External (_SB_.TZ11.TMTL, UnknownObj)
    External (_SB_.TZ13, UnknownObj)
    External (_SB_.TZ13._CRT, IntObj)
    External (_SB_.TZ13._MTL, IntObj)
    External (_SB_.TZ13._PSV, IntObj)
    External (_SB_.TZ13._TC1, IntObj)
    External (_SB_.TZ13._TC2, IntObj)
    External (_SB_.TZ13._TSP, IntObj)
    External (_SB_.TZ13.TCRT, UnknownObj)
    External (_SB_.TZ13.TMTL, UnknownObj)
    External (_SB_.TZ13.TPSV, UnknownObj)
    External (_SB_.TZ13.TTC1, UnknownObj)
    External (_SB_.TZ13.TTC2, UnknownObj)
    External (_SB_.TZ13.TTSP, UnknownObj)
    External (_SB_.TZ1_._CRT, IntObj)
    External (_SB_.TZ1_.TCRT, UnknownObj)
    External (_SB_.TZ34._CRT, IntObj)
    External (_SB_.TZ34._MTL, IntObj)
    External (_SB_.TZ34._PSV, IntObj)
    External (_SB_.TZ34._TC1, IntObj)
    External (_SB_.TZ34._TC2, IntObj)
    External (_SB_.TZ34.TCRT, UnknownObj)
    External (_SB_.TZ34.TMTL, UnknownObj)
    External (_SB_.TZ34.TPSV, UnknownObj)
    External (_SB_.TZ34.TTC1, UnknownObj)
    External (_SB_.TZ34.TTC2, UnknownObj)
    External (_SB_.TZ35._CRT, IntObj)
    External (_SB_.TZ35._MTL, IntObj)
    External (_SB_.TZ35._PSV, IntObj)
    External (_SB_.TZ35._TC1, IntObj)
    External (_SB_.TZ35._TC2, IntObj)
    External (_SB_.TZ35.TCRT, UnknownObj)
    External (_SB_.TZ35.TMTL, UnknownObj)
    External (_SB_.TZ35.TPSV, UnknownObj)
    External (_SB_.TZ35.TTC1, UnknownObj)
    External (_SB_.TZ35.TTC2, UnknownObj)
    External (_SB_.TZ36._CRT, IntObj)
    External (_SB_.TZ36._MTL, IntObj)
    External (_SB_.TZ36._PSV, IntObj)
    External (_SB_.TZ36._TC1, IntObj)
    External (_SB_.TZ36._TC2, IntObj)
    External (_SB_.TZ36.TCRT, UnknownObj)
    External (_SB_.TZ36.TMTL, UnknownObj)
    External (_SB_.TZ36.TPSV, UnknownObj)
    External (_SB_.TZ36.TTC1, UnknownObj)
    External (_SB_.TZ36.TTC2, UnknownObj)
    External (_SB_.TZ37._CRT, IntObj)
    External (_SB_.TZ37._MTL, IntObj)
    External (_SB_.TZ37._PSV, IntObj)
    External (_SB_.TZ37._TC1, IntObj)
    External (_SB_.TZ37._TC2, IntObj)
    External (_SB_.TZ37.TCRT, UnknownObj)
    External (_SB_.TZ37.TMTL, UnknownObj)
    External (_SB_.TZ37.TPSV, UnknownObj)
    External (_SB_.TZ37.TTC1, UnknownObj)
    External (_SB_.TZ37.TTC2, UnknownObj)
    External (_SB_.TZ38, UnknownObj)
    External (_SB_.TZ38._CRT, IntObj)
    External (_SB_.TZ38._MTL, IntObj)
    External (_SB_.TZ38._PSV, IntObj)
    External (_SB_.TZ38._TC1, IntObj)
    External (_SB_.TZ38._TC2, IntObj)
    External (_SB_.TZ38._TSP, IntObj)
    External (_SB_.TZ38.TCRT, UnknownObj)
    External (_SB_.TZ38.TMTL, UnknownObj)
    External (_SB_.TZ38.TPSV, UnknownObj)
    External (_SB_.TZ38.TTC1, UnknownObj)
    External (_SB_.TZ38.TTC2, UnknownObj)
    External (_SB_.TZ38.TTSP, UnknownObj)
    External (_SB_.TZ39, UnknownObj)
    External (_SB_.TZ39._CR3, IntObj)
    External (_SB_.TZ39._CRT, IntObj)
    External (_SB_.TZ39._HOT, IntObj)
    External (_SB_.TZ39._MTL, IntObj)
    External (_SB_.TZ39._PSV, IntObj)
    External (_SB_.TZ39._TC1, IntObj)
    External (_SB_.TZ39._TC2, IntObj)
    External (_SB_.TZ39._TSP, IntObj)
    External (_SB_.TZ39.TCR3, UnknownObj)
    External (_SB_.TZ39.TCRT, UnknownObj)
    External (_SB_.TZ39.THOT, UnknownObj)
    External (_SB_.TZ39.THSF, UnknownObj)
    External (_SB_.TZ39.TMTL, UnknownObj)
    External (_SB_.TZ39.TPSV, UnknownObj)
    External (_SB_.TZ39.TTC1, UnknownObj)
    External (_SB_.TZ39.TTC2, UnknownObj)
    External (_SB_.TZ39.TTSP, UnknownObj)
    External (_SB_.TZ3_._CRT, IntObj)
    External (_SB_.TZ3_.TCRT, UnknownObj)
    External (_SB_.TZ40, UnknownObj)
    External (_SB_.TZ40._CR3, IntObj)
    External (_SB_.TZ40._CRT, IntObj)
    External (_SB_.TZ40._HOT, IntObj)
    External (_SB_.TZ40._MTL, IntObj)
    External (_SB_.TZ40._PSV, IntObj)
    External (_SB_.TZ40._TC1, IntObj)
    External (_SB_.TZ40._TC2, IntObj)
    External (_SB_.TZ40._TSP, IntObj)
    External (_SB_.TZ40.TCR3, UnknownObj)
    External (_SB_.TZ40.TCRT, UnknownObj)
    External (_SB_.TZ40.THOT, UnknownObj)
    External (_SB_.TZ40.THSF, UnknownObj)
    External (_SB_.TZ40.TMTL, UnknownObj)
    External (_SB_.TZ40.TPSV, UnknownObj)
    External (_SB_.TZ40.TTC1, UnknownObj)
    External (_SB_.TZ40.TTC2, UnknownObj)
    External (_SB_.TZ40.TTSP, UnknownObj)
    External (_SB_.TZ41, UnknownObj)
    External (_SB_.TZ41._CR3, IntObj)
    External (_SB_.TZ41._CRT, IntObj)
    External (_SB_.TZ41._HOT, IntObj)
    External (_SB_.TZ41._MTL, IntObj)
    External (_SB_.TZ41._PSV, IntObj)
    External (_SB_.TZ41._TC1, IntObj)
    External (_SB_.TZ41._TC2, IntObj)
    External (_SB_.TZ41._TSP, IntObj)
    External (_SB_.TZ41.TCR3, UnknownObj)
    External (_SB_.TZ41.TCRT, UnknownObj)
    External (_SB_.TZ41.THOT, UnknownObj)
    External (_SB_.TZ41.THSF, UnknownObj)
    External (_SB_.TZ41.TMTL, UnknownObj)
    External (_SB_.TZ41.TPSV, UnknownObj)
    External (_SB_.TZ41.TTC1, UnknownObj)
    External (_SB_.TZ41.TTC2, UnknownObj)
    External (_SB_.TZ41.TTSP, UnknownObj)
    External (_SB_.TZ42, UnknownObj)
    External (_SB_.TZ42._CR3, IntObj)
    External (_SB_.TZ42._CRT, IntObj)
    External (_SB_.TZ42._HOT, IntObj)
    External (_SB_.TZ42._MTL, IntObj)
    External (_SB_.TZ42._PSV, IntObj)
    External (_SB_.TZ42._TC1, IntObj)
    External (_SB_.TZ42._TC2, IntObj)
    External (_SB_.TZ42._TSP, IntObj)
    External (_SB_.TZ42.TCR3, UnknownObj)
    External (_SB_.TZ42.TCRT, UnknownObj)
    External (_SB_.TZ42.THOT, UnknownObj)
    External (_SB_.TZ42.THSF, UnknownObj)
    External (_SB_.TZ42.TMTL, UnknownObj)
    External (_SB_.TZ42.TPSV, UnknownObj)
    External (_SB_.TZ42.TTC1, UnknownObj)
    External (_SB_.TZ42.TTC2, UnknownObj)
    External (_SB_.TZ42.TTSP, UnknownObj)
    External (_SB_.TZ43, UnknownObj)
    External (_SB_.TZ43._CR3, IntObj)
    External (_SB_.TZ43._CRT, IntObj)
    External (_SB_.TZ43._HOT, IntObj)
    External (_SB_.TZ43._MTL, IntObj)
    External (_SB_.TZ43._PSV, IntObj)
    External (_SB_.TZ43._TC1, IntObj)
    External (_SB_.TZ43._TC2, IntObj)
    External (_SB_.TZ43._TSP, IntObj)
    External (_SB_.TZ43.TCR3, UnknownObj)
    External (_SB_.TZ43.TCRT, UnknownObj)
    External (_SB_.TZ43.THOT, UnknownObj)
    External (_SB_.TZ43.THSF, UnknownObj)
    External (_SB_.TZ43.TMTL, UnknownObj)
    External (_SB_.TZ43.TPSV, UnknownObj)
    External (_SB_.TZ43.TTC1, UnknownObj)
    External (_SB_.TZ43.TTC2, UnknownObj)
    External (_SB_.TZ43.TTSP, UnknownObj)
    External (_SB_.TZ44, UnknownObj)
    External (_SB_.TZ44._CR3, IntObj)
    External (_SB_.TZ44._CRT, IntObj)
    External (_SB_.TZ44._HOT, IntObj)
    External (_SB_.TZ44._MTL, IntObj)
    External (_SB_.TZ44._PSV, IntObj)
    External (_SB_.TZ44._TC1, IntObj)
    External (_SB_.TZ44._TC2, IntObj)
    External (_SB_.TZ44._TSP, IntObj)
    External (_SB_.TZ44.TCR3, UnknownObj)
    External (_SB_.TZ44.TCRT, UnknownObj)
    External (_SB_.TZ44.THOT, UnknownObj)
    External (_SB_.TZ44.THSF, UnknownObj)
    External (_SB_.TZ44.TMTL, UnknownObj)
    External (_SB_.TZ44.TPSV, UnknownObj)
    External (_SB_.TZ44.TTC1, UnknownObj)
    External (_SB_.TZ44.TTC2, UnknownObj)
    External (_SB_.TZ44.TTSP, UnknownObj)
    External (_SB_.TZ45, UnknownObj)
    External (_SB_.TZ45._CR3, IntObj)
    External (_SB_.TZ45._CRT, IntObj)
    External (_SB_.TZ45._HOT, IntObj)
    External (_SB_.TZ45._MTL, IntObj)
    External (_SB_.TZ45._PSV, IntObj)
    External (_SB_.TZ45._TC1, IntObj)
    External (_SB_.TZ45._TC2, IntObj)
    External (_SB_.TZ45._TSP, IntObj)
    External (_SB_.TZ45.TCR3, UnknownObj)
    External (_SB_.TZ45.TCRT, UnknownObj)
    External (_SB_.TZ45.THOT, UnknownObj)
    External (_SB_.TZ45.THSF, UnknownObj)
    External (_SB_.TZ45.TMTL, UnknownObj)
    External (_SB_.TZ45.TPSV, UnknownObj)
    External (_SB_.TZ45.TTC1, UnknownObj)
    External (_SB_.TZ45.TTC2, UnknownObj)
    External (_SB_.TZ45.TTSP, UnknownObj)
    External (_SB_.TZ51, UnknownObj)
    External (_SB_.TZ51._MTL, IntObj)
    External (_SB_.TZ51._PSV, IntObj)
    External (_SB_.TZ51._TC1, IntObj)
    External (_SB_.TZ51._TC2, IntObj)
    External (_SB_.TZ51._TSP, IntObj)
    External (_SB_.TZ51.TMTL, UnknownObj)
    External (_SB_.TZ51.TPSV, UnknownObj)
    External (_SB_.TZ51.TTC1, UnknownObj)
    External (_SB_.TZ51.TTC2, UnknownObj)
    External (_SB_.TZ51.TTSP, UnknownObj)
    External (_SB_.TZ52, UnknownObj)
    External (_SB_.TZ52._MTL, IntObj)
    External (_SB_.TZ52._PSV, IntObj)
    External (_SB_.TZ52._TC1, IntObj)
    External (_SB_.TZ52._TC2, IntObj)
    External (_SB_.TZ52._TSP, IntObj)
    External (_SB_.TZ52.TMTL, UnknownObj)
    External (_SB_.TZ52.TPSV, UnknownObj)
    External (_SB_.TZ52.TTC1, UnknownObj)
    External (_SB_.TZ52.TTC2, UnknownObj)
    External (_SB_.TZ52.TTSP, UnknownObj)
    External (_SB_.TZ53, UnknownObj)
    External (_SB_.TZ53._MTL, IntObj)
    External (_SB_.TZ53._PSV, IntObj)
    External (_SB_.TZ53._TC1, IntObj)
    External (_SB_.TZ53._TC2, IntObj)
    External (_SB_.TZ53._TSP, IntObj)
    External (_SB_.TZ53.TMTL, UnknownObj)
    External (_SB_.TZ53.TPSV, UnknownObj)
    External (_SB_.TZ53.TTC1, UnknownObj)
    External (_SB_.TZ53.TTC2, UnknownObj)
    External (_SB_.TZ53.TTSP, UnknownObj)
    External (_SB_.TZ54, UnknownObj)
    External (_SB_.TZ54._MTL, IntObj)
    External (_SB_.TZ54._PSV, IntObj)
    External (_SB_.TZ54._TC1, IntObj)
    External (_SB_.TZ54._TC2, IntObj)
    External (_SB_.TZ54._TSP, IntObj)
    External (_SB_.TZ54.TMTL, UnknownObj)
    External (_SB_.TZ54.TPSV, UnknownObj)
    External (_SB_.TZ54.TTC1, UnknownObj)
    External (_SB_.TZ54.TTC2, UnknownObj)
    External (_SB_.TZ54.TTSP, UnknownObj)
    External (_SB_.TZ55, UnknownObj)
    External (_SB_.TZ55._MTL, IntObj)
    External (_SB_.TZ55._PSV, IntObj)
    External (_SB_.TZ55._TC1, IntObj)
    External (_SB_.TZ55._TC2, IntObj)
    External (_SB_.TZ55._TSP, IntObj)
    External (_SB_.TZ55.TMTL, UnknownObj)
    External (_SB_.TZ55.TPSV, UnknownObj)
    External (_SB_.TZ55.TTC1, UnknownObj)
    External (_SB_.TZ55.TTC2, UnknownObj)
    External (_SB_.TZ55.TTSP, UnknownObj)
    External (_SB_.TZ56, UnknownObj)
    External (_SB_.TZ56._MTL, IntObj)
    External (_SB_.TZ56._PSV, IntObj)
    External (_SB_.TZ56._TC1, IntObj)
    External (_SB_.TZ56._TC2, IntObj)
    External (_SB_.TZ56._TSP, IntObj)
    External (_SB_.TZ56.TMTL, UnknownObj)
    External (_SB_.TZ56.TPSV, UnknownObj)
    External (_SB_.TZ56.TTC1, UnknownObj)
    External (_SB_.TZ56.TTC2, UnknownObj)
    External (_SB_.TZ56.TTSP, UnknownObj)
    External (_SB_.TZ57, UnknownObj)
    External (_SB_.TZ57._MTL, IntObj)
    External (_SB_.TZ57._PSV, IntObj)
    External (_SB_.TZ57._TC1, IntObj)
    External (_SB_.TZ57._TC2, IntObj)
    External (_SB_.TZ57._TSP, IntObj)
    External (_SB_.TZ57.TMTL, UnknownObj)
    External (_SB_.TZ57.TPSV, UnknownObj)
    External (_SB_.TZ57.TTC1, UnknownObj)
    External (_SB_.TZ57.TTC2, UnknownObj)
    External (_SB_.TZ57.TTSP, UnknownObj)
    External (_SB_.TZ58, UnknownObj)
    External (_SB_.TZ58._MTL, IntObj)
    External (_SB_.TZ58._PSV, IntObj)
    External (_SB_.TZ58._TC1, IntObj)
    External (_SB_.TZ58._TC2, IntObj)
    External (_SB_.TZ58._TSP, IntObj)
    External (_SB_.TZ58.TMTL, UnknownObj)
    External (_SB_.TZ58.TPSV, UnknownObj)
    External (_SB_.TZ58.TTC1, UnknownObj)
    External (_SB_.TZ58.TTC2, UnknownObj)
    External (_SB_.TZ58.TTSP, UnknownObj)
    External (_SB_.TZ59, UnknownObj)
    External (_SB_.TZ59._MTL, IntObj)
    External (_SB_.TZ59._PSV, IntObj)
    External (_SB_.TZ59._TC1, IntObj)
    External (_SB_.TZ59._TC2, IntObj)
    External (_SB_.TZ59._TSP, IntObj)
    External (_SB_.TZ59.TMTL, UnknownObj)
    External (_SB_.TZ59.TPSV, UnknownObj)
    External (_SB_.TZ59.TTC1, UnknownObj)
    External (_SB_.TZ59.TTC2, UnknownObj)
    External (_SB_.TZ59.TTSP, UnknownObj)
    External (_SB_.TZ5_._CRT, IntObj)
    External (_SB_.TZ5_.TCRT, UnknownObj)
    External (_SB_.TZ60, UnknownObj)
    External (_SB_.TZ60._MTL, IntObj)
    External (_SB_.TZ60._PSV, IntObj)
    External (_SB_.TZ60._TC1, IntObj)
    External (_SB_.TZ60._TC2, IntObj)
    External (_SB_.TZ60._TSP, IntObj)
    External (_SB_.TZ60.TMTL, UnknownObj)
    External (_SB_.TZ60.TPSV, UnknownObj)
    External (_SB_.TZ60.TTC1, UnknownObj)
    External (_SB_.TZ60.TTC2, UnknownObj)
    External (_SB_.TZ60.TTSP, UnknownObj)
    External (_SB_.TZ61, UnknownObj)
    External (_SB_.TZ61._MTL, IntObj)
    External (_SB_.TZ61._PSV, IntObj)
    External (_SB_.TZ61._TC1, IntObj)
    External (_SB_.TZ61._TC2, IntObj)
    External (_SB_.TZ61._TSP, IntObj)
    External (_SB_.TZ61.TMTL, UnknownObj)
    External (_SB_.TZ61.TPSV, UnknownObj)
    External (_SB_.TZ61.TTC1, UnknownObj)
    External (_SB_.TZ61.TTC2, UnknownObj)
    External (_SB_.TZ61.TTSP, UnknownObj)
    External (_SB_.TZ62, UnknownObj)
    External (_SB_.TZ62._MTL, IntObj)
    External (_SB_.TZ62._PSV, IntObj)
    External (_SB_.TZ62._TC1, IntObj)
    External (_SB_.TZ62._TC2, IntObj)
    External (_SB_.TZ62._TSP, IntObj)
    External (_SB_.TZ62.TMTL, UnknownObj)
    External (_SB_.TZ62.TPSV, UnknownObj)
    External (_SB_.TZ62.TTC1, UnknownObj)
    External (_SB_.TZ62.TTC2, UnknownObj)
    External (_SB_.TZ62.TTSP, UnknownObj)
    External (_SB_.TZ6_._CRT, IntObj)
    External (_SB_.TZ6_._MTL, IntObj)
    External (_SB_.TZ6_.TCRT, UnknownObj)
    External (_SB_.TZ6_.TMTL, UnknownObj)
    External (_SB_.TZ98, UnknownObj)
    External (_SB_.TZ98._AC0, IntObj)
    External (_SB_.TZ98._MTL, IntObj)
    External (_SB_.TZ98._PSV, IntObj)
    External (_SB_.TZ98._TC1, IntObj)
    External (_SB_.TZ98._TSP, IntObj)
    External (_SB_.TZ98.TAC0, UnknownObj)
    External (_SB_.TZ98.TMTL, UnknownObj)
    External (_SB_.TZ98.TPSV, UnknownObj)
    External (_SB_.TZ98.TTC1, UnknownObj)
    External (_SB_.TZ98.TTSP, UnknownObj)
    External (_SB_.TZ99._MTL, IntObj)
    External (_SB_.TZ99.TMTL, UnknownObj)
    External (MFGM, UnknownObj)
    External (TBID, UnknownObj)

    Scope (_SB)
    {
        Name (PSUB, "MTP08450")
        Name (PEPI, Zero)
        Name (FPID, 0xFFFF)
        Name (SVMJ, 0xFFFF)
        Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        Name (STOR, 0xABCABCAB)
        Name (SDFE, 0xFFFF)
        Name (DPBM, 0x80000000)
        Name (SOID, 0xFFFFFFFF)
        Name (SIDS, "899800000000000")
        Name (SIDV, 0xFFFFFFFF)
        Name (SVMI, 0xFFFF)
        Name (SFES, "899800000000000")
        Name (SIDM, 0x0000000FFFFFFFFF)
        Name (SUFS, 0xFFFFFFFF)
        Name (PUS4, 0xFFFFFFFF)
        Name (SUS4, 0xFFFFFFFF)
        Name (SIDT, 0xFFFFFFFF)
        Name (SOSN, 0xAAAAAAAABBBBBBBB)
        Name (PLST, 0x0000000FFFFFFFFF)
        Name (EMUL, 0xFFFFFFFF)
        Name (SJTG, 0xFFFFFFFF)
        Name (DDRC, 0xFFFF)
        Name (RMTB, 0xAAAAAAAA)
        Name (RMTX, 0xBBBBBBBB)
        Name (RFMB, 0xCCCCCCCC)
        Name (RFMS, 0xDDDDDDDD)
        Name (RFAB, 0xEEEEEEEE)
        Name (RFAS, 0x77777777)
        Name (SOSI, 0xDEADBEEFFFFFFFFF)
        Name (PRP0, 0xFFFFFFFF)
        Name (PRP1, 0xFFFFFFFF)
        Name (PRP2, 0xFFFFFFFF)
        Name (PRP3, 0xFFFFFFFF)
        Name (PRP4, 0xFFFFFFFF)
        Name (PRP5, 0xFFFFFFFF)
        Name (PRP6, 0xFFFFFFFF)
        Name (PRP7, 0xFFFFFFFF)
        Name (FNTR, 0x7F05)
        Name (FNHB, Zero)
        Name (ESNL, 0x14)
        Name (DBFL, 0x1E)
        Device (SYSM)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x00100000)  // _UID: Unique ID
            Name (_LPI, Package (0x04)  // _LPI: Low Power Idle States
            {
                Zero, 
                0x01000000, 
                One, 
                Package (0x0A)
                {
                    0x251C, 
                    0x1770, 
                    One, 
                    0x20, 
                    Zero, 
                    Zero, 
                    0xC300, 
                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (SystemMemory, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    "platform.DRIPS"
                }
            })
            Device (CLUS)
            {
                Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                Name (_UID, 0x10)  // _UID: Unique ID
                Name (_LPI, Package (0x05)  // _LPI: Low Power Idle States
                {
                    Zero, 
                    0x01000000, 
                    0x02, 
                    Package (0x0A)
                    {
                        0x170C, 
                        0x0BB8, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x20, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D2"
                    }, 

                    Package (0x0A)
                    {
                        0x1770, 
                        0x0CE4, 
                        One, 
                        Zero, 
                        Zero, 
                        One, 
                        0x40, 
                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        ResourceTemplate ()
                        {
                            Register (SystemMemory, 
                                0x00,               // Bit Width
                                0x00,               // Bit Offset
                                0x0000000000000000, // Address
                                ,)
                        }, 

                        "L3Cluster.D4"
                    }
                })
                Device (CPU0)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, Zero)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver0.C4"
                        }
                    })
                }

                Device (CPU1)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver1.C4"
                        }
                    })
                }

                Device (CPU2)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver2.C4"
                        }
                    })
                }

                Device (CPU3)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x03)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F0A, 
                            0x035C, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x0F6E, 
                            0x038E, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoSilver3.C4"
                        }
                    })
                }

                Device (CPU4)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x04)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F96, 
                            0x03E8, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x118A, 
                            0x05DC, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold0.C4"
                        }
                    })
                }

                Device (CPU5)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x05)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F96, 
                            0x03E8, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x118A, 
                            0x05DC, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold1.C4"
                        }
                    })
                }

                Device (CPU6)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x06)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F96, 
                            0x03E8, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x118A, 
                            0x05DC, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoGold2.C4"
                        }
                    })
                }

                Device (CPU7)
                {
                    Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                    Name (_UID, 0x07)  // _UID: Unique ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Name (_LPI, Package (0x07)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        Zero, 
                        0x04, 
                        Package (0x0A)
                        {
                            Zero, 
                            Zero, 
                            One, 
                            Zero, 
                            Zero, 
                            Zero, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x00000000FFFFFFFF, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C1"
                        }, 

                        Package (0x0A)
                        {
                            0x0190, 
                            0x64, 
                            Zero, 
                            Zero, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000002, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C2"
                        }, 

                        Package (0x0A)
                        {
                            0x0F96, 
                            0x03E8, 
                            One, 
                            One, 
                            Zero, 
                            One, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000003, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C3"
                        }, 

                        Package (0x0A)
                        {
                            0x118A, 
                            0x05DC, 
                            One, 
                            One, 
                            Zero, 
                            0x02, 
                            ResourceTemplate ()
                            {
                                Register (FFixedHW, 
                                    0x20,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000040000004, // Address
                                    0x03,               // Access Size
                                    )
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            ResourceTemplate ()
                            {
                                Register (SystemMemory, 
                                    0x00,               // Bit Width
                                    0x00,               // Bit Offset
                                    0x0000000000000000, // Address
                                    ,)
                            }, 

                            "KryoPrime0.C4"
                        }
                    })
                }
            }
        }
		
		Device (I2C9)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x09)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_1_SE_5"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00880000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000195,
                    }
                })
                Return (RBUF) /* \_SB_.I2C9._CRS.RBUF */
            }
        }

        Device (I2CB)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x0B)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_1_SE_7"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00888000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000268,
                    }
                })
                Return (RBUF) /* \_SB_.I2CB._CRS.RBUF */
            }
        }
		
		Device (I2CD)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
			Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x0D)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_1_SE_9"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00890000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000026A,
                    }
                })
                Return (RBUF) /* \_SB_.I2CD._CRS.RBUF */
            }
        }
		
		Device (I2C6)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x06)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_SE_6"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00998000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027F,
                    }
                })
                Return (RBUF) /* \_SB_.I2C6._CRS.RBUF */
            }
        }
		
		Device (I2C5)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_SE_5"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00994000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027E,
                    }
                })
                Return (RBUF) /* \_SB_.I2C5._CRS.RBUF */
            }
        }

        Device (I215)
        {
            Name (_HID, "QCOM0C10")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x15)  // _UID: Unique ID
            Name (_STR, Unicode ("QUP_1_SE_4"))  // _STR: Description String
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A98000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000018B,
                    }
                })
                Return (RBUF) /* \_SB_.I215._CRS.RBUF */
            }
        }
		
        Device (ABD)
        {
            Name (_HID, "QCOM0427")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            OperationRegion (ROP1, GenericSerialBus, Zero, 0x0100)
            Name (AVBL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x09))
                {
                    AVBL = Arg1
                }
            }
        }

        Device (GIO0)
        {
            Name (_HID, "QCOM0C0C")  // _HID: Hardware ID
            Name (_CID, "QCOMFFEB")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (PSUB, _SUB)
            OperationRegion (GPOR, GeneralPurposeIo, Zero, One)
            Field (GPOR, ByteAcc, NoLock, Preserve)
            {
                Connection (
                    GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0002
                        }
                ), 
                LIDR,   1
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0F100000,         // Address Base
                        0x00F00000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000F0,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x00000256,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x000002F8,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x00000253,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000293,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x0000025A,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x0000025C,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x00000285,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x00000282,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
                    {
                        0x00000289,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000241,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000240,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000035E,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000242,
                    }
                })
                Return (RBUF) /* \_SB_.GIO0._CRS.RBUF */
            }

            Name (GABL, Zero)
            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If ((Arg0 == 0x08))
                {
                    GABL = Arg1
                }
            }

            Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
            {
                Name (RBF0, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x0000,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0340
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x01F4,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x007E
                        }
                })
                Return (RBF0) /* \_SB_.GIO0._AEI.RBF0 */
            }

            Method (_EVT, 1, NotSerialized)  // _EVT: Event
            {
                While (One)
                {
                    Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    _T_0 = Arg0
                    Break
                }
            }

            Name (GPIV, Zero)
            Name (GPIC, 0xEE)
            Name (GPIW, 0x1000)
            Name (GPIB, Package (0x26)
            {
                Zero, 
                0x04, 
                0x08, 
                0x0C, 
                0x03, 
                Zero, 
                0x3C, 
                0x02, 
                0x01C0, 
                0x06, 
                0x0200, 
                0x09, 
                0x0400, 
                0x0A, 
                0x0800, 
                0x0B, 
                0x1000, 
                0x0C, 
                0x2000, 
                0x0D, 
                One, 
                Zero, 
                0x02, 
                One, 
                One, 
                Zero, 
                0x02, 
                One, 
                0x0C, 
                0x02, 
                0x10, 
                0x04, 
                0xE0, 
                0x05, 
                0x0100, 
                0x08, 
                One, 
                Zero
            })
            Name (GICB, 0x17000000)
            Name (GICS, 0x00390000)
            Name (GIC0, 0x0100)
            Name (GIC1, 0x0180)
            Name (GIC2, 0x0280)
            Name (GIC3, 0x0380)
            Name (PDCE, 0x0B220010)
            Name (PDCC, 0x0B220110)
            Name (PDCM, 0x4330)
            Name (PDCV, One)
            Name (CIPR, Package (0x5D)
            {
                Package (0x03)
                {
                    0x71, 
                    0x26, 
                    0x028F
                }, 

                Package (0x03)
                {
                    0x70, 
                    0xA6, 
                    0x028E
                }, 

                Package (0x03)
                {
                    0x6F, 
                    0xDD, 
                    0x028D
                }, 

                Package (0x03)
                {
                    0x6E, 
                    0xDC, 
                    0x028C
                }, 

                Package (0x03)
                {
                    0x6D, 
                    0xD9, 
                    0x028B
                }, 

                Package (0x03)
                {
                    0x6C, 
                    0xC4, 
                    0x028A
                }, 

                Package (0x03)
                {
                    0x6B, 
                    0x9D, 
                    0x0289
                }, 

                Package (0x03)
                {
                    0x6A, 
                    0x41, 
                    0x0288
                }, 

                Package (0x03)
                {
                    0x69, 
                    0x9C, 
                    0x0287
                }, 

                Package (0x03)
                {
                    0x68, 
                    0x99, 
                    0x0286
                }, 

                Package (0x03)
                {
                    0x67, 
                    0x97, 
                    0x0285
                }, 

                Package (0x03)
                {
                    0x66, 
                    0x96, 
                    0x0284
                }, 

                Package (0x03)
                {
                    0x65, 
                    0xB5, 
                    0x0283
                }, 

                Package (0x03)
                {
                    0x64, 
                    0x9A, 
                    0x0282
                }, 

                Package (0x03)
                {
                    0x63, 
                    0xAC, 
                    0x0281
                }, 

                Package (0x03)
                {
                    0x62, 
                    0xA3, 
                    0x025D
                }, 

                Package (0x03)
                {
                    0x61, 
                    0x94, 
                    0x025C
                }, 

                Package (0x03)
                {
                    0x60, 
                    0x93, 
                    0x025B
                }, 

                Package (0x03)
                {
                    0x5F, 
                    0x91, 
                    0x025A
                }, 

                Package (0x03)
                {
                    0x5E, 
                    0x90, 
                    0x0259
                }, 

                Package (0x03)
                {
                    0x5D, 
                    0x8D, 
                    0x0258
                }, 

                Package (0x03)
                {
                    0x5C, 
                    0x1E, 
                    0x0257
                }, 

                Package (0x03)
                {
                    0x5B, 
                    0x47, 
                    0x0256
                }, 

                Package (0x03)
                {
                    0x5A, 
                    0x40, 
                    0x0255
                }, 

                Package (0x03)
                {
                    0x59, 
                    0x35, 
                    0x0254
                }, 

                Package (0x03)
                {
                    0x58, 
                    0x43, 
                    0x0253
                }, 

                Package (0x03)
                {
                    0x57, 
                    0x3B, 
                    0x0252
                }, 

                Package (0x03)
                {
                    0x56, 
                    0x0D, 
                    0x0251
                }, 

                Package (0x03)
                {
                    0x55, 
                    0x0B, 
                    0x0250
                }, 

                Package (0x03)
                {
                    0x54, 
                    0x71, 
                    0x024F
                }, 

                Package (0x03)
                {
                    0x53, 
                    0x86, 
                    0x024E
                }, 

                Package (0x03)
                {
                    0x52, 
                    0x83, 
                    0x024D
                }, 

                Package (0x03)
                {
                    0x51, 
                    0x37, 
                    0x024C
                }, 

                Package (0x03)
                {
                    0x50, 
                    0x27, 
                    0x024B
                }, 

                Package (0x03)
                {
                    0x4F, 
                    0x33, 
                    0x024A
                }, 

                Package (0x03)
                {
                    0x4E, 
                    0x1D, 
                    0x0249
                }, 

                Package (0x03)
                {
                    0x4D, 
                    0x1C, 
                    0x0248
                }, 

                Package (0x03)
                {
                    0x4C, 
                    0x81, 
                    0x0247
                }, 

                Package (0x03)
                {
                    0x4B, 
                    0x7D, 
                    0x0246
                }, 

                Package (0x03)
                {
                    0x4A, 
                    0x7B, 
                    0x0245
                }, 

                Package (0x03)
                {
                    0x49, 
                    0x79, 
                    0x0244
                }, 

                Package (0x03)
                {
                    0x48, 
                    Zero, 
                    0x0243
                }, 

                Package (0x03)
                {
                    0x47, 
                    0x03, 
                    0x0242
                }, 

                Package (0x03)
                {
                    0x46, 
                    0x02, 
                    0x0241
                }, 

                Package (0x03)
                {
                    0x45, 
                    0x13, 
                    0x0240
                }, 

                Package (0x03)
                {
                    0x44, 
                    0x0F, 
                    0x023F
                }, 

                Package (0x03)
                {
                    0x43, 
                    0x07, 
                    0x023E
                }, 

                Package (0x03)
                {
                    0x91, 
                    0x20, 
                    0x0352
                }, 

                Package (0x03)
                {
                    0x90, 
                    0x1B, 
                    0x0351
                }, 

                Package (0x03)
                {
                    0x8F, 
                    0x17, 
                    0x0350
                }, 

                Package (0x03)
                {
                    0x8E, 
                    0x42, 
                    0x02F8
                }, 

                Package (0x03)
                {
                    0x8D, 
                    0x5F, 
                    0x02F7
                }, 

                Package (0x03)
                {
                    0x8C, 
                    0x5E, 
                    0x02F6
                }, 

                Package (0x03)
                {
                    0x8B, 
                    0x5D, 
                    0x02F5
                }, 

                Package (0x03)
                {
                    0x8A, 
                    0x5C, 
                    0x02F4
                }, 

                Package (0x03)
                {
                    0x89, 
                    0x54, 
                    0x02F3
                }, 

                Package (0x03)
                {
                    0x88, 
                    0xE6, 
                    0x02F2
                }, 

                Package (0x03)
                {
                    0x87, 
                    0xE4, 
                    0x02F1
                }, 

                Package (0x03)
                {
                    0x86, 
                    0xD0, 
                    0x02F0
                }, 

                Package (0x03)
                {
                    0x85, 
                    0xCB, 
                    0x02EF
                }, 

                Package (0x03)
                {
                    0x84, 
                    0xE1, 
                    0x02EE
                }, 

                Package (0x03)
                {
                    0x83, 
                    0xE0, 
                    0x02ED
                }, 

                Package (0x03)
                {
                    0x82, 
                    0x22, 
                    0x02A0
                }, 

                Package (0x03)
                {
                    0x81, 
                    0x1A, 
                    0x029F
                }, 

                Package (0x03)
                {
                    0x80, 
                    0x51, 
                    0x029E
                }, 

                Package (0x03)
                {
                    0x7E, 
                    0x18, 
                    0x029C
                }, 

                Package (0x03)
                {
                    0x7D, 
                    0x50, 
                    0x029B
                }, 

                Package (0x03)
                {
                    0x7C, 
                    0xDE, 
                    0x029A
                }, 

                Package (0x03)
                {
                    0x7B, 
                    0x06, 
                    0x0299
                }, 

                Package (0x03)
                {
                    0x7A, 
                    0x12, 
                    0x0298
                }, 

                Package (0x03)
                {
                    0x79, 
                    0xD6, 
                    0x0297
                }, 

                Package (0x03)
                {
                    0x78, 
                    0xD4, 
                    0x0296
                }, 

                Package (0x03)
                {
                    0x77, 
                    0xDB, 
                    0x0295
                }, 

                Package (0x03)
                {
                    0x76, 
                    0xD7, 
                    0x0294
                }, 

                Package (0x03)
                {
                    0x75, 
                    0xC1, 
                    0x0293
                }, 

                Package (0x03)
                {
                    0x74, 
                    0xB8, 
                    0x0292
                }, 

                Package (0x03)
                {
                    0x73, 
                    0x21, 
                    0x0291
                }, 

                Package (0x03)
                {
                    0x72, 
                    0xAF, 
                    0x0290
                }, 

                Package (0x03)
                {
                    0x9D, 
                    0x5B, 
                    0x035E
                }, 

                Package (0x03)
                {
                    0x9C, 
                    0x57, 
                    0x035D
                }, 

                Package (0x03)
                {
                    0x9B, 
                    0x55, 
                    0x035C
                }, 

                Package (0x03)
                {
                    0x9A, 
                    0x53, 
                    0x035B
                }, 

                Package (0x03)
                {
                    0x99, 
                    0x4F, 
                    0x035A
                }, 

                Package (0x03)
                {
                    0x98, 
                    0x4B, 
                    0x0359
                }, 

                Package (0x03)
                {
                    0x97, 
                    0x44, 
                    0x0358
                }, 

                Package (0x03)
                {
                    0x96, 
                    0xD5, 
                    0x0357
                }, 

                Package (0x03)
                {
                    0x95, 
                    0x2F, 
                    0x0356
                }, 

                Package (0x03)
                {
                    0x94, 
                    0x2B, 
                    0x0355
                }, 

                Package (0x03)
                {
                    0x93, 
                    0x24, 
                    0x0354
                }, 

                Package (0x03)
                {
                    0x92, 
                    0x23, 
                    0x0353
                }, 

                Package (0x03)
                {
                    0xA2, 
                    0xE8, 
                    0x0363
                }, 

                Package (0x03)
                {
                    0x9F, 
                    0x1F, 
                    0x0360
                }, 

                Package (0x03)
                {
                    0x9E, 
                    0x15, 
                    0x035F
                }
            })
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (One)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.GIO0._DSM._T_0 */
                    If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = Arg2
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Package (0x01)
                                {
                                    0x01C0
                                })
                            }
                            Else
                            {
                                BreakPoint
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == ToUUID ("98b9b2a4-1663-4a5f-82f2-c6c99a394726") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_2, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_2 = ToInteger (Arg2)
                            If ((_T_2 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_3, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_3 = ToInteger (Arg1)
                                    If ((_T_3 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                    Break
                                }
                            }
                            ElseIf ((_T_2 == One))
                            {
                                Debug = "GPIO Version"
                                Return (GPIV) /* \_SB_.GIO0.GPIV */
                            }
                            ElseIf ((_T_2 == 0x02))
                            {
                                Debug = "GPIO Total number of pins"
                                Return (GPIC) /* \_SB_.GIO0.GPIC */
                            }
                            ElseIf ((_T_2 == 0x03))
                            {
                                Debug = "GPIO pin to pin width"
                                Return (GPIW) /* \_SB_.GIO0.GPIW */
                            }
                            ElseIf ((_T_2 == 0x04))
                            {
                                Debug = "GPIO Register Layout buffer"
                                Return (GPIB) /* \_SB_.GIO0.GPIB */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }

                            Break
                        }
                    }
                    ElseIf ((_T_0 == ToUUID ("921b0fd4-567c-43a0-bb14-2648f7b2a18c") /* Unknown UUID */))
                    {
                        While (One)
                        {
                            Name (_T_4, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_4 = ToInteger (Arg2)
                            If ((_T_4 == Zero))
                            {
                                While (One)
                                {
                                    Name (_T_5, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                    _T_5 = ToInteger (Arg1)
                                    If ((_T_5 == Zero))
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x0F                                             // .
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                             0x00                                             // .
                                        })
                                    }

                                    Break
                                }
                            }
                            ElseIf ((_T_4 == One))
                            {
                                Debug = "PDC Version"
                                Return (PDCV) /* \_SB_.GIO0.PDCV */
                            }
                            ElseIf ((_T_4 == 0x02))
                            {
                                Debug = "CIPR"
                                Return (CIPR) /* \_SB_.GIO0.CIPR */
                            }
                            ElseIf ((_T_4 == 0x03))
                            {
                                Debug = "PDC Enable Register Address"
                                Return (PDCE) /* \_SB_.GIO0.PDCE */
                            }
                            ElseIf ((_T_4 == 0x04))
                            {
                                Debug = "PDC Config Register Address"
                                Return (PDCC) /* \_SB_.GIO0.PDCC */
                            }
                            ElseIf ((_T_4 == 0x05))
                            {
                                Debug = "PDC Config Register Mask"
                                Return (PDCM) /* \_SB_.GIO0.PDCM */
                            }
                            ElseIf ((_T_4 == 0x06))
                            {
                                Debug = "GIC Physical Address"
                                Return (GICB) /* \_SB_.GIO0.GICB */
                            }
                            ElseIf ((_T_4 == 0x07))
                            {
                                Debug = "GIC Size"
                                Return (GICS) /* \_SB_.GIO0.GICS */
                            }
                            ElseIf ((_T_4 == 0x08))
                            {
                                Debug = "GIC IS ENABLE Offset"
                                Return (GIC0) /* \_SB_.GIO0.GIC0 */
                            }
                            ElseIf ((_T_4 == 0x09))
                            {
                                Debug = "GIC IC ENABLE Offset"
                                Return (GIC1) /* \_SB_.GIO0.GIC1 */
                            }
                            ElseIf ((_T_4 == 0x0A))
                            {
                                Debug = "GIC IC PEND Offset"
                                Return (GIC2) /* \_SB_.GIO0.GIC2 */
                            }
                            ElseIf ((_T_4 == 0x0B))
                            {
                                Debug = "GIC IC STATUS Offset"
                                Return (GIC3) /* \_SB_.GIO0.GIC3 */
                            }
                            Else
                            {
                                Return (Buffer (One)
                                {
                                     0x00                                             // .
                                })
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Break
                }
            }
        }
		/*
        Device (SPIC)
        {
            Name (_HID, "QCOM0C0E")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x0B)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0088C000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000269,
                    }
                })
                Return (RBUF)
            }
        }

        Device (SPI5)
        {
            Name (_HID, "QCOM0C0E")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A90000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000165,
                    }
                })
                Return (RBUF)
            }
        }*/
		
		Device (SPI6)
        {
            Name (_HID, "QCOM0C0E")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x0B)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00990000,         // Address Base
                        0x00004000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000027D,
                    }
                })
                Return (RBUF) /* \_SB_.SPIC._CRS.RBUF */
            }
        }

        Device (SPMI)
        {
            Name (_HID, "QCOM0C0B")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_CID, "PNP0CA2")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x0C400000,         // Address Base
                        0x00500000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
            }

            Method (CONF, 0, NotSerialized)
            {
                Name (XBUF, Buffer (0x34)
                {
                    /* 0000 */  0x00, 0x01, 0x01, 0x02, 0x7F, 0x00, 0x02, 0x80,  // ........
                    /* 0008 */  0x0B, 0x08, 0x08, 0x0A, 0x02, 0x7F, 0x1C, 0x01,  // ........
                    /* 0010 */  0x00, 0x01, 0x0C, 0x40, 0x00, 0x00, 0x00, 0x50,  // ...@...P
                    /* 0018 */  0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x7F, 0x00,  // ........
                    /* 0020 */  0x00, 0x80, 0x03, 0x00, 0x00, 0x0A, 0x00, 0x7F,  // ........
                    /* 0028 */  0x04, 0x01, 0x00, 0x02, 0x0C, 0x40, 0x00, 0x00,  // .....@..
                    /* 0030 */  0x00, 0x50, 0x00, 0x00                           // .P..
                })
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }

        Device (PMIC)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                SPMI
            })
            Name (_HID, "QCOM0C2B")  // _HID: Hardware ID
            Name (_CID, "PNP0CA3")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x0C)
                {
                    0x0B, 
                    Package (0x02)
                    {
                        Zero, 
                        0x10
                    }, 

                    Package (0x02)
                    {
                        One, 
                        0x10
                    }
                })
                Return (CFG0) /* \_SB_.PMIC.PMCF.CFG0 */
            }
        }

        Device (PM01)
        {
            Alias (PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_HID, "QCOM0C2D")  // _HID: Hardware ID
            Name (_CID, "QCOMFFE3")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PMIC
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x00000201,
                    }
                })
                Return (RBUF) /* \_SB_.PM01._CRS.RBUF */
            }

            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                While (One)
                {
                    Name (_T_0, Buffer (One)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                    {
                         0x00                                             // .
                    })
                    CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.PM01._DSM._T_0 */
                    If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
                    {
                        While (One)
                        {
                            Name (_T_1, Zero)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                            _T_1 = ToInteger (Arg2)
                            If ((_T_1 == Zero))
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            ElseIf ((_T_1 == One))
                            {
                                Return (Package (0x02)
                                {
                                    Zero, 
                                    One
                                })
                            }
                            Else
                            {
                            }

                            Break
                        }
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                    Break
                }
            }
        }

        Device (PMAP)
        {
            Name (_HID, "QCOM0C2C")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                PMIC, 
                ABD, 
                SCM0
            })
            Method (GEPT, 0, NotSerialized)
            {
                Name (BUFF, Buffer (0x04){})
                CreateByteField (BUFF, Zero, STAT)
                CreateWordField (BUFF, 0x02, DATA)
                DATA = 0x02
                Return (DATA) /* \_SB_.PMAP.GEPT.DATA */
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, Buffer (0x02)
                {
                     0x79, 0x00                                       // y.
                })
                Return (RBUF) /* \_SB_.PMAP._CRS.RBUF */
            }
        }

        Device (PRTC)
        {
            Name (_HID, "ACPI000E" /* Time and Alarm Device */)  // _HID: Hardware ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PMAP
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_GCP, 0, NotSerialized)  // _GCP: Get Capabilities
            {
                Return (0x04)
            }

            Field (^ABD.ROP1, BufferAcc, NoLock, Preserve)
            {
                Connection (
                    I2cSerialBusV2 (0x0002, ControllerInitiated, 0x00000000,
                        AddressingMode7Bit, "\\_SB.ABD",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                ), 
                AccessAs (BufferAcc, AttribRawBytes (0x18)), 
                FLD0,   192
            }

            Method (_GRT, 0, NotSerialized)  // _GRT: Get Real Time
            {
                Name (BUFF, Buffer (0x1A){})
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                BUFF = FLD0 /* \_SB_.PRTC.FLD0 */
                Return (TME1) /* \_SB_.PRTC._GRT.TME1 */
            }

            Method (_SRT, 1, NotSerialized)  // _SRT: Set Real Time
            {
                Name (BUFF, Buffer (0x32){})
                CreateByteField (BUFF, Zero, STAT)
                CreateField (BUFF, 0x10, 0x80, TME1)
                CreateField (BUFF, 0x90, 0x20, ACT1)
                CreateField (BUFF, 0xB0, 0x20, ACW1)
                ACT1 = Zero
                TME1 = Arg0
                ACW1 = Zero
                BUFF = FLD0 = BUFF /* \_SB_.PRTC._SRT.BUFF */
                If ((STAT != Zero))
                {
                    Return (One)
                }

                Return (Zero)
            }
        }

        Device (PEXT)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                SPMI, 
                PMIC
            })
            Name (_HID, "QCOM0CD3")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
        }

        Device (PML0)
        {
            Name (_HID, "QCOM0CD3")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    I2cSerialBusV2 (0x0008, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.IC12",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x0009, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.IC12",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x000C, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.IC12",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    I2cSerialBusV2 (0x000D, ControllerInitiated, 0x000186A0,
                        AddressingMode7Bit, "\\_SB.IC12",
                        0x00, ResourceConsumer, , Exclusive,
                        )
                    GpioIo (Exclusive, PullNone, 0x0000, 0x00C8, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00A1
                        }
                    GpioIo (Exclusive, PullNone, 0x0000, 0x00C8, IoRestrictionNone,
                        "\\_SB.GIO0", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x002A
                        }
                })
                Return (RBUF) /* \_SB_.PML0._CRS.RBUF */
            }
        }

        Device (BTNS)
        {
            Name (_HID, "ACPI0011" /* Generic Buttons Device */)  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                PM01
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    GpioInt (Edge, ActiveHigh, ExclusiveAndWake, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0007
                        }
                    GpioInt (Edge, ActiveLow, Exclusive, PullUp, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x00D5
                        }
                    GpioInt (Edge, ActiveHigh, Exclusive, PullDown, 0x0000,
                        "\\_SB.PM01", 0x00, ResourceConsumer, ,
                        )
                        {   // Pin list
                            0x0006
                        }
                })
                Return (RBUF) /* \_SB_.BTNS._CRS.RBUF */
            }

            Name (_DSD, Package (0x02)  // _DSD: Device-Specific Data
            {
                ToUUID ("fa6bd625-9ce8-470d-a2c7-b3ca36c4282e") /* Generic Buttons Device */, 
                Package (0x04)
                {
                    Package (0x05)
                    {
                        Zero, 
                        One, 
                        Zero, 
                        One, 
                        0x0D
                    }, 

                    Package (0x05)
                    {
                        One, 
                        Zero, 
                        One, 
                        One, 
                        0x81
                    }, 

                    Package (0x05)
                    {
                        One, 
                        One, 
                        One, 
                        0x0C, 
                        0xEA
                    }, 

                    Package (0x05)
                    {
                        One, 
                        0x02, 
                        One, 
                        0x0C, 
                        0xE9
                    }
                }
            })
        }

        Device (BAM1)
        {
            Name (_HID, "QCOM0C0A")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01DC4000,         // Address Base
                        0x00028000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000130,
                    }
                })
                Return (RBUF) /* \_SB_.BAM1._CRS.RBUF */
            }
        }

        Device (BAM5)
        {
            Name (_HID, "QCOM0C0A")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x05)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x06C04000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C4,
                    }
                })
                Return (RBUF) /* \_SB_.BAM5._CRS.RBUF */
            }
        }

        Device (SLM1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x06C40000,         // Address Base
                        0x0002C000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x000000C3,
                    }
                })
                Return (RBUF) /* \_SB_.SLM1._CRS.RBUF */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (SOCP)
        {
            Name (_HID, "QCOM06DD")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Alias (^STOR, STOR)
        }

        Device (SCM0)
        {
            Name (_HID, "QCOM04DD")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (TLOG)
        {
            Name (_HID, "QCOM0CE4")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (RPEN)
        {
            Name (_HID, "QCOM06E1")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PILC)
        {
            Name (_HID, "QCOM06E0")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (CHRV, Zero)
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                If ((DPBM & One))
                {
                    CHRV |= One
                }

                If ((DPBM & 0x04))
                {
                    CHRV |= 0x02
                }

                If ((DPBM & 0x80))
                {
                    CHRV |= 0x04
                }

                If ((SDFE == 0x88))
                {
                    CHRV |= 0x08
                }

                Return (CHRV) /* \_SB_.PILC.CHRV */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (CDI)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                PILC, 
                RPEN
            })
            Name (_HID, "QCOM0C2F")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (IPCC)
        {
            Name (_HID, "QCOM06C2")  // _HID: Hardware ID
            Name (_CID, "QCOMFFE2")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Alias (PSUB, _SUB)
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000105,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000106,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000107,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000384,
                    }
                })
                Return (RBUF) /* \_SB_.IPCC._CRS.RBUF */
            }
        }

        Device (GLNK)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                IPCC, 
                RPEN
            })
            Name (_HID, "QCOM0C84")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
        }

        Device (IPC0)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                GLNK
            })
            Name (_HID, "QCOM0C0D")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
        }

        Device (TFTP)
        {
            Name (_HID, "QCOM06DC")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                IPC0
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PDSR)
        {
            Name (_HID, "QCOM06DF")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                GLNK, 
                IPC0
            })
            Name (CHRV, Zero)
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                If ((DPBM & 0x80))
                {
                    CHRV |= 0x04
                }

                If ((SDFE == 0x88))
                {
                    CHRV |= 0x08
                }

                Return (CHRV) /* \_SB_.PDSR.CHRV */
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (SSDD)
        {
            Name (_HID, "QCOM0C20")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_DEP, Package (0x03)  // _DEP: Dependencies
            {
                GLNK, 
                PDSR, 
                TFTP
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (QDIG)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                GLNK
            })
            Name (_HID, "QCOM0C13")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
        }

        Device (QGP0)
        {
            Name (_HID, "QCOM0C88")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00B04000,         // Address Base
                        0x00058000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000026C,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000026D,
                    }
                })
                Return (RBUF) /* \_SB_.QGP0._CRS.RBUF */
            }
        }

        Device (QGP1)
        {
            Name (_HID, "QCOM0C88")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00A04000,         // Address Base
                        0x00058000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000328,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000329,
                    }
                })
                Return (RBUF) /* \_SB_.QGP1._CRS.RBUF */
            }
        }

        Device (QGP2)
        {
            Name (_HID, "QCOM0C88")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x00804000,         // Address Base
                        0x00058000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000334,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000335,
                    }
                })
                Return (RBUF) /* \_SB_.QGP2._CRS.RBUF */
            }
        }

        Device (SSVC)
        {
            Name (_DEP, Package (0x02)  // _DEP: Dependencies
            {
                IPC0, 
                QDIG
            })
            Name (_HID, "QCOM06DB")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_CID, "ACPIQCOM06DB")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (QDCI)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                GLNK
            })
            Name (_HID, "QCOM0C12")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (Zero)
            }
        }

        Device (UFS0)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_HID, "QCOM24A5")  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01D84000,         // Address Base
                        0x00015000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000129,
                    }
                })
                Return (RBUF) /* \_SB_.UFS0._CRS.RBUF */
            }

            Device (DEV0)
            {
                Method (_ADR, 0, NotSerialized)  // _ADR: Address
                {
                    Return (0x08)
                }

                Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
                {
                    Return (Zero)
                }
            }
        }

        Name (QUFN, Zero)
        Name (DPP0, Buffer (One)
        {
             0x00                                             // .
        })
        Name (DPP1, Buffer (One)
        {
             0x00                                             // .
        })
        Name (MPP0, Buffer (One)
        {
             0x00                                             // .
        })
        Name (MPP1, Buffer (One)
        {
             0x00                                             // .
        })
        Name (HPDB, Zero)
        Name (HPDS, Buffer (One)
        {
             0x00                                             // .
        })
        Name (PINA, Zero)
        Name (DPPN, 0x0D)
        Name (CCST, Buffer (One)
        {
             0x02                                             // .
        })
        Name (PORT, Buffer (One)
        {
             0x02                                             // .
        })
        Name (HIRQ, Buffer (One)
        {
             0x00                                             // .
        })
        Name (HSFL, Buffer (One)
        {
             0x00                                             // .
        })
        Name (USBC, Buffer (One)
        {
             0x0B                                             // .
        })
        Name (MUXC, Buffer (One)
        {
             0x00                                             // .
        })
        Device (URS0)
        {
            Name (_HID, "QCOM0497")  // _HID: Hardware ID
            Name (_CID, "PNP0CA1")  // _CID: Compatible ID
            Alias (PSUB, _SUB)
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x0A600000,         // Address Base
                    0x000FFFFF,         // Address Length
                    )
            })
            Device (USB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x0,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x0,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A5,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000A3,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000211,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000020F,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000020E,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (DPM0, 1, NotSerialized)
                {
                    DPP0 = Arg0
                }

                Method (CCVL, 0, NotSerialized)
                {
                    Return (CCST) /* \_SB_.CCST */
                }

                Method (HSEN, 0, NotSerialized)
                {
                    Return (HSFL) /* \_SB_.HSFL */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */){                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x1D                                             // .
                                            })
                                            Break
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                Case (0x02)
                                {
                                    Return (Zero)
                                    Break
                                }
                                Case (0x03)
                                {
                                    Return (Zero)
                                    Break
                                }
                                Case (0x04)
                                {
                                    Return (0x02)
                                    Break
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                            }
                        }
                        Default
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                            Break
                        }

                    }
                }

                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0) /* \_SB_.URS0.USB0.PHYC.CFG0 */
                }
            }

            Device (UFN0)
            {
                Name (_ADR, One)  // _ADR: Address
                Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
                Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
                {
                    ToPLD (
                        PLD_Revision           = 0x2,
                        PLD_IgnoreColor        = 0x1,
                        PLD_Red                = 0x0,
                        PLD_Green              = 0x0,
                        PLD_Blue               = 0x0,
                        PLD_Width              = 0x0,
                        PLD_Height             = 0x0,
                        PLD_UserVisible        = 0x1,
                        PLD_Dock               = 0x0,
                        PLD_Lid                = 0x0,
                        PLD_Panel              = "BACK",
                        PLD_VerticalPosition   = "CENTER",
                        PLD_HorizontalPosition = "LEFT",
                        PLD_Shape              = "VERTICALRECTANGLE",
                        PLD_GroupOrientation   = 0x0,
                        PLD_GroupToken         = 0x0,
                        PLD_GroupPosition      = 0x0,
                        PLD_Bay                = 0x0,
                        PLD_Ejectable          = 0x0,
                        PLD_EjectRequired      = 0x0,
                        PLD_CabinetNumber      = 0x0,
                        PLD_CardCageNumber     = 0x0,
                        PLD_Reference          = 0x0,
                        PLD_Rotation           = 0x0,
                        PLD_Order              = 0x0,
                        PLD_VerticalOffset     = 0xFFFF,
                        PLD_HorizontalOffset   = 0xFFFF)

                })
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x09, 
                    Zero, 
                    Zero
                })
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A5,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000A3,
                    }
                })
                Method (CCVL, 0, NotSerialized)
                {
                    Return (CCST) /* \_SB_.CCST */
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2") /* Unknown UUID */){                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                Case (One)
                                {
                                    Return (0x20)
                                    Break
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                            }
                        }
                        Case (ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751") /* Unknown UUID */){                            Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                            Break
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                            Break
                                        }

                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }
                                Case (One)
                                {
                                    Return (0x39)
                                    Break
                                }
                                Default
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                    Break
                                }

                            }
                        }
                        Default
                        {
                            Return (Buffer (One)
                            {
                                 0x00                                             // .
                            })
                            Break
                        }

                    }
                }

                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0) /* \_SB_.URS0.UFN0.PHYC.CFG0 */
                }
            }
        }
    }
}

