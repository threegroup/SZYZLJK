package widgets.waterevaluation
{
	public class CapacityDataSource
	{
		public function CapacityDataSource()
		{
		}
		
		public var actSrc:Object = {
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
					"x": "116.26596666666669",
					"y": "40.02081666666667"
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
					"x": "116.30666666666666",
					"y": "39.969367222222225"
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
					"isSortField": "true",
					"isAsc": "1",
					"colWidth": "80",
					"isMainKey": "2"
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
					"mainKey": "1"
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
			"totalCount": 2,
		};
		
		public var wqtSrc:Object = {
			"message": "信息查询成功。",
			"nodeList": [
				{
					"code": "FUNCTION000",
					"name": "太子河水功能区0",
					"attainedPercent": "30%",
					"isAttained":"否",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "116.26596666666612",
					"y": "40.020816666666333"
				},
				{
					"code": "FUNCTION001",
					"name": "太子河水功能区1",
					"attainedPercent": "70%",
					"isAttained":"是",
					"cod":"123",
					"limitCod":"150",
					"inputValue":"140",
					"limitValue":"145",
					"monDetail":"",
					"x": "116.30666666666679",
					"y": "39.969367222222234"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "水功能区编码",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "水功能区名称",
					"isMainKey": "2"
				},
				{
					"fieldKey": "attainedPercent",
					"fieldName": "水功能区水质达标次数/百分比",
					"isMainKey": "1"
				},
				{
					"fieldKey": "isAttained",
					"fieldName": "是否达标",
					"isMainKey": "1"
				},
				{
					"fieldKey": "cod",
					"fieldName": "COD入河量",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitCod",
					"fieldName": "COD入河量限排值",
					"isMainKey": "1"
				},
				{
					"fieldKey": "inputValue",
					"fieldName": "N3H-N入河量",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitValue",
					"fieldName": "N3H-N限排值",
					"mainKey": "1"
				},
				{
					"fieldKey": "monDetail",
					"fieldName": "污染物浓度监测详情",
					"mainKey": "-1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"attainedPercent": 2,
		};
		
		public var wpdtSrc:Object = {
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
					"x": "116.26596666666612",
					"y": "40.020816666666333"
				},
				{
					"code": "FUNCTION001",
					"name": "太子河水功能区1",
					"monitorCount": "70",
					"monitorTime":"20",
					"codValue":"123",
					"codStandardValue":"150",
					"anValue":"140",
					"anStandardValue":"145",
					"x": "116.30666666666679",
					"y": "39.969367222222234"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "水功能区编码",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "水功能区名称",
					"isMainKey": "0"
				},
				{
					"fieldKey": "monitorCount",
					"fieldName": "监测次数",
					"isMainKey": "1"
				},
				{
					"fieldKey": "monitorTime",
					"fieldName": "监测时间",
					"isMainKey": "1"
				},
				{
					"fieldKey": "codValue",
					"fieldName": "Cod浓度",
					"isMainKey": "1"
				},
				{
					"fieldKey": "codStandardValue",
					"fieldName": "Cod浓度标准值",
					"isMainKey": "1"
				},
				{
					"fieldKey": "anValue",
					"fieldName": "氨氮浓度",
					"isMainKey": "1"
				},
				{
					"fieldKey": "anStandardValue",
					"fieldName": "氨氮浓度标准值",
					"mainKey": "1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"monitorCount": 2,
		};
		
		public var wdpdtSrc:Object = {
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
					"x": "116.26596666666631",
					"y": "40.020816666666356"
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
					"x": "116.30666666666611",
					"y": "39.969367222222221"
				}],
			"propFields": [
				{
					"fieldKey": "code",
					"fieldName": "水功能区编码",
					"isMainKey": "0"
				},
				{
					"fieldKey": "name",
					"fieldName": "水功能区名称",
					"isMainKey": "0"
				},
				{
					"fieldKey": "pollutionCode",
					"fieldName": "排污口编码",
					"isMainKey": "1"
				},
				{
					"fieldKey": "pollutionName",
					"fieldName": "排污口名",
					"isMainKey": "2"
				},
				{
					"fieldKey": "cod",
					"fieldName": "COD入河量",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitCod",
					"fieldName": "COD入河量限排值",
					"isMainKey": "1"
				},
				{
					"fieldKey": "inputValue",
					"fieldName": "N3H-N入河量",
					"isMainKey": "1"
				},
				{
					"fieldKey": "limitValue",
					"fieldName": "N3H-N限排值",
					"mainKey": "1"
				},
				{
					"fieldKey": "x",
					"fieldName": "经度",
					"isMainKey": "0"
				},
				{
					"fieldKey": "y",
					"fieldName": "纬度",
					"isMainKey": "0"
				}],
			"responseSts": 0,
			"pollutionName": 2,
		};
	}
}