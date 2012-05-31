package com.proyectore

class Usuario {
	
	def nombre
	def ciudad
	def email
	
	def isValid() {
		if (!nombre || nombre == "") {
			errors.rejectValue('nombre', 'nombre.required', 'Ingresa tu nombre.')
		}
		if (!ciudad || ciudad == "") {
			errors.rejectValue('ciudad', 'ciudad.required', 'Ingresa la ciudad donde vives.')
		}
		
		if (!email || email == "") {
			errors.rejectValue('email', 'email.required', 'Ingresa tu email.')
		}
		
		return (errors.errorCount == 0)
	}
}
