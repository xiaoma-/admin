class ApplicationFilters {
	def filters = {
		all(controller:'*', action:'*') {
			before = {
				def sessionuser = session.user
				params.request = request
				if(sessionuser) params.sessionuserid = sessionuser?.id
				if(controllerName && controllerName != 'login' && controllerName != 'logout' && controllerName != 'assets' && !request.xhr) {
					if(!sessionuser) {
						session.targetParams = params
						redirect(controller:'login', action:'auth')
						return false
					}
//					else if(sessionuser && controllerName != 'website' && !Authorization.hasAuth(sessionuser.refresh(), controllerName, actionName?:'index', params)) {
//						redirect(uri:'/403')
//						return false
//					}
					else{
						session.targetControllerName = controllerName
						session.targetActionName = actionName
					}
				}
			}
		}
		
		controller(controllerExclude: '*') {
			before = {}
		}
		
		action(actionExclude: '*') {
			before = {}
		}
		
		uri(uriExclude: '/') {
			before = {}
		}
	}
}
