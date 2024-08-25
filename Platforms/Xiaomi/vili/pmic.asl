//
// PMIC Core
//
Device (PMIC)
{
    Alias (\_SB.PSUB, _SUB)                                                                                                             // Subsystem ID

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status

    Name (_HID, "QCOM1A2B")                                                                                                             // Hardware ID
    Name (_CID, "PNP0CA3")                                                                                                              // Compatible ID

    Name (_DEP, Package () { \_SB.SPMI })                                                                                               // Operation Region Dependencies

    Name (PMCF, Package ()                                                                                                              // PMIC Configuration
    {
        0x0A,                                                                                                                           // Number of Packages

        Package ()
        {
            0x00,
            0x10
        },

        Package ()
        {
            0x01,
            0x10
        },

        Package ()
        {
            0x02,
            0x10
        },

        Package ()
        {
            0x03,
            0x10
        },

        Package ()
        {
            0x04,
            0x10
        },

        Package ()
        {
            0x05,
            0x10
        },

        Package ()
        {
            0x10,
            0x10
        },

        Package ()
        {
            0x10,
            0x10
        },

        Package ()
        {
            0x10,
            0x10
        },

        Package ()
        {
            0x10,
            0x10
        }
    })
}

//
// PMIC PM8350 Nr. 1
//
Device (PM01)
{
    Alias (\_SB.PSUB, _SUB)                                                                                                             // Subsystem ID

    Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                                   // Status

    Name (_HID, "QCOM1A2D")                                                                                                             // Hardware ID
    Name (_UID, 1)                                                                                                                      // Unique ID

    Name (_DEP, Package () { \_SB.PMIC })                                                                                               // Operation Region Dependencies

    Name (_CRS, ResourceTemplate ()                                                                                                     // Current Resource Settings
    {
        Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, ) { 0x201 }                                                          // Interrupt
    })

    Method (_DSM, 4, NotSerialized)                                                                                                     // Device-Specific Method
    {
        Switch (ToBuffer (Arg0))
        {
            Case (ToUUID ("4F248F40-D5E2-499F-834C-27758EA1CD3F"))                                                                      // GUID of GPIO Controller
            {
                Switch (ToInteger (Arg2))
                {
                    Case (0)
                    {
                        Return (Buffer () { 0x03 })
                    }

                    Case (1)
                    {
                        Return (Package () { 0x07, 0x06 })
                    }

                    Default
                    {
                        Break
                    }
                }
            }

            Default
            {
                Return (Buffer () { 0 })
            }
        }
    }
}
