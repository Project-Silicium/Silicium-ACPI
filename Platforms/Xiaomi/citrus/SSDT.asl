DefinitionBlock ("SSDT.aml", "SSDT", 2, "XIAOMI", "CITRUS ", 3)
{
    External (\_SB.UFS0, DeviceObj)
    External (\_SB.SDC1, DeviceObj)

    Scope (\_SB)
    {
        Name (PSUB, "MTP06115") // MTP is used as the Real Platform Type is Unknown!
    }

    Scope (\_SB.UFS0)
    {
        Method (_STA, 0, NotSerialized) { Return (0x0F) }
    }

    Scope (\_SB.SDC1)
    {
        Method (_STA, 0, NotSerialized) { Return (0x00) }
    }
}
  
