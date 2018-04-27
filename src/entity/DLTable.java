package entity;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class DLTable {
	// ���
	private int Tid;
	
	// �ڵ��������
	private int nodeIndex;
	
	// �������
	private String valueType;
	
	// ����
	private int LevelNum;
	
	// ������
	private String LayerType;
	
	// ��������
	private int lchildIndex;

	private int rchildIndex;
	// ���ڵ��������
	private int parentNodeIndex;
	// ���������������
	private ArrayList<String> dataIndexArray;

	// �ַ�����ʽ��dataIndexArrays
	private String dataIndexArrays;

	//������
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getDataIndexArrays() {
		return dataIndexArrays;
	}

	public void setDataIndexArrays(String dataIndexArrays) {
		this.dataIndexArrays = dataIndexArrays;
	}

	private static HashMap<Integer, DLTable> map = new HashMap<>();

	public DLTable(int nodeIndex) {
		this.nodeIndex = nodeIndex;
		map.put(nodeIndex, this);
	}

	public DLTable() {
		super();
		// TODO Auto-generated constructor stub
	}

	public static HashMap<Integer, DLTable> getMap() {
		return map;
	}

	public static void setMap(HashMap<Integer, DLTable> map) {
		DLTable.map = map;
	}

	public static DLTable getByIndex(int nodeIndex) {
		if (map.containsKey(nodeIndex)) {
			return map.get(nodeIndex);
		} else {
			return null;
		}
	}

	public int getTid() {
		return Tid;
	}

	public void setTid(int tid) {
		Tid = tid;
	}

	public int getNodeIndex() {
		return nodeIndex;
	}

	public void setNodeIndex(int nodeIndex) {
		this.nodeIndex = nodeIndex;
	}

	public String getValueType() {
		return valueType;
	}

	public void setValueType(String valueType) {
		this.valueType = valueType;
	}

	public int getLevelNum() {
		return LevelNum;
	}

	public void setLevelNum(int levelNum) {
		LevelNum = levelNum;
	}

	public String getLayerType() {
		return LayerType;
	}

	public void setLayerType(String layerType) {
		LayerType = layerType;
	}

	public int getLchildIndex() {
		return lchildIndex;
	}

	public void setLchildIndex(int lchildIndex) {
		this.lchildIndex = lchildIndex;
	}


	@Override
	public String toString() {
		return "DLTable [Tid=" + Tid + ", nodeIndex=" + nodeIndex
				+ ", valueType=" + valueType + ", LevelNum=" + LevelNum
				+ ", LayerType=" + LayerType + ", lchildIndex=" + lchildIndex
				+ ", rchildIndex=" + rchildIndex + ", parentNodeIndex="
				+ parentNodeIndex + ", dataIndexArray=" + dataIndexArray
				+ ", dataIndexArrays=" + dataIndexArrays + ", result=" + result
				+ "]\n";
	}

	public int getRchildIndex() {
		return rchildIndex;
	}

	public void setRchildIndex(int rchildIndex) {
		this.rchildIndex = rchildIndex;
	}

	public int getParentNodeIndex() {
		return parentNodeIndex;
	}

	public void setParentNodeIndex(int parentNodeIndex) {
		this.parentNodeIndex = parentNodeIndex;
	}

	public ArrayList<String> getDataIndexArray() {
		return dataIndexArray;
	}

	public void setDataIndexArray(ArrayList<String> dataIndexArray) {
		this.dataIndexArray = dataIndexArray;
	}

	

}
