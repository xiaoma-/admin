package business

/**
 * @author Pony
 *  权限表
 */
class Authorization {
	
	Authorization parent	//上级
	String controller		//业务
	String action			//方法
	String name				//名称
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		parent(nullable:true)
		controller(nullable:true)
		action(nullable:true)
		name(nullable:true)
    }
}
