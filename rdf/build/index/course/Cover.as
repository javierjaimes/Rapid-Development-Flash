package com.rdf.build.index.course 
{
	import com.rdf.core.ui.Block;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Cover extends Block 
	{
		
		public function Cover() 
		{
			this.alpha = 0;
		}
		
		override public function added(event:*):void 
		{
			this.x = -(this.father.x);
			this.y = -(this.father.y);
			
			this.label.text = this.father.title;
			this.description.text = this.father.description;
			
			this.tween = { alpha: 1, paused: true };
			this.tween.duration = 2;
			this.tween.play();
		}
		
	}

}