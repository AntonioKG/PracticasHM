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
			}
			function irvJuegos(Event: MouseEvent): void {
				okey();
				gotoAndStop(3);
				asignacionesMenu();
			}
			function irMedia(Event: MouseEvent): void {
				okey();
				gotoAndStop(4);
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
				fondoP1.x=540;
				fondoP1.y=230;
				var practicaSWF:URLRequest = new URLRequest("Practica 1.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=540;
				swf.y=230;
			}
			function p2(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				fondoP2.x=540;
				fondoP2.y=230;
				var practicaSWF:URLRequest = new URLRequest("Practica 2-MenuareaPoI.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=540;
				swf.y=230;
			}
			function p3(event:MouseEvent):void{
				ok=true;
				gotoAndStop(6);
				fondoP3.x=420;
				fondoP3.y=145;
				var practicaSWF:URLRequest = new URLRequest("Practica 3 - Promedios - 1730140.swf");
				swf.load(practicaSWF);
				stage.addChild(swf);
				swf.x=420;
				swf.y=145;
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