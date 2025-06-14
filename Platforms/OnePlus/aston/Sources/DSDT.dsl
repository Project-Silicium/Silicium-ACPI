DefinitionBlock ("", "DSDT", 2, "QCOMM ", "SM8550 ", 0x00000003)
{
    Scope (\_SB)
    {
		Name (PSUB, "MTP08550")
        Name (PEPI, Zero)
		Name (FPID, 0xFFFF)
		Name (SVMJ, 0xFFFF)
		Name (TCMA, 0xDEADBEEF)
        Name (TCML, 0xBEEFDEAD)
        
		
		Include("cpu.dsl")
		//Include("gpio.dsl")
		//Include("spi.dsl")	
		Include("i2c.dsl")
		//Include("spmi.dsl")
		//Include("mmu.dsl")
		
		//Include("tree.dsl")
		Include("ufs.dsl")
		Include("battery.dsl")
		Include("usb.dsl")
    }
}

