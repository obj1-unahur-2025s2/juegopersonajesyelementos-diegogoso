/*De cada elemento nos va a interesar la _altura_.
 El `castillo` mide 20 metros de alto
 `aurora` 1 metro
  la `tipa` arranca en 8 metros pero puede crecer (ya veremos cómo).
Además: debemos manejar el _nivel de defensa_ del `castillo`
 (un valor numérico que arranca en 150),
  y si `aurora` _está viva_ o no (nace viva).*/
  
  /* - El `castillo` disminuye su nivel de defensa en la potencia
 del ataque (p.ej. si recibe un ataque de 30, disminuye el nivel
  de defensa en 30). 
- `aurora` muere si la potencia del ataque es 10 o más; si no, no
 le pasa nada. 
- a `tipa` no le pasa nada.*/
/* Veamos cómo es cada elemento respecto del valor y del trabajo:
- El `castillo` otorga como valor el 20% de su defensa (o sea, su defensa / 5). 
  Al recibir un trabajo, aumenta su defensa en 20, hasta un tope de 200. O sea, 
  si tiene 192 no pasa a 212, queda en 200 (atención acá: se puede usar `min`).
- `aurora` otorga como valor 15 unidades. Al recibir un trabajo, no le pasa nada.
- La `tipa` otorga como valor el doble de su altura.
 Al recibir un trabajo, su altura crece en un metro 
 (porque se supone que la riegan y le dan nitratos, ponele).*/
import personajes.*
import armamento.*
object aurora {
    var viva = true
    const altura = 1

    method estaViva() {
        return viva
    }

    method altura() {
        return altura
    }

    method recibirAtaque(potencia) {
        viva = potencia < 10
        // No se descuenta defensa, porque no le pasa nada si sobrevive
    }
     method valor() {
        return 15
    }

    
}
object castillo {
        var nivelDeResistencia = 150
        const altura = 20
        method recibirAtaque(potencia) {
        nivelDeResistencia = (nivelDeResistencia - potencia).max(0)
    }
        method altura() {
            return altura
        }

        method resistenciaActual() {
            return nivelDeResistencia
        }
        method valor() {
        return nivelDeResistencia / 5
    }

    method recibirTrabajo() {
        nivelDeResistencia = (nivelDeResistencia + 20).max(200)
    }
        
    }
object tipa{
    var altura = 8 
    method altura(){
        return altura
    }
    method valor() {
        return altura * 2
    }
    method recibirTrabajo() {
        altura  += 1 
    }
}