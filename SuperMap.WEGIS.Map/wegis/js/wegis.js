/**liangbimiao - 20151209 - created
 * show pot's position on the map*/
var WeGIS = {};

WeGIS.V = {
    map: null,
    marker: null,
    markerLayer: null,
    markerLayerName: "defaultMarkerLayer",
    vectorLayer: null,
    vectorLayerName: "defaultVectorLayerLabel",
    geoText: null,
    geoTextFeature: null,
    strategy: null,
    baseMaplayer: null,//天地图矢量底图
    baseLabelLayer: null,//天地图矢量标注
    baseImageMaplayer: null,//天地图影像底图
    baseImageLabelLayer: null,//天地图影像标注
    baseMapUrl: "http://tdt.mwr.gov.cn:81/slb_c/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=slb&STYLE=default&TILEMATRIXSET=c&FORMAT=tiles&TileMatrix=${z}&TileRow=${y}&TileCol=${x}",
    baseLabelUrl: "http://tdt.mwr.gov.cn:81/sla_c/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=sla&STYLE=default&TILEMATRIXSET=c&FORMAT=tiles&TileMatrix=${z}&TileRow=${y}&TileCol=${x}",
    baseImageMapUrl: "http://tdt.mwr.gov.cn:81/img_c/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=img&STYLE=default&TILEMATRIXSET=c&FORMAT=tiles&TileMatrix=${z}&TileRow=${y}&TileCol=${x}",
    baseImageLabelUrl: "http://tdt.mwr.gov.cn:81/sia_c/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=sia&STYLE=default&TILEMATRIXSET=c&FORMAT=tiles&TileMatrix=${z}&TileRow=${y}&TileCol=${x}",
};

WeGIS.F = {
    //初始化地图窗口
    initMap: function (mapid) {
        WeGIS.V.map = new SuperMap.Map(mapid, {
            controls: [
                new SuperMap.Control.MousePosition(),
                new SuperMap.Control.ScaleLine(),
                new SuperMap.Control.Zoom(),
                new SuperMap.Control.Navigation({
                    dragPanOptions: {
                        enableKinetic: true
                    }
                })],
            allOverlays: true
        });

        //天地图矢量底图
        WeGIS.V.baseMaplayer = new SuperMap.Layer.Tianditu();
        WeGIS.V.baseMaplayer.url = WeGIS.V.baseMapUrl;
        WeGIS.V.baseMaplayer.zOffset = 4;

        //天地图矢量底图标注
        WeGIS.V.baseLabelLayer = new SuperMap.Layer.Tianditu();
        WeGIS.V.baseLabelLayer.url = WeGIS.V.baseLabelUrl;
        WeGIS.V.baseLabelLayer.zOffset = 4;

        /*//天地图影像底图
         WeGIS.V.baseImageMaplayer = new SuperMap.Layer.Tianditu();
         WeGIS.V.baseImageMaplayer.url = WeGIS.V.baseImageMapUrl;
         WeGIS.V.baseImageMaplayer.zOffset = 4;

         //天地图影像底图标注
         WeGIS.V.baseImageLabelLayer = new SuperMap.Layer.Tianditu();
         WeGIS.V.baseImageLabelLayer.url = WeGIS.V.baseImageLabelUrl;
         WeGIS.V.baseImageLabelLayer.zOffset = 4;*/

        //marker layer
        WeGIS.V.markerLayer = new SuperMap.Layer.Markers(WeGIS.V.markerLayerName);
        //label layer
        WeGIS.V.strategy = new SuperMap.Strategy.GeoText();
        WeGIS.V.strategy.style = {
            fontColor: "#FF0000",
            fontWeight: "bolder",
            fontSize: "14px",
            fill: true,
            fillOpacity: 0,
            labelYOffset: -5 //文本偏移保证图标指向坐标位置
        };
        WeGIS.V.vectorLayer = new SuperMap.Layer.Vector(WeGIS.V.vectorLayerName, {strategies: [WeGIS.V.strategy]});
        WeGIS.F.addLayerEx();
    },
    //地图初始化添加文本及图标
    addLayerEx: function () {
        //矢量底图
        WeGIS.V.map.addLayers([WeGIS.V.baseMaplayer, WeGIS.V.baseLabelLayer, WeGIS.V.markerLayer, WeGIS.V.vectorLayer]);
        //影像底图
        //WeGIS.V.map.addLayers([WeGIS.V.baseImageMaplayer, WeGIS.V.baseImageLabelLayer, WeGIS.V.markerLayer, WeGIS.V.vectorLayer]);
        var searchObject = WeGIS.F.getSearchParam();
        var xyObject = searchObject["centerxy"];
        if (xyObject != "" && xyObject != null) {
            var xyArray = xyObject.split(',');
            var x = parseInt(xyArray[0]);
            var y = parseInt(xyArray[1]);
            WeGIS.V.map.setCenter(new SuperMap.LonLat(x, y), 0);//居中显示
            WeGIS.F.createMarker(x, y);//创建地图标签
            WeGIS.F.createGeoText(x, y, decodeURIComponent(searchObject["name"]));//创建文本标签
        }
    },
    //根据坐标创建点图标
    createMarker: function (x, y) {
        if (WeGIS.V.marker != null) {
            WeGIS.V.markerLayer.removeMarker(WeGIS.V.marker);
        }
        var size = new SuperMap.Size(44, 33);
        var offset = new SuperMap.Pixel(-(size.w / 2), -size.h);
        var icon = new SuperMap.Icon("wegis/images/marker.png", size, offset);
        WeGIS.V.marker = new SuperMap.Marker(new SuperMap.LonLat(x, y), icon);
        WeGIS.V.markerLayer.addMarker(WeGIS.V.marker);
    },
    //根据坐标创建文本标签
    createGeoText: function (x, y, text) {
        if (WeGIS.V.geoTextFeature != null) {
            WeGIS.V.vectorLayer.removeFeatures([WeGIS.V.geoTextFeature]);
        }
        WeGIS.V.geoText = new SuperMap.Geometry.GeoText(x, y, text);
        WeGIS.V.geoTextFeature = new SuperMap.Feature.Vector(WeGIS.V.geoText);
        WeGIS.V.vectorLayer.addFeatures([WeGIS.V.geoTextFeature]);
    },
    //获取查询字符串参数
    getSearchParam: function () {
        var tempObject = {};
        var searchString = window.document.location.search;
        var tempString = searchString.substring(1);
        if (tempString != "") {
            var tempArray = tempString.split('&');
            var len = tempArray.length;
            if (len > 0) {
                for (var i = 0; i < len; i++) {
                    var tempField = tempArray[i];
                    var tempFieldArray = tempField.split('=');
                    tempObject[tempFieldArray[0]] = tempFieldArray[1];
                }
            }
        }
        return tempObject;
    }
};