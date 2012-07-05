package com.proyectore

import org.codehaus.groovy.grails.web.context.ServletContextHolder
import org.springframework.web.multipart.MultipartFile

class FileUploaderService {

    String basePath = "/fotos-upload/"
	
    static transactional = true

    def uploadImage(MultipartFile file, String name, String category) {
	def servletContext = ServletContextHolder.servletContext
	def storagePath = servletContext.getRealPath(basePath + category.toLowerCase())
		
	def storagePathDirectory = new File(storagePath)
	if (!storagePathDirectory.exists()) {
	    if (storagePathDirectory.mkdirs()) {
	        println "CREO LA CARPETA ${storagePathDirectory}"
	    }
	}
		
	if (!file.isEmpty()) {
	    file.transferTo(new File("${storagePath}/${name}"))
	}
    }
    
    def getImagesForCategory(String category) {
    	def servletContext = ServletContextHolder.servletContext
	def storagePath = servletContext.getRealPath(basePath + category.toLowerCase())
	def storagePathDirectory = new File(storagePath)
	
	def list = []
	if (storagePathDirectory.exists()) {	
	    storagePathDirectory.eachFileMatch(~/.*.(png|PNG|jpg|JPG)/) { file ->
  		list << basePath + category.toLowerCase() + '/' + file.getName()
	    }
	}
	return list
    }
}
