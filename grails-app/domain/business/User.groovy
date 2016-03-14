package business

/**
 * @author Pony
 *  系统用户
 */
class User {
	
    String nickname  	//姓名
	String username		//账号
	String password		//密码
	Integer status		//状态
	Integer sex			//性别
	String email		//邮箱
	String telephone	//手机
	Role role			//角色
	Date dateCreated
	Date lastUpdated
	
	static mapping = {
		version(false)
		cache(true)
	}
    static constraints = {
		username nullable: true, unique: true, maxSize: 50
		password nullable: true, minSize: 6
		email nullable:true
		sex nullable:true
		role nullable:true
    }
}
