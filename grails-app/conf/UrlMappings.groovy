class UrlMappings {

	static mappings = {
		"/$controller/$action?/"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"proyectore")
		
		"/subir-foto"(controller:"proyectore", action:"subirFoto")
		
		"/subir-foto-post"(controller:"proyectore", action:"subirFotoPost")
		
		"/registrate"(controller: "proyectore", action:"registrate")
		
		"/registrate-post"(controller: "proyectore", action: "registratePost")
		
		"/categoria"(controller:"proyectore", action:"categoria")
		
		"500"(view:'/error')
	}
}
