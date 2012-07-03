package com.proyectore

import com.proyectore.Foto
import com.proyectore.Usuario

import org.springframework.web.multipart.MultipartFile


class ProyectoreController {

	def fileUploaderService
	
	static defaultAction = "home"
	
	def home = {
		render(view:"/home")
	}
	
    def subirFoto = {
		render(view:"/subi-tu-foto")
	}
	
	def subirFotoPost = {
		params.tyc = params.tyc ? true : false 
		def foto = new Foto(params)

		if (foto.isValid()) {
		
			MultipartFile file = request.getFile("archivo")
			println file.getOriginalFilename()
			//println file.getContentType()
			try {
				fileUploaderService.uploadImage(file, file.getOriginalFilename(), foto.categoria)
			} catch (Exception e) {
			  println "ERROR subiendo foto." + e.toString()
			}
			redirect(url: "/registrate")
		} else {
		  println foto.errors
		  render(view:"/subi-tu-foto", model: ['foto': foto])
		}
	}
	
	def registrate = {
		render(view: "/registrate")
	}
	
	def registratePost = {
		def user = new Usuario(params)
		println user
		if (user.isValid()) {
			redirect(url: "../#gracias")
		} else {
		  render(view: "/registrate", model: [usuario:user])
		}
	}
	
	def categoria = {
	  def images = fileUploaderService.getImagesForCategory(params.categ)
	  render(view: "/category", model: [categ: params.categ, images: images])
	}
}
