package com.rdf.build.index.course.content.chapter 
{
	import com.rdf.core.ui.Block;
	import com.rdf.core.ui.interfaces.Scroller;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Body extends Block 
	{
		
		public function Body() 
		{
			
		}
		
		override public function added(event:*):void 
		{
			this.x = 5;
			this.y = this.father.reference("Header").height + 5;
			this.child = new Scroller(this.father.width -  10, this.father.height - 40, this.father.content);
		}
		
	}

}