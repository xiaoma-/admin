package business

/**
 * @author Pony
 *	系统用户角色
 */
class Role {
	String name		//角色名称
	String code		//角色编码
	Integer sortval	//排序
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		
    }
}
