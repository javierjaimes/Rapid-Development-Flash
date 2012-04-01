package com.rdf.core.ui.interfaces.scroller 
{
	import com.rdf.core.ui.Block;
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Canvas extends Block 
	{
		private var area:Sprite;
		private var content:*;
		
		public function Canvas(width:int, height:int, content:*) 
		{
			
			this.graphics.beginFill(0x000000, 0);
			this.graphics.drawRect(0, 0, width, height);
			
			this.content = content;
			
			this.addEventListener(Event.ENTER_FRAME, this.enter_frame);
		}
		
		private function enter_frame(event:Event):void 
		{
			this.content.y = -(this.father.reference("Controls").reference("Ball").y);
			//trace(this.father.reference("Controls").reference("Ball").y);
		}
		override public function added(event:*):void 
		{
			this.area = new Sprite();
			this.area.graphics.beginFill(0xFF0000);
			this.area.graphics.drawRect(0, 0, this.width, this.height);
			this.child = this.area;
			
			this.child = this.content;
			this.content.mask = this.area;
			
		}
	}

}