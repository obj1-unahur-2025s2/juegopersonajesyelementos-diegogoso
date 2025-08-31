import personajes.*
import armamento.*
import elementos_del_Juego.*

object historiaDelJuego {
  method ejecutar() {
    // secuencia de encuentros
    floki.elegirArma(jabalina)
    floki.atacar(castillo)
    floki.atacar(aurora)
    mario.encontrar(tipa)
    mario.encontrar(castillo)
    
    
  }
}