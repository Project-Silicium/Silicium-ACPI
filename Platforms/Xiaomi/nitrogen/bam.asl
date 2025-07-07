Device (BAM3)
{
    Name (_HID, "QCOM6012")
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, 0x03)
    Name (_CCA, Zero)
    Method (_CRS, 0, NotSerialized)
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x0C144000,
                0x0001F000,
                )
            Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
            {
                270,
            }
        })
        Return (RBUF)
    }
}
