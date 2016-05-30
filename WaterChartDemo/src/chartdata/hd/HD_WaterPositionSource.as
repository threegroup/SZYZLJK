package chartdata.hd
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class HD_WaterPositionSource
	{
		public function HD_WaterPositionSource()
		{
		}
		
		/**
		 *河道沿程水位数据---X轴为距离，Y轴为水位
		 */
		public var waterPositionData:ArrayCollection = new ArrayCollection(
			[
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"1月",
					"color":"0x8F8FD2",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"高程（m）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"2月",
					"color":"0x8F00D2",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"3月",
					"color":"0x008FD2",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"4月",
					"color":"0x558FD2",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"5月",
					"color":"0x8F22D2",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"6月",
					"color":"0x8FCC77",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"7月",
					"color":"0x8F3366",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"8月",
					"color":"0xD28F55",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"9月",
					"color":"0x8FAF44",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"10月",
					"color":"0x8D233",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"11月",
					"color":"0xFF8F22",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"河道名称",
					"sectionCode":"河道编码",
					"year":"2016",
					"label":"12月",
					"color":"0x8F0011",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"altitude": 30
						},
						{
							"distance": "10",
							"altitude": 40
						},
						{
							"distance": "25",
							"altitude": 43
						},
						{
							"distance": "40",
							"altitude": 35
						},
						{
							"distance": "50",
							"altitude": 30
						},
						{
							"distance": "60",
							"altitude": 25
						},
						{
							"distance": "70",
							"altitude": 40
						},
						{
							"distance": "75",
							"altitude": 55
						},
						{
							"distance": "90",
							"altitude": 40
						},
						{
							"distance": "100",
							"altitude": 36
						},
						{
							"distance": "110",
							"altitude": 48
						},
						{
							"distance": "116",
							"altitude": 40
						},
						{
							"distance": "125",
							"altitude": 30
						},
						{
							"distance": "130",
							"altitude": 45
						},
						{
							"distance": "150",
							"altitude": 30
						},
						{
							"distance": "150",
							"altitude": 40
						},
						{
							"distance": "171",
							"altitude": 44
						},
						{
							"distance": "175",
							"altitude": 48
						},
						{
							"distance":"180",
							"altitude": 45
						},
						{
							"distance": "200",
							"altitude": 35
						},
						{
							"distance": "204",
							"altitude": 40
						},
						{
							"distance": "210",
							"altitude": 50
						},
						{
							"distance": "215",
							"altitude": 35
						},
						{
							"distance": "216",
							"altitude": 45
						},
						{
							"distance": "220",
							"altitude": 50
						}
					]
				}
			]
		);
	}
}