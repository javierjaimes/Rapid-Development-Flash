package com.rdf.build.index.ui.menu.extras 
{
	import flash.events.Event;
	import com.rdf.core.ui.Button;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Tests extends Button 
	{
		
		public function Tests() 
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