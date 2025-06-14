Device (TREE)
{
	Name (_HID, "QCOM04DE")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEC")  // _CID: Compatible ID
	Alias (\_SB.PSUB, _SUB)
	Name (_UID, Zero)  // _UID: Unique ID
	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0xDEADBEEF,         // Address Base
				0xBEEFDEAD,         // Address Length
				_Y00)
		})
		CreateDWordField (RBUF, \_SB.TREE._CRS._Y00._BAS, TGCA)  // _BAS: Base Address
		CreateDWordField (RBUF, \_SB.TREE._CRS._Y00._LEN, TGCL)  // _LEN: Length
		TGCA = \_SB.TCMA
		TGCL = \_SB.TCML
		Return (RBUF) /* \_SB_.TREE._CRS.RBUF */
	}
}