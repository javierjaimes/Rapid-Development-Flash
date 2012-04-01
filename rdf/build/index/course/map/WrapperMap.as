package com.rdf.build.index.course.map 
{
	import com.rdf.build.index.course.content.Indexes;
	import com.rdf.core.ui.Block;
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class WrapperMap extends Block
	{
		public var chapter:int = 0;
		
		public function WrapperMap() 
		{
			
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0xFFFFFF, 0.5);
			this.graphics.drawRect(0, 0, this.father.width - 40, this.father.height - 40);
			
			this.x = -(this.width / 2);
			this.y = -(this.height / 2);
			
			this.child = new Indexes();
		}
		
	}

}