Device (GIO0)
{
    Name (_HID, "QCOM6016")
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, Zero)
    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x03000000,
                0x00C00000,
                )
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0xF0,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0xF0,
            }
            Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
            {
                0xF0,
            }
        })
        Return (RBUF)
    }

	// ACPI method to return Num pins
	Method(OFNI, 0x0, NotSerialized) {
		Name(RBUF, Buffer()
		{
			0x72,  // 0: TOTAL_GPIO_PINS
			0x00   // 1: TOTAL_GPIO_PINS
		})
		Return (RBUF)
	}

    Name (GABL, Zero)
    Method (_REG, 2, NotSerialized)
    {
        If ((Arg0 == 0x08))
        {
            GABL = Arg1
        }
    }
}
