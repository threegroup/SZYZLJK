package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.BaseData;

/** 
 * 成果图信息Data
 * 
 * 成果图信息Data
 * 
 * @author supermap
 */
public class AchievementMapData extends BaseData {

    /**  服务ID */
    private var _serviceId : String;

    /**  服务名称 */
    private var _serviceName : String;

    /**  服务别名 */
    private var _serviceAlias : String;

    /**  摘要 */
    private var _summary : String;

    /**  描述信息 */
    private var _descInfo : String;

    /**  服务预览图片 */
    private var _servicePreviewImage : String;

    /** 
     *  服务ID曉夞丅
     * 
     * @return 服务ID
     */
    public function get serviceId():String {
        return this._serviceId;
    }

    /** 
     *  服务ID
     * 
     * @param serviceId 服务ID
     */
    public function set serviceId(serviceId : String):void {
        this._serviceId = serviceId
    }

    /** 
     *  服务名称曉夞丅
     * 
     * @return 服务名称
     */
    public function get serviceName():String {
        return this._serviceName;
    }

    /** 
     *  服务名称
     * 
     * @param serviceName 服务名称
     */
    public function set serviceName(serviceName : String):void {
        this._serviceName = serviceName
    }

    /** 
     *  服务别名曉夞丅
     * 
     * @return 服务别名
     */
    public function get serviceAlias():String {
        return this._serviceAlias;
    }

    /** 
     *  服务别名
     * 
     * @param serviceAlias 服务别名
     */
    public function set serviceAlias(serviceAlias : String):void {
        this._serviceAlias = serviceAlias
    }

    /** 
     *  摘要曉夞丅
     * 
     * @return 摘要
     */
    public function get summary():String {
        return this._summary;
    }

    /** 
     *  摘要
     * 
     * @param summary 摘要
     */
    public function set summary(summary : String):void {
        this._summary = summary
    }

    /** 
     *  描述信息曉夞丅
     * 
     * @return 描述信息
     */
    public function get descInfo():String {
        return this._descInfo;
    }

    /** 
     *  描述信息
     * 
     * @param descInfo 描述信息
     */
    public function set descInfo(descInfo : String):void {
        this._descInfo = descInfo
    }

    /** 
     *  服务预览图片曉夞丅
     * 
     * @return 服务预览图片
     */
    public function get servicePreviewImage():String {
        return this._servicePreviewImage;
    }

    /** 
     *  服务预览图片
     * 
     * @param servicePreviewImage 服务预览图片
     */
    public function set servicePreviewImage(servicePreviewImage : String):void {
        this._servicePreviewImage = servicePreviewImage
    }

}
}
