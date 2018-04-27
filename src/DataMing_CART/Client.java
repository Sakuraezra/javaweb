package DataMing_CART;  
  
public class Client{  
    public static void main(String[] args){  
    //	   String filePath = "E:\\input.txt";  
           
      /*  CARTTool tool = new CARTTool(filePath);  
   		dllist = (List<DL>) hibernateTemplate.find("from Place");
   		System.out.println(dllist);*/
         
    	CARTTool2 tool =new CARTTool2();
        tool.startBuildingTree();  
    } 
}  