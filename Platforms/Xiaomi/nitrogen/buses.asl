Device (I2C4)
{
    Name (_HID, "QCOM601F")
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x04)
    Name(_DEP, Package()
    {
		\_SB_.BAM3
    })
    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x0C178000,
                0x00000600,
                )
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
            {
                0x82,
            }
        })
        Return (RBUF)
    }
    Method (FNOC, 0, NotSerialized)
    {
        Name (RBUF, Buffer (0x0E)
        {
            0x04, 0x00, 0x00, 0x40, 0x14, 0x0C, 0x0B, 0x0A,
            0x00, 0x04, 0x00, 0xF8, 0x24, 0x01
        })
        Return (RBUF)
    }
}
