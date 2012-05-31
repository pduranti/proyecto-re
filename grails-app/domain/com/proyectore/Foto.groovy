package com.proyectore

import javax.persistence.GeneratedValue
import javax.persistence.GenerationType
import javax.persistence.Id

class Foto {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	long id
	String categoria
	String descripcion
	String archivo
	boolean tyc
	
	static constraints = {
	  categoria(blank:false)
	  descripcion(blank:false)
	  archivo(blank:false)
	  tyc(required:true)
	}
	
	def isValid() {
		if (!tyc) {
			errors.rejectValue('tyc', 'tyc.required', 'Debes aceptar los Terminos y Condiciones para participar.')
		}
		if (!descripcion || descripcion == "") {
			errors.rejectValue('descripcion', 'descripcion.required', 'Ingresa una descripcion sobre tu foto.')
		}
		
		if (!archivo || archivo == "") {
			errors.rejectValue('archivo', 'archivo.required', 'Olvidaste adjuntar tu foto.')
		}
		
		return (errors.errorCount == 0)
	}
	
}
