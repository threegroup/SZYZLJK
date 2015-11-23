package  com.supermap.wegis.transData.excel
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.excel.ExcelInfoData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class ExcelRequestData extends RequestData {

    /**  上传信息 */
    private var _excelInfoData : ExcelInfoData;

    /** 
     *  上传信息曉夞丅
     * 
     * @return 上传信息
     */
    public function get excelInfoData():ExcelInfoData {
        return this._excelInfoData;
    }

    /** 
     *  上传信息
     * 
     * @param excelInfoData 上传信息
     */
    public function set excelInfoData(excelInfoData : ExcelInfoData):void {
        this._excelInfoData = excelInfoData
    }

}
}
