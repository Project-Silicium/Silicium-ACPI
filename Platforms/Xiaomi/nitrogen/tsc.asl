Device(TSC1)
{
    Name(_HID, "GDGT9XXT")
    Alias(\_SB_.PSUB, _SUB)
    Name(_DEP, Package()
    {
        \_SB_.GIO0,
		\_SB_.I2C4
    })
    Method(_CRS, 0x0, NotSerialized)
    {
        Name(RBUF, ResourceTemplate()
        {
            I2cSerialBus (0x005D, ControllerInitiated, 0x00061A80,
                AddressingMode7Bit, "\\_SB.I2C4",
                0x00, ResourceConsumer, ,
                )
            GpioInt (Level, ActiveLow, Exclusive, PullNone, 0x0000,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{
					0x0043
				}
		})
        Return(RBUF)
    }
}
