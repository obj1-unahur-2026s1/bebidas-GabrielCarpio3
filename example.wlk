object tito {


  var bebidaActual = agua
  method inerciaBase() = 490 
  method peso() = 70

  method consumir(cantidad, bebida) {
    bebida.cambiarDosis(cantidad)
    bebidaActual = bebida
  }

  method rendimiento() {
    return bebidaActual.rendimiento()
  }

  method velocidad() {
    return self.rendimiento() * self.inerciaBase() / self.peso()
  }

}


object whisky {
  var dosis = 0

  method cambiarDosis(nuevaDosis) {
    dosis = nuevaDosis
  }
  method rendimiento() {
    return 0.9 ** dosis
  }
}


object terere {
  var dosis = 0

  method cambiarDosis(nuevaDosis) {
    dosis = nuevaDosis
  }
  method rendimiento() {
    return (0.1 * dosis).max(1)
  }
}


object cianuro {

  method cambiarDosis(cantidad) {}

  method rendimiento() {
    return 0
  }
}


object agua {
  method cambiarDosis(cantidad) {}
  method rendimiento() { return 1 }
}