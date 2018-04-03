
package  {
	//importacion de las librerias que se usaron
import flash.display.MovieClip;
import fl.transitions.Tween;
import fl.transitions.easing.*;
import flash.events.MouseEvent;
import flash.events.Event;
import flash.net.URLRequest;
import flash.net.navigateToURL;

	public class Clases extends MovieClip {
		//Las siguentes variables tomaran la clase establecida
		var v2: simpleFlvv = new simpleFlvv();
		var v: simpleFlv2 = new simpleFlv2();
		
		public function Clases() {
			//al iniciar se mostrara las animaciones en el la instancia b que es todo aquello que contiene
			//la portada (nombre, materia, docente, practica)
			var tweens: Tween;
			tweens = new Tween(b, "y", Regular.easeOut, -600, 50, 2, true);
			tweens = new Tween(b, "rotationX", Regular.easeOut, 90, 0, 2, true); //le proporcionamos una rotacion para simular al cubo en 3d
			tweens = new Tween(b, "alpha", Regular.easeOut, 0, 1, 3, true); //controla la transparencia de todo nuestro simbolo
//con el boton regreso, va directamente a la portada con los datos
regreso_btn.addEventListener(MouseEvent.CLICK,re);
function re(e:MouseEvent):void{
gotoAndStop(1);
//tendra al regresar a la portada, tendra el addEvent listener de todos los demas botones 
practicas_btn.addEventListener(MouseEvent.CLICK,continua1);
tareas_btn.addEventListener(MouseEvent.CLICK,work);
game_btn.addEventListener(MouseEvent.CLICK,entra1);
multimedia_btn.addEventListener(MouseEvent.CLICK,multi);
}
//el boton para visualizar todas practicas
practicas_btn.addEventListener(MouseEvent.CLICK,continua1);
function continua1(e:MouseEvent):void{
	gotoAndStop(4);
	//Las animaciones que realizara al pasar al frame 
		var twen: Tween = new Tween(d, "x", Regular.easeOut, -500, 145, 2, true);
		var tween:Tween = new Tween(d, "rotationY", Regular.easeOut, 120, 0, 2, true);
		var twe:Tween = new Tween(d, "alpha", Regular.easeOut, 0, 4, 3, true);
		//los botones que se "activaran"
//a los botones se les agrega el nombre del simbolo, donde estan todos los elementos, es un llamado para que puedan funcionar 		
d.practica1_btn.addEventListener(MouseEvent.CLICK,practica1);
d.practica2_btn..addEventListener(MouseEvent.CLICK,practica2);
d.practica3_btn..addEventListener(MouseEvent.CLICK,practica3);
d.practica4_btn..addEventListener(MouseEvent.CLICK,practica4);
d.practica5_btn..addEventListener(MouseEvent.CLICK,practica5);
d.practica5co_btn..addEventListener(MouseEvent.CLICK,practica5con);
d.practica6_btn..addEventListener(MouseEvent.CLICK,practica6);
d.practica7_btn..addEventListener(MouseEvent.CLICK,practica7);
d.practica8_btn..addEventListener(MouseEvent.CLICK,practica8);
d.practica9_btn..addEventListener(MouseEvent.CLICK,practica9);
d.practica10_btn..addEventListener(MouseEvent.CLICK,practica10);
d.practica11_btn..addEventListener(MouseEvent.CLICK,practica11);
d.practica12_btn..addEventListener(MouseEvent.CLICK,practica12);
}
//boton de tarea para pasar al quinto frame
tareas_btn.addEventListener(MouseEvent.CLICK,work);
function work(e:MouseEvent):void{
gotoAndStop(5);
//animacion en cubo 
			var tweenss: Tween;
			tweenss = new Tween(ee, "y", Regular.easeOut, -600, 50, 2, true);
			tweenss = new Tween(ee, "rotationX", Regular.easeOut, 180, 0, 2, true);
			tweenss = new Tween(ee, "alpha", Regular.easeOut, 0, 1, 3, true);
//los tres botones de tareas		
ee.tarea3_btn.addEventListener(MouseEvent.CLICK,tarea3);
ee.tarea4_btn.addEventListener(MouseEvent.CLICK,tarea4);
ee.tarea5_btn.addEventListener(MouseEvent.CLICK,tarea5);
}

//boton de juegos que nos permitiran avanzar al tercer frame
game_btn.addEventListener(MouseEvent.CLICK,entra1);
function entra1(e:MouseEvent):void{
gotoAndStop(3);
	//animacion en cubo 
	var Movimientoo:Tween= new Tween(je, "y", None.easeOut, 1000, 22.10, 2, true);
	var Movimientooo:Tween = new Tween(je, "rotationY", None.easeOut, 90, 0,2, true);
	var Movimientoooo:Tween = new Tween(je, "alpha", None.easeOut, 3, 4, 4, true);
je.uno_btn.addEventListener(MouseEvent.CLICK,juego1);
je.dos_btn.addEventListener(MouseEvent.CLICK,juego2);
je.tres_btn.addEventListener(MouseEvent.CLICK,juego3);
}
//boton para trasladarnos a multimedia al segundo frame
multimedia_btn.addEventListener(MouseEvent.CLICK,multi);
function multi(e:MouseEvent):void{
gotoAndStop(2);
	var Movimiento:Tween;
	Movimiento= new Tween(c, "x", None.easeOut, 1000, 140, 2, true);
	Movimiento = new Tween(c, "rotationY", None.easeOut, 90, 0,2, true);
	Movimiento = new Tween(c, "alpha", None.easeOut, 0, 1, 3, true);
c.videos_btn.addEventListener(MouseEvent.CLICK,videos);
c.gale_btn.addEventListener(MouseEvent.CLICK,gale);
c.galer_btn.addEventListener(MouseEvent.CLICK,galer);
c.quitar_btn.addEventListener(MouseEvent.CLICK,quitar);
c.quitar_btn.addEventListener(MouseEvent.CLICK,quitarr);
c.español_btn.addEventListener(MouseEvent.CLICK,videoespañol);
c.quitar_btn.visible = false; //ponemos en false el boton para quitar los videos 
c.ingles_btn.addEventListener(MouseEvent.CLICK,videoingles);
}
//funcion que mostrara el video de la conclusion en el idioma español
function videoespañol(e:MouseEvent):void{
			v2.playMyFlv("español.mp4"); //se añade cual es el video indicado
			addChild(v2); 
			v2.x = 140; //las posiciones que tomara en el escenario
			v2.y = 130;
			
		c.quitar_btn.visible = true; //el boton se pondra en verdadero para que el usuario elija cuando lo desea quitar
			
}
//funcion para quitar el video 
function quitar(e:MouseEvent):void{
			v2.stopMyFlv("español.mp4"); //el elemento que se va a detener
			c.quitar_btn.visible = false; //regresamos nuestro boton a falso
			removeChild(v2);//lo quitamos o removemos del escenario  
}
function videoingles(e:MouseEvent):void{
			v.playMyFlv("conclusion.mp4"); //se añade cual es el video indicado
			addChild(v); 
			v.x = 140; //las posiciones que tomara en el escenario
			v.y = 130;
			
		c.quitar_btn.visible = true; //el boton se pondra en verdadero para que el usuario elija cuando lo desea quitar
			
}
//funcion para quitar el video 
function quitarr(e:MouseEvent):void{
			v.stopMyFlv("conclusion.mp4"); //el elemento que se va a detener
			c.quitar_btn.visible = false; //regresamos nuestro boton a falso
			removeChild(v);//lo quitamos o removemos del escenario  
}
//funciones que dependiendo de la practica, trabajo, multimedia y tareas es donde nos abrira nuestro formato html
//#################################practicas#####################################################
function practica1(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica1.html"));
}
function practica2(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica2.html"));
}
function practica3(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Proyectofinal.html"));
}

function practica4(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica4Final.html"));
}
function practica5(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica5.html"));
}

function practica5con(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica5conversion.html"));
}
function practica6(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica6.html"));
}
function practica7(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Archivo.zip"));
}

function practica8(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica8.html"));
}

function practica9(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/pro.html"));
}
function practica10(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/videos.rar"));
}

function practica11(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica11.html"));
}
function practica12(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Practica 20.rar"));
}
//###################tareas###############################################
function tarea3(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/tarea3.html"));
}
function tarea4(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/tarea4.html"));
}
function tarea5(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/tarea5.html"));
}
//######################juegos#########################################333
function juego1(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Proyectofinal.html"));
}
function juego2(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Proyecto Serpientes terminado.html"));
}
function juego3(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/practica4Final.html"));
}
//########################multimedia########################################
function videos(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/videos.rar"));
}
function gale(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Archivo.zip"));
}
function galer(e:MouseEvent):void{
	navigateToURL(new URLRequest("peliculas/Practicas/Practica 20.rar"));
			}

		}
	}
	
}