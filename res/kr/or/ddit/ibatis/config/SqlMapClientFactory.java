package kr.or.ddit.ibatis.config;


import java.io.IOException;
import java.io.Reader;
import java.nio.charset.Charset;

import com.ibatis.common.resources.Resources;
import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.client.SqlMapClientBuilder;


public class SqlMapClientFactory {
	private static SqlMapClient client;
	
	static{
		try {
			Charset charset = Charset.forName("utf-8");
			Resources.setCharset(charset);
			
			Reader rd = Resources.getResourceAsReader("kr/or/ddit/ibatis/config/sqlMapConfig.xml");
			client = SqlMapClientBuilder.buildSqlMapClient(rd);
			rd.close(); 
		} catch (IOException e) {
			System.out.println("SqlMapClient객체 생성 실패");
			e.printStackTrace();
		}
	}
	
	public static SqlMapClient getSqlMapClient(){
		return client;
	} 
	
}