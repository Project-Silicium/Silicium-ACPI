DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8475 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP08475")
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
            Name (_CID, Package ()
                        { "PNP0CA1", "QCOMFFE1" })
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
                            0x00,
                            0x088E8008,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9C40,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9000,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9004,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9010,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9014,
                            0x16
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9018,
                            0x36
                        },

                        Package ()
                        {
                            0x00,
                            0x088E901C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9020,
                            0x2E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9024,
                            0x82
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9028,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E902C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9030,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9034,
                            0xD5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9038,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E903C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9048,
                            0x25
                        },

                        Package ()
                        {
                            0x00,
                            0x088E904C,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9050,
                            0xB7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9054,
                            0x1E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9058,
                            0xB7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E905C,
                            0x1E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9060,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9064,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9070,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9074,
                            0x16
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9078,
                            0x36
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9080,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9084,
                            0x34
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9088,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E908C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9090,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9094,
                            0xD5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9098,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90A8,
                            0x25
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90AC,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90BC,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90C0,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90CC,
                            0x31
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90D0,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90E8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9110,
                            0x1A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9124,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9140,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9170,
                            0x20
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9174,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91A4,
                            0xB6
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91A8,
                            0x4B
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91AC,
                            0x37
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91B4,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9234,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9238,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E923C,
                            0x1F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9240,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9284,
                            0xF5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E928C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9290,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9294,
                            0x5F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E92A4,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E92E4,
                            0x21
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9408,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9414,
                            0x06
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9430,
                            0x2F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9434,
                            0x7F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E943C,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9440,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9444,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E944C,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9450,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9454,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9458,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9460,
                            0xA0
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94D4,
                            0x54
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94DC,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F8,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94FC,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9510,
                            0x47
                        },

                        Package ()
                        {
                            0x00,
                            0x088E951C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9524,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E955C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9560,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9564,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9568,
                            0xDF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E956C,
                            0xFE
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9570,
                            0xDC
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9574,
                            0x5C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9578,
                            0x9C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E957C,
                            0x1D
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9580,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A0,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A4,
                            0x38
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95B0,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95E4,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95F8,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9634,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9638,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E963C,
                            0x1F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9640,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9684,
                            0xF5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E968C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9690,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9694,
                            0x5F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E96A4,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E96E4,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9808,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9814,
                            0x06
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9830,
                            0x2F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9834,
                            0x7F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E983C,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9840,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9844,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E984C,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9850,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9854,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9858,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9860,
                            0xA0
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98D4,
                            0x54
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98DC,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F8,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98FC,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9910,
                            0x47
                        },

                        Package ()
                        {
                            0x00,
                            0x088E991C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9924,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E995C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9960,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9964,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9968,
                            0xDF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E996C,
                            0xFE
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9970,
                            0xDC
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9974,
                            0x5C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9978,
                            0x9C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E997C,
                            0x1D
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9980,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A0,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A4,
                            0x38
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99B0,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99E4,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99F8,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CC4,
                            0xC4
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CC8,
                            0x89
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CCC,
                            0x20
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CD8,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CDC,
                            0x21
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D88,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D90,
                            0xE7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D94,
                            0x03
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DB0,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DC0,
                            0x88
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DC4,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DD0,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DDC,
                            0x4B
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DEC,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F18,
                            0xF8
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F3C,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F40,
                            0x40
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F44,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
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
                            0x00,
                            0x088E8008,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9C40,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9000,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9004,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9010,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9014,
                            0x16
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9018,
                            0x36
                        },

                        Package ()
                        {
                            0x00,
                            0x088E901C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9020,
                            0x2E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9024,
                            0x82
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9028,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E902C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9030,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9034,
                            0xD5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9038,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E903C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9048,
                            0x25
                        },

                        Package ()
                        {
                            0x00,
                            0x088E904C,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9050,
                            0xB7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9054,
                            0x1E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9058,
                            0xB7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E905C,
                            0x1E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9060,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9064,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9070,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9074,
                            0x16
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9078,
                            0x36
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9080,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9084,
                            0x34
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9088,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E908C,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9090,
                            0x55
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9094,
                            0xD5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9098,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90A8,
                            0x25
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90AC,
                            0x02
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90BC,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90C0,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90CC,
                            0x31
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90D0,
                            0x01
                        },

                        Package ()
                        {
                            0x00,
                            0x088E90E8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9110,
                            0x1A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9124,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9140,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9170,
                            0x20
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9174,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91A4,
                            0xB6
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91A8,
                            0x4B
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91AC,
                            0x37
                        },

                        Package ()
                        {
                            0x00,
                            0x088E91B4,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9234,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9238,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E923C,
                            0x1F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9240,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9284,
                            0xF5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E928C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9290,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9294,
                            0x5F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E92A4,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E92E4,
                            0x21
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9408,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9414,
                            0x06
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9430,
                            0x2F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9434,
                            0x7F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E943C,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9440,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9444,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E944C,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9450,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9454,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9458,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9460,
                            0xA0
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94D4,
                            0x54
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94DC,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94F8,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E94FC,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9510,
                            0x47
                        },

                        Package ()
                        {
                            0x00,
                            0x088E951C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9524,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E955C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9560,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9564,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9568,
                            0xDF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E956C,
                            0xFE
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9570,
                            0xDC
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9574,
                            0x5C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9578,
                            0x9C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E957C,
                            0x1D
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9580,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A0,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A4,
                            0x38
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95B0,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95E4,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E95F8,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9634,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9638,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E963C,
                            0x1F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9640,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9684,
                            0xF5
                        },

                        Package ()
                        {
                            0x00,
                            0x088E968C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9690,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9694,
                            0x5F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E96A4,
                            0x12
                        },

                        Package ()
                        {
                            0x00,
                            0x088E96E4,
                            0x05
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9808,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9814,
                            0x06
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9830,
                            0x2F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9834,
                            0x7F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E983C,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9840,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9844,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E984C,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9850,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9854,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9858,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9860,
                            0xA0
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98D4,
                            0x54
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98D8,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98DC,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98EC,
                            0x0F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F0,
                            0x4A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F4,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98F8,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E98FC,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9910,
                            0x47
                        },

                        Package ()
                        {
                            0x00,
                            0x088E991C,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9924,
                            0x0E
                        },

                        Package ()
                        {
                            0x00,
                            0x088E995C,
                            0x3F
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9960,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9964,
                            0xFF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9968,
                            0xDF
                        },

                        Package ()
                        {
                            0x00,
                            0x088E996C,
                            0xFE
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9970,
                            0xDC
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9974,
                            0x5C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9978,
                            0x9C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E997C,
                            0x1D
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9980,
                            0x09
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A0,
                            0x04
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A4,
                            0x38
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99A8,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99B0,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99E4,
                            0x14
                        },

                        Package ()
                        {
                            0x00,
                            0x088E99F8,
                            0x08
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CC4,
                            0xC4
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CC8,
                            0x89
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CCC,
                            0x20
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CD8,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9CDC,
                            0x21
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D88,
                            0x99
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D90,
                            0xE7
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9D94,
                            0x03
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DB0,
                            0x0A
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DC0,
                            0x88
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DC4,
                            0x13
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DD0,
                            0x0C
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DDC,
                            0x4B
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9DEC,
                            0x10
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F18,
                            0xF8
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F3C,
                            0x07
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F40,
                            0x40
                        },

                        Package ()
                        {
                            0x00,
                            0x088E9F44,
                            0x00
                        },

                        Package ()
                        {
                            0x00,
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
