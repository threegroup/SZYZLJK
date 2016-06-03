package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_WaterSpeedSource
	{
		public function DM_WaterSpeedSource()
		{
		}
		
		/**
		 *断面水流流速数据---X轴为时间，Y轴为水速（包含断面计算水速和监测水速）
		 */
		public var waterSpeedData:ArrayCollection = new ArrayCollection(
			[
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"断面监测流速",
					"color":"0xC2C2D2",
					"xField":"time",
					"yField":"speed",
					"xFieldName":"时间",
					"yFieldName":"流速（m/s）",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"speed": 30
						},
						{
							"time": "2016-05-02",
							"speed": 40
						},
						{
							"time": "2016-05-03",
							"speed": 43
						},
						{
							"time": "2016-05-04",
							"speed": 35
						},
						{
							"time": "2016-05-05",
							"speed": 30
						},
						{
							"time": "2016-05-06",
							"speed": 25
						},
						{
							"time": "2016-05-07",
							"speed": 40
						},
						{
							"time": "2016-05-08",
							"speed": 55
						},
						{
							"time": "2016-05-09",
							"speed": 40
						},
						{
							"time": "2016-05-10",
							"speed": 36
						},
						{
							"time": "2016-05-11",
							"speed": 48
						},
						{
							"time": "2016-05-12",
							"speed": 40
						},
						{
							"time": "2016-05-13",
							"speed": 30
						},
						{
							"time": "2016-05-14",
							"speed": 45
						},
						{
							"time": "2016-05-15",
							"speed": 30
						},
						{
							"time": "2016-05-16",
							"speed": 40
						},
						{
							"time": "2016-05-17",
							"speed": 44
						},
						{
							"time": "2016-05-18",
							"speed": 48
						},
						{
							"time":"2016-05-19",
							"speed": 45
						},
						{
							"time": "2016-05-20",
							"speed": 35
						},
						{
							"time": "2016-05-21",
							"speed": 40
						},
						{
							"time": "2016-05-22",
							"speed": 50
						},
						{
							"time": "2016-05-23",
							"speed": 35
						},
						{
							"time": "2016-05-24",
							"speed": 45
						},
						{
							"time": "2016-05-25",
							"speed": 50
						},
						{
							"time": "2016-05-26",
							"speed": 47
						},
						{
							"time": "2016-05-27",
							"speed": 30
						},
						{
							"time": "2016-05-28",
							"speed": 25
						},
						{
							"time": "2016-05-29",
							"speed": 30
						},
						{
							"time": "2016-05-30",
							"speed": 25
						},
						{
							"time": "2016-05-31",
							"speed": 40
						},
						{
							"time": "2016-06-01",
							"speed": 30
						},{
							"time": "2016-06-02",
							"speed": 45
						},
						{
							"time": "2016-06-03",
							"speed": 50
						},
						{
							"time": "2016-06-04",
							"speed": 45
						},
						{
							"time": "2016-06-05",
							"speed": 40
						},
						{
							"time": "2016-06-07",
							"speed": 30
						},
						{
							"time": "2016-06-08",
							"speed": 39
						},
						{
							"time": "2016-06-09",
							"speed": 30
						},
						{
							"time": "2016-06-10",
							"speed": 40
						},
						{
							"time": "2016-06-11",
							"speed": 45
						},
						{
							"time": "2016-06-12",
							"speed": 50
						},
						{
							"time":"2016-06-13",
							"speed": 45
						},
						{
							"time": "2016-06-14",
							"speed": 35
						},
						{
							"time": "2016-06-15",
							"speed": 40
						},
						{
							"time": "2016-06-16",
							"speed": 50
						},
						{
							"time": "2016-06-17",
							"speed": 35
						},
						{
							"time": "2016-06-18",
							"speed": 40
						}
					]
				},
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"断面计算流速",
					"color":"0x8F8FD2",
					"xField":"time",
					"yField":"speed",
					"xFieldName":"时间",
					"yFieldName":"流速（m/s）",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"speed": 45
						},
						{
							"time": "2016-05-02",
							"speed": 54
						},
						{
							"time": "2016-05-03",
							"speed": 67
						},
						{
							"time": "2016-05-04",
							"speed": 42
						},
						{
							"time": "2016-05-05",
							"speed": 55
						},
						{
							"time": "2016-05-06",
							"speed": 34
						},
						{
							"time": "2016-05-07",
							"speed": 67
						},
						{
							"time": "2016-05-08",
							"speed": 52
						},
						{
							"time": "2016-05-09",
							"speed": 67
						},
						{
							"time": "2016-05-10",
							"speed": 43
						},
						{
							"time": "2016-05-11",
							"speed": 65
						},
						{
							"time": "2016-05-12",
							"speed": 55
						},
						{
							"time": "2016-05-13",
							"speed": 45
						},
						{
							"time": "2016-05-14",
							"speed": 50
						},
						{
							"time": "2016-05-15",
							"speed": 55
						},
						{
							"time": "2016-05-16",
							"speed": 38
						},
						{
							"time": "2016-05-17",
							"speed": 67
						},
						{
							"time": "2016-05-18",
							"speed": 60
						},
						{
							"time":"2016-05-19",
							"speed": 45
						},
						{
							"time": "2016-05-20",
							"speed": 33
						},
						{
							"time": "2016-05-21",
							"speed": 68
						},
						{
							"time": "2016-05-22",
							"speed": 54
						},
						{
							"time": "2016-05-23",
							"speed": 23
						},
						{
							"time": "2016-05-24",
							"speed": 56
						},
						{
							"time": "2016-05-25",
							"speed": 31
						},
						{
							"time": "2016-05-26",
							"speed": 56
						},
						{
							"time": "2016-05-27",
							"speed": 31
						},
						{
							"time": "2016-05-28",
							"speed": 56
						},
						{
							"time": "2016-05-29",
							"speed": 32
						},
						{
							"time": "2016-05-30",
							"speed": 66
						},
						{
							"time": "2016-05-31",
							"speed": 22
						},
						{
							"time": "2016-06-01",
							"speed": 36
						},{
							"time": "2016-06-02",
							"speed": 34
						},
						{
							"time": "2016-06-03",
							"speed": 43
						},
						{
							"time": "2016-06-04",
							"speed": 50
						},
						{
							"time": "2016-06-05",
							"speed": 55
						},
						{
							"time": "2016-06-07",
							"speed": 23
						},
						{
							"time": "2016-06-08",
							"speed": 46
						},
						{
							"time": "2016-06-09",
							"speed": 31
						},
						{
							"time": "2016-06-10",
							"speed": 47
						},
						{
							"time": "2016-06-11",
							"speed": 65
						},
						{
							"time": "2016-06-12",
							"speed": 55
						},
						{
							"time":"2016-06-13",
							"speed": 40
						},
						{
							"time": "2016-06-14",
							"speed": 45
						},
						{
							"time": "2016-06-15",
							"speed": 32
						},
						{
							"time": "2016-06-16",
							"speed": 44
						},
						{
							"time": "2016-06-17",
							"speed": 55
						},
						{
							"time": "2016-06-18",
							"speed": 36
						}
					]
				}
			]
		);
	}
}