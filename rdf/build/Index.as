package com.rdf.build 
{
	import com.greensock.*;
	import com.greensock.easing.*;
	import com.rdf.core.AbstractUiEvents;
	
	import com.rdf.build.index.Course;
	import com.rdf.build.index.Logo;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import com.rdf.core.AbstractNetEvents;
	import com.rdf.core.ui.Page;
	import com.rdf.utils.request.XmlObject;
	
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Index extends Page 
	{
		private var timer:Timer;
		
		public function Index() 
		{
			//this.scaleX = 0;
			//this.scaleY = 0;
			
			this.timer = new Timer(4000, 1);
			this.timer.addEventListener(TimerEvent.TIMER, this.timer_event);
			this.timer.start();
			
		}
		
		private function timer_event(event:TimerEvent):void
		{
			this.child.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.REMOVED));
			this.child = new Course("xml/course.xml");
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0x000000, 0);
			this.graphics.drawRect(0, 0, this.father.stage.stageWidth, this.father.stage.stageHeight);
			
			trace(this + this.father.stage);
			trace(this + ": instance added to stage...");
			
			this.child = new Logo();
			//this.child = new Background();
			
		}
	}

}