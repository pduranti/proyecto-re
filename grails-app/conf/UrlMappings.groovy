class UrlMappings {

	static mappings = {
		"/$controller/$action?/"{
			constraints {
				// apply constraints here
			}
		}

		"/"(controller:"proyectore")
		
		"/acerca-de"(controller:"proyectore", action:"acercaDe")
		
		"/subir-foto"(controller:"proyectore", action:"subirFoto")
		
		"/subir-foto-post"(controller:"proyectore", action:"subirFotoPost")
		
		"/categoria"(controller:"proyectore", action:"categoria")
		
		"/foto/$id"(controller:"proyectore", action:"foto")
		
		"500"(view:'/error')
	}
}
