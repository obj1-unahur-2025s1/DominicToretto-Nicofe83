object dominic {
  const autos = []
  
  method comprarAuto(auto) = autos.add(auto)
  
  method autoNoEnCondiciones() = autos.filter({ a => !a.estaEnCondiciones() })
  
  method mandarAutoAlTaller() {
    taller.recibirAutos(self.autoNoEnCondiciones())
  }
  
  method reparar() = autos.forEach({ a => a.repararMotor() })
  
  method realizarPruebasDeVelocidad() {
    autos.forEach({ a => a.realizarPrueba() })
  }
  
  method venderTodosLosAutos() = autos.clear()
  
  method promedioVelocidadMaxima() = autos.sum(
    { a => a.velocidadMaxima() }
  ) / autos.size()
  
  method autoMasRapido() = autos.velocidadMaxima().max(
    { a => a.estaEnCondiciones() }
  )
  
  method superNova() = self.autoMasRapido() > (self.promedioVelocidadMaxima() * 2)
}

object taller {
  const autosAReparar = []
  
  method recibirAutos(listaDeAutos) {
    autosAReparar.addAll(listaDeAutos)
  }
  
  method repararAutos() {
    autosAReparar.forEach({ a => a.reparar() })
    autosAReparar.clear()
  }
}