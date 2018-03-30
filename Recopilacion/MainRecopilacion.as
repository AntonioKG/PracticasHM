package {
	import flash.display.MovieClip
	import flash.events.MouseEvent;
	import flash.net.URLRequest;
	import com.adobe.tvsdk.mediacore.utils.SWFTokenDataLoader;
	import flash.display.Loader;

	public class MainRecopilacion extends MovieClip {
		var swf:Loader = new Loader();
		var ok:Boolean=false;
		public function MainRecopilacion() {
			stop();
			asignacionesMenu();
			function irInicio(Event: MouseEvent): void {
				okey();
				gotoAndStop(1);
				asignacionesMenu();
			}
			function irPracticas(Event: MouseEvent): void {
				okey();
				gotoAndStop(2);
				asignacionesMenu();
				p1_btn.addEventListener(MouseEvent.CLICK,p1);
				p2_btn.addEventListener(MouseEvent.CLICK,p2);
				p3_btn.addEventListener(MouseEvent.CLICK,p3);
				p4_btn.addEventListener(MouseEvent.CLICK,p4);
				p5_btn.addEventListener(MouseEvent.CLICK,p5);
				p5NR_btn.addEventListener(MouseEvent.CLICK,p5NR);
				p6_btn.addEventListener(MouseEvent.CLICK,p6);
				p7_btn.addEventListener(MouseEvent.CLICK,p7);
				p8_btn.addEventListener(MouseEvent.CLICK,p8);
				p9_btn.addEventListener(MouseEvent.CLICK,p9);
			}
			function irvJuegos(Event: MouseEvent): void {
				okey();
				gotoAndStop(3);
				memo_btn.addEventListener(MouseEvent.CLICK,Jmemo);
				sye_btn.addEventListener(MouseEvent.CLICK,Jsye);
				asignacionesMenu();
			}
			function irMedia(Event: MouseEvent): void {
				okey();
				gotoAndStop(4);
				gvideos_btn.addEventListener(MouseEvent.CLICK,gVideos);
				gto_btn.addEventListener(MouseEvent.CLICK,gTO);
				asignacionesMenu();
			}
			function irConclusiones(Event: MouseEvent): void {
				okey();
				gotoAndStop(5);
				asignacionesMenu();
			}
			function asignacionesMenu() {
				inicio_btn.addEventListener(MouseEvent.CLICK, irInicio);
				practicas_btn.addEventListener(MouseEvent.CLICK, irPracticas);
				vjuegos_btn.addEventListener(MouseEvent.CLICK, irvJuegos);
				media_btn.addEventListener(MouseEvent.CLICK, irMedia);
				conclusiones_btn.addEventListener(MouseEvent.CLICK, irConclusiones);
			}
			function p1(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 1";
				fondoP1.x=528;
				fondoP1.y=313;
				var practicaSWF:URLRequest = new URLRequest("Practica 1.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p2(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 2";
				fondoP2.x=528;
				fondoP2.y=313;
				var practicaSWF:URLRequest = new URLRequest("Practica 2-MenuareaPoI.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p3(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 3";
				fondoP3.x=424;
				fondoP3.y=196;
				var practicaSWF:URLRequest = new URLRequest("Practica 3 - Promedios - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=424;
				swf.y=196;
			}
			function p4(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 4";
				var practicaSWF:URLRequest = new URLRequest("Juego Terminado - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=420;
				swf.y=295;
			}
			function p5(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 5";
				fondoP5.x=528;
				fondoP5.y=313;
				var practicaSWF:URLRequest = new URLRequest("Conversiones.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p5NR(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 5NR";
				fondoP5NR.x=528;
				fondoP5NR.y=313;
				var practicaSWF:URLRequest = new URLRequest("Practica 5 - Numeros Romanos - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p6(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 6";
				fondoP5.x=528;
				fondoP5.y=313;
				var practicaSWF:URLRequest = new URLRequest("Practica 6 - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p7(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 7";
				fondoP7.x=366;
				fondoP7.y=155;
				var practicaSWF:URLRequest = new URLRequest("practica 7 - galeria - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=366;
				swf.y=155;
			}
			function p8(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 8";
				var practicaSWF:URLRequest = new URLRequest("Practica 8/Practica 8.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function p9(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				numPractica.text="Practica 9";
				var practicaSWF:URLRequest = new URLRequest("Practica 9/Practica 9.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function Jmemo(event:MouseEvent):void{
				ok=true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK,irvJuegos);
				var practicaSWF:URLRequest = new URLRequest("Proyecto Unidad 1.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=90;
				swf.y=0;
			}
			function Jsye(event:MouseEvent):void{
				ok=true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK,irvJuegos);
				var practicaSWF:URLRequest = new URLRequest("Serpientes y Escaleras Final.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=30;
				swf.y=0;
			}
			function gVideos(event:MouseEvent):void{
				ok=true;
				gotoAndStop(7);
				volver_btn.addEventListener(MouseEvent.CLICK,irvJuegos);
				var practicaSWF:URLRequest = new URLRequest("Practica 10/Practica 10.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=0;
				swf.y=0;
			}
			function gTO(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				var practicaSWF:URLRequest = new URLRequest("GaleriaTO/GaleriaTO.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=528;
				swf.y=313;
			}
			function okey(){
				if(ok==true){
					stage.removeChild(swf);
					ok=false;
				}
			}
		}

	}

}