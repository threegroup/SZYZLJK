package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 上传文件记录表Dao入出参数
 * 
 * 上传文件记录表Dao入出参数
 * 
 * @author supermap
 */
public class UploadFileResponseData extends ResponseData {

    /**  上传文件表 */
    private var _uploadFileList : Array;

    /** 
     *  上传文件表曉夞丅
     * 
     * @return 上传文件表
     */
    public function get uploadFileList():Array {
        return this._uploadFileList;
    }

    /** 
     *  上传文件表
     * 
     * @param uploadFileList 上传文件表
     */
    public function set uploadFileList(uploadFileList : Array):void {
        this._uploadFileList = uploadFileList
    }

}
}
