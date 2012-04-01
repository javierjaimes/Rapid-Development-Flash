package com.rdf.build.index.ui 
{
	import com.rdf.build.index.course.Map;
	import com.rdf.core.AbstractUiEvents;
	import com.rdf.core.ui.Button;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Home extends Button 
	{
		
		public function Home() 
		{
			trace(this + ": created instance...");
			
		}
		override public function click(event:Event):void 
		{
			this.father.father.father.child = new Map();
			/*if (this.father.father.reference("Content").chapter) {
				this.father.father.reference("Content").chapter = 0;
				this.father.father.reference("Content").dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			}*/
		}
		override public function added(event:*):void 
		{
			this.x = this.father.reference("Previous").y + this.father.reference("Previous").width + 10;
			this.tween = {y: (this.father.height - this.height) / 2}
		}
		
	}

}