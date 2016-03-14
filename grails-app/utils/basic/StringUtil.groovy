package basic

import java.security.MessageDigest
import java.util.regex.Pattern

/**
 * @author Pony
 *	字符工具类
 */
class StringUtil {

	/**
	 * 生成数字和字母随机数
	 * @param length
	 * @return
	 */
	public static String getCharacterAndNumber(int length) {
		String password = ""
		Random random = new Random()
		for(int i = 0; i < length; i++) {
			String charOrNum = random.nextInt(2)%2 == 0 ? "char" : "num";
			if("char".equalsIgnoreCase(charOrNum)) {
				// 字符串
				int choice = random.nextInt(2) % 2 == 0 ? 65 : 97 //取得大写字母还是小写字母
				password += (char) (choice + random.nextInt(26))
			}else if("num".equalsIgnoreCase(charOrNum)) {
				// 数字
				password += String.valueOf(random.nextInt(10))
			}
		}

		return password
	}

	/**
	 * Filter the contact info.
	 * @param content
	 * @return
	 */
	public static String filter(String content) {

		if(!content) return ''

		// filter email
		def pattern = ~/[\w-\.]+@(.|\s+|[\w-]+\.com)/
		def matcher = pattern.matcher(content)
		def count = matcher.getCount()
		(0..<count).each { i ->
			content = content.replaceAll(matcher[i][0],'*')
		}

		// filter phone number
		pattern = ~/(\d|\s|-){8,15}/
		matcher = pattern.matcher(content)
		count = matcher.getCount()
		(0..<count).each { i ->
			content = content.replaceAll(matcher[i][0],' **** ')
		}
		return content
	}

	/**
	 * 判断中英文姓名
	 */
	public static boolean ifGbkUserName(String nickName) {
		boolean isGbk = false;
		for (int i = 0; i < nickName.length(); i++) {
			String str = nickName.substring(i, i+1);
			//生成一个Pattern,同时编译一个正则表达式
			isGbk = java.util.regex.Pattern.matches("[\u4E00-\u9FA5]", str);
			if(isGbk){
				break;
			}
		}
		return isGbk;
	}
	
	def static getList(def strs) {
		def result = []
		if(strs) {
			if(strs instanceof String) {
				result << strs
			} else {
				strs.each {
					result << it
				}
			}
		}
		return result
	}
	
	def static list2string(def strs) {
		def ls = getList(strs)
		def result = ""
		ls.each {
			result += "${it},"
		}
		if(result.endsWith(",")) {
			result = result.substring(0, result.size() - 1)
		}
		return result
	}
	
	def static String serialize(params) {
		def result = ""
		try {
			if(params instanceof Map) {
				params.each {
					result += "&${it.key}=${it.value}"
				}
			}
			result = result.replace("&controller=", "&controllername=").replace("&action=", "&actionname=")
		} catch (Exception e) {
			e.printStackTrace()
		}
		return result
	}
	
	/**
	 * @param password
	 * @return
	 * 密码加密
	 */
	def static passwordEncoder(password) {
		try {
			def result = ""
			MessageDigest md = MessageDigest.getInstance("SHA-256")
			md.update(password?.getBytes("UTF-8"))
			md.digest().each {
				def temp = Integer.toHexString(it & 0xFF)
				if(temp.length() == 1) result += "0"
				result += temp
			}
			return result
		} catch (Exception e) {
			e.printStackTrace()
		}
	}
}
