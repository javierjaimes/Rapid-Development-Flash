package com.rdf.build.index.ui.menu.annexes 
{
	import flash.events.Event;
	import com.rdf.core.ui.Button;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Annex extends Button 
	{
		
		public function Annex() 
		{
			
		}
		override public function added(event:*):void 
		{
			this.tween = { x:25, y:(this.father.height - this.height) / 2};
			//this.tween.play();
		}
		
		override public function click(event:Event):void
		{
			
		}
	}

}