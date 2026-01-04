DefinitionBlock ("SSDT.aml", "SSDT", 2, "XIAOMI", "WILLOW ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "IDP06125")

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
