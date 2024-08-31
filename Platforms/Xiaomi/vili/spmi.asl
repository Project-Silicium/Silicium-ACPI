//
// SPMI
//
Device (SPMI)
{
    Alias(\_SB.PSUB, _SUB)                                                                                                              // Subsystem ID

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status

    Name (_HID, "QCOM1A0B")                                                                                                             // Hardware ID
    Name (_CID, "PNP0CA2")                                                                                                              // Compatible ID
    Name (_UID, 1)                                                                                                                      // Unique ID
    Name (_CCA, 0)                                                                                                                      // Cache Coherency Attribute

    Name (_CRS, ResourceTemplate ()                                                                                                     // Current Resource Settings
    {
        Memory32Fixed (ReadWrite, 0x0C400000, 0x02800000)                                                                               // SPMI Base Address & Length
    })

    Name (CONF, Buffer ()                                                                                                               // Configuration
    {
        0x00,                                                                                                                           // uThisOwnerNumber
        0x01,                                                                                                                           // Polling Mode
        0x01,                                                                                                                           // Enable Reserved Channel
        0x01, 0xFF,                                                                                                                     // Reserved Channel Number (Upper Byte, Lower Byte)
        0x00,                                                                                                                           // Enable Dynamic Channel Mode
        0x02, 0x00,                                                                                                                     // Number of Channels (Upper Byte, Lower Byte)
        0x0A,                                                                                                                           // Number of Port Priorities
        0x07,                                                                                                                           // Number of PVC Ports
        0x04,                                                                                                                           // Number of PVC Port PPIDs
        0x07,                                                                                                                           // Number of Masters
        0x01, 0xFF,                                                                                                                     // Number of Mapping Table Entries (Upper Byte, Lower Byte)
        0x10,                                                                                                                           // Number of PIC Accumulated Status Registers
        0x01, 0x00,                                                                                                                     // Number of Program RAM REGS (Upper Byte, Lower Byte)
        0x01,                                                                                                                           // Number of SPMI Bus Controllers
        0x0C, 0x40, 0x00, 0x00,                                                                                                         // Physical Address 0 (Byte3, Byte2, Byte1, Byte0)
        0x02, 0x80, 0x00, 0x00                                                                                                          // Physical Length 0  (Byte3, Byte2, Byte1, Byte0)
    })
}
