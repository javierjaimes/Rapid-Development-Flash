package com.rdf.core.ui.interfaces.scroller.controls 
{
	import com.rdf.core.AbstractUiEvents;
	import flash.events.Event;
	import com.rdf.core.ui.Button;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Ball extends Button
	{
		private var _height:int;
		
		public function Ball() 
		{
			//this.name = "ball";
			//trace("Tengo la misma bola y es una sola");
			//this.addEventListener(Event.ADDED_TO_STAGE, this.added);
			this.addEventListener(MouseEvent.MOUSE_DOWN, this.mouse_down);
			this.addEventListener(MouseEvent.MOUSE_UP, this.mouse_up);
		}
		
		private function mouse_up(event:MouseEvent):void 
		{
			this.stopDrag();
		}
		private function mouse_down(event:MouseEvent):void
		{
			if (this.father.father.height > this.father.father._height)
			{
				trace("Is there scrolll...");
				//this.graphics.drawRect(0, 0, this.width, this.father.father.height);
				trace("Bar width: " + this.father.reference("Bar").width);
				this.startDrag(false, new Rectangle(0, 0, 0, this.father.reference("Bar").height - this.height));
			}
		}
		
		override public function click(event:Event):void 
		{
			//trace(this.father.father.reference("Canvas").height);
			
			
		}
		
		
		
		override public function added(event:*):void 
		{			
			
			this.graphics.beginFill(0x235298);
			
			this._height = this.father.father.height  - this.father.father._height;
			
			this.graphics.drawRoundRect(0, 0, 10, this._height, 10, 10);
			//this.graphics.drawCircle(this.father.x + (this._radius / 2) + 1, this.father.y + (this._radius / 2) + 1, this._radius);
			
			trace(this + "Father... "  + this._height);
		}
	}

}