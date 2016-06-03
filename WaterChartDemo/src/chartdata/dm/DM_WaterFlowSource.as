package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_WaterFlowSource
	{
		public function DM_WaterFlowSource()
		{
		}
		
		/**
		 *断面流量过程数据---X轴为时间，Y轴为流量（包含断面计算流量和监测流量）
		 */
		public var waterFlowData:ArrayCollection = new ArrayCollection(
			[ 
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"断面监测流量",
					"color":"0xC2C2D2",
					"xField":"time",
					"yField":"flow",
					"xFieldName":"时间",
					"yFieldName":"流量",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"flow": 100
						},
						{
							"time": "2016-05-02",
							"flow": 95
						},
						{
							"time": "2016-05-03",
							"flow": 60
						},
						{
							"time": "2016-05-04",
							"flow": 50
						},
						{
							"time": "2016-05-05",
							"flow": 30
						},
						{
							"time": "2016-05-06",
							"flow": 25
						},
						{
							"time": "2016-05-07",
							"flow": 40
						},
						{
							"time": "2016-05-08",
							"flow": 60
						},
						{
							"time": "2016-05-09",
							"flow": 90
						},
						{
							"time": "2016-05-10",
							"flow": 100
						},
						{
							"time": "2016-05-11",
							"flow": 90
						},
						{
							"time": "2016-05-12",
							"flow": 80
						},
						{
							"time": "2016-05-13",
							"flow": 60
						},
						{
							"time": "2016-05-14",
							"flow": 10
						},
						{
							"time": "2016-05-15",
							"flow": 30
						},
						{
							"time": "2016-05-16",
							"flow": 80
						},
						{
							"time": "2016-05-17",
							"flow": 90
						},
						{
							"time": "2016-05-18",
							"flow": 100
						},
						{
							"time":"2016-05-19",
							"flow": 90
						},
						{
							"time": "2016-05-20",
							"flow": 70
						},
						{
							"time": "2016-05-21",
							"flow": 40
						},
						{
							"time": "2016-05-22",
							"flow": 50
						},
						{
							"time": "2016-05-23",
							"flow": 70
						},
						{
							"time": "2016-05-24",
							"flow": 90
						},
						{
							"time": "2016-05-25",
							"flow": 100
						},
						{
							"time": "2016-05-26",
							"flow": 95
						},
						{
							"time": "2016-05-27",
							"flow": 60
						},
						{
							"time": "2016-05-28",
							"flow": 50
						},
						{
							"time": "2016-05-29",
							"flow": 30
						},
						{
							"time": "2016-05-30",
							"flow": 25
						},
						{
							"time": "2016-05-31",
							"flow": 40
						},
						{
							"time": "2016-06-01",
							"flow": 60
						},{
							"time": "2016-06-02",
							"flow": 90
						},
						{
							"time": "2016-06-03",
							"flow": 100
						},
						{
							"time": "2016-06-04",
							"flow": 90
						},
						{
							"time": "2016-06-05",
							"flow": 80
						},
						{
							"time": "2016-06-07",
							"flow": 60
						},
						{
							"time": "2016-06-08",
							"flow": 10
						},
						{
							"time": "2016-06-09",
							"flow": 30
						},
						{
							"time": "2016-06-10",
							"flow": 80
						},
						{
							"time": "2016-06-11",
							"flow": 90
						},
						{
							"time": "2016-06-12",
							"flow": 100
						},
						{
							"time":"2016-06-13",
							"flow": 90
						},
						{
							"time": "2016-06-14",
							"flow": 70
						},
						{
							"time": "2016-06-15",
							"flow": 40
						},
						{
							"time": "2016-06-16",
							"flow": 50
						},
						{
							"time": "2016-06-17",
							"flow": 70
						},
						{
							"time": "2016-06-18",
							"flow": 80
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
					"label":"断面计算流量",
					"color":"0x8F8FD2",
					"xField":"time",
					"yField":"flow",
					"xFieldName":"时间",
					"yFieldName":"流量",
					"nodeList":
					[
						{
							"time": "2016-05-01",
							"flow": 105
						},
						{
							"time": "2016-05-02",
							"flow": 100
						},
						{
							"time": "2016-05-03",
							"flow": 55
						},
						{
							"time": "2016-05-04",
							"flow": 67
						},
						{
							"time": "2016-05-05",
							"flow": 89
						},
						{
							"time": "2016-05-06",
							"flow": 32
						},
						{
							"time": "2016-05-07",
							"flow": 33
						},
						{
							"time": "2016-05-08",
							"flow": 34
						},
						{
							"time": "2016-05-09",
							"flow": 41
						},
						{
							"time": "2016-05-10",
							"flow": 89
						},
						{
							"time": "2016-05-11",
							"flow": 98
						},
						{
							"time": "2016-05-12",
							"flow": 77
						},
						{
							"time": "2016-05-13",
							"flow": 43
						},
						{
							"time": "2016-05-14",
							"flow": 22
						},
						{
							"time": "2016-05-15",
							"flow": 45
						},
						{
							"time": "2016-05-16",
							"flow": 78
						},
						{
							"time": "2016-05-17",
							"flow": 66
						},
						{
							"time": "2016-05-18",
							"flow": 99
						},
						{
							"time":"2016-05-19",
							"flow": 87
						},
						{
							"time": "2016-05-20",
							"flow": 65
						},
						{
							"time": "2016-05-21",
							"flow": 33
						},
						{
							"time": "2016-05-22",
							"flow": 44
						},
						{
							"time": "2016-05-23",
							"flow": 66
						},
						{
							"time": "2016-05-24",
							"flow": 77
						},
						{
							"time": "2016-05-25",
							"flow": 88
						},
						{
							"time": "2016-05-26",
							"flow": 55
						},
						{
							"time": "2016-05-27",
							"flow": 34
						},
						{
							"time": "2016-05-28",
							"flow": 24
						},
						{
							"time": "2016-05-29",
							"flow": 54
						},
						{
							"time": "2016-05-30",
							"flow": 32
						},
						{
							"time": "2016-05-31",
							"flow": 65
						},
						{
							"time": "2016-06-01",
							"flow": 55
						},{
							"time": "2016-06-02",
							"flow": 89
						},
						{
							"time": "2016-06-03",
							"flow": 87
						},
						{
							"time": "2016-06-04",
							"flow": 66
						},
						{
							"time": "2016-06-05",
							"flow": 68
						},
						{
							"time": "2016-06-07",
							"flow": 89
						},
						{
							"time": "2016-06-08",
							"flow": 21
						},
						{
							"time": "2016-06-09",
							"flow": 34
						},
						{
							"time": "2016-06-10",
							"flow": 77
						},
						{
							"time": "2016-06-11",
							"flow": 67
						},
						{
							"time": "2016-06-12",
							"flow": 99
						},
						{
							"time":"2016-06-13",
							"flow": 88
						},
						{
							"time": "2016-06-14",
							"flow": 65
						},
						{
							"time": "2016-06-15",
							"flow": 43
						},
						{
							"time": "2016-06-16",
							"flow": 30
						},
						{
							"time": "2016-06-17",
							"flow": 66
						},
						{
							"time": "2016-06-18",
							"flow": 77
						}
					]
				}
			]
		);
	}
}