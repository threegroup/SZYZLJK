package chartdata.hd
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class HD_TerrainProfileSource
	{
		public function HD_TerrainProfileSource()
		{
		}
		
		/**
		 * 河道沿程地形数据---X轴为距离，Y轴为剖面高程，是作为河道其他统计图的基础数据
		 */
		public var terrainProfileData:Object = 
			{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"河道名称",
				"sectionCode":"河道编码",
				"year":"2016",
				"label":"河道沿程高程",
				"color":"0xFF0000",
				"xField":"distance",
				"yField":"altitude",
				"xFieldName":"距离",
				"yFieldName":"高程",
				"nodeList":
				[
					{
						"distance": 0,
						"altitude": 190
					},
					{
						"distance": 10,
						"altitude": 180
					},
					{
						"distance": 25,
						"altitude": 177
					},
					{
						"distance": 40,
						"altitude": 160
					},
					{
						"distance": 50,
						"altitude": 155
					},
					{
						"distance": 60,
						"altitude": 145
					},
					{
						"distance": 70,
						"altitude": 137
					},
					{
						"distance": 75,
						"altitude": 133
					},{
						"distance": 90,
						"altitude": 130
					},
					{
						"distance": 100,
						"altitude": 128
					},
					{
						"distance": 110,
						"altitude": 125
					},
					{
						"distance": 116,
						"altitude": 110
					},
					{
						"distance": 125,
						"altitude": 100
					},
					{
						"distance": 130,
						"altitude": 90
					},
					{
						"distance": 150,
						"altitude": 88
					},
					{
						"distance": 171,
						"altitude": 80
					},
					{
						"distance": 175,
						"altitude": 77
					},
					{
						"distance": 180,
						"altitude": 75
					},
					{
						"distance": 200,
						"altitude": 73
					},
					{
						"distance": 204,
						"altitude": 70
					},
					{
						"distance": 210,
						"altitude": 66
					},
					{
						"distance": 215,
						"altitude": 64
					},
					{
						"distance": 216,
						"altitude": 60
					},
					{
						"distance": 220,
						"altitude": 50
					}
				]
			};
		
		/**
		 * 河道沿程地形数据---X轴为距离，Y轴为剖面高程，是作为河道其他统计图的基础数据
		 * 说明：结构与上面的数据完全一致，只是为了匹配河道水深数据，高程数据有所变化，不需要考虑作为api。
		 */
		public var wd_TerrainProfileData:Object = 
			{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"河道名称",
				"sectionCode":"河道编码",
				"year":"2016",
				"label":"河道沿程高程",
				"color":"0xFF0000",
				"xField":"distance",
				"yField":"altitude",
				"xFieldName":"距离",
				"yFieldName":"高程",
				"nodeList":
				[
					{
						"distance": 0,
						"altitude": 35
					},
					{
						"distance": 10,
						"altitude": 33
					},
					{
						"distance": 25,
						"altitude": 32
					},
					{
						"distance": 40,
						"altitude": 30
					},
					{
						"distance": 50,
						"altitude": 28
					},
					{
						"distance": 60,
						"altitude": 25
					},
					{
						"distance": 70,
						"altitude": 24
					},
					{
						"distance": 75,
						"altitude": 23
					},{
						"distance": 90,
						"altitude": 22
					},
					{
						"distance": 100,
						"altitude": 21
					},
					{
						"distance": 110,
						"altitude": 20
					},
					{
						"distance": 116,
						"altitude": 18
					},
					{
						"distance": 125,
						"altitude": 16
					},
					{
						"distance": 130,
						"altitude": 15
					},
					{
						"distance": 150,
						"altitude": 14
					},
					{
						"distance": 171,
						"altitude": 13
					},
					{
						"distance": 175,
						"altitude": 12
					},
					{
						"distance": 180,
						"altitude": 10
					},
					{
						"distance": 200,
						"altitude": 8
					},
					{
						"distance": 204,
						"altitude": 7
					},
					{
						"distance": 210,
						"altitude": 5
					},
					{
						"distance": 215,
						"altitude": 4
					},
					{
						"distance": 216,
						"altitude": 2
					},
					{
						"distance": 220,
						"altitude": 0
					}
				]
			};
	}
}