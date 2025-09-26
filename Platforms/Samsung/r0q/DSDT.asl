DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOMM ", "SM8450 ", 3)
{
    Scope (\_SB)
    {
    	Name (PSUB, "MTP08450")
    	
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

        Device (SPMI)
        {
            Alias (\_SB.PSUB, _SUB)
        
            Name (_HID, "QCOM0C0B")
            Name (_CID, "PNP0CA2")
            Name (_UID, 1)
            Name (_CCA, 0)
        
            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite, 0x0C400000, 0x00500000)
            })
        
            Name (CONF, Buffer ()
            {
                // SPMI Bus 0
                0x00,
                0x01,
                0x01,
                0x02, 0xFF,
                0x00,
                0x03, 0x00,
                0x07,
                0x04,
                0x08,
                0x0A,
                0x02, 0xFF,
                0x18,
                0x01, 0x00,
                0x02,
                0x0C, 0x40, 0x00, 0x00,
                0x00, 0x50, 0x00, 0x00,
        
                // SPMI Bus 1
                0x00,
                0x01,
                0x01,
                0x00, 0xFF,
                0x00,
                0x01, 0x00,
                0x07,
                0x04,
                0x08,
                0x0A,
                0x00, 0xFF,
                0x08,
                0x01, 0x00,
                0x02,
                0x0C, 0x40, 0x00, 0x00,
                0x00, 0x50, 0x00, 0x00
            })
        
            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }
    }
}
