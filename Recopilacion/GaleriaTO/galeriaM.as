package {
	import flash.events.Event;
	import flash.display.Loader;
	import flash.text.TextField;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import fl.transitions.Tween;
	import fl.transitions.TweenEvent;
	import fl.transitions.easing.*;
	import flash.display.MovieClip;
	public class galeriaM extends MovieClip {

		public function galeriaM() {

			var datosXML: XML; //almacena la locacion imagen e informacion
			var numeroElementos: uint; //almacena la cantidad de elementos
			var cargador: URLLoader = new URLLoader(new URLRequest("galeriaTO.xml")); //carga el archivo xml
			var galeria: Sprite = new Sprite(); //contenedor
			var cont: int = 1;
			stop();
			addChild(galeria);
			cargador.addEventListener(Event.COMPLETE, cargarLista);
			//funcion para cargar la lista de imagenes
			function cargarLista(event: Event) {
				datosXML = new XML(event.target.data);
				numeroElementos = datosXML.locacion.length();
				setImagenes();
			}
			//funcion para posicionar las imagenes
			function setImagenes() {
				var posY: uint = 0; //variable contenedor de la posicion en y
				var posX: uint = 0; //variable contenedor de la posicion en x
				//imprimirlas em el contenedor galeria
				for (var i: uint = 0; i < numeroElementos; i++) {
					var ind: Number = (i) % 5;
					if (i > 0 && ind == 0) { //si i > a 0 y ind = 0 incrementamos la posicion en y
						posY++
						posX = 0;
					}
					//se importa la imagen "fisica" de la galeria con el la tag imagen y se coloca en el sprite
					var imagen: Loader = new Loader();
					imagen.load(new URLRequest(datosXML.locacion[i].imagen));
					imagen.y = posY * 100 + 10; //definicion de posicion en y para la imagen
					imagen.x = posX * 130 + 10; //definicion de posicion en x para la imagen
					switch (cont) {
						case 1:
							imagen.addEventListener(MouseEvent.CLICK, Mimg1);
							break;
						case 2:
							imagen.addEventListener(MouseEvent.CLICK, Mimg2);
							break;
						case 3:
							imagen.addEventListener(MouseEvent.CLICK, Mimg3);
							break;
						case 4:
							imagen.addEventListener(MouseEvent.CLICK, Mimg4);
							break;
						case 5:
							imagen.addEventListener(MouseEvent.CLICK, Mimg5);
							break;
						case 6:
							imagen.addEventListener(MouseEvent.CLICK, Mimg6);
							break;
						case 7:
							imagen.addEventListener(MouseEvent.CLICK, Mimg7);
							break;
						case 8:
							imagen.addEventListener(MouseEvent.CLICK, Mimg8);
							break;
						case 9:
							imagen.addEventListener(MouseEvent.CLICK, Mimg9);
							break;
						case 10:
							imagen.addEventListener(MouseEvent.CLICK, Mimg10);
							break;
						case 11:
							imagen.addEventListener(MouseEvent.CLICK, Mimg11);
							break;
						case 12:
							imagen.addEventListener(MouseEvent.CLICK, Mimg12);
							break;
						case 13:
							imagen.addEventListener(MouseEvent.CLICK, Mimg13);
							break;
						case 14:
							imagen.addEventListener(MouseEvent.CLICK, Mimg14);
							break;
						case 15:
							imagen.addEventListener(MouseEvent.CLICK, Mimg15);
							break;
						case 16:
							imagen.addEventListener(MouseEvent.CLICK, Mimg16);
							break;
						case 17:
							imagen.addEventListener(MouseEvent.CLICK, Mimg17);
							break;
						case 18:
							imagen.addEventListener(MouseEvent.CLICK, Mimg18);
							break;
						case 19:
							imagen.addEventListener(MouseEvent.CLICK, Mimg19);
							break;
						case 20:
							imagen.addEventListener(MouseEvent.CLICK, Mimg20);
							break;
					}
					galeria.addChild(imagen);
					cont++
					posX++; //se incrementa la variable posX en 1, esto hara que se coloque mas a la derecha en la siguiente vuelta
					//tweens para las iamgenes y los textos, dentro del for para que se aplique a todas
					var imgT: Tween = new Tween(imagen, "x", Strong.easeOut, -200, imagen.x, 2, true);
				}
			}
			//funcion para posicionar la galeria en el escenario
			function setPosition(event: Event) {
				galeria.graphics.beginFill(0xFF0000);
				galeria.graphics.drawRect(0, 0, galeria.width, galeria.height);
				galeria.x = (stage.stageWidth - galeria.width) / 2; //para que tome el centro del ecenario y no se salgan las imagenes
			}
			//funcion para mover la galeria
			function moverGaleria(event: MouseEvent) {
				var porcentaje: Number = mouseX / stage.stageWidth;
				trace(galeria.width);
			}

			function Mimg1(event: MouseEvent): void {
				next();
				img1.visible = true;
			}
			function Mimg2(event: MouseEvent): void {
				next();
				img2.visible = true;
			}
			function Mimg3(event: MouseEvent): void {
				next();
				img3.visible = true;
			}
			function Mimg4(event: MouseEvent): void {
				next();
				img4.visible = true;
			}
			function Mimg5(event: MouseEvent): void {
				next();
				img5.visible = true;
			}
			function Mimg6(event: MouseEvent): void {
				next();
				img6.visible = true;
			}
			function Mimg7(event: MouseEvent): void {
				next();
				img7.visible = true;
			}
			function Mimg8(event: MouseEvent): void {
				next();
				img8.visible = true;
			}
			function Mimg9(event: MouseEvent): void {
				next();
				img9.visible = true;
			}
			function Mimg10(event: MouseEvent): void {
				next();
				img10.visible = true;
			}
			function Mimg11(event: MouseEvent): void {
				next();
				img11.visible = true;
			}
			function Mimg12(event: MouseEvent): void {
				next();
				img12.visible = true;
			}
			function Mimg13(event: MouseEvent): void {
				next();
				img13.visible = true;
			}
			function Mimg14(event: MouseEvent): void {
				next();
				img14.visible = true;
			}
			function Mimg15(event: MouseEvent): void {
				next();
				img15.visible = true;
			}
			function Mimg16(event: MouseEvent): void {
				next();
				img16.visible = true;
			}
			function Mimg17(event: MouseEvent): void {
				next();
				img17.visible = true;
			}
			function Mimg18(event: MouseEvent): void {
				next();
				img18.visible = true;
			}
			function Mimg19(event: MouseEvent): void {
				next();
				img19.visible = true;
			}
			function Mimg20(event: MouseEvent): void {
				next();
				img20.visible = true;
			}
			function next() {
				removeChild(galeria);
				gotoAndStop(2);
				volver_btn.addEventListener(MouseEvent.CLICK,volver);
				img1.visible = false;
				img2.visible = false;
				img3.visible = false;
				img4.visible = false;
				img5.visible = false;
				img6.visible = false;
				img7.visible = false;
				img8.visible = false;
				img9.visible = false;
				img10.visible = false;
				img11.visible = false;
				img12.visible = false;
				img13.visible = false;
				img14.visible = false;
				img15.visible = false;
				img16.visible = false;
				img17.visible = false;
				img18.visible = false;
				img19.visible = false;
				img20.visible = false;
			}
			
			function volver(event:MouseEvent){
				gotoAndStop(1);
				addChild(galeria);
			}
		}
	}
}