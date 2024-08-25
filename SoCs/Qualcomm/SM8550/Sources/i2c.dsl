Device (I2C9)
{
	Name (_HID, "QCOM0C10")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x09)  // _UID: Unique ID
	Name (_STR, Unicode ("QUP_1_SE_1"))
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
				0x00880000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x00000195,
			}
		})
		Return (RBUF) /* \_SB_.I2C9._CRS.RBUF */
	}
}

Device (I2CB)
{
	Name (_HID, "QCOM0C10")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x0B)  // _UID: Unique ID
	Name (_STR, Unicode ("QUP_1_SE_2"))
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
				0x00888000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x00000268,
			}
		})
		Return (RBUF) /* \_SB_.I2CB._CRS.RBUF */
	}
}

Device (I2CD)
{
	Name (_HID, "QCOM0C10")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEA")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, 0x0D)  // _UID: Unique ID
	Name (_STR, Unicode ("QUP_1_SE_3"))
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
				0x00890000,         // Address Base
				0x00004000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x0000026a,
			}
		})
		Return (RBUF) /* \_SB_.I2CD._CRS.RBUF */
	}
}
