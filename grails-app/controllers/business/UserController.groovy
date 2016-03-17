package business

class UserController {

    def index() { }
	
	def list(){
		params.max = 25
		params.offset = params.offset?params.int('offset'):0
		
		def user = User.createCriteria().list(max: params.max, offset: params.offset){
			order("id","desc")
		}
		[user:user]
	}
}
