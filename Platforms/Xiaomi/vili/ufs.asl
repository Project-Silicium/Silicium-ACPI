//
// Internal Storage (UFS)
//
Device (UFS0)
{
    Alias (\_SB.PSUB, _SUB)                                                                                                             // Subsystem ID
    Alias (\_SB.EMUL, EMUL)

    Name (_HID, "QCOM24A5")                                                                                                             // Hardware ID
    Name (_UID, 0)                                                                                                                      // Unique ID
    Name (_CCA, 1)                                                                                                                      // Cache Coherency Attribute

    Name (_CRS, ResourceTemplate ()                                                                                                     // Current Resource Settings
    {
        Memory32Fixed (ReadWrite, 0x01D84000, 0x00015000)                                                                               // UFSHC Base & Length

        Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, ) { 0x129 }                                                       // Interrupt
    })

    Device (DEV0)
    {
        Method (_ADR, 0, NotSerialized) { Return (0x08) }                                                                               // Address
        Method (_RMV, 0, NotSerialized) { Return (0x00) }                                                                               // Removal Status
    }

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status
}
