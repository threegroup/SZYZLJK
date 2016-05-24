		//选择年份，点击查询，获取各县评价数据，用于地图展示
		public static var countyThemeData:Object =	{
			"success": true,
			"attributes": {
				"targetList": [{
					"SUPER_OBJ_ID": "210521",
					"承载力类别等级": "0",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "210504",
					"承载力类别等级": "1",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "210381",
					"承载力类别等级": "1",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "210421",
					"承载力类别等级": "2",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "211011",
					"承载力类别等级": "1",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "211081",
					"承载力类别等级": "0",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "211002",
					"承载力类别等级": "2",
					"达标颜色": "#00FF00"
					
				},{
					"SUPER_OBJ_ID": "211003",
					"承载力类别等级": "2",
					"达标颜色": "#00FF00"
					
				}
					
					,{
						"SUPER_OBJ_ID": "210311",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210304",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210303",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "211004",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210302",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "211005",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210502",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210111",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210503",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210505",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210422",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "211021",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					},{
						"SUPER_OBJ_ID": "210112",
						"承载力类别等级": "2",
						"达标颜色": "#00FF00"
						
					}
				]
			}
		}
		
		/**行政区承载力情况统计表*/
	   {
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
		}
		
		/**河流水功能区水质达标率及污染物入河量情况统计表*/
		{
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
		}
		
		/**水功能区水质达标率及污染物入河量详情*/
	 {
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
		 {
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
		}
		
		/**县区域水资源承载力气泡数据*/
		{
			"message": "信息查询成功。",
			"responseSts": 0,
			"surveyData": [
				{
					"resultInfoHeaderList": [{
						"showValue": "名称",
						"decimalDigits": 0,
						"code": "name",
						"colWidth": 0
					},
					{
							"showValue": "实际值(mg/L)",
							"decimalDigits": 0,
							"code": "value",
							"colWidth": 0
					},
					{
							"showValue": "国家标准(mg/L)",
							"decimalDigits": 0,
							"code": "standard",
							"colWidth": 0
					}],
					"detailType": "detailInfo",
					"label": "详细信息",
					"resultInfoDetailList": [{
						"name": "COD",
						"value": "35",
						"standard":"20"
					},
					{
							"name": "氨氮",
							"value": "1.8",
							"standard":"1.0"
					},
					{
							"name": "总磷",
							"value": "0.2",
							"standard":"0.3"
					},
					{
							"name": "溶解氧",
							"value": "5",
							"standard":"2"
					},
					{
							"name": "总氮",
							"value": "0.4",
							"standard":"0.2"
					}]
				}]
		}
