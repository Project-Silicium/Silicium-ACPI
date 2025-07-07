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
    Name (_HID, "QCOM2430")
    Name (_CID, "PNP0CA1")  // _CID: Compatible ID
    Alias (PSUB, _SUB)
    Name (_UID, Zero)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
	
		/* Device USB controller is at 0x0A800000: run "getprop | grep usb" = [ro.boot.usbcontroller]: [a800000.dwc3]
		On sdm630.dtsi usb device with 0x0A800000 address is soc@0 { > usb3: usb@a8f8800 { > usb3_dwc3: usb@a800000 */

        Memory32Fixed (ReadWrite,
            0x0A800000,         // Address Base
            0x000FFFFF,         // Address Length
            )
    })
    Device (USB0)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        Name (_PLD, Package (0x01)  // _PLD: Physical Location of Device
        {
            Buffer()
            {
                0x82,
                0x00,0x00,0x00,
                0x00,0x00,0x00,0x00,
                0x69,
                0x0c,
                0x80,0x00,
                0x00,0x00,0x00,0x00,
                0xFF,0xFF,0xFF,0xFF
            }
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
			// DWC3 interrupt
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0xA3,
            }

            // HS PHY interrupt
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0x17B,
            }

			// SS PHY interrupt
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0x113,
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
            Buffer()
            {
                0x82,
                0x00,0x00,0x00,
                0x00,0x00,0x00,0x00,
                0x69,
                0x0c,
                0x80,0x00,
                0x00,0x00,0x00,0x00,
                0xFF,0xFF,0xFF,0xFF
            }
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
            // DWC3 interrupt
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0xA3,
            }

            // Power event interrupt
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0xD4,
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
