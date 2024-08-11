//
// eMMC (Embedded Multi-Media Card)
//
Device (SDC1)
{
    Name (_HID, "QCOM24BF")                                                                                                             // Hardware ID
    Name (_CID, "ACPI\QCOM24BF")                                                                                                        // Compatible ID
    Name (_UID, 0)                                                                                                                      // Unique ID
    Name (_CCA, 0)                                                                                                                      // Cache Coherency Attribute

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status

    Name (_CRS, ResourceTemplate ()
    {
        Memory32Fixed (ReadWrite, 0x0C0C4000, 0x00001000)                                                                               // eMMC Base Address & Length
 
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x8E }                                                        // Interrupt
        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x90 }                                                        // Interrupt
    })

    Device (EMMC)
    {
        Method (_ADR, 0, NotSerialized) { Return (0x08) }                                                                               // Address
        Method (_RMV, 0, NotSerialized) { Return (0x00) }                                                                               // Removal Status
    }

    Method (_DIS, 0, NotSerialized) {}                                                                                                  // Disable Device
}
