package com.rdf.build.index.course 
{
	import com.rdf.build.index.ui.Home;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	import com.rdf.core.ui.Block;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Title extends Block 
	{
		
		public function Title() 
		{
			//this.label.text = this.father.label;
			
			//this.addEventListener(Event.ADDED_TO_STAGE, this.added);
			//this.x = -(this.width / 2);
		}
		override public function added(event:*):void 
		{
			this.x = -(this.width / 2);
			this.y = -220;
			//trace("Y Aqui esta listo tod..." + this.father);
			this.label.text = this.father.father.title;
			
			//this.child = new Home();
			
			//trace(this + ": x es = " + this.x);
		}
		
	}

}