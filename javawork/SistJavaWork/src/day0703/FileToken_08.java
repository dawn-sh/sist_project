package day0703;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

public class FileToken_08 {

	public static void movieRead() {
		
		String fileName="/Users/sunghyunchoi/Desktop/sist0616/file/movie.txt";
		FileReader fr=null;
		BufferedReader br=null;
		
		try {
			fr=new FileReader(fileName);
			br=new BufferedReader(fr);
			
			System.out.println("***영화배우 오픈***");
			System.out.println("배우명\t대표영화\t나이");
			System.out.println("--------------------------");
			
			while(true)
			{
				String s=br.readLine();
				
				//종료
				if(s==null)
					break;
				
				/*
				//split분리
				String data[]=s.split(",");
				//배열개수만큼 반복해서 출력
				System.out.println(data[0]+"\t"+data[1]+"\t"+data[2]);
				*/
				
				//Tokneizer 분리
				StringTokenizer st=new StringTokenizer(s, ",");
				System.out.println(st.nextToken()+"\t"+st.nextToken()+"\t"+st.nextToken());
				
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}catch (IOException e) {
			
		}finally {
			try {
				br.close();
				fr.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
	
	public static void main(String[] args) {
		movieRead();
	}

}
