import wollok.game.*
import exceptions.*

object granero { 
	const image = "granero.png"
	const position = new Position(x=9,y=9)
	
	/*
	 * Cuando se le pride al granero que plante un cultivo éste lo planta a su alrededor.
	 * Para eso el granero entiende el mensaje 'borde()' que retorna una lista de posiciones donde se platará
	 * el cultivo. Para meter un objeto al tablero existe el mensaje 'drawElement(visual)' que entiende
	 * las posiciones.
	 */
	method planta(_cultivo) {
		throw new MethodNotImplemented("planta", self)
	}
	
	
	/*
	 * Debe hacer crecer todos los cultivos que plantó el granero
	 */
	method rega() { 
		throw new MethodNotImplemented("rega", self)
	}


	/*
	 * Debe cosechar todos los cultivos que plantó el granero
	 */
	method cosecha() { 
		throw new MethodNotImplemented("cosecha", self)
	}
	

//////////////////////////////////////////////////////////////////////////////////////
///////////////////////////         CÓDIGO BASE           ////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////
	
	
	method borde() {
		var x = position.x()
		var y = position.y()
		return [
			new Position(x=x-1,y=y-1),
			new Position(x=x,y=y-1),
			new Position(x=x+1,y=y-1),
			new Position(x=x+1,y=y),
			new Position(x=x+1,y=y+1),
			new Position(x=x,y=y+1),
			new Position(x=x-1,y=y+1),
			new Position(x=x-1,y=y)
		]
	}
}
