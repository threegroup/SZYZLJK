package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * AppThematicResponseDatata
 * 
 * AppThematicResponseData
 * 
 * @author supermap
 */
public class AppThematicResponseData extends ResponseData {

    /**  专题图申请详情 */
    private var _appThematicListData : Array;

    /** 
     *  专题图申请详情曉夞丅
     * 
     * @return 专题图申请详情
     */
    public function get appThematicListData():Array {
        return this._appThematicListData;
    }

    /** 
     *  专题图申请详情
     * 
     * @param appThematicListData 专题图申请详情
     */
    public function set appThematicListData(appThematicListData : Array):void {
        this._appThematicListData = appThematicListData
    }

}
}
