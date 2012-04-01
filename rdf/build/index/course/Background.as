package com.rdf.build.index.course 
{
	import com.rdf.core.ui.Block;
	import com.rdf.core.AbstractNetEvents;
	import com.rdf.core.AbstractNetEvents;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Background extends Block 
	{
		
		public function Background() 
		{
			this.alpha = 0;
			
			
		}
		
		override public function added(event:*):void 
		{
			this.x = -(this.father.x);
			this.y = -(this.father.y);
			
			this.tween = { alpha: 1, paused: true };
			this.tween.duration = 2.5;
			this.tween.play();
			
			
			//this.child = new Logo();
			
			trace(this + " " + this.tween.duration);
			
			
			trace(this + ": instance added to stage..." + this.x);
			//this.child =  new Course("xml/course.xml");
			
			
		}
	}

}