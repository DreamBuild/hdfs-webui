package webui.models;

import java.net.URI;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.FsStatus;


public class Main
{
	public static void main(String[] args) throws Exception
	{
		FileSystem fs = 
				FileSystem.get(new URI("hdfs://127.0.0.1:6278"), new Configuration());
		FsStatus ss = fs.getStatus();
		
		System.out.println(ss.getUsed());
	}
}
