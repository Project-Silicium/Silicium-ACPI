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
        Include ("sdc.asl")

        //
        // PMIC
        //
        Include("pmic_core.asl")

        //
        // SPMI
        //
        Include("spmi.asl")

        //
        // CPU Cores & Clusters
        //
        Include ("pep_lpi.asl")

        //
        // USB Port (Incomplete)
        //
        Include ("usb.asl")

        //
        // Buttons
        //
        Include ("buttons.asl")
    }
}
