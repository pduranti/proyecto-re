package com.proyectore

import com.proyectore.Foto

import org.springframework.web.multipart.MultipartFile


class ProyectoreController {

	def fileUploaderService
	
	static defaultAction = "home"
	
	def home = {
		render(view:"/home")
	}
	
	def acercaDe = {
		render(view:"/acerca-de")
	}
	
        def subirFoto = {
		render(view:"/subi-tu-foto")
	}
	
	def subirFotoPost = {
		params.acepta_tyc = params.acepta_tyc ? true : false 
		def foto = new Foto(
			categoria : params.categoria.toLowerCase(),
			descripcion : params.descripcion,
			nombre : params.nombre,
			lugar : params.lugar,
			email : params.email,
			acepta_tyc : params.acepta_tyc,
			archivo: request.getFile("archivo").getOriginalFilename()
			)
		if (foto.isValid()) {
		
			MultipartFile file = request.getFile("archivo")
			def nameParts = file.getOriginalFilename().split("\\.")
			def fileName = nameParts[0]
			def ext = nameParts[1]
			
			def finalFileName = fileName + new Date().getTime() + "." + ext
			try {
				fileUploaderService.uploadImage(file, finalFileName, foto.categoria)
			} catch (Exception e) {
			  println "ERROR subiendo foto." + e.toString()
			}
			foto.save()
			redirect(url: "/#gracias")
		} else {
		  render(view:"/subi-tu-foto", model: ['foto': foto])
		}
	}
	
	def categoria = {
	  def fotos =  Foto.findAllByCategoria(params.categ)
	  if (params.id) {
		  def selected = Foto.get(params.id)
		  if (selected != null) {
			  fotos.remove(selected)
			  fotos.add(0, selected)
		  }
	  }
	  //def images = fileUploaderService.getImagesForCategory(params.categ)
	  render(view: "/category", model: [categ: params.categ, fotos: fotos])
	}
	
	def verFoto = {
	  def foto = Foto.get(params.id)
          if (foto) {
		  def fotos =  Foto.findAllByCategoria(foto.categoria)
		  fotos.remove(foto)
	          fotos.add(0, foto)
	 
		  render(view: "/foto", model: [foto: foto, fotos: fotos])
          } else {
            render("/notfound")
          }
         
	}
}

