package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_WaterPositionSource
	{
		public function DM_WaterPositionSource()
		{
		}
		
		/**
		 * 断面水位过程数据---X轴为时间,，Y轴为水位（包含断面的计算水位和监测水位）
		 */
		public var waterPositionData:ArrayCollection = new ArrayCollection(
			[
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"断面监测水位",
					"color":"0x2C2CD2",
					"xField":"time",
					"yField":"altitude",
					"xFieldName":"时间",
					"yFieldName":"高程",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"altitude": 98
						},
						{
							"time": "2016-05-02",
							"altitude": 90
						},
						{
							"time": "2016-05-03",
							"altitude": 70
						},
						{
							"time": "2016-05-04",
							"altitude": 66
						},
						{
							"time": "2016-05-05",
							"altitude": 44
						},
						{
							"time": "2016-05-06",
							"altitude": 60
						},
						{
							"time": "2016-05-07",
							"altitude": 55
						},
						{
							"time": "2016-05-08",
							"altitude": 58
						},
						{
							"time": "2016-05-09",
							"altitude": 88
						},
						{
							"time": "2016-05-10",
							"altitude": 94
						},
						{
							"time": "2016-05-11",
							"altitude": 88
						},
						{
							"time": "2016-05-12",
							"altitude": 77
						},
						{
							"time": "2016-05-13",
							"altitude": 66
						},
						{
							"time": "2016-05-14",
							"altitude": 54
						},
						{
							"time": "2016-05-15",
							"altitude": 22
						},
						{
							"time": "2016-05-16",
							"altitude": 76
						},
						{
							"time": "2016-05-17",
							"altitude": 100
						},
						{
							"time": "2016-05-18",
							"altitude": 105
						},
						{
							"time":"2016-05-19",
							"altitude": 80
						},
						{
							"time": "2016-05-20",
							"altitude": 66
						},
						{
							"time": "2016-05-21",
							"altitude": 35
						},
						{
							"time": "2016-05-22",
							"altitude": 48
						},
						{
							"time": "2016-05-23",
							"altitude": 67
						},
						{
							"time": "2016-05-24",
							"altitude": 82
						},
						{
							"time": "2016-05-25",
							"altitude": 109
						},
						{
							"time": "2016-05-26",
							"altitude": 88
						},
						{
							"time": "2016-05-27",
							"altitude": 56
						},
						{
							"time": "2016-05-28",
							"altitude": 34
						},
						{
							"time": "2016-05-29",
							"altitude": 54
						},
						{
							"time": "2016-05-30",
							"altitude": 30
						},
						{
							"time": "2016-05-31",
							"altitude": 43
						},
						{
							"time": "2016-06-01",
							"altitude": 56
						},{
							"time": "2016-06-02",
							"altitude": 80
						},
						{
							"time": "2016-06-03",
							"altitude": 88
						},
						{
							"time": "2016-06-04",
							"altitude": 99
						},
						{
							"time": "2016-06-05",
							"altitude": 87
						},
						{
							"time": "2016-06-07",
							"altitude": 65
						},
						{
							"time": "2016-06-08",
							"altitude": 20
						},
						{
							"time": "2016-06-09",
							"altitude": 32
						},
						{
							"time": "2016-06-10",
							"altitude": 90
						},
						{
							"time": "2016-06-11",
							"altitude": 78
						},
						{
							"time": "2016-06-12",
							"altitude": 108
						},
						{
							"time":"2016-06-13",
							"altitude": 67
						},
						{
							"time": "2016-06-14",
							"altitude": 68
						},
						{
							"time": "2016-06-15",
							"altitude": 50
						},
						{
							"time": "2016-06-16",
							"altitude": 76
						},
						{
							"time": "2016-06-17",
							"altitude": 45
						},
						{
							"time": "2016-06-18",
							"altitude": 76
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
					"label":"断面计算水位",
					"color":"0x8F8FD2",
					"xField":"time",
					"yField":"altitude",
					"xFieldName":"时间",
					"yFieldName":"高程",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"altitude": 100
						},
						{
							"time": "2016-05-02",
							"altitude": 95
						},
						{
							"time": "2016-05-03",
							"altitude": 60
						},
						{
							"time": "2016-05-04",
							"altitude": 50
						},
						{
							"time": "2016-05-05",
							"altitude": 30
						},
						{
							"time": "2016-05-06",
							"altitude": 25
						},
						{
							"time": "2016-05-07",
							"altitude": 40
						},
						{
							"time": "2016-05-08",
							"altitude": 60
						},
						{
							"time": "2016-05-09",
							"altitude": 90
						},
						{
							"time": "2016-05-10",
							"altitude": 100
						},
						{
							"time": "2016-05-11",
							"altitude": 90
						},
						{
							"time": "2016-05-12",
							"altitude": 80
						},
						{
							"time": "2016-05-13",
							"altitude": 60
						},
						{
							"time": "2016-05-14",
							"altitude": 10
						},
						{
							"time": "2016-05-15",
							"altitude": 30
						},
						{
							"time": "2016-05-16",
							"altitude": 80
						},
						{
							"time": "2016-05-17",
							"altitude": 90
						},
						{
							"time": "2016-05-18",
							"altitude": 100
						},
						{
							"time":"2016-05-19",
							"altitude": 90
						},
						{
							"time": "2016-05-20",
							"altitude": 70
						},
						{
							"time": "2016-05-21",
							"altitude": 40
						},
						{
							"time": "2016-05-22",
							"altitude": 50
						},
						{
							"time": "2016-05-23",
							"altitude": 70
						},
						{
							"time": "2016-05-24",
							"altitude": 90
						},
						{
							"time": "2016-05-25",
							"altitude": 100
						},
						{
							"time": "2016-05-26",
							"altitude": 95
						},
						{
							"time": "2016-05-27",
							"altitude": 60
						},
						{
							"time": "2016-05-28",
							"altitude": 50
						},
						{
							"time": "2016-05-29",
							"altitude": 30
						},
						{
							"time": "2016-05-30",
							"altitude": 25
						},
						{
							"time": "2016-05-31",
							"altitude": 40
						},
						{
							"time": "2016-06-01",
							"altitude": 60
						},{
							"time": "2016-06-02",
							"altitude": 90
						},
						{
							"time": "2016-06-03",
							"altitude": 100
						},
						{
							"time": "2016-06-04",
							"altitude": 90
						},
						{
							"time": "2016-06-05",
							"altitude": 80
						},
						{
							"time": "2016-06-07",
							"altitude": 60
						},
						{
							"time": "2016-06-08",
							"altitude": 10
						},
						{
							"time": "2016-06-09",
							"altitude": 30
						},
						{
							"time": "2016-06-10",
							"altitude": 80
						},
						{
							"time": "2016-06-11",
							"altitude": 90
						},
						{
							"time": "2016-06-12",
							"altitude": 100
						},
						{
							"time":"2016-06-13",
							"altitude": 90
						},
						{
							"time": "2016-06-14",
							"altitude": 70
						},
						{
							"time": "2016-06-15",
							"altitude": 40
						},
						{
							"time": "2016-06-16",
							"altitude": 50
						},
						{
							"time": "2016-06-17",
							"altitude": 70
						},
						{
							"time": "2016-06-18",
							"altitude": 80
						}
					]
				}
			]);
	}
}