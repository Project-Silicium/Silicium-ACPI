DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8450 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP08350")
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
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0C8B")
            Name (_CID, Package () { "PNP0CA1", "QCOMFFE1" })
            Name (_UID, 0)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0A600000, 0x00100000)
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (USB0)
            {
                Name (_ADR, 0)
                Name (_S0W, 3)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0xA5 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA2 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA3 }
                    Interrupt (ResourceConsumer, Edge,  ActiveHigh, SharedAndWake, ,, ) { 0x20E }
                    Interrupt (ResourceConsumer, Edge,  ActiveHigh, SharedAndWake, ,, ) { 0x20F }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x211 }
                })

                Method (_DSM, 4, NotSerialized)
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("CE2EE385-00E6-48CB-9F05-2EDB927C4899"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x1D })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (2)
                                {
                                    Return (0x00)
                                }

                                Case (3)
                                {
                                    Return (0x00)
                                }

                                Case (4)
                                {
                                    Return (0x02)
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
                                }
                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0x00 })
                        }
                    }
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) } // Guess its "2" as this Value Normaly comes from PMIC GLINK in ACPI.

                Method (PHYC, 0, NotSerialized)
                {
                    // PHYC is Unknown, Return Nothing.
                    Return (Package () {})
                }

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
            }

            Device (UFN0)
            {
                Name (_ADR, 1)
                Name (_S0W, 3)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0xA5 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA2 }
                })

                Method (_DSM, 4, NotSerialized)
                {
                    Switch (ToBuffer (Arg0))
                    {
                        Case (ToUUID ("FE56CFEB-49D5-4378-A8A2-2978DBE54AD2"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x03 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (1)
                                {
                                    Return(0x20)
                                }

                                Default
                                {
                                    Return (Buffer() { 0x00 })
                                }
                            }
                        }

                        Case (ToUUID ("18DE299F-9476-4FC9-B43B-8AEB713ED751"))
                        {
                            Switch (ToInteger (Arg2))
                            {
                                Case (0)
                                {
                                    Switch (ToInteger (Arg1))
                                    {
                                        Case (0)
                                        {
                                            Return (Buffer () { 0x03 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 0x01 })
                                        }
                                    }
                                }

                                Case (1)
                                {
                                    Return (0x39)
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
                                }
                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0x00 })
                        }
                    }
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) } // Guess its "2" as this Value Normaly comes from PMIC GLINK in ACPI.

                Method (PHYC, 0, NotSerialized)
                {
                    // PHYC is Unknown, Return Nothing.
                    Return (Package () {})
                }

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
            }
        }
    }
}
