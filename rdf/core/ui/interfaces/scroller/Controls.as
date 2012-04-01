package com.rdf.core.ui.interfaces.scroller 
{	
	import com.rdf.core.ui.Block;
	import com.rdf.core.ui.interfaces.scroller.controls.Bar;
	import com.rdf.core.ui.interfaces.scroller.controls.Ball;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Controls extends Block
	{
		private var ball:Ball;
		private var bar:Bar;
		
		public function Controls() 
		{
			
			
			/*this.bar = new Bar();
			this.ball = new Ball();*/
			//trace("Y yo paso...");
			//this.addChild(this.ball);
			//this.name = "controls";
			
			this.tween = { alpha: 1, paused:true }
			
			//this.addEventListener(Event.ADDED_TO_STAGE, this.added);
		}
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0xFFFF00, 0);
			this.graphics.drawRect(0, 0, 10, this.father._height);
			
			trace(this + ": scroller height" + this.father + this.father.reference("Canvas").height);
			
			
			this.graphics.beginFill(0x000000);
			//this.
			//this
			this.bar = new Bar();
			this.child = this.bar;
			
			this.ball = new Ball();
			this.child = this.ball;
			
			this.y = 0;
			this.x = this.father.width - this.width;
			
		}
	}

}