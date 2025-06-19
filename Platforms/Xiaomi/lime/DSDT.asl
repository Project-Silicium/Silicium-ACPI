DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM6115 ", 3)
{
    Scope (\_SB)
    {
        Name (PSUB, "IDP06115")
        Name (STOR, 0xABCABCAB)

        Device (UFS0)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "QCOM24A5")
            Name (_UID, 0)
            Name (_CCA, 0)

            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x04804000, 0x0000C000)

                Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x184 }
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
    }
}
