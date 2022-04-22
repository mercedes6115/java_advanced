package util;

import java.io.*;

public class FileUtil {
	public static void saveImage(String root, String fname, byte[] data)
	throws IOException{
		root += "/images";
		
		File f = new File(root);
		if(!f.exists())f.mkdir();
		
		f = new File(root+"/"+fname);
		FileOutputStream out = new FileOutputStream(f);
		out.write(data);
		out.close();
	}
	
	public static void saveResume(String root, String rname, byte[] data)
			throws IOException{
				root += "/resumes";
				
				File f = new File(root);
				if(!f.exists())f.mkdir();
				
				f = new File(root+"/"+rname);
				FileOutputStream out = new FileOutputStream(f);
				out.write(data);
				out.close();
			}
}
