DefinitionBlock ("DSDT_minimal.aml", "DSDT", 2, "NVIDIA", "TEGRA210", 0x00000003)
{
    Scope (\_SB)
    {
        Device (CPU0)
        {
            Name (_HID, "ACPI0007")                                                                                                         // Hardware ID
            Name (_UID, 0)                                                                                                                  // Unique ID
        }

        Device (CPU1)
        {
            Name (_HID, "ACPI0007")                                                                                                         // Hardware ID
            Name (_UID, 1)                                                                                                                  // Unique ID
        }

        Device (CPU2)
        {
            Name (_HID, "ACPI0007")                                                                                                         // Hardware ID
            Name (_UID, 2)                                                                                                                  // Unique ID
        }

        Device (CPU3)
        {
            Name (_HID, "ACPI0007")                                                                                                         // Hardware ID
            Name (_UID, 3)                                                                                                                  // Unique ID
        }
    }
}
