package com.supermap.wegis.transData.map
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.map.AchievementMapData;

/** 
 * 成果图取得RequestData
 * 
 * 成果图取得RequestData
 * 
 * @author supermap
 */
public class GetAchievementMapRequestData extends RequestData {

    /**  成果图信息 */
    private var _achievementMapData : AchievementMapData;

    /** 
     *  成果图信息曉夞丅
     * 
     * @return 成果图信息
     */
    public function get achievementMapData():AchievementMapData {
        return this._achievementMapData;
    }

    /** 
     *  成果图信息
     * 
     * @param achievementMapData 成果图信息
     */
    public function set achievementMapData(achievementMapData : AchievementMapData):void {
        this._achievementMapData = achievementMapData
    }

}
}
