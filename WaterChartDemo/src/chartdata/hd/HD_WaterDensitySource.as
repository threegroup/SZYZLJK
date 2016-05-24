package chartdata.hd
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class HD_WaterDensitySource
	{
		public function HD_WaterDensitySource()
		{
		}
		
		/**
		 *河道污染物浓度---X轴为距离（m），Y轴为浓度值(mg/l)（计算浓度沿程数据）
		 */
		public var waterDensityData:Object = 
			{
				"type":"LineChart",
				"schemeName":"所属方案名称",
				"schemeCode":"所属方案编码",
				"sectionName":"河道名称",
				"sectionCode":"河道编码",
				"year":"2016",
				"label":"河道计算浓度沿程数据",
				"color":"0x8F8FD2",
				"xField":"distance",
				"yField":"density",
				"xFieldName":"距离",
				"yFieldName":"浓度(mg/l)",
				"nodeList":
				[
					{
						"distance": 0,
						"density": 1
					},
					{
						"distance":180000,
						"density": 1
					},
					{
						"distance":180000,
						"density": 0.9
					},
					{
						"distance":250000,
						"density": 0.9
					},
					{
						"distance": 250000,
						"density": 0.8
					},
					{
						"distance":780000,
						"density": 0.8
					}
				]
			};
	}
}