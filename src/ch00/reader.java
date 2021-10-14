package ch00;
import java.util.*;
import java.io.*;


public class reader {
	public static void main(String[] args)throws IOException{
	        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
	        
	 
	        int number = Integer.parseInt(br.readLine());
	        
	        for(int i=0; i< number; i++){
	            String arr[]  = br.readLine().split(" ");
	            //라인단위로 읽은 후에, split으로 쪼개기
	            
	            int x = Integer.parseInt(arr[0]);
	            int y = Integer.parseInt(arr[1]);
	            bw.write(x+y);
	            System.out.println("");
	               //print대신에 write를 써주면 된다. 
	            
	        }
	        
	        




	//flush(). close()는 반드시 필요 

	//bw.flush(); //남은거 모두 출력하는 메소드 
	        br.close();
	        bw.close();
	       
	        
	        
	        
	    }
	}


