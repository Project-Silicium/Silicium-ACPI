DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8450 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP08450")
        Name (SOID, 0xFFFFFFFF)
        Name (STOR, 0xABCABCAB)
        Name (SIDS, "899800000000000")
        Name (SIDV, 0xFFFFFFFF)
        Name (SVMJ, 0xFFFF)
        Name (SVMI, 0xFFFF)
        Name (SDFE, 0xFFFF)
        Name (SFES, "899800000000000")
        Name (SIDM, 0x0000000FFFFFFFFF)
        Name (SUFS, 0xFFFFFFFF)
        Name (PUS3, 0xFFFFFFFF)
        Name (SUS3, 0xFFFFFFFF)
        Name (SIDT, 0xFFFFFFFF)
        Name (SOSN, 0xAAAAAAAABBBBBBBB)
        Name (PLST, 0xFFFFFFFF)
        Name (EMUL, 0xFFFFFFFF)
        Name (SJTG, 0xFFFFFFFF)
        Name (RMTB, 0xAAAAAAAA)
        Name (RMTX, 0xBBBBBBBB)
        Name (RFMB, 0xCCCCCCCC)
        Name (RFMS, 0xDDDDDDDD)
        Name (RFAB, 0xEEEEEEEE)
        Name (RFAS, 0x77777777)
        Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        Name (SOSI, 0xDEADBEEFFFFFFFFF)
        Name (PRP0, 0xFFFFFFFF)
        Name (PRP1, 0xFFFFFFFF)
        Name (PRP2, 0xFFFFFFFF)
        Name (PRP3, 0xFFFFFFFF)
        Name (PRP4, 0xFFFFFFFF)
        Name (PRP5, 0xFFFFFFFF)
        Name (PRP6, 0xFFFFFFFF)

        Device (UFS0)
        {
            Alias (\_SB.PSUB, _SUB)
            Alias (\_SB.EMUL, EMUL)

            Name (_HID, "QCOM24A5")
            Name (_UID, 0)
            Name (_CCA, 1)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x01D84000, 0x0001A000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x129 }
            })

            Method (_STA, 0, NotSerialized)
            {
                If (STOR == 1)
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Device (DEV0)
            {
                Method (_ADR, 0, NotSerialized) { Return (0x08) }
                Method (_RMV, 0, NotSerialized) { Return (0x00) }
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

        Device (SYSM)
        {
            Name (_HID, "ACPI0010")
            Name (_UID, 2)

            Name (_LPI, Package ()
            {
                0,
                0x1000000,
                1,

                Package ()
                {
                    9500,
                    6000,
                    1,
                    0x20,
                    0,
                    0,
                    0xC300,

                    ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                    ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                    "platform.DRIPS"
                }
            })

            Device (CLUS)
            {
                Name (_HID, "ACPI0010")
                Name (_UID, 1)

                Name (_LPI, Package ()
                {
                    0,
                    0x1000000,
                    2,

                    Package ()
                    {
                        5900,
                        3000,
                        0,
                        0,
                        0,
                        0,
                        0x20,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "L3Cluster.D2"
                    }, 

                    Package ()
                    {
                        6000,
                        3300,
                        1,
                        0,
                        0,
                        1,
                        0x40,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "L3Cluster.D4"
                    }
                })

                Device (CPU0)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 0)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver0.C4"
                        }
                    })
                }

                Device (CPU1)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 1)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver1.C4"
                        }
                    })
                }

                Device (CPU2)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 2)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver2.C4"
                        }
                    })
                }

                Device (CPU3)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 3)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C2"
                        }, 

                        Package ()
                        {
                            3850,
                            860,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C3"
                        }, 

                        Package ()
                        {
                            3950,
                            910,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoSilver3.C4"
                        }
                    })
                }

                Device (CPU4)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 4)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C2"
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C3"
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold0.C4"
                        }
                    })
                }

                Device (CPU5)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 5)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C2"
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C3"
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold1.C4"
                        }
                    })
                }

                Device (CPU6)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 6)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C2"
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C3"
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoGold2.C4"
                        }
                    })
                }

                Device (CPU7)
                {
                    Name (_HID, "ACPI0007")
                    Name (_UID, 7)

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Name (_LPI, Package ()
                    {
                        0,
                        0,
                        4,

                        Package ()
                        {
                            0,
                            0,
                            1,
                            0,
                            0,
                            0,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C1"
                        }, 

                        Package ()
                        {
                            400,
                            100,
                            0,
                            0,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C2"
                        }, 

                        Package ()
                        {
                            3990,
                            1000,
                            1,
                            1,
                            0,
                            1,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C3"
                        }, 

                        Package ()
                        {
                            4490,
                            1500,
                            1,
                            1,
                            0,
                            2,

                            ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                            ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                            "KryoPrime0.C4"
                        }
                    })
                }
            }
        }

        Device (URS0)
        {
            Name (_HID, "QCOM0497")  // _HID: Hardware ID
            Name (_CID, "PNP0CA1")  // _CID: Compatible ID
            Alias (\_SB.PSUB, _SUB)
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
				Device (RHUB)
                {
                    Name (_ADR, 0)
                    Device (PRT1)
                    {
                        Name (_ADR, 1)
                        Name (_UPC, Package ()
                        {
                            1,
                            9,
                            0,
                            0 
                        })
                        Name (_PLD, Package ()
                        {
                            Buffer ()
                            {
                                0x82,
                                0x00, 0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0x69,
                                0x0C,
                                0x00, 0x00,
                                0x00, 0x00, 0x00, 0x00,
                                0xFF, 0xFF, 0xFF, 0xFF
                            }
                        })
                    }
                }
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
                    Return (CCST)
                }
                Method (HSEN, 0, NotSerialized)
                {
                    Return (HSFL)
                }
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899")){                            
							Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x1D
                                            })
                                            Break
                                        }
										
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01
                                            })
                                            Break
                                        }
                                    }
                                    Return (Buffer (One)
                                    {
                                         0x00
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
                                         0x00
                                    })
                                    Break
                                }
                            }
                        }
                        Default
                        {
                            Return (Buffer (One)
                            {
                                 0x00
                            })
                            Break
                        }
                    }
                }
                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0)
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
                    Return (CCST)
                }
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2")){
							Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03
                                            })
                                            Break
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01
                                            })
                                            Break
                                        }
                                    }
                                    Return (Buffer (One)
                                    {
                                         0x00
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
                                         0x00
                                    })
                                    Break
                                }
                            }
                        }
                        Case (ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751")){                            
							Switch (ToInteger (Arg2))
                            {
                                Case (Zero)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (Zero)
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03
                                            })
                                            Break
                                        }
                                        Default
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01
                                            })
                                            Break
                                        }
                                    }
                                    Return (Buffer (One)
                                    {
                                         0x00
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
                                         0x00
                                    })
                                    Break
                                }
                            }
                        }
                        Default
                        {
                            Return (Buffer (One)
                            {
                                 0x00
                            })
                            Break
                        }
                    }
                }
                Method (PHYC, 0, NotSerialized)
                {
                    Name (CFG0, Package (0x00){})
                    Return (CFG0)
                }
            }
        }
    }
}
