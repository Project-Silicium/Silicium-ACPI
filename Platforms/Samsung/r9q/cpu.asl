//
// CPU Cores & Clusters
//
Device (SYSM)
{
    Name (_HID, "ACPI0010")                                                                                                             // Hardware ID
    Name (_UID, 2)                                                                                                                      // Unique ID

    Name (_LPI, Package ()                                                                                                              // Low Power Idle States
    {
        0,                                                                                                                              // Version
        0x1000000,                                                                                                                      // Level ID
        1,                                                                                                                              // Count

        Package ()
        {
            9500,                                                                                                                       // Minimal Residency (us)
            6000,                                                                                                                       // Wake Latency      (us)
            1,                                                                                                                          // Enable State
            0x20,                                                                                                                       // Arch Context Flag
            0,                                                                                                                          // Residency Counter Frequency
            0,                                                                                                                          // Parent Enable State
            0xC300,                                                                                                                     // Integer Entry Method

            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                                // Residency Counter Register
            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                                // Usage Counter Register

            "platform.DRIPS"                                                                                                            // Name
        }
    })

    Device (CLUS)
    {
        Name (_HID, "ACPI0010")                                                                                                         // Hardware ID
        Name (_UID, 1)                                                                                                                  // Unique ID

        Name (_LPI, Package ()                                                                                                          // Low Power Idle States
        {
            0,                                                                                                                          // Version
            0x1000000,                                                                                                                  // Level ID
            2,                                                                                                                          // Count

            Package ()
            {
                5900,                                                                                                                   // Minimal Residency (us)
                3000,                                                                                                                   // Wake Latency      (us)
                0,                                                                                                                      // Enable State
                0,                                                                                                                      // Arch Context Flag
                0,                                                                                                                      // Residency Counter Frequency
                0,                                                                                                                      // Parent Enable State
                0x20,                                                                                                                   // Integer Entry Method

                ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                            // Residency Counter Register
                ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                            // Usage Counter Register

                "L3Cluster.D2"                                                                                                          // Name
            }, 

            Package ()
            {
                6000,                                                                                                                   // Minimal Residency (us)
                3300,                                                                                                                   // Wake Latency      (us)
                1,                                                                                                                      // Enable State
                0,                                                                                                                      // Arch Context Flag
                0,                                                                                                                      // Residency Counter Frequency
                1,                                                                                                                      // Parent Enable State
                0x40,                                                                                                                   // Integer Entry Method

                ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                            // Residency Counter Register
                ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                            // Usage Counter Register

                "L3Cluster.D4"                                                                                                          // Name
            }
        })

        Device (CPU0)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 0)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver0.C1"                                                                                                    // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver0.C2"                                                                                                    // Name
                }, 

                Package ()
                {
                    3850,                                                                                                               // Minimal Residency (us)
                    860,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver0.C3"                                                                                                    // Name
                }, 

                Package ()
                {
                    3950,                                                                                                               // Minimal Residency (us)
                    910,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver0.C4"                                                                                                    // Name
                }
            })
        }

        Device (CPU1)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 1)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver1.C1"                                                                                                    // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver1.C2"                                                                                                    // Name
                }, 

                Package ()
                {
                    3850,                                                                                                               // Minimal Residency (us)
                    860,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver1.C3"                                                                                                    // Name
                }, 

                Package ()
                {
                    3950,                                                                                                               // Minimal Residency (us)
                    910,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver1.C4"                                                                                                    // Name
                }
            })
        }

        Device (CPU2)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 2)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver2.C1"                                                                                                    // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver2.C2"                                                                                                    // Name
                }, 

                Package ()
                {
                    3850,                                                                                                               // Minimal Residency (us)
                    860,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver2.C3"                                                                                                    // Name
                }, 

                Package ()
                {
                    3950,                                                                                                               // Minimal Residency (us)
                    910,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver2.C4"                                                                                                    // Name
                }
            })
        }

        Device (CPU3)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 3)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver3.C1"                                                                                                    // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver3.C2"                                                                                                    // Name
                }, 

                Package ()
                {
                    3850,                                                                                                               // Minimal Residency (us)
                    860,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver3.C3"                                                                                                    // Name
                }, 

                Package ()
                {
                    3950,                                                                                                               // Minimal Residency (us)
                    910,                                                                                                                // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoSilver3.C4"                                                                                                    // Name
                }
            })
        }

        Device (CPU4)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 4)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold0.C1"                                                                                                      // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold0.C2"                                                                                                      // Name
                }, 

                Package ()
                {
                    3990,                                                                                                               // Minimal Residency (us)
                    1000,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold0.C3"                                                                                                      // Name
                }, 

                Package ()
                {
                    4490,                                                                                                               // Minimal Residency (us)
                    1500,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold0.C4"                                                                                                      // Name
                }
            })
        }

        Device (CPU5)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 5)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold1.C1"                                                                                                      // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold1.C2"                                                                                                      // Name
                }, 

                Package ()
                {
                    3990,                                                                                                               // Minimal Residency (us)
                    1000,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold1.C3"                                                                                                      // Name
                }, 

                Package ()
                {
                    4490,                                                                                                               // Minimal Residency (us)
                    1500,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold1.C4"                                                                                                      // Name
                }
            })
        }

        Device (CPU6)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 6)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold2.C1"                                                                                                      // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold2.C2"                                                                                                      // Name
                }, 

                Package ()
                {
                    3990,                                                                                                               // Minimal Residency (us)
                    1000,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold2.C3"                                                                                                      // Name
                }, 

                Package ()
                {
                    4490,                                                                                                               // Minimal Residency (us)
                    1500,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoGold2.C4"                                                                                                      // Name
                }
            })
        }

        Device (CPU7)
        {
            Name (_HID, "ACPI0007")                                                                                                     // Hardware ID
            Name (_UID, 7)                                                                                                              // Unique ID

            Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                                           // Status

            Name (_LPI, Package ()                                                                                                      // Low Power Idle States
            {
                0,                                                                                                                      // Version
                0,                                                                                                                      // Level ID
                4,                                                                                                                      // Count

                Package ()
                {
                    0,                                                                                                                  // Minimal Residency (us)
                    0,                                                                                                                  // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    0,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoPrime0.C1"                                                                                                     // Name
                }, 

                Package ()
                {
                    400,                                                                                                                // Minimal Residency (us)
                    100,                                                                                                                // Wake Latency      (us)
                    0,                                                                                                                  // Enable State
                    0,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoPrime0.C2"                                                                                                     // Name
                }, 

                Package ()
                {
                    3990,                                                                                                               // Minimal Residency (us)
                    1000,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    1,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoPrime0.C3"                                                                                                     // Name
                }, 

                Package ()
                {
                    4490,                                                                                                               // Minimal Residency (us)
                    1500,                                                                                                               // Wake Latency      (us)
                    1,                                                                                                                  // Enable State
                    1,                                                                                                                  // Arch Context Flag
                    0,                                                                                                                  // Residency Counter Frequency
                    2,                                                                                                                  // Parent Enable State

                    ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                            // Register Entry Method
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Residency Counter Register
                    ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                                    // Usage Counter Register

                    "KryoPrime0.C4"                                                                                                     // Name
                }
            })
        }
    }
}
