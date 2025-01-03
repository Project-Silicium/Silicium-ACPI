DefinitionBlock ("DSDT_minimal.aml", "DSDT", 2, "QCOM  ", "SM6125 ", 0x00000003)
{
    Scope (\_SB)
    {
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
    }
}
