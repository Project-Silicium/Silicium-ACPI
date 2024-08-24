
Device (I2C2)
{
	Name (_HID, "QCOM0C10")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x02)  // _UID: Unique ID
	Name (_STR, Unicode ("QUP_1_SE_4"))
	//Name (_DEP, Package (0x01)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0
	//})
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x00988000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x000001f2,
			}
		})
		Return (RBUF) /* \_SB_.I2C2._CRS.RBUF */
	}
}

Device (I2C5)
{
	Name (_HID, "QCOM0C10")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x05)  // _UID: Unique ID
	Name (_STR, Unicode ("QUP_1_SE_5"))
	//Name (_DEP, Package (0x01)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0
	//})
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x00994000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x000001f5,
			}
		})
		Return (RBUF) /* \_SB_.I2C5._CRS.RBUF */
	}
}