package com.rdf.core.ui.interfaces.scroller.controls 
{
	
	import com.rdf.core.AbstractUiEvents;
	import flash.display.Sprite;
	import flash.events.Event;
	
	import com.rdf.core.AbstractUi;
	import com.rdf.common.Ui;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Bar extends AbstractUi implements Ui
	{
		//private var _width:int = 10;
		//private var _ellipseround:int = 10;
		
		public function Bar() 
		{
			//this.addEventListener(Event.ADDED_TO_STAGE, this.added);
			this.addEventListener(AbstractUiEvents.ADDED, this.added);
		}
		
		public function added(event:*):void 
		{
			this.graphics.beginFill(0x0D1C33, 0.65);
			this.graphics.drawRoundRect(0, 0, 10, this.father.height, 10, 10);
			
			trace(this + "Father... "  + this.father.father.reference("Canvas").height );
		}
		
		public function change(event:*):void 
		{
			
		}
		
		public function removed(event:*):void 
		{
			
		}
	}

}