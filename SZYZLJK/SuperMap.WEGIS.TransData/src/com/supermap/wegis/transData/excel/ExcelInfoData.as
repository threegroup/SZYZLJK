package  com.supermap.wegis.transData.excel
{
import com.supermap.wegis.services.data.RequestData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class ExcelInfoData extends RequestData {

    /**  文件名称:上传文件路径 */
    private var _fileName : String;

    /**  文件类型 */
    private var _fileType : String;

    /**  用户ID */
    private var _userId : String;

    /**  行政编码 */
    private var _admDiv : String;

    /** 
     *  文件名称:上传文件路径曉夞丅
     * 
     * @return 文件名称:上传文件路径
     */
    public function get fileName():String {
        return this._fileName;
    }

    /** 
     *  文件名称:上传文件路径
     * 
     * @param fileName 文件名称:上传文件路径
     */
    public function set fileName(fileName : String):void {
        this._fileName = fileName
    }

    /** 
     *  文件类型曉夞丅
     * 
     * @return 文件类型
     */
    public function get fileType():String {
        return this._fileType;
    }

    /** 
     *  文件类型
     * 
     * @param fileType 文件类型
     */
    public function set fileType(fileType : String):void {
        this._fileType = fileType
    }

    /** 
     *  用户ID曉夞丅
     * 
     * @return 用户ID
     */
    override public function get userId():String {
        return this._userId;
    }

    /** 
     *  用户ID
     * 
     * @param userId 用户ID
     */
    override public function set userId(userId : String):void {
        this._userId = userId
    }

    /** 
     *  行政编码曉夞丅
     * 
     * @return 行政编码
     */
    public function get admDiv():String {
        return this._admDiv;
    }

    /** 
     *  行政编码
     * 
     * @param admDiv 行政编码
     */
    public function set admDiv(admDiv : String):void {
        this._admDiv = admDiv
    }

}
}
