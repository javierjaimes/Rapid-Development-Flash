package com.rdf.build.index.ui 
{
	import com.rdf.core.AbstractUiEvents;
	import com.rdf.core.ui.Text;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Vinculo extends Text 
	{
		public var index:int;
		
		public function Vinculo(label:String) 
		{
			super(label);
			
			this.buttonMode = true;
			this.mouseChildren = false;
			this.addEventListener(MouseEvent.CLICK, this.click);
			
		}

		
		private function click(event:Event):void 
		{
			trace(this + ": father is " + this.father.father.father.father.father.father.father.father);
			//this.father.father.father.father.father.father.father.father.clean(this);
			
			this.father.father.father.father.father.father.father.father.chapter = this.index;
			
			//trace(this.father.father.father.father.father.father.chapter);
			this.father.father.father.father.father.father.father.father.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.CHANGE));
		}
		
		override public function added(event:*):void 
		{
			
			this.graphics.beginFill(0x000000, 0);
			this.graphics.drawRect(0, 0, this.father.width, 25);
			
			trace(this + ": cuantos veces me ejecuto...");
		}
	}

}