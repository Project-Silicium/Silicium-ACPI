DefinitionBlock ("DSDT_minimal.aml", "DSDT", 2, "QCOM  ", "SDM660 ", 0x00000003)
{
    Scope (\_SB)
    {
        Device (SYSM)
        {
            Name (_HID, "ACPI0010")                                                                                                     // Hardware ID
            Name (_UID, 4)                                                                                                              // Unique ID

            Device (APC0)
            {
                Name (_HID, "ACPI0010")                                                                                                 // Hardware ID
                Name (_UID, 3)                                                                                                          // Unique ID

                Name (_LPI, Package ()                                                                                                  // Low Power Idle States
                {
                    0,                                                                                                                  // Version
                    0x2000000,                                                                                                          // Level ID
                    3,                                                                                                                  // Count

                    Package ()
                    {
                        3000,                                                                                                           // Minimal Residency (us)
                        1100,                                                                                                           // Wake Latency      (us)
                        1,                                                                                                              // Enable State
                        0,                                                                                                              // Arch Context Flag
                        0,                                                                                                              // Residency Counter Frequency
                        0,                                                                                                              // Parent Enable State
                        0x400,                                                                                                          // Integer Entry Method

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Residency Counter Register
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Usage Counter Register

                        "CCI.E3"                                                                                                        // Name
                    }, 

                    Package ()
                    {
                        3500,                                                                                                           // Minimal Residency (us)
                        1150,                                                                                                           // Wake Latency      (us)
                        1,                                                                                                              // Enable State
                        0,                                                                                                              // Arch Context Flag
                        0,                                                                                                              // Residency Counter Frequency
                        0,                                                                                                              // Parent Enable State
                        0x500,                                                                                                          // Integer Entry Method

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Residency Counter Register
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Usage Counter Register

                        "CCI.E3+RPM"                                                                                                    // Name
                    }, 

                    Package ()
                    {
                        33000,                                                                                                          // Minimal Residency (us)
                        500,                                                                                                            // Wake Latency      (us)
                        1,                                                                                                              // Enable State
                        32,                                                                                                             // Arch Context Flag
                        0,                                                                                                              // Residency Counter Frequency
                        0,                                                                                                              // Parent Enable State
                        0x300,                                                                                                          // Integer Entry Method

                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Residency Counter Register
                        ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                    // Usage Counter Register


                        "platform.xo"                                                                                                   // Name
                    }
                })

                Device (CLU0)
                {
                    Name (_HID, "ACPI0010")                                                                                             // Hardware ID
                    Name (_UID, 1)                                                                                                      // Unique ID

                    Name (_LPI, Package ()                                                                                              // Low Power Idle States
                    {
                        0,                                                                                                              // Version
                        0x1000000,                                                                                                      // Level ID
                        3,                                                                                                              // Count

                        Package ()
                        {
                            300,                                                                                                        // Minimal Residency (us)
                            130,                                                                                                        // Wake Latency      (us)
                            0,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            0,                                                                                                          // Parent Enable State
                            0x20,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Silver.D2d"                                                                                             // Name
                        }, 

                        Package ()
                        {
                            350,                                                                                                        // Minimal Residency (us)
                            150,                                                                                                        // Wake Latency      (us)
                            0,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            0,                                                                                                          // Parent Enable State
                            0x30,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Silver.D2e"                                                                                             // Name
                        }, 

                        Package ()
                        {
                            6400,                                                                                                       // Minimal Residency (us)
                            900,                                                                                                        // Wake Latency      (us)
                            1,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            3,                                                                                                          // Parent Enable State
                            0x40,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Silver.D4"                                                                                              // Name
                        }
                    })

                    Device (CPU0)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 0)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver0.C1"                                                                                        // Name
                            }, 

                            Package ()
                            {
                                400,                                                                                                    // Minimal Residency (us)
                                100,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver0.C2d"                                                                                       // Name
                            }, 

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver0.C3"                                                                                        // Name
                            },

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver0.C3_NI"                                                                                     // Name
                            }
                        })
                    }

                    Device (CPU1)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 1)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver1.C1"                                                                                        // Name
                            }, 

                            Package ()
                            {
                                400,                                                                                                    // Minimal Residency (us)
                                100,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver1.C2d"                                                                                       // Name
                            }, 

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver1.C3"                                                                                        // Name
                            },

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver1.C3_NI"                                                                                     // Name
                            }
                        })
                    }

                    Device (CPU2)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 2)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver2.C1"                                                                                        // Name
                            }, 

                            Package ()
                            {
                                400,                                                                                                    // Minimal Residency (us)
                                100,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver2.C2d"                                                                                       // Name
                            }, 

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver2.C3"                                                                                        // Name
                            },

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver2.C3_NI"                                                                                     // Name
                            }
                        })
                    }

                    Device (CPU3)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 3)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver3.C1"                                                                                        // Name
                            }, 

                            Package ()
                            {
                                400,                                                                                                    // Minimal Residency (us)
                                100,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver3.C2d"                                                                                       // Name
                            }, 

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver3.C3"                                                                                        // Name
                            },

                            Package ()
                            {
                                450,                                                                                                    // Minimal Residency (us)
                                300,                                                                                                    // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoSilver3.C3_NI"                                                                                     // Name
                            }
                        })
                    }
                }

                Device (CLU1)
                {
                    Name (_HID, "ACPI0010")                                                                                             // Hardware ID
                    Name (_UID, 1)                                                                                                      // Unique ID

                    Name (_LPI, Package ()                                                                                              // Low Power Idle States
                    {
                        0,                                                                                                              // Version
                        0x1000000,                                                                                                      // Level ID
                        3,                                                                                                              // Count

                        Package ()
                        {
                            900,                                                                                                        // Minimal Residency (us)
                            200,                                                                                                        // Wake Latency      (us)
                            0,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            0,                                                                                                          // Parent Enable State
                            0x20,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Gold.D2d"                                                                                               // Name
                        }, 

                        Package ()
                        {
                            1000,                                                                                                       // Minimal Residency (us)
                            400,                                                                                                        // Wake Latency      (us)
                            0,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            0,                                                                                                          // Parent Enable State
                            0x30,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Gold.D2e"                                                                                               // Name
                        }, 

                        Package ()
                        {
                            6000,                                                                                                       // Minimal Residency (us)
                            1200,                                                                                                       // Wake Latency      (us)
                            1,                                                                                                          // Enable State
                            0,                                                                                                          // Arch Context Flag
                            0,                                                                                                          // Residency Counter Frequency
                            3,                                                                                                          // Parent Enable State
                            0x40,                                                                                                       // Integer Entry Method

                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Residency Counter Register
                            ResourceTemplate () { Register (SystemMemory, 0, 0, 0, 0) },                                                // Usage Counter Register

                            "L2_Gold.D4"                                                                                                // Name
                        }
                    })

                    Device (CPU4)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 4)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold0.C1"
                            }, 

                            Package ()
                            {
                                600,                                                                                                    // Minimal Residency (us)
                                80,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold0.C2d"                                                                                         // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold0.C3"                                                                                          // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold0.C3_NI"                                                                                       // Name
                            }
                        })
                    }

                    Device (CPU5)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 5)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold1.C1"
                            }, 

                            Package ()
                            {
                                600,                                                                                                    // Minimal Residency (us)
                                80,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold1.C2d"                                                                                         // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold1.C3"                                                                                          // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold1.C3_NI"                                                                                       // Name
                            }
                        })
                    }

                    Device (CPU6)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 6)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold2.C1"
                            }, 

                            Package ()
                            {
                                600,                                                                                                    // Minimal Residency (us)
                                80,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold2.C2d"                                                                                         // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold2.C3"                                                                                          // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold2.C3_NI"                                                                                       // Name
                            }
                        })
                    }

                    Device (CPU7)
                    {
                        Name (_HID, "ACPI0007")                                                                                         // Hardware ID
                        Name (_UID, 7)                                                                                                  // Unique ID

                        Method (_STA, 0, NotSerialized) { Return (0x0F) }                                                               // Status

                        Name (_LPI, Package ()                                                                                          // Low Power Idle States
                        {
                            0,                                                                                                          // Version
                            0,                                                                                                          // Level ID
                            4,                                                                                                          // Count

                            Package ()
                            {
                                0,                                                                                                      // Minimal Residency (us)
                                0,                                                                                                      // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0xFFFFFFFF, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold3.C1"
                            }, 

                            Package ()
                            {
                                600,                                                                                                    // Minimal Residency (us)
                                80,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                0,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                0,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x00000002, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold3.C2d"                                                                                         // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                1,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000003, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold3.C3"                                                                                          // Name
                            }, 

                            Package ()
                            {
                                7000,                                                                                                   // Minimal Residency (us)
                                90,                                                                                                     // Wake Latency      (us)
                                0,                                                                                                      // Enable State
                                1,                                                                                                      // Arch Context Flag
                                0,                                                                                                      // Residency Counter Frequency
                                3,                                                                                                      // Parent Enable State

                                ResourceTemplate () { Register (FFixedHW,     0x20, 0, 0x40000004, 3) },                                // Register Entry Method
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Residency Counter Register
                                ResourceTemplate () { Register (SystemMemory, 0,    0, 0,  0) },                                        // Usage Counter Register

                                "KryoGold3.C3_NI"                                                                                       // Name
                            }
                        })
                    }
                }
            }
        }
    }
}
