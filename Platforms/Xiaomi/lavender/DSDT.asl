DefinitionBlock ("DSDT.aml", "DSDT", 2, "QCOM  ", "SDM660  ", 3)
{
    Scope (\_SB)
    {
        //
        // Global Variables
        //
        Name (PSUB, "MTP00660")

        //
        // eMMC
        //
        Include ("emmc.asl")

        //
        // CPU Cores & Clusters
        //
        Include ("cpu.asl")

        //
        // USB Port (Incomplete)
        //
        Include ("usb.asl")
    }
}
