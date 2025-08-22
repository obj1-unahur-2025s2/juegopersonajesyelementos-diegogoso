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

object aurora{
    const altura = 1
    method estaViva(){
        return true
    }
    method altura(){
        return altura
    }
    method recibirAtaque(potencia){
        if (potencia >= 10) {
            return true.negative() // muere
        } else {
            return true // sigue viva
        }
    }

}
object castillo{
    const altura = 20
    var nivelDeDefensa = 150
    method recibirAtaque(potencia){
        nivelDeDefensa = nivelDeDefensa - potencia
    }
    method altura(){
        return altura
    }
}
object tipa{
    var altura = 8 // veremos cómo hacer para que pueda crecer
    method altura(){
        return altura
    }
}