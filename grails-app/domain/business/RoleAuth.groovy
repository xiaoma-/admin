package business

/**
 * @author Pony
 *   角色权限关系表
 *
 */
class RoleAuth {
	
	Role role
	Authorization auth
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		
    }
}
