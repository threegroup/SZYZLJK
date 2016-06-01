package chartdata.dm
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class DM_TerrainProfileSource
	{
		public function DM_TerrainProfileSource()
		{
		}
		
		/**
		 * 剖面地形以及水位数据---X轴为距离
		 * 说明：水位数据包含多个时段的水位数据；地形剖面数据需要涵盖所有水位数据，也就是说各时段的水位数据都可以在地形剖面数据中找到。（很重要）
		 * 目前的测试数据，地形剖面数据只包含了2016-01月的水位数据，02和03月的水位数据也应该包含在剖面数据中。
		 */
		public var terrainProfileData:ArrayCollection = new ArrayCollection(
			[
				{
					"type":"AreaChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"水位",
					"color":"0x55D8FE",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离",
					"yFieldName":"高程",
					"nodeList":
					[
						{
							"date": "2016-01",
							"altitude": 60
						},
						{
							"date": "2016-02",
							"altitude": 60
						},
						{
							"date": "2016-03",
							"altitude": 80
						},
						{
							"date": "2016-04",
							"altitude": 80
						},
						{
							"date": "2016-05",
							"altitude": 70
						},
						{
							"date": "2016-06",
							"altitude": 70
						}
					]
				},
				{
					"type":"AreaChart",
					"schemeName":"所属方案名称",
					"schemeCode":"所属方案编码",
					"sectionName":"断面名称",
					"sectionCode":"断面编码",
					"year":"2016",
					"label":"高程",
					"color":"0xF5AC39",
					"xField":"distance",
					"yField":"altitude",
					"xFieldName":"距离",
					"yFieldName":"高程",
					"nodeList":
					[
						{
							"distance": 0,
							"altitude": 100
						},
						{
							"distance": 10,
							"altitude": 95
						},
						{
							"distance": 25,
							"altitude": 60
						},
						{
							"distance": 40,
							"altitude": 50
						},
						{
							"distance": 50,
							"altitude": 30
						},
						{
							"distance": 60,
							"altitude": 25
						},
						{
							"distance": 70,
							"altitude": 40
						},
						{
							"distance": 75,
							"altitude": 60
						},{
							"distance": 90,
							"altitude": 90
						},
						{
							"distance": 100,
							"altitude": 100
						},
						{
							"distance": 110,
							"altitude": 90
						},
						{
							"distance": 116,
							"altitude": 80
						},
						{
							"distance": 125,
							"altitude": 60
						},
						{
							"distance": 130,
							"altitude": 10
						},
						{
							"distance": 150,
							"altitude": 30
						},
						{
							"distance": 171,
							"altitude": 80
						},
						{
							"distance": 175,
							"altitude": 90
						},
						{
							"distance": 180,
							"altitude": 100
						},
						{
							"distance": 200,
							"altitude": 90
						},
						{
							"distance": 204,
							"altitude": 70
						},
						{
							"distance": 210,
							"altitude": 40
						},
						{
							"distance": 215,
							"altitude": 50
						},
						{
							"distance": 216,
							"altitude": 70
						},
						{
							"distance": 220,
							"altitude": 150
						}
					]
				}
			]
		);
	}
}