/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT_6115.aml, Thu Jan 16 22:14:51 2025
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000017E2 (6114)
 *     Revision         0x02
 *     Checksum         0x1A
 *     OEM ID           "QCOMM "
 *     OEM Table ID     "SM6115 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20241212 (539234834)
 */
DefinitionBlock ("", "DSDT", 2, "QCOMM ", "SM6115 ", 0x00000003)
{
    Scope (_SB)
    {
        Name (PSUB, "MTP06115")
        Name (SOID, 0xFFFFFFFF)
        Name (SIDS, "SM6115")
        Name (SIDV, 0xFFFFFFFF)
        Name (SVMJ, 0xFFFF)
        Name (SVMI, 0xFFFF)
        Name (SDFE, 0xFFFF)
        Name (SFES, "899800000000000")
        Name (SIDM, 0x0000000FFFFFFFFF)
        Name (SOSN, 0xAAAAAAAABBBBBBBB)
        Name (PLST, 0xFFFFFFFF)
        Name (RMTB, 0xAAAAAAAA)
        Name (RMTX, 0xBBBBBBBB)
        Name (RFMB, 0xCCCCCCCC)
        Name (RFMS, 0xDDDDDDDD)
        Name (RFAB, 0xEEEEEEEE)
        Name (RFAS, 0x77777777)
        Name (TPMA, 0x11111111)
        Name (TDTV, 0x6654504D)
        Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        Device (UFS0)
        {
            Name (_HID, "QCOM24A5")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_CID, "ACPIQCOM24A5")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x04804000,         // Address Base
                        0x00014000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x00000184,
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

        Device (SDC1)
        {
            Name (_HID, "QCOM2466")  // _HID: Hardware ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x04784000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                    {
                        0x0000017E,
                    }
                })
                Return (RBUF) /* \_SB_.SDC1._CRS.RBUF */
            }

            Device (EMMC)
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

            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }

        Device (PMIC)
        {
            Name (_DEP, Package (0x01)  // _DEP: Dependencies
            {
                SPMI
            })
            Name (_HID, "PMIC6115")  // _HID: Hardware ID
            Name (_CID, "PNP0CA3")  // _CID: Compatible ID
            Method (PMCF, 0, NotSerialized)
            {
                Name (CFG0, Package (0x02)
                {
                    One, 
                    Package (0x02)
                    {
                        Zero, 
                        One
                    }
                })
                Return (CFG0) /* \_SB_.PMIC.PMCF.CFG0 */
            }
        }

        Device (PM01)
        {
            Name (_HID, "PM016115")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
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
                        0x000000D7,
                    }
                })
                Return (RBUF) /* \_SB_.PM01._CRS.RBUF */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Switch (ToBuffer (Arg0))
                {
                    Case (ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */) {                        Switch (ToInteger (Arg2))
                        {
                            Case (Zero)
                            {
                                Return (Buffer (One)
                                {
                                     0x03                                             // .
                                })
                            }
                            Case (One)
                            {
                                Return (Package (0x02)
                                {
                                    Zero, 
                                    One
                                })
                            }
                            Default
                            {
                            }

                        }
                    }
                    Default
                    {
                        Return (Buffer (One)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
        }

        Device (SPMI)
        {
            Name (_HID, "SPMI6115")  // _HID: Hardware ID
            Alias (PSUB, _SUB)
            Name (_CID, "PNP0CA2")  // _CID: Compatible ID
            Name (_UID, One)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (RBUF, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0x01C00000,         // Address Base
                        0x02800000,         // Address Length
                        )
                })
                Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
            }

            Method (CONF, 0, NotSerialized)
            {
                Name (XBUF, Buffer (0x1A)
                {
                    /* 0000 */  0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x02, 0x00,  // ........
                    /* 0008 */  0x0A, 0x07, 0x04, 0x07, 0x01, 0xFF, 0x10, 0x01,  // ........
                    /* 0010 */  0x00, 0x01, 0x01, 0xC0, 0x00, 0x00, 0x02, 0x80,  // ........
                    /* 0018 */  0x00, 0x00                                       // ..
                })
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }

        Device (SYSM)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Device (APC0)
            {
                Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Name (_LPI, Package (0x06)  // _LPI: Low Power Idle States
                {
                    Zero, 
                    0x02000000, 
                    0x03, 
                    Package (0x0A)
                    {
                        0x0BB8, 
                        0x044C, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x0400, 
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

                        "CCI.E3"
                    }, 

                    Package (0x0A)
                    {
                        0x0DAC, 
                        0x047E, 
                        One, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0x0500, 
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

                        "CCI.E3+RPM"
                    }, 

                    Package (0x0A)
                    {
                        0x80E8, 
                        0x01F4, 
                        One, 
                        0x20, 
                        Zero, 
                        Zero, 
                        0x0300, 
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

                        "platform.xo"
                    }
                })
                Device (CLU0)
                {
                    Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_LPI, Package (0x06)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        0x01000000, 
                        0x03, 
                        Package (0x0A)
                        {
                            0x012C, 
                            0x82, 
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

                            "L2_Silver.D2d"
                        }, 

                        Package (0x0A)
                        {
                            0x015E, 
                            0x96, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x30, 
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

                            "L2_Silver.D2e"
                        }, 

                        Package (0x0A)
                        {
                            0x1900, 
                            0x0384, 
                            One, 
                            Zero, 
                            Zero, 
                            0x03, 
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

                            "L2_Silver.D4"
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
                                Zero, 
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

                                "KryoSilver0.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x01C2, 
                                0x012C, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x01C2, 
                                0x012C, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoSilver0.C3_NI"
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
                                Zero, 
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

                                "KryoSilver1.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x01C2, 
                                0x012C, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x01C2, 
                                0x012C, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoSilver1.C3_NI"
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
                                Zero, 
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

                                "KryoSilver2.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x01C2, 
                                0x012C, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x01C2, 
                                0x012C, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoSilver2.C3_NI"
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
                                Zero, 
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

                                "KryoSilver3.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x01C2, 
                                0x012C, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x01C2, 
                                0x012C, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoSilver3.C3_NI"
                            }
                        })
                    }
                }

                Device (CLU1)
                {
                    Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_LPI, Package (0x06)  // _LPI: Low Power Idle States
                    {
                        Zero, 
                        0x01000000, 
                        0x03, 
                        Package (0x0A)
                        {
                            0x0384, 
                            0xC8, 
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

                            "L2_Gold.D2d"
                        }, 

                        Package (0x0A)
                        {
                            0x03E8, 
                            0x0190, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            0x30, 
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

                            "L2_Gold.D2e"
                        }, 

                        Package (0x0A)
                        {
                            0x1770, 
                            0x04B0, 
                            One, 
                            Zero, 
                            Zero, 
                            0x03, 
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

                            "L2_Gold.D4"
                        }
                    })
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
                                0x0258, 
                                0x50, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
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

                                "KryoGold0.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x1B58, 
                                0x5A, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x1B58, 
                                0x5A, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoGold0.C3_NI"
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
                                0x0258, 
                                0x50, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
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

                                "KryoGold1.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x1B58, 
                                0x5A, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x1B58, 
                                0x5A, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoGold1.C3_NI"
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
                                0x0258, 
                                0x50, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
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

                                "KryoGold2.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x1B58, 
                                0x5A, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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
                                0x1B58, 
                                0x5A, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoGold2.C3_NI"
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

                                "KryoGold3.C1"
                            }, 

                            Package (0x0A)
                            {
                                0x0258, 
                                0x50, 
                                Zero, 
                                Zero, 
                                Zero, 
                                Zero, 
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

                                "KryoGold3.C2d"
                            }, 

                            Package (0x0A)
                            {
                                0x1B58, 
                                0x5A, 
                                One, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoGold3.C3"
                            }, 

                            Package (0x0A)
                            {
                                0x1B58, 
                                0x5A, 
                                Zero, 
                                One, 
                                Zero, 
                                0x03, 
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

                                "KryoGold3.C3_NI"
                            }
                        })
                    }
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
                    0x04E00000,         // Address Base
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
                        0x0000011F,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000124,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000001C6,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000DC,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000D8,
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
                        Case (ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */) {                            Switch (ToInteger (Arg2))
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
                    Name (CFG0, Package (0x00) {})
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
                        0x0000011F,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000124,
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
                        Case (ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2") /* Unknown UUID */) {                            Switch (ToInteger (Arg2))
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
                        Case (ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751") /* Unknown UUID */) {                            Switch (ToInteger (Arg2))
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
                    Name (CFG0, Package (0x00) {})
                    Return (CFG0) /* \_SB_.URS0.UFN0.PHYC.CFG0 */
                }
            }
        }
    }
}

