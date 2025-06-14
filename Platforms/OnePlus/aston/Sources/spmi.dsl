Device (SPMI)
{
	Name (_HID, "QCOM0C0B")  // _HID: Hardware ID
	Alias (\_SB.PSUB, _SUB)
	Name (_CID, "PNP0CA2")  // _CID: Compatible ID
	Name (_UID, Zero)  // _UID: Unique ID
	Name (_CCA, Zero)  // _CCA: Cache Coherency Attribute
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x0C400000,         // Address Base
				0x00500000,         // Address Length
				)
		})
		Return (RBUF) /* \_SB_.SPMI._CRS.RBUF */
	}

	Method (CONF, 0, NotSerialized)
	{
		Name (XBUF, Buffer (0x34)
		{
			/* 0000 */  0x00, 0x01, 0x01, 0x03, 0x7F, 0x00, 0x03, 0x80,  // ........
			/* 0008 */  0x0B, 0x08, 0x08, 0x0A, 0x03, 0x7F, 0x1C, 0x01,  // ........
			/* 0010 */  0x00, 0x02, 0x0C, 0x40, 0x00, 0x00, 0x00, 0x50,  // ...@...P
			/* 0018 */  0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x7F, 0x00,  // ........
			/* 0020 */  0x00, 0x80, 0x03, 0x00, 0x00, 0x0A, 0x00, 0x7F,  // ........
			/* 0028 */  0x04, 0x01, 0x00, 0x02, 0x0C, 0x40, 0x00, 0x00,  // .....@..
			/* 0030 */  0x00, 0x50, 0x00, 0x00                           // .P..
		})
		Return (XBUF) /* \_SB_.SPMI.CONF.XBUF */
	}
}