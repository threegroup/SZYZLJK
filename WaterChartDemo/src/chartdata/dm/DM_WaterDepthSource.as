package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_WaterDepthSource
	{
		public function DM_WaterDepthSource()
		{
		}
		
		/**
		 *断面水深数据---X轴为时间，Y轴为水深（包含断面的计算水深和监测水深）
		 */
		public var waterDepthData:ArrayCollection = new ArrayCollection([
			{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"断面名称",
				"sectionCode":"断面编码",
				"year":"2016",
				"label":"断面监测水深",
				"color":"0x2FC2D2",
				"xField":"time",
				"yField":"depth",
				"xFieldName":"时间",
				"yFieldName":"水深",
				"nodeList":
				[
					{
						"time": "2016-05-01",
						"depth": 32
					},
					{
						"time": "2016-05-02",
						"depth": 38
					},
					{
						"time": "2016-05-03",
						"depth": 40
					},
					{
						"time": "2016-05-04",
						"depth": 37
					},
					{
						"time": "2016-05-05",
						"depth": 40
					},
					{
						"time": "2016-05-06",
						"depth": 30
					},
					{
						"time": "2016-05-07",
						"depth": 33
					},
					{
						"time": "2016-05-08",
						"depth": 51
					},
					{
						"time": "2016-05-09",
						"depth": 43
					},
					{
						"time": "2016-05-10",
						"depth": 37
					},
					{
						"time": "2016-05-11",
						"depth": 43
					},
					{
						"time": "2016-05-12",
						"depth": 41
					},
					{
						"time": "2016-05-13",
						"depth": 28
					},
					{
						"time": "2016-05-14",
						"depth": 47
					},
					{
						"time": "2016-05-15",
						"depth": 33
					},
					{
						"time": "2016-05-16",
						"depth": 55
					},
					{
						"time": "2016-05-17",
						"depth": 44
					},
					{
						"time": "2016-05-18",
						"depth": 48
					},
					{
						"time":"2016-05-19",
						"depth": 45
					},
					{
						"time": "2016-05-20",
						"depth": 35
					},
					{
						"time": "2016-05-21",
						"depth": 40
					},
					{
						"time": "2016-05-22",
						"depth": 50
					},
					{
						"time": "2016-05-23",
						"depth": 35
					},
					{
						"time": "2016-05-24",
						"depth": 45
					},
					{
						"time": "2016-05-25",
						"depth": 50
					},
					{
						"time": "2016-05-26",
						"depth": 47
					},
					{
						"time": "2016-05-27",
						"depth": 36
					},
					{
						"time": "2016-05-28",
						"depth": 38
					},
					{
						"time": "2016-05-29",
						"depth": 33
					},
					{
						"time": "2016-05-30",
						"depth": 30
					},
					{
						"time": "2016-05-31",
						"depth": 44
					},
					{
						"time": "2016-06-01",
						"depth": 38
					},{
						"time": "2016-06-02",
						"depth": 41
					},
					{
						"time": "2016-06-03",
						"depth": 56
					},
					{
						"time": "2016-06-04",
						"depth": 49
					},
					{
						"time": "2016-06-05",
						"depth": 44
					},
					{
						"time": "2016-06-07",
						"depth": 31
					},
					{
						"time": "2016-06-08",
						"depth": 42
					},
					{
						"time": "2016-06-09",
						"depth": 36
					},
					{
						"time": "2016-06-10",
						"depth": 48
					},
					{
						"time": "2016-06-11",
						"depth": 34
					},
					{
						"time": "2016-06-12",
						"depth": 55
					},
					{
						"time":"2016-06-13",
						"depth": 41
					},
					{
						"time": "2016-06-14",
						"depth": 33
					},
					{
						"time": "2016-06-15",
						"depth": 44
					},
					{
						"time": "2016-06-16",
						"depth": 45
					},
					{
						"time": "2016-06-17",
						"depth": 34
					},
					{
						"time": "2016-06-18",
						"depth": 45
					}
				]
			},{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"断面名称",
				"sectionCode":"断面编码",
				"year":"2016",
				"label":"断面计算水深",
				"color":"0x8F8FD2",
				"xField":"time",
				"yField":"depth",
				"xFieldName":"时间",
				"yFieldName":"水深",
				"nodeList":
				[
					{
						"time": "2016-05-01",
						"depth": 30
					},
					{
						"time": "2016-05-02",
						"depth": 40
					},
					{
						"time": "2016-05-03",
						"depth": 43
					},
					{
						"time": "2016-05-04",
						"depth": 35
					},
					{
						"time": "2016-05-05",
						"depth": 30
					},
					{
						"time": "2016-05-06",
						"depth": 25
					},
					{
						"time": "2016-05-07",
						"depth": 40
					},
					{
						"time": "2016-05-08",
						"depth": 55
					},
					{
						"time": "2016-05-09",
						"depth": 40
					},
					{
						"time": "2016-05-10",
						"depth": 36
					},
					{
						"time": "2016-05-11",
						"depth": 48
					},
					{
						"time": "2016-05-12",
						"depth": 40
					},
					{
						"time": "2016-05-13",
						"depth": 30
					},
					{
						"time": "2016-05-14",
						"depth": 45
					},
					{
						"time": "2016-05-15",
						"depth": 30
					},
					{
						"time": "2016-05-16",
						"depth": 40
					},
					{
						"time": "2016-05-17",
						"depth": 44
					},
					{
						"time": "2016-05-18",
						"depth": 48
					},
					{
						"time":"2016-05-19",
						"depth": 45
					},
					{
						"time": "2016-05-20",
						"depth": 35
					},
					{
						"time": "2016-05-21",
						"depth": 40
					},
					{
						"time": "2016-05-22",
						"depth": 50
					},
					{
						"time": "2016-05-23",
						"depth": 35
					},
					{
						"time": "2016-05-24",
						"depth": 45
					},
					{
						"time": "2016-05-25",
						"depth": 50
					},
					{
						"time": "2016-05-26",
						"depth": 47
					},
					{
						"time": "2016-05-27",
						"depth": 30
					},
					{
						"time": "2016-05-28",
						"depth": 25
					},
					{
						"time": "2016-05-29",
						"depth": 30
					},
					{
						"time": "2016-05-30",
						"depth": 25
					},
					{
						"time": "2016-05-31",
						"depth": 40
					},
					{
						"time": "2016-06-01",
						"depth": 30
					},{
						"time": "2016-06-02",
						"depth": 45
					},
					{
						"time": "2016-06-03",
						"depth": 50
					},
					{
						"time": "2016-06-04",
						"depth": 45
					},
					{
						"time": "2016-06-05",
						"depth": 40
					},
					{
						"time": "2016-06-07",
						"depth": 30
					},
					{
						"time": "2016-06-08",
						"depth": 39
					},
					{
						"time": "2016-06-09",
						"depth": 30
					},
					{
						"time": "2016-06-10",
						"depth": 40
					},
					{
						"time": "2016-06-11",
						"depth": 45
					},
					{
						"time": "2016-06-12",
						"depth": 50
					},
					{
						"time":"2016-06-13",
						"depth": 45
					},
					{
						"time": "2016-06-14",
						"depth": 35
					},
					{
						"time": "2016-06-15",
						"depth": 40
					},
					{
						"time": "2016-06-16",
						"depth": 50
					},
					{
						"time": "2016-06-17",
						"depth": 35
					},
					{
						"time": "2016-06-18",
						"depth": 40
					}
				]
			}
		]);
	}
}