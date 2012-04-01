package com.rdf.build.index.ui.menu 
{
	import com.rdf.build.index.ui.menu.annexes.Annex;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import com.rdf.core.ui.Block;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Annexes extends Block 
	{
		
		public function Annexes() 
		{
			this.x  = -185;
			this.addEventListener(MouseEvent.ROLL_OUT, this.roll_out);
			this.addEventListener(MouseEvent.ROLL_OVER, this.roll_over);
			
			this.addEventListener(Event.ENTER_FRAME, this.enter_frame);
		}
		
		private function enter_frame(event:Event):void 
		{
			this.tween = { x:  this.father.reference("Extras").x + 100};
		}
		
		private function roll_over(event:MouseEvent):void 
		{
			this.removeEventListener(Event.ENTER_FRAME, this.enter_frame);
			this.tween = {x:this.father.reference("Extras").x + this.father.reference("Extras").width - 20}
		}
		
		private function roll_out(event:MouseEvent):void 
		{
			this.addEventListener(Event.ENTER_FRAME, this.enter_frame);
			
		}
		
		override public function added(event:*):void 
		{
			this.child = new Annex();
			//this.x = this.father.reference("Extras").x - 20;
		}
		
		
		
	}

}