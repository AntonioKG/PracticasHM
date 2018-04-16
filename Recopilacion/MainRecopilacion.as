package {
	import flash.display.MovieClip
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import flash.display.Loader;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;
	import flash.net.URLLoader;
	import flash.net.navigateToURL;
	
	public class MainRecopilacion extends MovieClip {
		var swf: Loader = new Loader(); //variable que nos ayudara a mostrar el swf
		var ok: Boolean = false; //variable que nos ayudara a saber si ya se abrio algun swf
		var timer: Timer = new Timer(450, tmp++); //timer que nos ayudara con las interpolaciones de cambio de frame que se ejecuta cada casi medio segundo
		var tmp: int = 0; //variable que incrementara con el timer
		var cont: int = -1; //variable que utilizaremos en el timer
		//estas ultimas 2 variables "frame" y "op" nos ayudaran para saber que interpolacion de cambio de frame debemos hacer
		var frame: int = 1; //variable que nos ayudara a saber en que frame estamos antes de cambiar de frame
		var op: int = 0; //variable que nos ayudara a saber a que frame debemos cambiar
		public function MainRecopilacion() {
			stop(); //hacemos que nuestra animacion se mantenga en el primer frame hasta que se haga algo
			//Tweens para cuando se inicie la animacion
			var tTween: Tween = new Tween(tabla, "x", Strong.easeOut, -600, 0, 1, true);
			var iTween: Tween = new Tween(inicio_btn, "x", Strong.easeOut, -600, 0, 1, true);
			var pTween: Tween = new Tween(practicas_btn, "x", Strong.easeOut, -600, 0, 1.5, true);
			var vTween: Tween = new Tween(vjuegos_btn, "x", Strong.easeOut, -600, 0, 2, true);
			var mTween: Tween = new Tween(media_btn, "x", Strong.easeOut, -600, 0, 2.5, true);
			var cTween: Tween = new Tween(conclusiones_btn, "x", Strong.easeOut, -600, 0, 3, true);
			var uTween: Tween = new Tween(upv, "y", Strong.easeOut, -600, 24, 3, true);
			asignacionesMenu();
			//funcion para ir al frame de inicio en el que se encuentra la portada
			function irInicio(Event: MouseEvent): void {
				op = 1;
				okey();
			}
			//funcion para ir al segundo frame donde estan las practicas
			function irPracticas(Event: MouseEvent): void {
				op = 2;
				okey();
			}
			//funcion para ir al tercer frame donde estan los videojuegos
			function irvJuegos(Event: MouseEvent): void {
				op = 3;
				okey();
			}
			//funcion para ir al cuarto frame donde estan las galerias de videos e imagenes
			function irMedia(Event: MouseEvent): void {
				op = 4;
				okey();
			}
			//funcion para ir al quinto frame donde estan los videos de conclusiones
			function irConclusiones(Event: MouseEvent): void {
				op = 5;
				okey();
			}
			//funcion que se llamara en diferentes casos para asignar funciones a los botones del menu
			function asignacionesMenu() {
				inicio_btn.addEventListener(MouseEvent.CLICK, irInicio);
				practicas_btn.addEventListener(MouseEvent.CLICK, irPracticas);
				vjuegos_btn.addEventListener(MouseEvent.CLICK, irvJuegos);
				media_btn.addEventListener(MouseEvent.CLICK, irMedia);
				conclusiones_btn.addEventListener(MouseEvent.CLICK, irConclusiones);
			}
			//funcion que se llamara en los diferentes casos para ir al frame 2 para asignar funciones a los fotones de dicho frame
			function asignacionesF2() {
				p1_btn.addEventListener(MouseEvent.CLICK, p1);
				p2_btn.addEventListener(MouseEvent.CLICK, p2);
				p3_btn.addEventListener(MouseEvent.CLICK, p3);
				p4_btn.addEventListener(MouseEvent.CLICK, p4);
				p5_btn.addEventListener(MouseEvent.CLICK, p5);
				p5NR_btn.addEventListener(MouseEvent.CLICK, p5NR);
				p6_btn.addEventListener(MouseEvent.CLICK, p6);
				p7_btn.addEventListener(MouseEvent.CLICK, p7);
				p8_btn.addEventListener(MouseEvent.CLICK, p8);
				p9_btn.addEventListener(MouseEvent.CLICK, p9);
			}
			//funcion que se llamara en los diferentes casos para ir al frame 3 para asignar funciones a los fotones de dicho frame
			function asignacionesF3() {
				memo_btn.addEventListener(MouseEvent.CLICK, Jmemo);
				sye_btn.addEventListener(MouseEvent.CLICK, Jsye);
				tetris_btn.addEventListener(MouseEvent.CLICK, Jtetris);
			}
			//funcion que se llamara en los diferentes casos para ir al frame 4 para asignar funciones a los fotones de dicho frame
			function asignacionesF4() {
				gvideos_btn.addEventListener(MouseEvent.CLICK, gVideos);
				gto_btn.addEventListener(MouseEvent.CLICK, gTO);
			}
			//funcion que se llamara en los diferentes casos para ir al frame 4 para asignar funciones a los fotones de dicho frame
			function asignacionesF5() {
				conclusionesE_btn.addEventListener(MouseEvent.CLICK, video1);
				conclusionesI_btn.addEventListener(MouseEvent.CLICK, video2);
			}
			//funcion para abrir la practica 1
			function p1(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 1";
				fondoP1.x = 528;
				fondoP1.y = 313;
				var practicaSWF: URLRequest = new URLRequest("Practica 1.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 2
			function p2(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 2";
				fondoP2.x = 528;
				fondoP2.y = 313;
				var practicaSWF: URLRequest = new URLRequest("Practica 2-MenuareaPoI.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 3
			function p3(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 3";
				fondoP3.x = 424;
				fondoP3.y = 196;
				var practicaSWF: URLRequest = new URLRequest("Practica 3 - Promedios - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 424;
				swf.y = 196;
			}
			//funcion para abrir la practica 4
			function p4(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 4";
				var practicaSWF: URLRequest = new URLRequest("Juego Terminado - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 420;
				swf.y = 295;
			}
			//funcion para abrir la practica 5
			function p5(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 5";
				fondoP5.x = 528;
				fondoP5.y = 313;
				var practicaSWF: URLRequest = new URLRequest("Conversiones.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 5 de numeros romanos
			function p5NR(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 5NR";
				fondoP5NR.x = 528;
				fondoP5NR.y = 313;
				var practicaSWF: URLRequest = new URLRequest("Practica 5 - Numeros Romanos - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 6
			function p6(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 6";
				fondoP5.x = 528;
				fondoP5.y = 313;
				var practicaSWF: URLRequest = new URLRequest("Practica 6 - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 7
			function p7(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 7";
				fondoP7.x = 366;
				fondoP7.y = 155;
				var practicaSWF: URLRequest = new URLRequest("practica 7 - galeria - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 366;
				swf.y = 155;
			}
			//funcion para abrir la practica 8
			function p8(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 8";
				var practicaSWF: URLRequest = new URLRequest("Practica 8/Practica 8.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir la practica 9
			function p9(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				numPractica.text = "Practica 9";
				var practicaSWF: URLRequest = new URLRequest("Practica 9/Practica 9.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para abrir el juego del memorama
			function Jmemo(event: MouseEvent): void {
				ok = true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK, volverf3);
				var practicaSWF: URLRequest = new URLRequest("Proyecto Unidad 1.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 90;
				swf.y = 0;
			}
			//funcion para abrir el juego de serpientes y escaleras
			function Jsye(event: MouseEvent): void {
				ok = true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK, volverf3);
				var practicaSWF: URLRequest = new URLRequest("Serpientes y Escaleras Final.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 30;
				swf.y = 0;
			}
			function Jtetris(event: MouseEvent): void {
				ok = true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK, volverf3);
				var practicaSWF: URLRequest = new URLRequest("tetris/Práctica Tetris.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 0;
				swf.y = 0;
			}
			//funcion para abrir la galeria de videos
			function gVideos(event: MouseEvent): void {
				ok = true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK, volverf4);
				var practicaSWF: URLRequest = new URLRequest("Practica 10/Practica 10.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 0;
				swf.y = 0;
			}
			//funcion para abrir la galeria de imagenes que se muestran en tamaño original
			function gTO(event: MouseEvent): void {
				ok = true;
				gotoAndStop(6);
				var practicaSWF: URLRequest = new URLRequest("GaleriaTO/GaleriaTO.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x = 528;
				swf.y = 313;
			}
			//funcion para el boton volver del frame7 qye llevara al frame 3 
			function volverf3(event: MouseEvent): void {
				okey();
				gotoAndStop(3);
				asignacionesF3();
				asignacionesMenu();
			}
			//funcion para el boton volver del frame7 qye llevara al frame 4
			function volverf4(event: MouseEvent): void {
				okey();
				gotoAndStop(4);
				asignacionesF4();
				asignacionesMenu();
			}
			function volverf5(event: MouseEvent): void {
				okey();
				gotoAndStop(5);
				asignacionesF5();
				asignacionesMenu();
			}
			//funcion que nos ayudara a saber si se ha abierto algun proyecto, para que si es asi lo quitemos
			//y cambiemos de frame, de lo contrario solo hacemos algunas acciones que haran que otras se ejecuten
			function okey() {
				if (ok == true) { //si se cumple hacemos un removeChild y un switch
					stage.removeChild(swf); //quitamos la practica del ecenario
					ok = false; //reseteamos la variable
					switch (op) { //switch que cambiara al frame que se seleccione
						case 1:
							frame = 1; //damos un valor a la variable frame dependiendo del boton que precionemos
							gotoAndStop(1); //vamos al frame correspondiente al boton precionado
							//hacemos las asignaciones de necesarias de funciones a botones
							asignacionesMenu();
							break;
						case 2:
							frame = 2;
							gotoAndStop(2);
							asignacionesMenu();
							asignacionesF2();
							break;
						case 3:
							frame = 3;
							gotoAndStop(3);
							asignacionesMenu();
							asignacionesF3();
							break;
						case 4:
							frame = 4;
							gotoAndStop(4);
							asignacionesMenu();
							asignacionesF4();
							break;
						case 5:
							frame = 5;
							gotoAndStop(5);
							asignacionesMenu();
							asignacionesF5();
							break;
					}
				} else { //si no, entonces por si a caso detenemos un timer y reseteamos una de sus variables
					timer.stop();
					cont = -1;
					timer.start(); //despues iniciamos el timer para ejecutar las funciones que este contiene
				}
			}
			//timer que nos ayudara a realizar las animaciones de cambio de frame
			function tiempo(event: TimerEvent): void {
				cont++ //incrementamos cont
				switch (frame) { //comparamos a frame en un switch
					case 1: //caso 1 significa que nos encontrabamos en el frame 1
						if (cont == 1) { //comparamos si cont es igual a 1, osea, si ya paso un medio segundo,
							timer.stop();
							cont = -1;
							switch (op) {
								case 2:
									frame = 2;
									gotoAndStop(2);
									asignacionesMenu();
									asignacionesF2();
									break;
								case 3:
									frame = 3;
									gotoAndStop(3);
									asignacionesMenu();
									asignacionesF3();
									break;
								case 4:
									frame = 4;
									gotoAndStop(4);
									asignacionesMenu();
									asignacionesF4();
									break;
								case 5:
									frame = 5;
									gotoAndStop(5);
									asignacionesMenu();
									asignacionesF5();
									break;
							}
						} else {
							switch (op) {
								case 2:
									f1af2.y = 0;
									f1af2.x = 270;
									f1af2.gotoAndPlay(2);
									break;
								case 3:
									f1af3.y = 0;
									f1af3.x = 270;
									f1af3.gotoAndPlay(2);
									break;
								case 4:
									f1af4.y = 0;
									f1af4.x = 270;
									f1af4.gotoAndPlay(2);
									break;
								case 5:
									var CT1:Tween = new Tween(FC,"x",Strong.easeOut,1366,270,1,true);
									break;
							}
						}
						break;
					case 2:
						if (cont == 1) {
							timer.stop();
							cont = -1;
							switch (op) {
								case 1:
									frame = 1;
									gotoAndStop(1);
									asignacionesMenu();
									break;
								case 3:
									frame = 3;
									gotoAndStop(3);
									asignacionesMenu();
									asignacionesF3();
									break;
								case 4:
									frame = 4;
									gotoAndStop(4);
									asignacionesMenu();
									asignacionesF4();
									break;
								case 5:
									frame = 5;
									gotoAndStop(5);
									asignacionesMenu();
									asignacionesF5();
									break;
							}
						} else {
							switch (op) {
								case 1:
									f2af1.y = 0;
									f2af1.x = 270;
									f2af1.gotoAndPlay(2);
									break;
								case 3:
									f2af3.y = 0;
									f2af3.x = 270;
									f2af3.gotoAndPlay(2);
									break;
								case 4:
									f2af4.y = 0;
									f2af4.x = 270;
									f2af4.gotoAndPlay(2);
									break;
								case 5:
									var CT2:Tween = new Tween(FC,"x",Strong.easeOut,1366,270,1,true);
									break;
							}
						}
						break;
					case 3:
						if (cont == 1) {
							timer.stop();
							cont = -1;
							switch (op) {
								case 1:
									frame = 1;
									gotoAndStop(1);
									asignacionesMenu();
									break;
								case 2:
									frame = 2;
									gotoAndStop(2);
									asignacionesMenu();
									asignacionesF2();
									break;
								case 4:
									frame = 4;
									gotoAndStop(4);
									asignacionesMenu();
									asignacionesF4();
									break;
								case 5:
									frame = 5;
									gotoAndStop(5);
									asignacionesMenu();
								asignacionesF5();
									break;
							}
						} else {
							switch (op) {
								case 1:
									f3af1.y = 0;
									f3af1.x = 270;
									f3af1.gotoAndPlay(2);
									break;
								case 2:
									f3af2.y = 0;
									f3af2.x = 270;
									f3af2.gotoAndPlay(2);
									break;
								case 4:
									f3af4.y = 0;
									f3af4.x = 270;
									f3af4.gotoAndPlay(2);
									break;
								case 5:
									var CT3:Tween = new Tween(FC,"x",Strong.easeOut,1366,270,1,true);
									break;
							}
						}
						break;
					case 4:
						if (cont == 1) {
							timer.stop();
							cont = -1;
							switch (op) {
								case 1:
									frame = 1;
									gotoAndStop(1);
									asignacionesMenu();
									break;
								case 2:
									frame = 2;
									gotoAndStop(2);
									asignacionesMenu();
									asignacionesF2();
									break;
								case 3:
									frame = 3;
									gotoAndStop(3);
									asignacionesMenu();
									asignacionesF3();
									break;
								case 5:
									frame = 5;
									gotoAndStop(5);
									asignacionesMenu();
								asignacionesF5();
									break;
							}
						} else {
							switch (op) {
								case 1:
									f4af1.y = 0;
									f4af1.x = 270;
									f4af1.gotoAndPlay(2);
									break;
								case 2:
									f4af2.y = 0;
									f4af2.x = 270;
									f4af2.gotoAndPlay(2);
									break;
								case 3:
									f4af3.y = 0;
									f4af3.x = 270;
									f4af3.gotoAndPlay(2);
									break;
								case 5:
									var CT4:Tween = new Tween(FC,"x",Strong.easeOut,1366,270,1,true);
									break;
							}
						}
						break;
					case 5:
						switch (op) {
							case 1:
								frame = 1;
								gotoAndStop(1);
								asignacionesMenu();
								break;
							case 2:
								frame = 2;
								gotoAndStop(2);
								asignacionesMenu();
								asignacionesF2();
								break;
							case 3:
								frame = 3;
								gotoAndStop(3);
								asignacionesMenu();
								asignacionesF3();
								break;
							case 4:
								frame = 4;
								gotoAndStop(4);
								asignacionesMenu();
								asignacionesF4();
								break;
						}
						break;
				}
			}
			timer.addEventListener(TimerEvent.TIMER, tiempo);
			function video1(Event:MouseEvent):void{
				var Videos:URLRequest = new URLRequest("conclusionesEspañol.mp4");
				navigateToURL(Videos,"self");
			}
			function video2(Event:MouseEvent):void{
				var Videos:URLRequest = new URLRequest("conclusionesIngles.mp4");
				navigateToURL(Videos,"self");
			}
		}
	}
}