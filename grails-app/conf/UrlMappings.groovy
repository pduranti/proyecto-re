class UrlMappings {

	static mappings = {
		"/$controller/$action?/"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"proyectore")
		
		"/subir-foto"(controller:"proyectore", action:"subirFoto")
		
		"/registrate"(controller: "proyectore", action:"registrate")
		
		"500"(view:'/error')
	}
}
