import exceptions.*

object granero { 
	const imagen = "granero.png"
	const posicion = new Position(9,9)
	var cultivo
	
	method planta(_cultivo) {
//		throw new MethodNotImplemented("planta", self)
		self.borde().forEach{ pos =>
			pos.drawElement(_cultivo)
		}
		cultivo = _cultivo
	}
	
	method rega() { 
//		throw new MethodNotImplemented("rega", self)
		cultivo.crece()
	}

	method cosecha() { 
//		throw new MethodNotImplemented("cosecha", self)
		self.borde().forEach{ _ => cultivo.cosechate() }
	}
	
	method borde() {
		var x = 9
		var y = 9
		return [
			new Position(x-1,y-1),
			new Position(x,y-1),
			new Position(x+1,y-1),
			new Position(x+1,y),
			new Position(x+1,y+1),
			new Position(x,y+1),
			new Position(x-1,y+1),
			new Position(x-1,y)
		]
	}
}