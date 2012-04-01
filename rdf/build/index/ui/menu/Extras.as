package com.rdf.build.index.ui.menu 
{
	import com.rdf.build.index.ui.menu.extras.Activities;
	import com.rdf.build.index.ui.menu.extras.Tests;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import com.rdf.core.ui.Block;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Extras extends Block 
	{
		
		public function Extras() 
		{
			this.x = -175;
			this.addEventListener(MouseEvent.ROLL_OUT, this.roll_out);
			this.addEventListener(MouseEvent.ROLL_OVER, this.roll_over);
			
			this.addEventListener(Event.ENTER_FRAME, this.enter_frame);
		}
		
		private function enter_frame(event:Event):void 
		{
			this.tween = { x:  this.father.reference("Navigation").x + 10};
		}
		
		private function roll_over(event:MouseEvent):void 
		{
			this.removeEventListener(Event.ENTER_FRAME, this.enter_frame);
			this.tween = {x:this.father.reference("Navigation").x + this.father.reference("Navigation").width - 20}
			trace(this + " mouse over...");
		}
		
		private function roll_out(event:MouseEvent):void 
		{
			this.addEventListener(Event.ENTER_FRAME, this.enter_frame);
			
		}
		
		override public function added(event:*):void 
		{
			
			this.child = new Tests();
			this.child = new Activities();
		}
		
	}

}