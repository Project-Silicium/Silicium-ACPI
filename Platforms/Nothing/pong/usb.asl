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
    Name (_HID, "QCOM0497")
    Name (_CID, "PNP0CA1")  // _CID: Compatible ID
    Alias (PSUB, _SUB)
    Name (_UID, Zero)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {

		/* Device USB controller is at 0xe00000: run "getprop | grep usb" = [ro.boot.usbcontroller]: [4e00000.dwc3]
		On sm6125.dtsi (SM6225 does not have mainline) usb device with 0xe00000 address is soc@0 { > usb_1: usb@4ef8800 { > usb_1_dwc3: usb@4e00000 */

        Memory32Fixed (ReadWrite,
            0x0A600000,         // Address Base
            0x000FFFFF,         // Address Length
            )
    })
    Device (USB0)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        Name(_PLD, Package()
        {
            Buffer()
            {
            0x82,                   // Revision 2, ignore color.
            0x00,0x00,0x00,         // Color (ignored).
            0x00,0x00,0x00,0x00,    // Width and height.
            0x69,                   // User visible; Back panel; VerticalPos:Center.
            0x0c,                   // HorizontalPos:0; Shape:Vertical Rectangle; GroupOrientation:0.
            0x00,0x00,              // Group Token:0; Group Position:0; So Connector ID is 0.
            0x00,0x00,0x00,0x00,    // Not ejectable.
            0xFF,0xFF,0xFF,0xFF     // Vert. and horiz. offsets not supplied.
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
			/*
			on gic driver:
				#define GIC_PPI_BASE  U(16)
				#define GIC_SPI_BASE  U(32)
			on arm-gic driver:
				#define GIC_SPI 0
				#define GIC_PPI 1
			So interrupts must be <soc>.dtsi interrupt value +
				If PPI: + 16 + 1
				If SPI: + 32 + 0
			Non GIC interrupts must be incremented by 512

			soc@0 { usb_1: usb@4ef8800 { usb_1_dwc3: usb@4e00000 { interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
			255 + 32 + 0 = 287, in hex = 11F */
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0x11F,
            }

			/* soc: soc@0 { usb_1: usb@4ef8800 { interrupts-extended = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>,
			260 + 32 + 0 = 292, in hex = 0x124 */
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0x124,
            }

			/* soc: soc@0 { usb_1: usb@4ef8800 { interrupts-extended = <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH>,
			422 + 32 + 0 = 454, in hex = 1C6 */
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0x1C6,
            }

			/* soc: soc@0 { usb_1: usb@4ef8800 { interrupts-extended = <GIC_SPI 188 IRQ_TYPE_LEVEL_HIGH>,
			188 + 32 = 220, in hex = DC */
            Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
            {
                0xDC,
            }

			/* soc: soc@0 { usb_1: usb@4ef8800 { interrupts-extended =  <GIC_SPI 184 IRQ_TYPE_LEVEL_HIGH>,
			184 + 32 = 216, in hex = D8 */
            Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
            {
                0xD8,
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
        Name(_PLD, Package()
        {
            Buffer()
            {
            0x82,                   // Revision 2, ignore color.
            0x00,0x00,0x00,         // Color (ignored).
            0x00,0x00,0x00,0x00,    // Width and height.
            0x69,                   // User visible; Back panel; VerticalPos:Center.
            0x0c,                   // HorizontalPos:0; Shape:Vertical Rectangle; GroupOrientation:0.
            0x00,0x00,              // Group Token:0; Group Position:0; So Connector ID is 0.
            0x00,0x00,0x00,0x00,    // Not ejectable.
            0xFF,0xFF,0xFF,0xFF     // Vert. and horiz. offsets not supplied.
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
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0x11F,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, )
            {
                0x124,
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
