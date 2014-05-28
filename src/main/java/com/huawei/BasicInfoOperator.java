package com.huawei;

import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

public class BasicInfoOperator
{
	public String getInfo()
	{
		String content = null;
		
		try
		{
			URLConnection conn = new URL("http://9.91.11.159:6278/webhdfs/v1/NewFile?op=GETFILESTATUS").openConnection();
			
			int length = 0;
			
			InputStream is = conn.getInputStream();
			
			byte[] temp = new byte[is.available()];
			
			is.read(temp);
			
			content = new String(temp);
		} catch (MalformedURLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return content;
	}
}
