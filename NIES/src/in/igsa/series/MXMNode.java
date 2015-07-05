package in.igsa.series;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class MXMNode {

    List<MXMNode> childs;
    List<MXMNode> leafs;
    String data;
    String incrementalPath;
    String idPath;

    public MXMNode( String nodeValue, String incrementalPath ,String idPath) {
        childs = new ArrayList<MXMNode>();
        leafs = new ArrayList<MXMNode>();
        data = nodeValue;
        this. incrementalPath = incrementalPath;
        this.idPath = idPath;
    }

    public boolean isLeaf() {
        return childs.isEmpty() && leafs.isEmpty();
    }

    public void addElement(String currentPath, String[] list) {

        //Avoid first element that can be an empty string if you split a string that has a starting slash as /sd/card/
        /*while( list[0] == null || list[0].equals("") )
            list = Arrays.copyOfRange(list, 1, list.length);
*/
    	MXMNode currentChild;
    	if(incrementalPath != "")
    		currentChild = new MXMNode(list[0],incrementalPath+"/"+list[0], list[0]);
    	else
    		currentChild = new MXMNode(list[0],list[0], list[0]);
    		
        if ( list.length == 1 ) {
            leafs.add( currentChild );
            return;
        } else {
            int index = childs.indexOf( currentChild );
            if ( index == -1 ) {
                childs.add( currentChild );
                currentChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length));
            } else {
                MXMNode nextChild = childs.get(index);
                nextChild.addElement(currentChild.incrementalPath, Arrays.copyOfRange(list, 1, list.length));
            }
        }
    }

    @Override
    public boolean equals(Object obj) {
        MXMNode cmpObj = (MXMNode)obj;
        return incrementalPath.equals( cmpObj.incrementalPath ) && data.equals( cmpObj.data );
    }

    public void printNode( int increment, String typ) {
    	
    	if(typ.equals("child")){
        	if(Test.counterCheck < increment){
        		Test.strTree = Test.strTree + "<ul><li class=\"folder\" >"+idPath;
        		// System.out.println("<ul><li class=\"folder\" >"+idPath);
        	}else if(Test.counterCheck > increment){
        		for(int x=0; x < Test.counterCheck - increment ; x=x+2 )
        			Test.strTree = Test.strTree + "</ul>";
        			//System.out.println("</ul>");
        		Test.strTree = Test.strTree + "<li class=\"folder\" >"+idPath;
        		//System.out.println("<li class=\"folder\" >"+idPath);
        	}
    	}else if(typ.equals("leaf")){
    		if(Test.counterCheck < increment){
    			Test.strTree = Test.strTree + "<ul><li id=\""+incrementalPath+"\" >"+idPath+"</li>";
    			//System.out.println("<ul><li id=\""+incrementalPath+"\" >"+idPath+"</li>");
        	}else if(Test.counterCheck == increment){
        		Test.strTree = Test.strTree + "<li id=\""+incrementalPath+"\" >"+idPath+"</li>";
        		//System.out.println("<li id=\""+incrementalPath+"\" >"+idPath+"</li>");
        	}else if(Test.counterCheck > increment){
        		for(int x=0; x < Test.counterCheck - increment ; x=x+2 )
        			Test.strTree = Test.strTree + "</ul>";
        			//System.out.println("</ul>");
        		Test.strTree = Test.strTree + "<li id=\""+incrementalPath+"\" >"+idPath+"</li>";
        		//System.out.println("<li id=\""+incrementalPath+"\" >"+idPath+"</li>");
        	}
    	}

    	Test.counterCheck = increment;
    	
       /* for (int i = 0; i < increment; i++) {
            System.out.print(" ");
        }*/
        for( MXMNode n: childs){ 
            n.printNode(increment+2, "child");
        }
        for( MXMNode n: leafs){
        	n.printNode(increment+2, "leaf");
          
        }
    }

    @Override
    public String toString() {
        return data;
    }


}





