Device (MMU0)
{
	Name (_HID, "QCOM0C09")  // _HID: Hardware ID
	Name (_UID, Zero)  // _UID: Unique ID
	Alias (\_SB.PSUB, _SUB)
	Alias (\_SB.SVMJ, _HRV)
	//Name (_DEP, Package (One)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0
	//})
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Return (ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x15000000,         // Address Base
				0x00100000,         // Address Length
				)
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000081,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000082,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000083,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000084,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000085,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000086,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000087,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000088,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000089,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008A,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008B,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008C,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008D,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008E,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000008F,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000090,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000091,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000092,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000093,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000094,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000095,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000096,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000D5,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000D6,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000D7,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000D8,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000D9,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DA,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DB,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DC,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DD,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DE,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000DF,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000000E0,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000015B,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000015C,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000015D,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000015E,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000015F,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000160,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000161,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000162,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000163,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000164,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000165,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000166,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000167,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000168,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000169,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016A,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016B,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016C,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016D,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016E,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000016F,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000170,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000171,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000172,
			}
		})
	}
}

Device (MMU1)
{
	Name (_HID, "QCOM0C09")  // _HID: Hardware ID
	Name (_UID, One)  // _UID: Unique ID
	Alias (\_SB.PSUB, _SUB)
	Alias (\_SB.SVMJ, _HRV)
	//Name (_DEP, Package (0x01)  // _DEP: Dependencies
	//{
	//	\_SB.PEP0
	//})
	Method (_STA, 0, NotSerialized)  // _STA: Status
	{
		Return (0x0F)
	}

	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Return (ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x03DA0000,         // Address Base
				0x00040000,         // Address Length
				)
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002C6,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002C7,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002C8,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002C9,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002CA,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002CB,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x000002CC,
			}
		})
	}
}

Device (IMM0)
{
	Name (_HID, "QCOM068F")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, Zero)  // _UID: Unique ID
}

Device (IMM1)
{
	Name (_HID, "QCOM068F")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, One)  // _UID: Unique ID
	Method (_STA, 0, NotSerialized)  // _STA: Status
	{
		Return (0x0F)
	}
}