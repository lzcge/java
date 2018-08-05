
import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;





public class generatorSqlmap {
	
	public static void main(String[] args) {
	    List<String> warnings = new ArrayList<String>();
	    boolean overwrite = true;
	    //指向逆向工程配置文件
	    try {
	    File configFile = new File("config/generatorConfig.xml"); 
	    System.out.println("111111111111");
	    ConfigurationParser cp = new ConfigurationParser(warnings);
	    Configuration config = cp.parseConfiguration(configFile);
	    DefaultShellCallback callback = new DefaultShellCallback(overwrite);
	    MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config,
	            callback, warnings);
	    myBatisGenerator.generate(null);
	    System.out.println("2222222222222");
	    }catch(Exception e) {
	    	e.printStackTrace();
	    }
	}



}
