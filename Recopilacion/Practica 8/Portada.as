package  {
	//Importamos las librerias necesarias
	import flash.display.MovieClip;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	public class Portada extends MovieClip{
		//Funcion con los Tweens de la portada
		public function Portada() {
			//Instancias para llamar los tweens en la portada
			var poli_mcc:Tween = new Tween (poli_mc,"y",Strong.easeOut,-100,10,2,true);
			var nombre_mcc:Tween = new Tween (nombre_mc,"x",Strong.easeOut,700,75,2,true);
			var pra_mcc:Tween = new Tween (pra_mc,"y",Strong.easeOut,700,261,2,true);
			var matricula_mcc:Tween = new Tween (matricula_mc,"y",Strong.easeOut,640,201,2,true);
			var hm_mcc:Tween = new Tween (hm_mc,"x",Strong.easeOut,-300,112,2,true);
			var siguientecc:Tween = new Tween (siguiente_btn,"x",Strong.easeOut,700,413,2,true);
			var logo_mcc:Tween = new Tween (logo_mc,"x",Strong.easeOut,-100,8,2,true);
		}

	}
	
}