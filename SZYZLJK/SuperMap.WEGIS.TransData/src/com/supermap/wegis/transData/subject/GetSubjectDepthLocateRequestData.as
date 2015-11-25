package com.supermap.wegis.transData.subject
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 取得深度主题中对象在地图上定位的信息
 * 
 * 取得深度主题对象的定位信息
 * 
 * @author supermap
 */
public class GetSubjectDepthLocateRequestData extends RequestData {

    /**  传入的对象编码，窜入的编码可以以逗号分隔代表多个对象的返回 */
    private var _objectCodes : String;

    /**  传入的对象类型 */
    private var _middleType : String;

    /** 
     *  传入的对象编码，窜入的编码可以以逗号分隔代表多个对象的返回曉夞丅
     * 
     * @return 传入的对象编码，窜入的编码可以以逗号分隔代表多个对象的返回
     */
    public function get objectCodes():String {
        return this._objectCodes;
    }

    /** 
     *  传入的对象编码，窜入的编码可以以逗号分隔代表多个对象的返回
     * 
     * @param objectCodes 传入的对象编码，窜入的编码可以以逗号分隔代表多个对象的返回
     */
    public function set objectCodes(objectCodes : String):void {
        this._objectCodes = objectCodes
    }

    /** 
     *  传入的对象类型曉夞丅
     * 
     * @return 传入的对象类型
     */
    public function get middleType():String {
        return this._middleType;
    }

    /** 
     *  传入的对象类型
     * 
     * @param middleType 传入的对象类型
     */
    public function set middleType(middleType : String):void {
        this._middleType = middleType
    }

}
}
