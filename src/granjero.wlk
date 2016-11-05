import cultivos.*
import elementos.*
import exceptions.*

object granjero {
	var oro = 0

	method oro() {
		return throw new MethodNotImplemented("oro", self)
	}
	
	method usar(semilla) {
		throw new MethodNotImplemented("usar", self)
	}

	method cosecha(cultivo) {
		throw new MethodNotImplemented("cosecha", self)
	}

	method rega(cultivo) {
		throw new MethodNotImplemented("rega", self)
	}

	
//////////////////////////////////////////////////////////////////////////////////////
///////////////////////////         CÓDIGO BASE           ////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
	
	
	method sumaOro(cantidad) { oro += cantidad }

	method restaOro(cantidad) {
		if (cantidad > oro)
			throw new Exception("No tengo suficiente oro para eso")
			
		oro -= cantidad
	}
}
