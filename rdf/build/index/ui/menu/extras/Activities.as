package com.rdf.build.index.ui.menu.extras 
{
	import flash.events.Event;
	import com.rdf.core.ui.Button;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Activities extends Button 
	{
		
		public function Activities() 
		{

		}
		
		override public function added(event:*):void 
		{
			this.tween = { x:this.father.reference("Tests").x + this.father.reference("Tests").width + 15, y:(this.father.height - this.height) / 2};
			//this.tween.play();
		}
		
		override public function click(event:Event):void
		{
			
		}
		
	}

}