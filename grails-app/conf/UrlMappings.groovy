class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"login",action:"index")
		"/login"(view:"/login/auth")
		"/register"(view:"/login/register")
		"404"(view:'/404.html')
        "500"(view:'/500.html')
	}
}
