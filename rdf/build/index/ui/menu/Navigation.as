package com.rdf.build.index.ui.menu 
{
	import com.rdf.build.index.ui.Home;
	import com.rdf.build.index.ui.menu.navigation.Next;
	import com.rdf.build.index.ui.menu.navigation.Previous;
	import com.rdf.core.ui.Block;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Navigation extends Block 
	{
		
		public function Navigation() 
		{
			this.x = 0;
			this.addEventListener(MouseEvent.ROLL_OUT, this.roll_out);
			this.addEventListener(MouseEvent.ROLL_OVER, this.roll_over);
		}
		
		override public function added(event:*):void 
		{
			this.child = new Previous();
			this.child = new Home();
			this.child = new Next();
		}
		
		
		private function roll_over(event:MouseEvent):void 
		{
			this.tween = {x:0}
			trace(this + " mouse over...");
		}
		
		private function roll_out(event:MouseEvent):void 
		{
			this.tween = { x: -160 };
			
		}
		
	}

}