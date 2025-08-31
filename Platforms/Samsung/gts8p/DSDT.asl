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
                Memory32Fixed (ReadWrite, 0x01D84000, 0x00015000)

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

        Device (CPU0)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU1)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 1)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU2)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 2)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU3)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 3)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU4)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 4)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU5)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 5)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU6)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 6)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (CPU7)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 7)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }

        Device (URS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM1A8B")
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

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) }
                Method (_STA, 0, NotSerialized) { Return (0x0F) }

                Method (_DSM, 4, Serialized)
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

                Method (PHYC, 0, Serialized)
                {
                    Return (Package ()
                    {
                        Package ()
                        {
                            0x0,
                            0x88e8008,
                            0x1
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9C40,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9010,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E901C,
                            0x31
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9020,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9024,
                            0xDE
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9028,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9030,
                            0xDE
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9034,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9050,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9060,
                            0x20
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9074,
                            0x06
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9078,
                            0x06
                        },

                        Package ()
                        {
                            0x0,
                            0x88E907C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9080,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9084,
                            0x36
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9088,
                            0x36
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9094,
                            0x1A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90A4,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90AC,
                            0x14
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B0,
                            0x34
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B4,
                            0x34
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B8,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90BC,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90C4,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90CC,
                            0xAB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D0,
                            0xEA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D4,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D8,
                            0xAB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90DC,
                            0xEA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90E0,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E910C,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9110,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9118,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E911C,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9158,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E916C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91AC,
                            0xCA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B0,
                            0x1E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B4,
                            0xCA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B8,
                            0x1E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91BC,
                            0x11
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9234,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9238,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E923C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9240,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9284,
                            0x35
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9288,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E928C,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9290,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9294,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E92A4,
                            0x12
                        },

                        Package ()
                        {
                            0x0,
                            0x88E92E4,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9408,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9414,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9430,
                            0x2F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9434,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E943C,
                            0xFF
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9440,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9444,
                            0x99
                        },

                        Package ()
                        {
                            0x0,
                            0x88E944C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9450,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9454,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9458,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94D4,
                            0x54
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F8,
                            0xC0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94FC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9510,
                            0x47
                        },

                        Package ()
                        {
                            0x0,
                            0x88E951C,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9524,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E955C,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9560,
                            0x7B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9564,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9568,
                            0x3D
                        },

                        Package ()
                        {
                            0x0,
                            0x88E956C,
                            0xDB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9570,
                            0x64
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9574,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9578,
                            0xD2
                        },

                        Package ()
                        {
                            0x0,
                            0x88E957C,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9580,
                            0xA9
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A0,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A4,
                            0x38
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9460,
                            0xA0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94DC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95B0,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9634,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9638,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E963C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9640,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9684,
                            0x35
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9688,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E968C,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9690,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9694,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E96A4,
                            0x12
                        },

                        Package ()
                        {
                            0x0,
                            0x88E96E4,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9808,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9814,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9830,
                            0x2F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9834,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E983C,
                            0xFF
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9840,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9844,
                            0x99
                        },

                        Package ()
                        {
                            0x0,
                            0x88E984C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9850,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9854,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9858,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98D4,
                            0x54
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F8,
                            0xC0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98FC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9910,
                            0x47
                        },

                        Package ()
                        {
                            0x0,
                            0x88E991C,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9924,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E995C,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9960,
                            0x7B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9964,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9968,
                            0x3C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E996C,
                            0xDB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9970,
                            0x64
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9974,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9978,
                            0xD2
                        },

                        Package ()
                        {
                            0x0,
                            0x88E997C,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9980,
                            0xA9
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A0,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A4,
                            0x38
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9860,
                            0xA0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98DC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F40,
                            0x40
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F44,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D90,
                            0xE7
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D94,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99B0,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CC4,
                            0xD0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CC8,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CCC,
                            0x20
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CD8,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CDC,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D88,
                            0xAA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DB0,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DC0,
                            0x88
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DC4,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DD0,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DDC,
                            0x4B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DEC,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F18,
                            0xF8
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F3C,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x00,
                            0x00
                        }
                    })
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
                Name (_ADR, 0)
                Name (_S0W, 3)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0xA5 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA2 }
                })

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 0x02 }) }
                Method (_STA, 0, NotSerialized) { Return (0x0F) }

                Method (_DSM, 4, Serialized)
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
                                    Return ( 0x20 )
                                }

                                Default
                                {
                                    Return (Buffer () { 0x00 })
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
                                    Return ( 0x39 )
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

                Method (PHYC, 0, Serialized)
                {
                    Return (Package ()
                    {
                        Package ()
                        {
                            0x0,
                            0x88e8008,
                            0x1
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9C40,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9010,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E901C,
                            0x31
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9020,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9024,
                            0xDE
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9028,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9030,
                            0xDE
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9034,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9050,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9060,
                            0x20
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9074,
                            0x06
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9078,
                            0x06
                        },

                        Package ()
                        {
                            0x0,
                            0x88E907C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9080,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9084,
                            0x36
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9088,
                            0x36
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9094,
                            0x1A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90A4,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90AC,
                            0x14
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B0,
                            0x34
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B4,
                            0x34
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90B8,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90BC,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90C4,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90CC,
                            0xAB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D0,
                            0xEA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D4,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90D8,
                            0xAB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90DC,
                            0xEA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E90E0,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E910C,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9110,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9118,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E911C,
                            0x02
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9158,
                            0x01
                        },

                        Package ()
                        {
                            0x0,
                            0x88E916C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91AC,
                            0xCA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B0,
                            0x1E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B4,
                            0xCA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91B8,
                            0x1E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E91BC,
                            0x11
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9234,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9238,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E923C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9240,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9284,
                            0x35
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9288,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E928C,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9290,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9294,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E92A4,
                            0x12
                        },

                        Package ()
                        {
                            0x0,
                            0x88E92E4,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9408,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9414,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9430,
                            0x2F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9434,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E943C,
                            0xFF
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9440,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9444,
                            0x99
                        },

                        Package ()
                        {
                            0x0,
                            0x88E944C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9450,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9454,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9458,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94D4,
                            0x54
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94F8,
                            0xC0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94FC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9510,
                            0x47
                        },

                        Package ()
                        {
                            0x0,
                            0x88E951C,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9524,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E955C,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9560,
                            0x7B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9564,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9568,
                            0x3D
                        },

                        Package ()
                        {
                            0x0,
                            0x88E956C,
                            0xDB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9570,
                            0x64
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9574,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9578,
                            0xD2
                        },

                        Package ()
                        {
                            0x0,
                            0x88E957C,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9580,
                            0xA9
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A0,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A4,
                            0x38
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9460,
                            0xA0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E94DC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E95B0,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9634,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9638,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E963C,
                            0x16
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9640,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9684,
                            0x35
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9688,
                            0x82
                        },

                        Package ()
                        {
                            0x0,
                            0x88E968C,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9690,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9694,
                            0x3F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E96A4,
                            0x12
                        },

                        Package ()
                        {
                            0x0,
                            0x88E96E4,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9808,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9814,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9830,
                            0x2F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9834,
                            0x7F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E983C,
                            0xFF
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9840,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9844,
                            0x99
                        },

                        Package ()
                        {
                            0x0,
                            0x88E984C,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9850,
                            0x08
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9854,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9858,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98D4,
                            0x54
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98F8,
                            0xC0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98FC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9910,
                            0x47
                        },

                        Package ()
                        {
                            0x0,
                            0x88E991C,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9924,
                            0x0E
                        },

                        Package ()
                        {
                            0x0,
                            0x88E995C,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9960,
                            0x7B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9964,
                            0xBB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9968,
                            0x3C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E996C,
                            0xDB
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9970,
                            0x64
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9974,
                            0x24
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9978,
                            0xD2
                        },

                        Package ()
                        {
                            0x0,
                            0x88E997C,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9980,
                            0xA9
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A0,
                            0x04
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A4,
                            0x38
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9860,
                            0xA0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E98DC,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F40,
                            0x40
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F44,
                            0x00
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D90,
                            0xE7
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D94,
                            0x03
                        },

                        Package ()
                        {
                            0x0,
                            0x88E99B0,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CC4,
                            0xD0
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CC8,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CCC,
                            0x20
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CD8,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9CDC,
                            0x21
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9D88,
                            0xAA
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DB0,
                            0x0A
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DC0,
                            0x88
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DC4,
                            0x13
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DD0,
                            0x0C
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DDC,
                            0x4B
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9DEC,
                            0x10
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F18,
                            0xF8
                        },

                        Package ()
                        {
                            0x0,
                            0x88E9F3C,
                            0x07
                        },

                        Package ()
                        {
                            0x0,
                            0x00,
                            0x00
                        }
                    })
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

                        Name(_PLD, Package()
                        {
                            Buffer()
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
