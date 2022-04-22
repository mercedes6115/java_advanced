package util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class ResumeUtil {
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
