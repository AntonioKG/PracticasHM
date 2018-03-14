package {
	//importamos las librerias que necesitaremos
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	import fl.transitions.Tween;
	import fl.transitions.easing.*;

	public class CodigoP9 extends MovieClip {

		public function CodigoP9() {
			//declaramos los arrays y variables que usaremos
			var aNombres: Array = new Array;
			var aCalificaciones: Array = new Array;
			var aDatos: Array = new Array;
			var nombre: String = "";
			var calif: Number = 0;
			var suma: Number = 0;
			var i: int = 0;
			var j: int = 0;
			var listo: Boolean = false;
			var arrayn: String = "";
			var arrayr: String = "";
			var nulos1: String = "Valores nulos en las posiciones: ";
			var nulos2: String = "Valores nulos en las posiciones: ";
			//====================================================================
			//							PORTADA
			//====================================================================
			//Tweens de la portada
			var TweenE1: Tween = new Tween(e1_btn, "x", Strong.easeOut, -200, 60, 2, true);
			var TweenUni: Tween = new Tween(uni, "x", Strong.easeOut, -700, 22, 2, true);
			var TweenAlumno: Tween = new Tween(alumno, "x", Strong.easeOut, -700, 33, 2, true);
			var TweenE2: Tween = new Tween(e2_btn, "x", Strong.easeOut, 560, 323, 2, true);
			var TweenMateria: Tween = new Tween(materia, "x", Strong.easeOut, 800, 73, 2, true);
			var TweenPractica: Tween = new Tween(practica, "x", Strong.easeOut, 560, 157, 2, true);

			//funcion para volver a la portada
			function portada(event: MouseEvent): void {
				gotoAndStop(1); //vamos al fotograma 1 donde esta la portada
				//volvemos a colocar los tweens para que se vean cada que volvamos a la portada
				var TweenE1: Tween = new Tween(e1_btn, "x", Strong.easeOut, -200, 60, 2, true);
				var TweenUni: Tween = new Tween(uni, "x", Strong.easeOut, -700, 22, 2, true);
				var TweenAlumno: Tween = new Tween(alumno, "x", Strong.easeOut, -700, 33, 2, true);
				var TweenE2: Tween = new Tween(e2_btn, "x", Strong.easeOut, 560, 323, 2, true);
				var TweenMateria: Tween = new Tween(materia, "x", Strong.easeOut, 800, 73, 2, true);
				var TweenPractica: Tween = new Tween(practica, "x", Strong.easeOut, 560, 157, 2, true);
				aDatos.length = 0; //reseteamos el array de datos para cuando volvamos al ejercicio 2 empezemos de 0
				//volvemos a agregar los eventos a los botones de la portada
				e1_btn.addEventListener(MouseEvent.CLICK, Ejercicio1);
				e2_btn.addEventListener(MouseEvent.CLICK, Ejercicio2);
			}
			//====================================================================
			//							FRAME 2
			//====================================================================
			/*funcion para ir al fotograma 2, en ella ademas agregamos los eventos a los botones
			despues de haber cambiado ya de frame, ya que estos estan en ese mismo frame y si lo hacemos
			aqui habria errores*/
			function Ejercicio1(event: MouseEvent): void {
				gotoAndStop(2); //Vamos al frame 2
				//Tweens que se haran en el frame 2
				var TweenMsj1: Tween = new Tween(msje1, "y", Strong.easeOut, -200, 0, 2, true);
				var TweenGuardar: Tween = new Tween(guardar_btn, "x", Strong.easeOut, -300, 34, 2, true);
				var TweenImprimir: Tween = new Tween(imprimir_btn, "x", Strong.easeOut, -300, 34, 2, true);
				var TweenLimpiar: Tween = new Tween(limpiar_btn, "x", Strong.easeOut, -300, 34, 2, true);
				var TweenPortada: Tween = new Tween(portada_btn, "x", Strong.easeOut, -300, 34, 2, true);
				//asignamos funciones a los botones del frame 2
				guardar_btn.addEventListener(MouseEvent.CLICK, guardar);
				limpiar_btn.addEventListener(MouseEvent.CLICK, limpiar);
				imprimir_btn.addEventListener(MouseEvent.CLICK, imprimir);
				portada_btn.addEventListener(MouseEvent.CLICK, portada);
			}
			e1_btn.addEventListener(MouseEvent.CLICK, Ejercicio1);
			//funcion para guardar el nombre y la calificacion validos
			function guardar(event: MouseEvent): void {
				alerta_txt.text = ""; //reseteamos el mensaje de alerta por si a caso
				calif = Number(cal_txt.text); //tomamos el valor de la caja de texto de calificaciones
				//comparamos si los datos ingresados son invalidos
				if (nombre_txt.text == "" || cal_txt.text == "" || isNaN(calif) || calif > 10) {
					alerta_txt.text = "Ingrese datos Validos"; //si lo son entonces mandamos una alerta 
				} else { //si no limpiamos la alerta, tomamos los datos y lus guardamos en arrays
					alerta_txt.text = "";
					nombre = nombre_txt.text;
					calif = Number(cal_txt.text);
					aNombres.push(nombre);
					aCalificaciones.push(calif);
					//limpiamos todo
					nombre_txt.text = "";
					cal_txt.text = "";
					promedio_txt.text = "";
					lista_txt.text = "";
					listo = true;//hacemos esto para saber que a se ingreso un dato
				}
			}
			//Funcion para limpiar las cajas de texto
			function limpiar(event: MouseEvent): void {
				//limpiamos todo
				nombre_txt.text = "";
				cal_txt.text = "";
				promedio_txt.text = "";
				lista_txt.text = "";
			}

			//funcion para imprimir los registros
			function imprimir(event: MouseEvent): void {
				if (listo == true) {//hacemos esta condicion para que solo se imprima si ya se ingreso un dato
					lista_txt.text = ""; //borramos lo que ya contiene lista para que no se concatene
					for (i = 0; i < aNombres.length; i++) { //for que se repite tantas veces como nombres ingresados correctamente
						//va concatenando los nombres y calificaciones haciendo saltos de linea y colocandolos en el textArea
						lista_txt.text += i + 1 + ".-  " + aNombres[i] + "   " + aCalificaciones[i] + " \n";
						suma += aCalificaciones[i]; //va sumando las calificaciones
					}
					promedio_txt.text = String(suma / aNombres.length); //calculamos el promedio y lo mostramos
					suma = 0; //reseteamos la suma por si se ingresan mas datos y se requiere un nuevo promedio
				}
			}
			//====================================================================
			//							FRAME 3
			//====================================================================
			//Funcion para ir al fotograma 3
			function Ejercicio2(event: MouseEvent): void {
				gotoAndStop(3); //vamos al frame 3 donde esta el ejercicio 2
				//Tweens para el frame 3
				var TweenMsj2: Tween = new Tween(msje2, "y", Strong.easeOut, -200, 0, 2, true);
				var TweenIngresar: Tween = new Tween(ingresar_btn, "x", Strong.easeOut, 730, 382, 2, true);
				var TweenImprimir2: Tween = new Tween(imprimir2_btn, "x", Strong.easeOut, 730, 382, 2, true);
				var TweenPortada2: Tween = new Tween(portada2_btn, "x", Strong.easeOut, 730, 382, 2, true);
				//asignamos funciones a los botones del frame 3
				ingresar_btn.addEventListener(MouseEvent.CLICK, ingresar);
				imprimir2_btn.addEventListener(MouseEvent.CLICK, imprimir2);
				portada2_btn.addEventListener(MouseEvent.CLICK, portada);
			}
			e2_btn.addEventListener(MouseEvent.CLICK, Ejercicio2);
			//funcion para ingresar un dato
			function ingresar(event: MouseEvent): void {
				if (dato_txt.text == "") { //comparamos si no se ingreso nada
					aDatos.push("nulo"); //si es asi hacemos push la palabra "nulo"
				} else {
					aDatos.push(dato_txt.text); //si no entonces hacemos push al dato ingresado
				}
				dato_txt.text="";//limpiamos la caja de texto
			}
			//funcion para imprimir los datos actuales y las posiciones nulas
			function imprimir2(Event: MouseEvent): void {
				//Reseteamos variables importantes por si a caso
				lista2_txt.text = "";
				arrayn = "";
				arrayr = "";
				nulos1 = "Valores nulos en las posiciones: ";
				nulos2 = "Valores nulos en las posiciones: ";
				//for que se repite tantas veces como datos ingresados y dice los nulos del array en su forma normal
				for (i = 0; i < aDatos.length; i++) {
					if (i == aDatos.length - 1) {
						arrayn += "" + aDatos[i]; //concatenamos el ultimo valor sin coma al final
					} else {
						arrayn += aDatos[i] + ","; //concatenamos valores con comas
					}
					if (aDatos[i] == "nulo") { //si el valor actual es nulo entonces la posicion se concatena
						if (i == aDatos.length - 1) {
							nulos1 += "" + i;
						} else {
							nulos1 += i + ",";
						}
					}
				}
				//for que se repite tantas veces como datos ingresados y dice los nulos del array en forma inversa
				for (i = aDatos.length - 1; i >= 0; i--) {
					if (i == 0) { //concatenamos el array de forma inversa con una coma si aun no es el ultimo dato
						arrayr += "" + aDatos[i];
					} else {
						arrayr += aDatos[i] + ",";
					}
					if (aDatos[i] == "nulo") { //si el dato actual es nulo entonces la posicion se concatena
						if (i == 0) {
							nulos2 += "" + j;
						} else {
							nulos2 += j + ",";
						}
					}
					j++; //incrementamos j, j es la que dice la posicion a la inversa
				}
				j = 0; //reseteamos j
				//colocamos los resultados concatenados
				lista2_txt.text += "==========Array Normal========== \n\n" + arrayn + " \n\n" + nulos1 + " \n\n\n\n" + "==========Array Invertido========== \n\n" + arrayr + " \n\n" + nulos2;
			}
		}
	}

}