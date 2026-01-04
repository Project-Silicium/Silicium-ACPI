DefinitionBlock ("SSDT.aml", "SSDT", 2, "MOTORO", "CAPRIP ", 3)
{
    External (\_SB.UFS0, DeviceObj)
    External (\_SB.SDC1, DeviceObj)

    Scope (\_SB)
    {
        Name (PSUB, "IDP06115")
    }

    Scope (\_SB.UFS0)
    {
        Method (_STA, 0, NotSerialized) { Return (0x00) }
    }

    Scope (\_SB.SDC1)
    {
        Method (_STA, 0, NotSerialized) { Return (0x0F) }
    }
}
