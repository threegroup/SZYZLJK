package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.utility.UploadFileInfoData;

/** 
 * 上传文件记录表Dao入出参数
 * 
 * 上传文件记录表Dao入出参数
 * 
 * @author supermap
 */
public class UploadFileRequestData extends RequestData {

    /**  系统服务日志表 */
    private var _uploadFileInfoData : UploadFileInfoData;

    /** 
     *  系统服务日志表曉夞丅
     * 
     * @return 系统服务日志表
     */
    public function get uploadFileInfoData():UploadFileInfoData {
        return this._uploadFileInfoData;
    }

    /** 
     *  系统服务日志表
     * 
     * @param uploadFileInfoData 系统服务日志表
     */
    public function set uploadFileInfoData(uploadFileInfoData : UploadFileInfoData):void {
        this._uploadFileInfoData = uploadFileInfoData
    }

}
}
