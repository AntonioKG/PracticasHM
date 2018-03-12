package  {
	//Se importan las librerias necesarias
	import flash.display.MovieClip;
	
	public class Codigo extends MovieClip{
		//se crean dos variables para almacenar las areas
		private var areaCirculo:Number;
		private var areaTriangulo:Number;
		//Funcion para calcular el area del circulo
		public function AreaCirculo(val:Number) {
			//se recibe un dato por parametro y despues se multiplica por PI para calcular el area
			var radio:Number=val;
			areaCirculo=3.1416*(radio*radio);
		}
		//Funcion para devolver el resultado de la funcion anterior
		public function Circulo():String{
			return areaCirculo.toString();
		}
		//Funcion para calcular el area del triangulo
		public function AreaTriangulo(val:Number,val2:Number) {
			//se recibe un dato por parametro y despues se multiplica por PI para calcular el area
			var base:Number=val;
			var altura:Number=val2;
			areaTriangulo=base*altura/2;
		}
		//Funcion para devolver el resultado de la funcion anterior
		public function Triangulo():String{
			return areaTriangulo.toString();
		}
		
		

	}
	
}
