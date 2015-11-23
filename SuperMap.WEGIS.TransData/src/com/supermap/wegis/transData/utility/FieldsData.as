package com.supermap.wegis.transData.utility
{
import com.supermap.wegis.services.data.BaseData;
import int;

/** 
 * FiledData
 * 
 * FiledData
 * 
 * @author supermap
 */
public class FieldsData extends BaseData {

    /**  key */
    private var _key : String;

    /**  name */
    private var _name : String;

    /**  count */
    private var _count : String;

    /**  index */
    private var _index : int;

    /**  value */
    private var _value : String;

    /** 
     *  key曉夞丅
     * 
     * @return key
     */
    public function get key():String {
        return this._key;
    }

    /** 
     *  key
     * 
     * @param key key
     */
    public function set key(key : String):void {
        this._key = key
    }

    /** 
     *  name曉夞丅
     * 
     * @return name
     */
    public function get name():String {
        return this._name;
    }

    /** 
     *  name
     * 
     * @param name name
     */
    public function set name(name : String):void {
        this._name = name
    }

    /** 
     *  count曉夞丅
     * 
     * @return count
     */
    public function get count():String {
        return this._count;
    }

    /** 
     *  count
     * 
     * @param count count
     */
    public function set count(count : String):void {
        this._count = count
    }

    /** 
     *  index曉夞丅
     * 
     * @return index
     */
    public function get index():int {
        return this._index;
    }

    /** 
     *  index
     * 
     * @param index index
     */
    public function set index(index : int):void {
        this._index = index
    }

    /** 
     *  value曉夞丅
     * 
     * @return value
     */
    public function get value():String {
        return this._value;
    }

    /** 
     *  value
     * 
     * @param value value
     */
    public function set value(value : String):void {
        this._value = value
    }

}
}
