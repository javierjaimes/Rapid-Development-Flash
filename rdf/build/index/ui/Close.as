package com.rdf.build.index.ui 
{
	import com.rdf.core.AbstractUiEvents;
	import com.rdf.core.ui.Button;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Close extends Button 
	{
		
		public function Close() 
		{
			
		}
		
		override public function click(event:Event):void 
		{
			
			this.father.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.REMOVED));
		}
		
		override public function added(event:*):void 
		{
			this.x  = (this.father.width / 2) - 20;
			this.y = -((this.father.height / 2) - 10);
		}
		
	}

}