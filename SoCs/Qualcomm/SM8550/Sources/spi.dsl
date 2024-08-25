Device (SPIC)
{
	Name (_HID, "QCOM0C0E")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x0B)  // _UID: Unique ID
	//Name (_DEP, Package (0x03)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0, 
	//	\_SB.QGP0, 
	//	\_SB.MMU0
	//})
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x0088C000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x00000269,
			}
		})
		Return (RBUF) /* \_SB_.SPIC._CRS.RBUF */
	}
}

Device (SPI5)
{
	Name (_HID, "QCOM0C0E")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x05)  // _UID: Unique ID
	//Name (_DEP, Package (0x03)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0, 
	//	\_SB.QGP0, 
	//	\_SB.MMU0
	//})
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x00A90000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x00000185,
			}
		})
		Return (RBUF) /* \_SB_.SPI5._CRS.RBUF */
	}
}
