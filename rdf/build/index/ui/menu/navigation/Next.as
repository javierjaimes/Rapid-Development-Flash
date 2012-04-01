package com.rdf.build.index.ui.menu.navigation 
{
	import com.rdf.build.index.ui.Arrow;
	import com.rdf.core.AbstractUiEvents;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Next extends Arrow 
	{
		
		public function Next() 
		{
			
		}
		override public function click(event:Event):void 
		{
			trace(this.father.father.father);
			
			if (this.father.father.father.chapter > this.father.father.father.chapters.length() - 1)
			{
				this.father.father.father.chapter = 0;
			}else
			{
				this.father.father.father.chapter = this.father.father.father.chapter + 1;
			}
				
			if (this.father.father.father.reference("Content")) {
				
				
				this.father.father.father.reference("Content").dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			}else {
				this.father.father.father.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
			}
			
			//trace(this + ": father... " + this.father.father.father.reference("Wrapper").reference("Content"));
			
			
			
		}
		override public function added(event:*):void 
		{
			
			this.tween = { x:this.father.reference("Home").x + this.father.reference("Home").width + 5, y:(this.father.height - this.height) / 2};
			//this.tween.play();
		}
	}

}