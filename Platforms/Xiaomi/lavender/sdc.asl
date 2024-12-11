//
// eMMC (Embedded Multi-Media Card)
//
Device (SDC1)
{
    Name (_HID, "QCOM24BF")                                                                                                             // Hardware ID
    Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)                                                                                                                      // Unique ID
    Name (_CCA, 0)                                                                                                                      // Cache Coherency Attribute

    Method(_STA)
        {
            Return (0xF) // Enaled
        }                                                                                   

    Method (_CRS, 0x0, NotSerialized) {
        Name (RBUF, ResourceTemplate ()
        {
            Memory32Fixed (ReadWrite, 0xC0C4000, 0x00001000)                                                                                // eMMC Base Address & Length
    
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) { 142 }                                                        // Interrupt
        })
        Return(RBUF)
    }

    Device (EMMC)
    {
        Method (_ADR) {
            Return (0x08)                                                                                                               // Address
        }                                                                               
        Method (_RMV) {
            Return (0x00)                                                                                                               // Removal Status
        }                                                                               
    }

    Method (_DIS)                                                                                                                       // Disable Device
    {
    }                                                                                                  
}

//
// SD Card (Secure Digital Card)
//
Device (SDC2)
{
    Name (_HID, "QCOM2466")                                                                                                             // Hardware ID
    Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)                                                                                                                      // Unique ID
    Name (_CCA, 0)                                                                                                                      // Cache Coherency Attribute

    Method(_STA)
        {
            Return (0x0) // Disabled
        }                                                                                   

    Method (_CRS, 0x0, NotSerialized) {
       Name (RBUF, ResourceTemplate ()
       {
          Memory32Fixed (ReadWrite, 0xc084000, 0x00001000)                                                                                // SD Base Address & Length
    
            Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, , , ) { 157 }                                                        // Interrupt
        })
        Return(RBUF)
    }

    Method (_DIS)                                                                                                                       // Disable Device
    {
    }                                                                                                  
}
