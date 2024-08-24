/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20230628 (64-bit version)
 * Copyright (c) 2000 - 2023 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT_minimal.aml
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000009F8 (2552)
 *     Revision         0x02
 *     Checksum         0xF6
 *     OEM ID           "QCOMM "
 *     OEM Table ID     "SM8550 "
 *     OEM Revision     0x00000003 (3)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x05000000 (83886080)
 */
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

