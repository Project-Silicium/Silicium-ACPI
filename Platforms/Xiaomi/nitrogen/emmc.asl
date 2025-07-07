Device (SDC1)
{
    Name (_HID, "QCOMF294")  // _HID: Hardware ID
    Name (_CID, "ACPI\QCOMF294")  // _CID: Compatible ID
    Name (_UID, Zero)  // _UID: Unique ID
    Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
    {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite,
                0x0C0C4000,         // Address Base
                0x00001000,         // Address Length
                )
            
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 142 }
            //hc_irq + GIC SPI = 110 + 32 = 142
        })
        Return (RBUF)
    }

    Device (EMMC)
    {
        Method (_ADR, 0, NotSerialized)  // _ADR: Address
        {
            Return (0x08)
        }

        Method (_RMV, 0, NotSerialized)  // _RMV: Removal Status
        {
            Return (0)
        }
    }

    Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
    {
    }

    Method (_STA, 0, NotSerialized)  // _STA: Status
    {
        Return (0x0F)
    }
}
