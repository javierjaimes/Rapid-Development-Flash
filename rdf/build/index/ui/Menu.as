package com.rdf.build.index.ui 
{
	
	import com.rdf.build.index.ui.menu.Annexes;
	import com.rdf.build.index.ui.menu.Extras;
	import com.rdf.build.index.ui.menu.Navigation;
	import com.rdf.core.ui.Block;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Menu extends Block 
	{
		public function Menu() 
		{
			
		}
		
		override public function added(event:*):void 
		{
			trace(this + this.father);
			
			this.graphics.beginFill(0xFF0000, 0);
			this.graphics.drawRect(0, 0, this.father.width, 25);
			
			
			this.child = new Annexes();
			this.child = new Extras();
			this.child = new Navigation();
			
			this.x = -(this.father.x);
			this.tween = { y:135 };
			
		}
		
	}

}