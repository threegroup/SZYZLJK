package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_WaterDensitySource
	{
		public function DM_WaterDensitySource()
		{
		}
		
		/**
		 *断面污染物浓度---X轴为时间(时间间隔请根据业务需要确定)，Y轴为浓度值（包含断面污染物的计算浓度和监测浓度）
		 */
		public var waterDensityData:ArrayCollection = new ArrayCollection(
			[
				{
					"type":"LineChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"断面污染物监测浓度",
					"color":"0x8F8FD2",
					"xField":"time",
					"yField":"density",
					"xFieldName":"时间",
					"yFieldName":"浓度(mg/l)",
					"nodeList":
					[
						{
							"time": "2016-05-01 00:00",
							"density": 60
						},
						{
							"time": "2016-05-02 00:00",
							"density": 70
						},
						{
							"time": "2016-05-03 00:00",
							"density": 55
						},
						{
							"time": "2016-05-04 00:00",
							"density": 60
						},
						{
							"time": "2016-05-05 00:00",
							"density": 50
						},
						{
							"time": "2016-05-06 00:00",
							"density": 45
						},
						{
							"time": "2016-05-07 00:00",
							"density": 75
						},
						{
							"time": "2016-05-08 00:00",
							"density": 60
						},
						{
							"time": "2016-05-09 00:00",
							"density": 55
						},
						{
							"time": "2016-05-10 00:00",
							"density": 66
						},
						{
							"time": "2016-05-11 00:00",
							"density": 56
						},
						{
							"time": "2016-05-12 00:00",
							"density": 77
						},
						{
							"time": "2016-05-13 00:00",
							"density": 67
						},
						{
							"time": "2016-05-14 00:00",
							"density": 76
						},
						{
							"time": "2016-05-15 00:00",
							"density": 57
						},
						{
							"time": "2016-05-16 00:00",
							"density": 68
						},
						{
							"time": "2016-05-17 00:00",
							"density": 54
						},
						{
							"time": "2016-05-18 00:00",
							"density": 66
						},
						{
							"time":"2016-05-19 00:00",
							"density": 69
						},
						{
							"time": "2016-05-20 00:00",
							"density": 48
						},
						{
							"time": "2016-05-21 00:00",
							"density": 59
						},
						{
							"time": "2016-05-22 00:00",
							"density": 68
						},
						{
							"time": "2016-05-23 00:00",
							"density": 48
						},
						{
							"time": "2016-05-24 00:00",
							"density": 66
						},
						{
							"time": "2016-05-25 00:00",
							"density": 79
						},
						{
							"time": "2016-05-26 00:00",
							"density": 87
						},
						{
							"time": "2016-05-27 00:00",
							"density": 77
						},
						{
							"time": "2016-05-28 00:00",
							"density": 54
						},
						{
							"time": "2016-05-29 00:00",
							"density": 55
						},
						{
							"time": "2016-05-30 00:00",
							"density": 40
						},
						{
							"time": "2016-05-31 00:00",
							"density": 55
						},
						{
							"time": "2016-06-01 00:00",
							"density": 44
						},{
							"time": "2016-06-02 00:00",
							"density": 55
						},
						{
							"time": "2016-06-03 00:00",
							"density": 66
						},
						{
							"time": "2016-06-04 00:00",
							"density": 55
						},
						{
							"time": "2016-06-05 00:00",
							"density": 66
						},
						{
							"time": "2016-06-07 00:00",
							"density": 65
						},
						{
							"time": "2016-06-08 00:00",
							"density": 76
						},
						{
							"time": "2016-06-09 00:00",
							"density": 65
						},
						{
							"time": "2016-06-10 00:00",
							"density": 69
						},
						{
							"time": "2016-06-11 00:00",
							"density": 77
						},
						{
							"time": "2016-06-12 00:00",
							"density": 88
						},
						{
							"time":"2016-06-13 00:00",
							"density": 66
						},
						{
							"time": "2016-06-14 00:00",
							"density": 77
						},
						{
							"time": "2016-06-15 00:00",
							"density": 89
						},
						{
							"time": "2016-06-16 00:00",
							"density": 76
						},
						{
							"time": "2016-06-17 00:00",
							"density": 56
						},
						{
							"time": "2016-06-18 00:00",
							"density": 55
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
					"label":"断面污染物计算浓度",
					"color":"0x8FDEFC",
					"xField":"time",
					"yField":"density",
					"xFieldName":"时间",
					"yFieldName":"浓度(mg/l)",
					"nodeList":
					[
						{
							"time": "2016-05-01 00:00",
							"density": 30
						},
						{
							"time": "2016-05-02 00:00",
							"density": 40
						},
						{
							"time": "2016-05-03 00:00",
							"density": 43
						},
						{
							"time": "2016-05-04 00:00",
							"density": 35
						},
						{
							"time": "2016-05-05 00:00",
							"density": 30
						},
						{
							"time": "2016-05-06 00:00",
							"density": 25
						},
						{
							"time": "2016-05-07 00:00",
							"density": 40
						},
						{
							"time": "2016-05-08 00:00",
							"density": 55
						},
						{
							"time": "2016-05-09 00:00",
							"density": 40
						},
						{
							"time": "2016-05-10 00:00",
							"density": 36
						},
						{
							"time": "2016-05-11 00:00",
							"density": 48
						},
						{
							"time": "2016-05-12 00:00",
							"density": 40
						},
						{
							"time": "2016-05-13 00:00",
							"density": 30
						},
						{
							"time": "2016-05-14 00:00",
							"density": 45
						},
						{
							"time": "2016-05-15 00:00",
							"density": 30
						},
						{
							"time": "2016-05-16 00:00",
							"density": 40
						},
						{
							"time": "2016-05-17 00:00",
							"density": 44
						},
						{
							"time": "2016-05-18 00:00",
							"density": 48
						},
						{
							"time":"2016-05-19 00:00",
							"density": 45
						},
						{
							"time": "2016-05-20 00:00",
							"density": 35
						},
						{
							"time": "2016-05-21 00:00",
							"density": 40
						},
						{
							"time": "2016-05-22 00:00",
							"density": 50
						},
						{
							"time": "2016-05-23 00:00",
							"density": 35
						},
						{
							"time": "2016-05-24 00:00",
							"density": 45
						},
						{
							"time": "2016-05-25 00:00",
							"density": 50
						},
						{
							"time": "2016-05-26 00:00",
							"density": 47
						},
						{
							"time": "2016-05-27 00:00",
							"density": 30
						},
						{
							"time": "2016-05-28 00:00",
							"density": 25
						},
						{
							"time": "2016-05-29 00:00",
							"density": 30
						},
						{
							"time": "2016-05-30 00:00",
							"density": 25
						},
						{
							"time": "2016-05-31 00:00",
							"density": 40
						},
						{
							"time": "2016-06-01 00:00",
							"density": 30
						},{
							"time": "2016-06-02 00:00",
							"density": 45
						},
						{
							"time": "2016-06-03 00:00",
							"density": 50
						},
						{
							"time": "2016-06-04 00:00",
							"density": 45
						},
						{
							"time": "2016-06-05 00:00",
							"density": 40
						},
						{
							"time": "2016-06-07 00:00",
							"density": 30
						},
						{
							"time": "2016-06-08 00:00",
							"density": 39
						},
						{
							"time": "2016-06-09 00:00",
							"density": 30
						},
						{
							"time": "2016-06-10 00:00",
							"density": 40
						},
						{
							"time": "2016-06-11 00:00",
							"density": 45
						},
						{
							"time": "2016-06-12 00:00",
							"density": 50
						},
						{
							"time":"2016-06-13 00:00",
							"density": 45
						},
						{
							"time": "2016-06-14 00:00",
							"density": 35
						},
						{
							"time": "2016-06-15 00:00",
							"density": 40
						},
						{
							"time": "2016-06-16 00:00",
							"density": 50
						},
						{
							"time": "2016-06-17 00:00",
							"density": 35
						},
						{
							"time": "2016-06-18 00:00",
							"density": 40
						}
					]
				}
			]);
	}
}