package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 成果图取得ResponseData
 * 
 * 成果图取得ResponseData
 * 
 * @author supermap
 */
public class GetAchievementMapResponseData extends ResponseData {

    /**  成果图列表 */
    private var _achievementMapDataList : Array;

    /** 
     *  成果图列表曉夞丅
     * 
     * @return 成果图列表
     */
    public function get achievementMapDataList():Array {
        return this._achievementMapDataList;
    }

    /** 
     *  成果图列表
     * 
     * @param achievementMapDataList 成果图列表
     */
    public function set achievementMapDataList(achievementMapDataList : Array):void {
        this._achievementMapDataList = achievementMapDataList
    }

}
}
