package com.rdf.build.index.course.content.chapter 
{
	import flash.text.TextField;
	
	import com.rdf.core.ui.Block;
	
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Header extends Block 
	{
		
		public function Header() 
		{
			
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0x4F9300, 1);
			this.graphics.drawRect(0, 0, this.width, this.height);
			
			this.label.text = this.father.title;
			trace(this + ": father " + this.father.title);
		}
		
	}

}