package com.supermap.wegis.transData.test
{
import com.supermap.wegis.services.data.ResponseData;

/** 
 * 测试logicResponseData
 * 
 * 测试logicResponseData
 * 
 * @author supermap
 */
public class TestResponseData extends ResponseData {

    /**  文件名 */
    private var _fileNm : String;

    /**  文件 */
    private var _base64File : String;

    /** 
     *  文件名曉夞丅
     * 
     * @return 文件名
     */
    public function get fileNm():String {
        return this._fileNm;
    }

    /** 
     *  文件名
     * 
     * @param fileNm 文件名
     */
    public function set fileNm(fileNm : String):void {
        this._fileNm = fileNm
    }

    /** 
     *  文件曉夞丅
     * 
     * @return 文件
     */
    public function get base64File():String {
        return this._base64File;
    }

    /** 
     *  文件
     * 
     * @param base64File 文件
     */
    public function set base64File(base64File : String):void {
        this._base64File = base64File
    }

}
}
