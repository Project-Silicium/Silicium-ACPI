Device (SYSM)
{
    Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
    Name (_UID, 0x00100000)  // _UID: Unique ID

    Device (APC0)
    {
        Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
        Name (_UID, 0x0100)  // _UID: Unique ID
        Name (_LPI, Package ()  // _LPI: Low Power Idle States
        {
            0, 
            2000000, 
            3, 
            
            Package ()
            {
                3000, 
                1100, 
                1, 
                0, 
                0, 
                0, 
                0x0400, 
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                0x0500, 
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                "CCI.E3+RPM"
            }, 

            Package ()
            {
                33000, 
                500, 
                1, 
                0x20, 
                0, 
                0, 
                0x0300, 
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                "platform.xo"
            }
        })
        Device (CL0)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x10)  // _UID: Unique ID
            Name (_LPI, Package ()  // _LPI: Low Power Idle States
            {
                0, 
                1000000, 
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
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                    "L2_Silver.D2e"
                }, 

                Package ()
                {
                    6400, 
                    900, 
                    1, 
                    0, 
                    0, 
                    0x03, 
                    0x40, 
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                    "L2_Silver.D4"
                }
            })
            Device (CPU0)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 3)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver0.C2d"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver0.C3"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver0.C3_NI"
                    }
                })
            }

            Device (CPU1)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 1)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver1.C2d"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver1.C3"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver2.C2d"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver2.C3"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver3.C2d"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver3.C3"
                    }, 

                    Package ()
                    {
                        450, 
                        300, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoSilver3.C3_NI"
                    }
                })
            }
        }

        Device (CL1)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x20)  // _UID: Unique ID
            Name (_LPI, Package ()  // _LPI: Low Power Idle States
            {
                0, 
                1000000, 
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
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                    "L2_Gold.D2e"
                }, 

                Package ()
                {
                    6000, 
                    1200, 
                    1, 
                    0, 
                    0, 
                    0x03, 
                    0x40, 
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                    ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                    "L2_Gold.D4"
                }
            })
            Device (CPU4)
            {
                Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold0.C2d"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold0.C3"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold1.C2d"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold1.C3"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold2.C2d"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold2.C3"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
                    Return (0xF)
                }

                Name (_LPI, Package ()  // _LPI: Low Power Idle States
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
                        ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x00000000FFFFFFFF, 4)}, // Register entry method <= WFI
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
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
						ResourceTemplate(){Register(FFixedHW, 0x20, 0, 0x0000000000000002, 3)}, // Register entry method 
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold3.C2d"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        1, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000003,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold3.C3"
                    }, 

                    Package ()
                    {
                        7000, 
                        90, 
                        0, 
                        1, 
                        0, 
                        0x03, 
						ResourceTemplate(){Register(FFixedHW, 0x20, 0,0x0000000040000004,3)}, // Core collapse.
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Residency counter register
                        ResourceTemplate(){Register(SystemMemory,0,0,0,0)},	// Usage counter register
                        "KryoGold3.C3_NI"
                    }
                })
            }
        }
    }
}
