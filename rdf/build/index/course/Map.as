package com.rdf.build.index.course 
{
	import com.rdf.build.index.course.map.WrapperMap;
	import com.rdf.build.index.ui.Close;
	import com.rdf.core.ui.Block;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Map extends Block 
	{
		
		
		public function Map() 
		{
			
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0x000000, 0.5);
			this.graphics.drawRect(-(this.father.father.father.stage.stageWidth / 2), -(this.father.father.father.stage.stageHeight / 2), this.father.father.father.stage.stageWidth, this.father.father.father.stage.stageHeight);
			
			//this.
			
			
			this.child = new WrapperMap();
			this.child = new Close();
			//trace(this + this.father.father.father.stage);
		}
		
		override public function removed(event:*):void 
		{
			this.tween = { alpha: 0, onComplete: this.father.clean, onCompleteParams: [this] };
		}
		
		
	}

}