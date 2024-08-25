//
// Buttons
//
Device (BTNS)
{
    Alias (\_SB.PSUB, _SUB)                                                                                                             // Subsystem ID

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status

    Name (_HID, "ACPI0011")                                                                                                             // Hardware ID
    Name (_UID, 0)                                                                                                                      // Unique ID

    Name (_CRS, ResourceTemplate ()                                                                                                     // Current Resource Settings
    {
        GpioInt (Edge, ActiveBoth, ExclusiveAndWake, PullDown, 0x0000, "\\_SB.PM01", ,) { 0x07 }                                        // Power Button       (Index: 0)
        GpioInt (Edge, ActiveBoth, Exclusive,        PullUp,   0x0BB8, "\\_SB.PM01", ,) { 0xC6 }                                        // Volume Up Button   (Index: 1)
        GpioInt (Edge, ActiveBoth, Exclusive,        PullDown, 0x0000, "\\_SB.PM01", ,) { 0x06 }                                        // Volume Down Button (Index: 2)
    })

    Name (_DSD, Package ()                                                                                                              // Device-Specific Data
    {
        ToUUID ("FA6BD625-9CE8-470D-A2C7-B3CA36C4282E"),                                                                                // HID Button Descriptor GUID

        Package ()                                                                                                                      // Data Structure for HID Button Descriptor
        {
            Package ()
            {
                0,                                                                                                                      // Type                (Collection)
                1,                                                                                                                      // Unique ID
                0,                                                                                                                      // Level Type          (Top-Level)
                1,                                                                                                                      // Page Type           (Generic Desktop Page)
                13                                                                                                                      // Control Type        (Portable Device Control)
            }, 

            Package ()
            {
                1,                                                                                                                      // Type                (Control)
                0,                                                                                                                      // Button Index
                1,                                                                                                                      // Unique ID of Parent
                1,                                                                                                                      // Page Type           (Generic Desktop Page)
                129                                                                                                                     // Button Function     (System Power Down)
            }, 

            Package ()
            {
                1,                                                                                                                      // Type                (Control)
                1,                                                                                                                      // Button Index
                1,                                                                                                                      // Unique ID of Parent
                12,                                                                                                                     // Page Type           (Consumer Page)
                233                                                                                                                     // Button Function     (Volume Increment)
            }, 

            Package ()
            {
                1,                                                                                                                      // Type                (Control)
                2,                                                                                                                      // Button Index
                1,                                                                                                                      // Unique ID of Parent
                12,                                                                                                                     // Page Type           (Consumer Page)
                234                                                                                                                     // Button Function     (Volume Decrement)
            }
        }
    })
}
