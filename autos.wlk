import dominic.*

object ferrari {
  var funcionamientoMotor = 87
  
  method estaEnCondiciones() = funcionamientoMotor >= 65
  
  method repararMotor() {
    funcionamientoMotor = 100
  }
  
  method velocidadMaxima() = if (funcionamientoMotor > 75) 125 else 110
  
  method pruebaDeVelocidad() {
    funcionamientoMotor -= 30
  }
}

object flechaRubi {
  var combustible = 100
  var tipo = gasolina
  var color = azul
  
  method combustible() = combustible
  
  method tipo() = tipo
  
  method cambiarCombustible(unTipo) {
    tipo = unTipo
  }
  
  method estaEnCondiciones() {
    
  }
  
  method repararMotor() {
    combustible *= 2
    color = color.cambiarColor()
  }
  
  method velocidadMaxima() = if (tipo == gasolina) {
    (combustible * 2) + 10
  } else {
    if (tipo == nitro) (combustible * 2) * 10 else (combustible * 2) * 0.1
  }
  
  method pruebaDeVelocidad() {
    combustible -= 5
  }
}

object gasolina {
  method litros() = 100
}

object nafta {
  method litros() = 100
}

object nitro {
  method litros() = 100
}

object azul {
  method cambiarColor() = verde
}

object verde {
  method cambiarColor() = rojo
}

object rojo {
  method cambiarColor() = azul
}