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
		public var waterPositionData:Object =
			{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"河道名称",
				"sectionCode":"河道编码",
				"year":"2016",
				"label":"河道沿程水位",
				"color":"0x0000FF",
				"xField":"distance",
				"yField":"altitude",
				"xFieldName":"距离",
				"yFieldName":"高程",
				"nodeList":
				[
					{
						"distance": 0,
						"altitude": 188
					},
					{
						"distance": 10,
						"altitude": 182
					},
					{
						"distance": 25,
						"altitude": 180
					},
					{
						"distance": 40,
						"altitude": 158
					},
					{
						"distance": 50,
						"altitude": 150
					},
					{
						"distance": 60,
						"altitude": 160
					},
					{
						"distance": 70,
						"altitude": 140
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
						"altitude": 133
					},
					{
						"distance": 110,
						"altitude": 130
					},
					{
						"distance": 116,
						"altitude": 116
					},
					{
						"distance": 125,
						"altitude": 120
					},
					{
						"distance": 130,
						"altitude": 100
					},
					{
						"distance": 150,
						"altitude": 90
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
						"altitude": 78
					},
					{
						"distance": 200,
						"altitude": 75
					},
					{
						"distance": 204,
						"altitude": 73
					},
					{
						"distance": 210,
						"altitude": 60
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
	}
}