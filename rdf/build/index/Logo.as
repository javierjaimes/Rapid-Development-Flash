package com.rdf.build.index 
{
	import com.rdf.core.ui.Block;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Logo extends Block 
	{
		
		public function Logo() 
		{
			this.alpha = 0;
		}
		
		override public function added(event:*):void 
		{
			this.scaleX = 3;
			this.scaleY = 3;
			
			this.x = (this.father.width - this.width) / 2;
			this.y = (this.father.height - this.height) / 2;
			
			this.tween = { alpha: 1 }
			this.tween.duration = 4;
			this.tween.play();
			
			//this.x = (this.father.reference("Content").width / 2) - (this.width + 25);
			//this.y = (this.father.reference("Content").height / 2) - (this.height + 10);
		}
		
		override public function removed(event:*):void 
		{
			this.tween = {alpha: 0, onComplete:this.father.clean, onCompleteParams: [this]}
		}
	}

}