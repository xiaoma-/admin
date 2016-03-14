package business

/**
 * @author Pony
 *	用户详细信息表
 */
class UserInfo {
	User user
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		
    }
}
