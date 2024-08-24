Device (GIO0)
{
	Name (_HID, "QCOM0C0C")  // _HID: Hardware ID
	Name (_CID, "QCOMFFEB")  // _CID: Compatible ID
	Name (_UID, Zero)  // _UID: Unique ID
	Alias (\_SB.PSUB, _SUB)
	OperationRegion (GPOR, GeneralPurposeIo, Zero, One)
	Field (\_SB.GIO0.GPOR, ByteAcc, NoLock, Preserve)
	{
		Connection (
			GpioIo (Shared, PullNone, 0x0000, 0x0000, IoRestrictionNone,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{   // Pin list
					0x0002
				}
		), 
		LIDR,   1
	}

	Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
	{
		Name (RBUF, ResourceTemplate ()
		{
			Memory32Fixed (ReadWrite,
				0x0F100000,         // Address Base
				0x00F00000,         // Address Length
				)
			Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
			{
				0x000000F0,
			}
			Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
			{
				0x000000F0,
			}
			Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
			{
				0x000000F0,
			}
			Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
			{
				0x000000F0,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x00000256,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x000002F8,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x00000253,
			}
			Interrupt (ResourceConsumer, Level, ActiveHigh, Shared, ,, )
			{
				0x00000293,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x0000025A,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x0000025C,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x00000285,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x00000282,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Shared, ,, )
			{
				0x00000289,
			}
			Interrupt (ResourceConsumer, Level, ActiveHigh, Exclusive, ,, )
			{
				0x00000241,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, SharedAndWake, ,, )
			{
				0x00000240,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x0000035E,
			}
			Interrupt (ResourceConsumer, Edge, ActiveHigh, Exclusive, ,, )
			{
				0x00000242,
			}
		})
		Return (RBUF) /* \_SB_.GIO0._CRS.RBUF */
	}

	Name (GABL, Zero)
	Method (_REG, 2, NotSerialized)  // _REG: Region Availability
	{
		If ((Arg0 == 0x08))
		{
			GABL = Arg1
		}
	}

	Method (_AEI, 0, NotSerialized)  // _AEI: ACPI Event Interrupts
	{
		Name (RBF0, ResourceTemplate ()
		{
			GpioInt (Edge, ActiveBoth, SharedAndWake, PullNone, 0x0000,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{   // Pin list
					0x0340
				}
			GpioInt (Edge, ActiveHigh, Exclusive, PullNone, 0x01F4,
				"\\_SB.GIO0", 0x00, ResourceConsumer, ,
				)
				{   // Pin list
					0x007E
				}
		})
		Return (RBF0) /* \_SB_.GIO0._AEI.RBF0 */
	}

	Method (_EVT, 1, NotSerialized)  // _EVT: Event
	{
		While (One)
		{
			Name (_T_0, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
			_T_0 = Arg0
			//If ((_T_0 == 0x0340))
			//{
			//    \_SB.LID0.LIDB = \_SB.GIO0.LIDR
			//    \_SB.GPU0.LIDB = \_SB.GIO0.LIDR
			//    Notify (\_SB.LID0, 0x80) // Status Change
			//}
			//ElseIf ((_T_0 == 0x7E))
			//{
			//    Notify (\_SB.GPU0, 0xD1) // Hardware-Specific
			//}

			Break
		}
	}

	Name (GPIV, Zero)
	Name (GPIC, 0xEE)
	Name (GPIW, 0x1000)
	Name (GPIB, Package (0x26)
	{
		Zero, 
		0x04, 
		0x08, 
		0x0C, 
		0x03, 
		Zero, 
		0x3C, 
		0x02, 
		0x01C0, 
		0x06, 
		0x0200, 
		0x09, 
		0x0400, 
		0x0A, 
		0x0800, 
		0x0B, 
		0x1000, 
		0x0C, 
		0x2000, 
		0x0D, 
		One, 
		Zero, 
		0x02, 
		One, 
		One, 
		Zero, 
		0x02, 
		One, 
		0x0C, 
		0x02, 
		0x10, 
		0x04, 
		0xE0, 
		0x05, 
		0x0100, 
		0x08, 
		One, 
		Zero
	})
	Name (GICB, 0x17000000)
	Name (GICS, 0x00390000)
	Name (GIC0, 0x0100)
	Name (GIC1, 0x0180)
	Name (GIC2, 0x0280)
	Name (GIC3, 0x0380)
	Name (PDCE, 0x0B220010)
	Name (PDCC, 0x0B220110)
	Name (PDCM, 0x4330)
	Name (PDCV, One)
	Name (CIPR, Package (0x5D)
	{
		Package (0x03)
		{
			0x71, 
			0x26, 
			0x028F
		}, 

		Package (0x03)
		{
			0x70, 
			0xA6, 
			0x028E
		}, 

		Package (0x03)
		{
			0x6F, 
			0xDD, 
			0x028D
		}, 

		Package (0x03)
		{
			0x6E, 
			0xDC, 
			0x028C
		}, 

		Package (0x03)
		{
			0x6D, 
			0xD9, 
			0x028B
		}, 

		Package (0x03)
		{
			0x6C, 
			0xC4, 
			0x028A
		}, 

		Package (0x03)
		{
			0x6B, 
			0x9D, 
			0x0289
		}, 

		Package (0x03)
		{
			0x6A, 
			0x41, 
			0x0288
		}, 

		Package (0x03)
		{
			0x69, 
			0x9C, 
			0x0287
		}, 

		Package (0x03)
		{
			0x68, 
			0x99, 
			0x0286
		}, 

		Package (0x03)
		{
			0x67, 
			0x97, 
			0x0285
		}, 

		Package (0x03)
		{
			0x66, 
			0x96, 
			0x0284
		}, 

		Package (0x03)
		{
			0x65, 
			0xB5, 
			0x0283
		}, 

		Package (0x03)
		{
			0x64, 
			0x9A, 
			0x0282
		}, 

		Package (0x03)
		{
			0x63, 
			0xAC, 
			0x0281
		}, 

		Package (0x03)
		{
			0x62, 
			0xA3, 
			0x025D
		}, 

		Package (0x03)
		{
			0x61, 
			0x94, 
			0x025C
		}, 

		Package (0x03)
		{
			0x60, 
			0x93, 
			0x025B
		}, 

		Package (0x03)
		{
			0x5F, 
			0x91, 
			0x025A
		}, 

		Package (0x03)
		{
			0x5E, 
			0x90, 
			0x0259
		}, 

		Package (0x03)
		{
			0x5D, 
			0x8D, 
			0x0258
		}, 

		Package (0x03)
		{
			0x5C, 
			0x1E, 
			0x0257
		}, 

		Package (0x03)
		{
			0x5B, 
			0x47, 
			0x0256
		}, 

		Package (0x03)
		{
			0x5A, 
			0x40, 
			0x0255
		}, 

		Package (0x03)
		{
			0x59, 
			0x35, 
			0x0254
		}, 

		Package (0x03)
		{
			0x58, 
			0x43, 
			0x0253
		}, 

		Package (0x03)
		{
			0x57, 
			0x3B, 
			0x0252
		}, 

		Package (0x03)
		{
			0x56, 
			0x0D, 
			0x0251
		}, 

		Package (0x03)
		{
			0x55, 
			0x0B, 
			0x0250
		}, 

		Package (0x03)
		{
			0x54, 
			0x71, 
			0x024F
		}, 

		Package (0x03)
		{
			0x53, 
			0x86, 
			0x024E
		}, 

		Package (0x03)
		{
			0x52, 
			0x83, 
			0x024D
		}, 

		Package (0x03)
		{
			0x51, 
			0x37, 
			0x024C
		}, 

		Package (0x03)
		{
			0x50, 
			0x27, 
			0x024B
		}, 

		Package (0x03)
		{
			0x4F, 
			0x33, 
			0x024A
		}, 

		Package (0x03)
		{
			0x4E, 
			0x1D, 
			0x0249
		}, 

		Package (0x03)
		{
			0x4D, 
			0x1C, 
			0x0248
		}, 

		Package (0x03)
		{
			0x4C, 
			0x81, 
			0x0247
		}, 

		Package (0x03)
		{
			0x4B, 
			0x7D, 
			0x0246
		}, 

		Package (0x03)
		{
			0x4A, 
			0x7B, 
			0x0245
		}, 

		Package (0x03)
		{
			0x49, 
			0x79, 
			0x0244
		}, 

		Package (0x03)
		{
			0x48, 
			Zero, 
			0x0243
		}, 

		Package (0x03)
		{
			0x47, 
			0x03, 
			0x0242
		}, 

		Package (0x03)
		{
			0x46, 
			0x02, 
			0x0241
		}, 

		Package (0x03)
		{
			0x45, 
			0x13, 
			0x0240
		}, 

		Package (0x03)
		{
			0x44, 
			0x0F, 
			0x023F
		}, 

		Package (0x03)
		{
			0x43, 
			0x07, 
			0x023E
		}, 

		Package (0x03)
		{
			0x91, 
			0x20, 
			0x0352
		}, 

		Package (0x03)
		{
			0x90, 
			0x1B, 
			0x0351
		}, 

		Package (0x03)
		{
			0x8F, 
			0x17, 
			0x0350
		}, 

		Package (0x03)
		{
			0x8E, 
			0x42, 
			0x02F8
		}, 

		Package (0x03)
		{
			0x8D, 
			0x5F, 
			0x02F7
		}, 

		Package (0x03)
		{
			0x8C, 
			0x5E, 
			0x02F6
		}, 

		Package (0x03)
		{
			0x8B, 
			0x5D, 
			0x02F5
		}, 

		Package (0x03)
		{
			0x8A, 
			0x5C, 
			0x02F4
		}, 

		Package (0x03)
		{
			0x89, 
			0x54, 
			0x02F3
		}, 

		Package (0x03)
		{
			0x88, 
			0xE6, 
			0x02F2
		}, 

		Package (0x03)
		{
			0x87, 
			0xE4, 
			0x02F1
		}, 

		Package (0x03)
		{
			0x86, 
			0xD0, 
			0x02F0
		}, 

		Package (0x03)
		{
			0x85, 
			0xCB, 
			0x02EF
		}, 

		Package (0x03)
		{
			0x84, 
			0xE1, 
			0x02EE
		}, 

		Package (0x03)
		{
			0x83, 
			0xE0, 
			0x02ED
		}, 

		Package (0x03)
		{
			0x82, 
			0x22, 
			0x02A0
		}, 

		Package (0x03)
		{
			0x81, 
			0x1A, 
			0x029F
		}, 

		Package (0x03)
		{
			0x80, 
			0x51, 
			0x029E
		}, 

		Package (0x03)
		{
			0x7E, 
			0x18, 
			0x029C
		}, 

		Package (0x03)
		{
			0x7D, 
			0x50, 
			0x029B
		}, 

		Package (0x03)
		{
			0x7C, 
			0xDE, 
			0x029A
		}, 

		Package (0x03)
		{
			0x7B, 
			0x06, 
			0x0299
		}, 

		Package (0x03)
		{
			0x7A, 
			0x12, 
			0x0298
		}, 

		Package (0x03)
		{
			0x79, 
			0xD6, 
			0x0297
		}, 

		Package (0x03)
		{
			0x78, 
			0xD4, 
			0x0296
		}, 

		Package (0x03)
		{
			0x77, 
			0xDB, 
			0x0295
		}, 

		Package (0x03)
		{
			0x76, 
			0xD7, 
			0x0294
		}, 

		Package (0x03)
		{
			0x75, 
			0xC1, 
			0x0293
		}, 

		Package (0x03)
		{
			0x74, 
			0xB8, 
			0x0292
		}, 

		Package (0x03)
		{
			0x73, 
			0x21, 
			0x0291
		}, 

		Package (0x03)
		{
			0x72, 
			0xAF, 
			0x0290
		}, 

		Package (0x03)
		{
			0x9D, 
			0x5B, 
			0x035E
		}, 

		Package (0x03)
		{
			0x9C, 
			0x57, 
			0x035D
		}, 

		Package (0x03)
		{
			0x9B, 
			0x55, 
			0x035C
		}, 

		Package (0x03)
		{
			0x9A, 
			0x53, 
			0x035B
		}, 

		Package (0x03)
		{
			0x99, 
			0x4F, 
			0x035A
		}, 

		Package (0x03)
		{
			0x98, 
			0x4B, 
			0x0359
		}, 

		Package (0x03)
		{
			0x97, 
			0x44, 
			0x0358
		}, 

		Package (0x03)
		{
			0x96, 
			0xD5, 
			0x0357
		}, 

		Package (0x03)
		{
			0x95, 
			0x2F, 
			0x0356
		}, 

		Package (0x03)
		{
			0x94, 
			0x2B, 
			0x0355
		}, 

		Package (0x03)
		{
			0x93, 
			0x24, 
			0x0354
		}, 

		Package (0x03)
		{
			0x92, 
			0x23, 
			0x0353
		}, 

		Package (0x03)
		{
			0xA2, 
			0xE8, 
			0x0363
		}, 

		Package (0x03)
		{
			0x9F, 
			0x1F, 
			0x0360
		}, 

		Package (0x03)
		{
			0x9E, 
			0x15, 
			0x035F
		}
	})
	Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
	{
		While (One)
		{
			Name (_T_0, Buffer (0x01)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
			{
				 0x00                                             // .
			})
			CopyObject (ToBuffer (Arg0), _T_0) /* \_SB_.GIO0._DSM._T_0 */
			If ((_T_0 == ToUUID ("4f248f40-d5e2-499f-834c-27758ea1cd3f") /* GPIO Controller */))
			{
				While (One)
				{
					Name (_T_1, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
					_T_1 = Arg2
					If ((_T_1 == Zero))
					{
						Return (Buffer (One)
						{
							 0x03                                             // .
						})
					}
					ElseIf ((_T_1 == One))
					{
						Return (Package (0x01)
						{
							0x01C0
						})
					}
					Else
					{
						BreakPoint
					}

					Break
				}
			}
			ElseIf ((_T_0 == ToUUID ("98b9b2a4-1663-4a5f-82f2-c6c99a394726") /* Unknown UUID */))
			{
				While (One)
				{
					Name (_T_2, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
					_T_2 = ToInteger (Arg2)
					If ((_T_2 == Zero))
					{
						While (One)
						{
							Name (_T_3, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
							_T_3 = ToInteger (Arg1)
							If ((_T_3 == Zero))
							{
								Return (Buffer (One)
								{
									 0x0F                                             // .
								})
							}
							Else
							{
								Return (Buffer (One)
								{
									 0x00                                             // .
								})
							}

							Break
						}
					}
					ElseIf ((_T_2 == One))
					{
						Debug = "GPIO Version"
						Return (GPIV) /* \_SB_.GIO0.GPIV */
					}
					ElseIf ((_T_2 == 0x02))
					{
						Debug = "GPIO Total number of pins"
						Return (GPIC) /* \_SB_.GIO0.GPIC */
					}
					ElseIf ((_T_2 == 0x03))
					{
						Debug = "GPIO pin to pin width"
						Return (GPIW) /* \_SB_.GIO0.GPIW */
					}
					ElseIf ((_T_2 == 0x04))
					{
						Debug = "GPIO Register Layout buffer"
						Return (GPIB) /* \_SB_.GIO0.GPIB */
					}
					Else
					{
						Return (Buffer (One)
						{
							 0x00                                             // .
						})
					}

					Break
				}
			}
			ElseIf ((_T_0 == ToUUID ("921b0fd4-567c-43a0-bb14-2648f7b2a18c") /* Unknown UUID */))
			{
				While (One)
				{
					Name (_T_4, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
					_T_4 = ToInteger (Arg2)
					If ((_T_4 == Zero))
					{
						While (One)
						{
							Name (_T_5, 0x00)  // _T_x: Emitted by ASL Compiler, x=0-9, A-Z
							_T_5 = ToInteger (Arg1)
							If ((_T_5 == Zero))
							{
								Return (Buffer (One)
								{
									 0x0F                                             // .
								})
							}
							Else
							{
								Return (Buffer (One)
								{
									 0x00                                             // .
								})
							}

							Break
						}
					}
					ElseIf ((_T_4 == One))
					{
						Debug = "PDC Version"
						Return (PDCV) /* \_SB_.GIO0.PDCV */
					}
					ElseIf ((_T_4 == 0x02))
					{
						Debug = "CIPR"
						Return (CIPR) /* \_SB_.GIO0.CIPR */
					}
					ElseIf ((_T_4 == 0x03))
					{
						Debug = "PDC Enable Register Address"
						Return (PDCE) /* \_SB_.GIO0.PDCE */
					}
					ElseIf ((_T_4 == 0x04))
					{
						Debug = "PDC Config Register Address"
						Return (PDCC) /* \_SB_.GIO0.PDCC */
					}
					ElseIf ((_T_4 == 0x05))
					{
						Debug = "PDC Config Register Mask"
						Return (PDCM) /* \_SB_.GIO0.PDCM */
					}
					ElseIf ((_T_4 == 0x06))
					{
						Debug = "GIC Physical Address"
						Return (GICB) /* \_SB_.GIO0.GICB */
					}
					ElseIf ((_T_4 == 0x07))
					{
						Debug = "GIC Size"
						Return (GICS) /* \_SB_.GIO0.GICS */
					}
					ElseIf ((_T_4 == 0x08))
					{
						Debug = "GIC IS ENABLE Offset"
						Return (GIC0) /* \_SB_.GIO0.GIC0 */
					}
					ElseIf ((_T_4 == 0x09))
					{
						Debug = "GIC IC ENABLE Offset"
						Return (GIC1) /* \_SB_.GIO0.GIC1 */
					}
					ElseIf ((_T_4 == 0x0A))
					{
						Debug = "GIC IC PEND Offset"
						Return (GIC2) /* \_SB_.GIO0.GIC2 */
					}
					ElseIf ((_T_4 == 0x0B))
					{
						Debug = "GIC IC STATUS Offset"
						Return (GIC3) /* \_SB_.GIO0.GIC3 */
					}
					Else
					{
						Return (Buffer (One)
						{
							 0x00                                             // .
						})
					}

					Break
				}
			}
			Else
			{
				Return (Buffer (One)
				{
					 0x00                                             // .
				})
			}

			Break
		}
	}
}