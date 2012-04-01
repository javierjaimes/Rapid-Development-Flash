package com.rdf.build.index 
{
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.rdf.build.index.course.Content;
	import com.rdf.build.index.course.Cover;
	import com.rdf.build.index.course.Title;
	import com.rdf.build.index.course.Wrapper;
	import com.rdf.build.index.ui.Menu;

	import com.rdf.build.index.course.Background;
	
	import com.rdf.core.AbstractUiEvents;
	import com.rdf.utils.request.XmlObject;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Course extends XmlObject 
	{	
		private var _chapter:int = 0;
		public var title:String;
		public var description:String;
		public var chapters:XMLList;
		
		public function Course(resource:String) 
		{
			
			this.graphics.beginFill(0xFFFF00, 0);
			this.graphics.drawRect(-320, -240, 640, 480);
			
			super(resource);
			
			this.addEventListener(AbstractUiEvents.CHANGE, this.change);
		}
		
		
		
		override public function complete(event:Event):void
		{
			trace(this + ": loaded data..." );
			this.data = new XML(event.target.data);
			
			this.title = this.data.title.text();
			this.description = this.data.description.text();
			this.chapters = this.data.units;
			
			this.x = this.width / 2;
			this.y = this.height / 2;
			
			
			
			this.child = new Background();			
			
			this.child = new Cover();
			//this.child = new Wrapper();
			
			//flotan elements
			//this.child = new Title();
			//this.child = new Content("css/course.css");
			this.child = new Menu();
			
			
			
			//
			//this.child = new Content();
			
			//
			//
			//this.child = new Logo();
			
			
			trace(this  + ":  x = " + this.x);
			//this.tween.play();
			//trace(this + ": data = " + this.data);
		}
		
		public function change(event:*):void 
		{
			if (this.reference("Cover"))
				this.clean(this.reference("Cover"));
				
			if (this.reference("Map"))
				this.clean(this.reference("Map"));
				
			if (this.reference("Wrapper"))
				this.clean(this.reference("Wrapper"));
				
			this.child = new Wrapper();
			this.swapChildren(this.reference("Wrapper"), this.reference("Menu"));
		}
		
		public function get chapter():int
		{
			return this._chapter;
		}
		public function set chapter(number:int):void
		{
			this._chapter = number;
		}
	}

}