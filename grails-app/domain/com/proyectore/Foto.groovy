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
	String nombre
	String lugar
	String email
	boolean acepta_tyc
	
	static constraints = {
	  categoria(blank:false)
	  descripcion(blank:false)
	  archivo(blank:true)
	  nombre(blank:false)
	  lugar(blank:false)
	  email(blank:false)
	  acepta_tyc(required:true)
	}
	
	static mapping = {
		version false
		archivo column: "archivo", sqlType: "varchar(1000)"
		descripcion column: "descripcion", sqlType: "varchar(1000)"
	}
	
	def isValid() {
		if (!acepta_tyc) {
			errors.rejectValue('acepta_tyc', 'acepta_tyc.required', 'Debes aceptar los términos y condiciones.')
		}

//		if (!archivo || archivo == "") {
//			errors.rejectValue('archivo', 'archivo.required', 'Olvidaste adjuntar tu foto.')
//		}

		if (!descripcion || descripcion == "") {
			errors.rejectValue('descripcion', 'descripcion.required', 'Ingresa una descripción sobre tu foto.')
		}
		
		if (!nombre || nombre == "") {
			errors.rejectValue('nombre', 'nombre.required', 'Debes ingresar tu nombre.')
		}
		
		if (!lugar || lugar == "") {
			errors.rejectValue('lugar', 'lugar.required', 'Debes ingresar tu lugar.')
		}
		
		if (!email || email == "") {
			errors.rejectValue('email', 'email.required', 'Debes ingresar tu email.')
		}
		return (errors.errorCount == 0)
	}
	
}
