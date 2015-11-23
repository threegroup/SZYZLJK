package com.supermap.wegis.transData.search
{
import com.supermap.wegis.services.data.RequestData;
import com.supermap.wegis.transData.search.DocCatalogTreeData;

/** 
 * 查询RequestData
 * 
 * 查询RequestData
 * 
 * @author supermap
 */
public class GetDocCatalogRequestData extends RequestData {

    /**  文档资料目录 */
    private var _docCatalogTreeData : DocCatalogTreeData;

    /** 
     *  文档资料目录曉夞丅
     * 
     * @return 文档资料目录
     */
    public function get docCatalogTreeData():DocCatalogTreeData {
        return this._docCatalogTreeData;
    }

    /** 
     *  文档资料目录
     * 
     * @param docCatalogTreeData 文档资料目录
     */
    public function set docCatalogTreeData(docCatalogTreeData : DocCatalogTreeData):void {
        this._docCatalogTreeData = docCatalogTreeData
    }

}
}
