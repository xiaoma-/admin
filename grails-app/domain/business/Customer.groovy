package business

import java.util.Date;

/**
 * @author Pony
 *	客户数据表
 */
class Customer {
	String name			//客户名称
	String telephone	//电话
	String description 	//简介
	Date dateCreated
	Date lastUpdated
	
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		name nullable:true 
		description nullable:true
		name nullable:true
    }
}
