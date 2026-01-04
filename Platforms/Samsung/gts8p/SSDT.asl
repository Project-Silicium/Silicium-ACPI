DefinitionBlock ("SSDT.aml", "SSDT", 2, "SAMSUN", "GTS8P  ", 3)
{
    External (\_SB.PM01, UnknownObj)

    Scope (\_SB)
    {
        Name (PSUB, "MTP08450")

        Device (BTNS)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "ACPI0011")
            Name (_UID, 0)

            Name (_CRS, ResourceTemplate ()
            {
                GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000, "\\_SB.PM01", ,) { 0x07 }
                GpioInt (Edge, ActiveBoth, Exclusive,        PullUp,   0x0BB8, "\\_SB.PM01", ,) { 0xC6 }
                GpioInt (Edge, ActiveBoth, Exclusive,        PullDown, 0x0000, "\\_SB.PM01", ,) { 0x06 }
            })

            Name (_DSD, Package ()
            {
                ToUUID ("FA6BD625-9CE8-470D-A2C7-B3CA36C4282E"),

                Package ()
                {
                    Package ()
                    {
                        0,
                        1,
                        0,
                        1,
                        13
                    }, 

                    Package ()
                    {
                        1,
                        0,
                        1,
                        1,
                        129
                    }, 

                    Package ()
                    {
                        1,
                        1,
                        1,
                        12,
                        233
                    }, 

                    Package ()
                    {
                        1,
                        2,
                        1,
                        12,
                        234
                    }
                }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }
    }
}
