/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of DSDT.aml, Sun Aug 11 16:49:05 2024
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000146C (5228)
 *     Revision         0x02
 *     Checksum         0x17
 *     OEM ID           "QCOM  "
 *     OEM Table ID     "SDM660  "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
DefinitionBlock ("", "DSDT", 2, "QCOM  ", "SDM660  ", 0x00000003)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP00660")
        Device (SDC1)
        {
            Name (_HID, "QCOM24BF")  // _HID: Hardware ID
            Name (_CID, "ACPIQCOM24BF")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x0C0C4000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x0000008E,
                }
                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
                {
                    0x00000090,
                }
            })
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
        }

        Device (SYSM)
        {
            Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
            Name (_UID, 0x00100000)  // _UID: Unique ID
            Device (APC0)
            {
                Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                Name (_UID, 0x0100)  // _UID: Unique ID
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
                Device (CL0)
                {
                    Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                    Name (_UID, 0x10)  // _UID: Unique ID
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
                                        0x04,               // Access Size
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
                                        0x04,               // Access Size
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
                                        0x04,               // Access Size
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

                Device (CL1)
                {
                    Name (_HID, "ACPI0010" /* Processor Container Device */)  // _HID: Hardware ID
                    Name (_UID, 0x20)  // _UID: Unique ID
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
                                        0x04,               // Access Size
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
                                        0x04,               // Access Size
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
                                        0x04,               // Access Size
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
                                        0x04,               // Access Size
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

        Device (URS0)
        {
            Alias (\_SB.PSUB, _SUB)
            Name (_HID, "QCOM0497")  // _HID: Hardware ID
            Name (_CID, "PNP0CA1")  // _CID: Compatible ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0x0A800000,         // Address Base
                    0x00100000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Device (USB0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x09, 
                    Zero, 
                    Zero
                })
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
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A3,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000017B,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x00000113,
                    }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x000000D4,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (CCVL, 0, NotSerialized)
                {
                    Return (Buffer (One)
                    {
                         0x02                                             // .
                    })
                }

                Method (HSEN, 0, NotSerialized)
                {
                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0.USB0._DSM._T_0 */
                        If ((_T_0 == ToUUID ("ce2ee385-00e6-48cb-9f05-2edb927c4899") /* USB Controller */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_2 = ToInteger (Arg1)
                                        If ((_T_2 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x1D                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }
                                ElseIf ((_T_1 == 0x02))
                                {
                                    Return (Zero)
                                }
                                ElseIf ((_T_1 == 0x03))
                                {
                                    Return (Zero)
                                }
                                ElseIf ((_T_1 == 0x04))
                                {
                                    Return (0x02)
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

                Method (PHYC, 0, Serialized)
                {
                    Return (Package (0x00) {})
                }
            }

            Device (UFN0)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Name (_S0W, Zero)  // _S0W: S0 Device Wake State
                Name (_UPC, Package (0x04)  // _UPC: USB Port Capabilities
                {
                    One, 
                    0x09, 
                    Zero, 
                    Zero
                })
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
                Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                {
                    Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
                    {
                        0x000000A3,
                    }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
                    {
                        0x0000017B,
                    }
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (CCVL, 0, NotSerialized)
                {
                    Return (Buffer (One)
                    {
                         0x02                                             // .
                    })
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    While (One)
                    {
                        Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                        {
                             0x00                                             // .
                        })
                        CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.URS0.UFN0._DSM._T_0 */
                        If ((_T_0 == ToUUID ("fe56cfeb-49d5-4378-a8a2-2978dbe54ad2") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_1 = ToInteger (Arg2)
                                If ((_T_1 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_2 = ToInteger (Arg1)
                                        If ((_T_2 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }
                                ElseIf ((_T_1 == One))
                                {
                                    Return (0x20)
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
                        ElseIf ((_T_0 == ToUUID ("18de299f-9476-4fc9-b43b-8aeb713ed751") /* Unknown UUID */))
                        {
                            While (One)
                            {
                                Name (_T_3, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                _T_3 = ToInteger (Arg2)
                                If ((_T_3 == Zero))
                                {
                                    While (One)
                                    {
                                        Name (_T_4, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
                                        _T_4 = ToInteger (Arg1)
                                        If ((_T_4 == Zero))
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x03                                             // .
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (One)
                                            {
                                                 0x01                                             // .
                                            })
                                        }

                                        Break
                                    }

                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }
                                ElseIf ((_T_3 == One))
                                {
                                    Return (0x39)
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

                Method (PHYC, 0, Serialized)
                {
                    Return (Package (0x00) {})
                }
            }
        }
    }
}

