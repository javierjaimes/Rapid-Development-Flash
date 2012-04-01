package com.rdf.build.index.ui.menu.navigation 
{
	import com.rdf.build.index.ui.Arrow;
	import com.rdf.core.AbstractUiEvents;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Previous extends Arrow 
	{
		
		public function Previous() 
		{
			this.tween = {x:5, y:10, paused:true};
		}
		
		override public function click(event:Event):void 
		{
			
			this.father.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			
			
			if (this.father.father.father.chapter >! 0)
			{
				this.father.father.father.chapter = this.father.father.father.chapters.length() - 1 ;
			}else
			{
				this.father.father.father.chapter = this.father.father.father.chapter - 1;
			}
				
			if (this.father.father.father.reference("Content")) {
				
				
				this.father.father.father.reference("Content").dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			}else {
				this.father.father.father.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			}
		}
		
		override public function added(event:*):void 
		{
			this.tween.play();
			
			this.tween = { x:10, y:(this.father.height - this.height) / 2};
		}
		
	}

}