DefinitionBlock ("SSDT.aml", "SSDT", 2, "XIAOMI", "INGRES ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "MTP08450")

        Device (URS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM0497")
            Name (_CID, "PNP0CA1")
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
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA3 }
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0x211 }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )  { 0x20F }
                    Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )  { 0x20E }
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
                    Interrupt (ResourceConsumer, Level, ActiveHigh, SharedAndWake, ,, ) { 0xA3 }
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

