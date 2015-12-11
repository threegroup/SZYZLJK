
/**
 * @requires SuperMap/Layer/CanvasLayer.js
 * @requires SuperMap/Layer/Grid.js
 * @requires SuperMap/Tile/Image.js
 */

/**
 * Class: SuperMap.Layer.Tianditu
 * 天地图服务图层类。
 *     用于显示天地图的地图服务，使用<SuperMap.Layer.Tianditu>的
 *     构造函数可以创建天地图图层，更多信息查看：
 *
 * Inherits from:
 *  - <SuperMap.Layer.CanvasLayer>
 */
SuperMap.Layer.Tianditu = SuperMap.Class(SuperMap.CanvasLayer, {

  
    /**
     * Property: attribution
     * {String} The layer attribution.
     */
    attribution: "Data by <a style='white-space: nowrap' target='_blank' href='http://www.tianditu.com'>Tianditu</a>",

    /**
     * Property: url
     * {String} 图片url.
     */
    url:"http://t${num}.tianditu.com/DataServer?T=${type}_${proj}&x=${x}&y=${y}&l=${z}",

    //cva_url:"http://t${num}.tianditu.com/DataServer?T=cva_${proj}&x=${x}&y=${y}&l=${z}",

    /**
     * Property: zOffset
     * {Number} 图片url中z值偏移量
     */
    zOffset:4,
    /**
     * Constructor: SuperMap.Layer.Tianditu
     * 创建天地图图层
     *
     * Example:
     * (code)
     * var tiandituLayer = new SuperMap.Layer.Tianditu();
     * (end)
     */
    initialize: function (options) {
        var me = this;
        me.name = "Tianditu";

//        options = SuperMap.Util.extend({
//            maxExtent: new SuperMap.Bounds(
//                minX, minY, maxX, maxY
//            ),
//            tileOrigin:new SuperMap.LonLat(minX, maxY),
//            //maxResolution:maxResolution,
//            //minResolution:minResolution,
//            resolutions:resolutions,
//            units:me.units,
//            projection:me.projection
//        }, options);
        SuperMap.CanvasLayer.prototype.initialize.apply(me, [me.name, me.url, null, options]);
    },

    /**
     * Method: getTileUrl
     * 获取每个tile的图片url
     *
     * Parameters:
     * xyz - {Object}
     */
    getTileUrl:function(xyz){
        var me = this;
        url = me.url;       

        var x = xyz.x;
        var y = xyz.y;

        var z = xyz.z+me.zOffset;     

        url = SuperMap.String.format(url, {
			z: z,
            x: x,
            y: y,
        });
        return url;
    },

    /**
     * Method: setMap
     * Set the map property for the layer. This is done through an accessor
     *     so that subclasses can override this and take special action once
     *     they have their map variable set.
     *
     *     Here we take care to bring over any of the necessary default
     *     properties from the map.
     *
     * Parameters:
     * map - {<SuperMap.Map>}
     */
    setMap: function(map) {
        SuperMap.CanvasLayer.prototype.setMap.apply(this, [map]);
        var proCode = null;
        var proj = this.projection||map.projection;
        if(proj){
            if(proj.getCode){
                proCode = proj.getCode();
            }
            else{
                proCode = proj;
            }
        }
        this.setTiandituParam(proCode);
    },

    /**
     * Method: setTiandituParam
     * 设置出图相关参数
     *
     * Parameters:
     * projection - {String} 投影坐标系
     */
     setTiandituParam:function(projection){
      
            var minX = -180;
            var minY = -90;
            var maxX= 180;
            var maxY= 90;

		    var resolutions = [];
            for(var i=0;i<=14;i++){
                resolutions.push(0.17578125/2/Math.pow(2,i));
            }


            this.maxExtent=new SuperMap.Bounds(
                minX, minY, maxX, maxY
            );
            this.tileOrigin = new SuperMap.LonLat(minX, maxY);
            this.resolutions = resolutions;       
    },
    CLASS_NAME: 'SuperMap.Layer.Tianditu'
});