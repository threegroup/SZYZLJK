package widgets.waterevaluation
{
	public class CapacityDataSource
	{
		public function CapacityDataSource()
		{
		}
		
		/**时间：2016-04-24
		 * 说明： isMainKey: 0-在表格中不显示，1-在表格中显示, -1-表示详情操作列；
		 * 		 colWidth：在表格显示的预设列宽；
		 *       fieldName：列标题名称；
		 *       fieldKey：表格列绑定字段。
		 * 结构： nodeList：表中记录；
		 * 		 propFields：字段集。*/
		
		/**当前的钻取级别*/
		public static var dataLevel:int = 0;
		/**当前是否显示详情*/
		public static var isShowDetail:Boolean = false;
		
		public static var dgCol:Array = [
			{key:"Area_Capacity_Type",name:"行政区承载力情况统计表",type:"level"},
			{key:"Water_Quality_Type",name:"河流水功能区水质达标率及污染物入河量情况统计表",type:"level"},
			{key:"Water_Drain_Pollution_Detail_Type",name:"水功能区排污口污染物入河量详情",type:"level"},
			{key:"Water_Pollution_Detail_Type",name:"水功能区水质达标率及污染物入河量详情",type:"detail"},
			{key:"Water_Evaluation_Type",name:"测站水质评价主要评价指标",type:"normal"}
		];
		
		public static function getDgSource(key:String):Object
		{
			var dgSrc:Object = null;
			switch(key)
			{
				case "Area_Capacity_Type":
				{
					dgSrc = CapacityDataSource.actSrc;
					break;
				}
				case "Water_Quality_Type":
				{
					dgSrc = CapacityDataSource.wqtSrc;
					break;
				}
				case "Water_Drain_Pollution_Detail_Type":
				{
					dgSrc = CapacityDataSource.wdpdtSrc;
					break;
				}
				case "Water_Pollution_Detail_Type":
				{
					dgSrc = CapacityDataSource.wpdtSrc;
					break;
				}
				default:
				{
					dgSrc = null;
					break;
				}
			}
			return dgSrc;
		}
		
		/**行政区承载力情况统计表*/
		public static var actSrc:Object = {
			"message": "信息查询成功。",
			"nodeList": [
				{
					"code": "RIVER000",
					"name": "太子河0",
					"totalCount": "8",
					"totalLength":"100000",
					"attainedLength":"80000",
					"lengthPercent":"80%",
					"standardLength":"70000",
					"functionCount":"4",
					"attainedCount":"2",
					"attainedPercent":"50%",
					"standardValue":"50000",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"x": "123.31279",
					"y": "41.105675"
				},
				{
					"code": "RIVER001",
					"name": "太子河1",
					"totalCount": "8",
					"totalLength":"100000",
					"attainedLength":"80000",
					"lengthPercent":"80%",
					"standardLength":"70000",
					"functionCount":"4",
					"attainedCount":"2",
					"attainedPercent":"50%",
					"standardValue":"50000",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"x": "123.511276",
					"y": "41.297588"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "河流编码",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "河流名称",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "totalCount",
					"fieldName": "水功能区^个数",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "totalLength",
					"fieldName": "水功能区^总长",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "attainedLength",
					"fieldName": "水功能区水质^达标长度",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "lengthPercent",
					"fieldName": "水功能区水质^达标长度百分比",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "standardLength",
					"fieldName": "水功能区水质^达标长度标准值",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "functionCount",
					"fieldName": "水功能区^总个数",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "attainedCount",
					"fieldName": "水功能区水质^达标个数",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "attainedPercent",
					"fieldName": "水功能区水质^达标个数百分比",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "standardValue",
					"fieldName": "水功能区水质^达标个数^百分比标准值",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "cod",
					"fieldName": "COD入河量",
					"colWidth": "100",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitCod",
					"fieldName": "COD入河量^限排值",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "inputValue",
					"fieldName": "N3H-N^入河量",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitValue",
					"fieldName": "N3H-N^限排值",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"colWidth": "80",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"totalCount": 2
		};
		
		/**河流水功能区水质达标率及污染物入河量情况统计表*/
		public static var wqtSrc:Object = {
			"message": "信息查询成功。",
			"nodeList": [
				{
					"code": "RIVER001",
					"name": "太子河1",
					"funCode": "FUNCTION000",
					"funName": "太子河1水功能区0",
					"attainedPercent": "30%",
					"isAttained":"否",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "123.31279",
					"y": "41.105675"
				},
				{
					"code": "RIVER001",
					"name": "太子河1",
					"funCode": "FUNCTION001",
					"funName": "太子河1水功能区1",
					"attainedPercent": "70%",
					"isAttained":"是",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "123.511276",
					"y": "41.297588"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "河流编码",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "河流名称",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "funCode",
					"fieldName": "水功能区^编码",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "funName",
					"fieldName": "水功能区名称",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "attainedPercent",
					"fieldName": "水功能区水质^达标次数/百分比",
					"colWidth": "140",
					"isMainKey": "1"
				},
				{
					"fieldKey": "isAttained",
					"fieldName": "是否达标",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "cod",
					"fieldName": "COD入河量",
					"colWidth": "100",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitCod",
					"fieldName": "COD入河量^限排值",
					"colWidth": "100",
					"isMainKey": "1"
				},
				{
					"fieldKey": "inputValue",
					"fieldName": "N3H-N入河量",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitValue",
					"fieldName": "N3H-N限排值",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "monDetail",
					"fieldName": "污染物浓度^监测详情",
					"colWidth": "120",
					"isMainKey": "-1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"colWidth": "80",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"totalCount": 2
		};
		
		/**水功能区水质达标率及污染物入河量详情*/
		public static var wpdtSrc:Object = {
			"message": "信息查询成功。",
			"nodeList": [
				{
					"code": "FUNCTION000",
					"name": "太子河水功能区0",
					"monitorCount": "30",
					"monitorTime":"20",
					"codValue":"123",
					"codStandardValue":"150",
					"anValue":"140",
					"anStandardValue":"145",
					"x": "123.31279",
					"y": "41.105675"
				},
				{
					"code": "FUNCTION001",
					"name": "太子河水功能区0",
					"monitorCount": "70",
					"monitorTime":"20",
					"codValue":"123",
					"codStandardValue":"150",
					"anValue":"140",
					"anStandardValue":"145",
					"x": "123.511276",
					"y": "41.297588"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "水功能区^编码",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "水功能区^名称",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "monitorCount",
					"fieldName": "监测次数",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "monitorTime",
					"fieldName": "监测时间",
					"isSortField": "true",
					"isAsc": "1",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "codValue",
					"fieldName": "Cod浓度",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "codStandardValue",
					"fieldName": "Cod浓度^标准值",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "anValue",
					"fieldName": "氨氮浓度",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "anStandardValue",
					"fieldName": "氨氮浓度^标准值",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"colWidth": "80",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"totalCount": 2
		};
		
		/**水功能区排污口污染物入河量详情*/
		public static var wdpdtSrc:Object = {
			"message": "信息查询成功。",
			"nodeList": [
				{
					"code": "FUNCTION000",
					"name": "太子河水功能区0",
					"pollutionCode":"POLLUTION000",
					"pollutionName": "排污口0",
					"isAttained":"否",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "123.31279",
					"y": "41.105675"
				},
				{
					"code": "FUNCTION001",
					"name": "太子河水功能区1",
					"pollutionCode":"POLLUTION001",
					"pollutionName": "排污口1",
					"isAttained":"是",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "123.511276",
					"y": "41.297588"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "水功能区^编码",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "水功能区^名称",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "pollutionCode",
					"fieldName": "排污口编码",
					"colWidth": "120",
					"isMainKey": "0"
				},
				{
					"fieldKey": "pollutionName",
					"fieldName": "排污口名",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "cod",
					"fieldName": "COD入河量",
					"colWidth": "80",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitCod",
					"fieldName": "COD入河量^限排值",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "inputValue",
					"fieldName": "N3H-N入河量",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitValue",
					"fieldName": "N3H-N限排值",
					"colWidth": "120",
					"isMainKey": "1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"colWidth": "80",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"colWidth": "80",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"totalCount": 2
		};
	}
}