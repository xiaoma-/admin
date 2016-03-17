package business

import basic.Config
import basic.GlobalUtil;
import basic.StringUtil

/**
 * @author Pony
 *	用户登录
 */
class LoginController {

    def index = {
		if (session.user) {
			redirect(uri:'/')
		}
		else {
			redirect action: 'auth', params: params
		}
	}

	/**
	 * Show the login page.
	 */
	def auth = {
		if(session.user) {
			redirect(controller:"home", action:"index")
		}
	}
	
	/**
	 * 登录
	 */
	def doLogin(){
		def result
		def isUserName = User.findByUsername(params.username)
		if(isUserName){
			def user = User.findByUsernameAndPassword(params.username,StringUtil.passwordEncoder(params.password))
			if(user) {
				session.user = user
				session.setMaxInactiveInterval(new Integer(Config.findByCode('session.timeout')?.value?:300))
				if(params.targetParams) {
					redirect(session.targetParams)
				} else {
					redirect(uri:'/home')
				}
			} else {
				flash.message = '密码错误'
				redirect(action: 'auth', params: params)
			}
		}else{
		   flash.message = "用户名不存在"
		   redirect(action: 'auth', params: params)
		}
	}
	
	def doRegister = {
		def user = new User(params)
		def isUserName = User.findByUsername(params.username)
		user.password = StringUtil.passwordEncoder(params.password)
		user.status = GlobalUtil.STATUS_NOPASS
		try {
			if(user.save(flush:true)) {
				session.user = user
				session.setMaxInactiveInterval(new Integer(Config.findByCode('session.timeout')?.value?:300))
				return redirect(uri:'/home')
			}
		} catch (Exception e) {
			render(view:'register',params:params)
		}
	}
	
	def doVerify(){
		def isHas
		if("name"==params.name){
			isHas = User.findByUsername(params.value)
		}else if("telephone"==params.name){
			isHas = User.findByTelephone(params.value)
		}
		
		
		render isHas?"error":"success"
		
	}
}
