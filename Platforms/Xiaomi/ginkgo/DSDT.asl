DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOM ", "SM6125 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "IDP06125")

        Device (SDC1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM24BF")
            Name (_CID, "ACPIQCOM24BF")
            Name (_UID, 0)
            Name (_CCA, 0)

            Name  (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x04744000, 0x00002000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x17C }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x180 }
            })

            Method (_DIS, 0, NotSerialized) {}
            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (EMMC)
            {
                Method (_ADR, 0, NotSerialized) { Return (0x08) }
                Method (_RMV, 0, NotSerialized) { Return (0x00) }
            }
        }

		Device (SPMI)
        {
            Name (_HID, "SPMI6125")  // _HID: Hardware ID
            Alias (\_SB.PSUB, _SUB)
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
                    /* 0000 */  0x00, 0x01, 0x01, 0x01, 0xFF, 0x00, 0x02, 0x00,
                    /* 0008 */  0x0A, 0x07, 0x04, 0x07, 0x01, 0xFF, 0x10, 0x01,
                    /* 0010 */  0x00, 0x01, 0x01, 0xC0, 0x00, 0x00
                })
                Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
            }
        }
		
        Device (SYSM)
        {
            Name (_HID, "ACPI0010")
            Name (_UID, 0)

            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (APC0)
            {
                Name (_HID, "ACPI0010")
                Name (_UID, 1)

                Name (_LPI, Package ()
                {
                    0,
                    0x2000000,
                    3,

                    Package ()
                    {
                        3000,
                        1100,
                        1,
                        0,
                        0,
                        0,
                        0x400,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "CCI.E3"
                    }, 

                    Package ()
                    {
                        3500,
                        1150,
                        1,
                        0,
                        0,
                        0,
                        0x500,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                        "CCI.E3+RPM"
                    }, 

                    Package ()
                    {
                        33000,
                        500,
                        1,
                        32,
                        0,
                        0,
                        0x300,

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },


                        "platform.xo"
                    }
                })

                Method (_STA, 0, NotSerialized) { Return (0x0F) }

                Device (CLU0)
                {
                    Name (_HID, "ACPI0010")
                    Name (_UID, 2)

                    Name (_LPI, Package ()
                    {
                        0,
                        0x1000000,
                        3,

                        Package ()
                        {
                            300,
                            130,
                            0,
                            0,
                            0,
                            0,
                            0x20,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Silver.D2d"
                        }, 

                        Package ()
                        {
                            350,
                            150,
                            0,
                            0,
                            0,
                            0,
                            0x30,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Silver.D2e"
                        }, 

                        Package ()
                        {
                            6400,
                            900,
                            1,
                            0,
                            0,
                            3,
                            0x40,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Silver.D4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Device (CPU0)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 0)

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
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver0.C2d"
                            }, 

                            Package ()
                            {
                                450,
                                300,
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver0.C3"
                            },

                            Package ()
                            {
                                450,
                                300,
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver0.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU1)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 1)

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
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver1.C2d"
                            }, 

                            Package ()
                            {
                                450,
                                300,
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver1.C3"
                            },

                            Package ()
                            {
                                450,
                                300,
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver1.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU2)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 2)

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
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver2.C2d"
                            }, 

                            Package ()
                            {
                                450,
                                300,
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver2.C3"
                            },

                            Package ()
                            {
                                450,
                                300,
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver2.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU3)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 3)

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
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver3.C2d"
                            }, 

                            Package ()
                            {
                                450,
                                300,
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver3.C3"
                            },

                            Package ()
                            {
                                450,
                                300,
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoSilver3.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }
                }

                Device (CLU1)
                {
                    Name (_HID, "ACPI0010")
                    Name (_UID, 3)

                    Name (_LPI, Package ()
                    {
                        0,
                        0x1000000,
                        3,

                        Package ()
                        {
                            900,
                            200,
                            0,
                            0,
                            0,
                            0,
                            0x20,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Gold.D2d"
                        }, 

                        Package ()
                        {
                            1000,
                            400,
                            0,
                            0,
                            0,
                            0,
                            0x30,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Gold.D2e"
                        }, 

                        Package ()
                        {
                            6000,
                            1200,
                            1,
                            0,
                            0,
                            3,
                            0x40,

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },

                            "L2_Gold.D4"
                        }
                    })

                    Method (_STA, 0, NotSerialized) { Return (0x0F) }

                    Device (CPU4)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 4)

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
                                600,
                                80, 
                                0,
                                0,
                                0,
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold0.C2d"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold0.C3"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold0.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU5)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 5)

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
                                600,
                                80, 
                                0,
                                0,
                                0,
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold1.C2d"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold1.C3"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold1.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU6)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 6)

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
                                600,
                                80, 
                                0,
                                0,
                                0,
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold2.C2d"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold2.C3"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold2.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }

                    Device (CPU7)
                    {
                        Name (_HID, "ACPI0007")
                        Name (_UID, 7)

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

                                "KryoGold3.C1"
                            }, 

                            Package ()
                            {
                                600,
                                80, 
                                0,
                                0,
                                0,
                                0,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold3.C2d"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                1,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold3.C3"
                            }, 

                            Package ()
                            {
                                7000,
                                90, 
                                0,
                                1,
                                0,
                                3,

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },

                                "KryoGold3.C3_NI"
                            }
                        })

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }
                    }
                }
            }
        }

        Device (URS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0497")
            Name (_CID, "PNP0CA1")
            Name (_UID, 0)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x04E00000, 0x00100000)
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }

            Device (USB0)
            {
                Name (_ADR, 0)
                Name (_S0W, 0)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0x11F }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x14E }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x1C6 }
                    Interrupt (ResourceConsumer, Edge,  ActiveHigh, SharedAndWake, ,, ) { 0x124 }
                })

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

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 2 }) }
                Method (HSEN, 0, NotSerialized) { Return (Buffer () { 0 }) }

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
                                            Return (Buffer () { 1 })
                                        }
                                    }

                                    Return (Buffer () { 0 })
                                }

                                Case (2)
                                {
                                    Return (0)
                                }

                                Case (3)
                                {
                                    Return (0)
                                }

                                Case (4)
                                {
                                    Return (2)
                                }

                                Default
                                {
                                    Return (Buffer () { 0 })
                                }

                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0 })
                        }
                    }
                }

                Method (PHYC, 0, Serialized)
                {
                    // TODO: Add Proper PHYC here.
                    Return ( Package () {} )
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
            }

            Device (UFN0)
            {
                Name (_ADR, 0)
                Name (_S0W, 0)

                Name (_CRS, ResourceTemplate ()
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )        { 0x11F }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x14E }
                })

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

                Method (CCVL, 0, NotSerialized) { Return (Buffer () { 2 }) }

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
                                            Return (Buffer () { 3 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 1 })
                                        }
                                    }

                                    Return (Buffer () { 0 })
                                }

                                Case (1)
                                {
                                    Return ( 0x20 )
                                }

                                Default
                                {
                                    Return (Buffer () { 0 })
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
                                            Return (Buffer () { 3 })
                                        }

                                        Default
                                        {
                                            Return (Buffer () { 1 })
                                        }
                                    }

                                    Return (Buffer () { 0 })
                                }

                                Case (1)
                                {
                                    Return ( 0x39 )
                                }

                                Default
                                {
                                    Return (Buffer () { 0 })
                                }
                            }
                        }

                        Default
                        {
                            Return (Buffer () { 0 })
                        }
                    }
                }

                Method (PHYC, 0, Serialized)
                {
                    // TODO: Add Proper PHYC here.
                    Return ( Package () {} )
                }

                Method (_STA, 0, NotSerialized) { Return (0x0F) }
            }
        }
    }
}
