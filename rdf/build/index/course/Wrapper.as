package com.rdf.build.index.course 
{
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.rdf.core.ui.Block;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Wrapper extends Block 
	{
		
		public function Wrapper() 
		{
			this.graphics.beginFill(0xFFFFFF, 0.5);
			this.graphics.drawRect(-300, -220, 600, 440);
			
		}
		
		override public function added(event:*):void 
		{
			
			//this.x = -(this.width / 2);
			//this.y = -(this.height / 2);
			this.scaleX = 0;
			this.scaleY = 0;

			
			this.child = new Title();
			this.child = new Content("css/course.css");
			
			this.tween = {scaleX:1, scaleY:1, ease:Bounce.easeOut, paused:true };
			this.tween.duration = 2;
			this.tween.play();
		}
		
	}

}