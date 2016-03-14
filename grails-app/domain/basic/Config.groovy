package basic

/**
 * 系统配置
 * @author Pony
 *
 */
class Config {

	static searchable = true
	String code
	String value
	String description

	static mapping = {
	    version false
//	    cache true
	}

	static constraints = { 
		code(unique: true) 
	}
}