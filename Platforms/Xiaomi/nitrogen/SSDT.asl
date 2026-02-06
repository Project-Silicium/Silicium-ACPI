DefinitionBlock ("SSDT.aml", "SSDT", 2, "XIAOMI", "NITROGE", 3)
{
    External (\_SB.GIO0, DeviceObj)
    External (\_SB.I2C4, DeviceObj)

    Scope (\_SB)
    {
        Name (PSUB, "MTP00636")

        Device (TSC1)
        {
            Alias (\_SB.PSUB, _SUB)

            Name (_HID, "GDGT9XXT")
            Name (_DEP, Package () { \_SB.GIO0, \_SB.I2C4 })

            Name (_CRS, ResourceTemplate ()
            {
                I2cSerialBus (0x5D, ControllerInitiated, 0x00061A80, AddressingMode7Bit, "\\_SB.I2C4", 0x00, ResourceConsumer, , )

                GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000, "\\_SB.GIO0", 0x00, ResourceConsumer, , ) { 0x43 }
            })

            Method (_STA, 0, NotSerialized) { Return (0x0F) }
        }
    }
}
