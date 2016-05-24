package chartdata.hd
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class HD_WaterFlowSource
	{
		public function HD_WaterFlowSource()
		{
		}
		
		/**
		 *河道沿程流量（m³/s）数据---X轴为距离（m），Y轴为流量（m³/s）
		 */
		public var waterFlowData:ArrayCollection = new ArrayCollection(
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
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
					"yField":"flow",
					"xFieldName":"距离（m）",
					"yFieldName":"流量（m³/s）",
					"nodeList":
					[
						{
							"distance": "0",
							"flow": 30
						},
						{
							"distance": "10",
							"flow": 40
						},
						{
							"distance": "25",
							"flow": 43
						},
						{
							"distance": "40",
							"flow": 35
						},
						{
							"distance": "50",
							"flow": 30
						},
						{
							"distance": "60",
							"flow": 25
						},
						{
							"distance": "70",
							"flow": 40
						},
						{
							"distance": "75",
							"flow": 55
						},
						{
							"distance": "90",
							"flow": 40
						},
						{
							"distance": "100",
							"flow": 36
						},
						{
							"distance": "110",
							"flow": 48
						},
						{
							"distance": "116",
							"flow": 40
						},
						{
							"distance": "125",
							"flow": 30
						},
						{
							"distance": "130",
							"flow": 45
						},
						{
							"distance": "150",
							"flow": 30
						},
						{
							"distance": "150",
							"flow": 40
						},
						{
							"distance": "171",
							"flow": 44
						},
						{
							"distance": "175",
							"flow": 48
						},
						{
							"distance":"180",
							"flow": 45
						},
						{
							"distance": "200",
							"flow": 35
						},
						{
							"distance": "204",
							"flow": 40
						},
						{
							"distance": "210",
							"flow": 50
						},
						{
							"distance": "215",
							"flow": 35
						},
						{
							"distance": "216",
							"flow": 45
						},
						{
							"distance": "220",
							"flow": 50
						}
					]
				}
			]
		);
	}
}