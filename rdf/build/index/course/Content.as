package com.rdf.build.index.course 
{
	
	import com.rdf.core.AbstractUiEvents;
	import com.rdf.core.ui.Block;
	import com.rdf.build.index.course.content.Chapter;
	import com.rdf.utils.request.XmlObject;
	import flash.events.Event;
	import flash.text.StyleSheet;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Content extends XmlObject
	{
		//public 
		
		public var styles:StyleSheet;
		
		public function Content(resource:String) 
		{
			super(resource);
			
			this.graphics.beginFill(0xFFFFFF, 0.5);
			this.graphics.drawRect(0, 0, 600, 410);
			
			this.addEventListener(AbstractUiEvents.CHANGE, this.change);
		}
		override public function complete(event:Event):void 
		{
			this.x = -(this.width / 2);
			this.y = this.father.reference("Title").y + 30;
			
			this.styles = new StyleSheet();
			this.styles.parseCSS(event.target.data);
			
			//trace(this.styles);
			
			this.child = new Chapter();
			//this.child = new Previous();
			//this.child = new Next();
			
		}
		
		public function change(event:*): void
		{
			//trace(this + ": current chapter " + this.chapter + ": width " + this.width);
			//this.reference("Chapter").dispatchEvent(new AbstractUiEvents(AbstractUiEvents.REMOVED));
			
			this.clean(this.reference("Chapter"));
			this.child = new Chapter();
		
			//trace(this + ": current chapter " + this.chapter + ": width " + this.width);
			//this.clean = this.reference("Chapter");
		}
	}

}