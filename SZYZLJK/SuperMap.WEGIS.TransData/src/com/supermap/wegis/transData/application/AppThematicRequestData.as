package com.supermap.wegis.transData.application
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.application.AppThematicInfoData;

/** 
 * AppThematicRequestData
 * 
 * AppThematicRequestData
 * 
 * @author supermap
 */
public class AppThematicRequestData extends RequestData {

    /**  专题图申请详情 */
    private var _appThematicpInfoData : AppThematicInfoData;

    /** 
     *  专题图申请详情曉夞丅
     * 
     * @return 专题图申请详情
     */
    public function get appThematicpInfoData():AppThematicInfoData {
        return this._appThematicpInfoData;
    }

    /** 
     *  专题图申请详情
     * 
     * @param appThematicpInfoData 专题图申请详情
     */
    public function set appThematicpInfoData(appThematicpInfoData : AppThematicInfoData):void {
        this._appThematicpInfoData = appThematicpInfoData
    }

}
}
