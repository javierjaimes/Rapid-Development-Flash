package com.rdf.core.ui 
{
	import com.rdf.common.Ui;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import com.rdf.core.AbstractUi;
	import com.rdf.core.AbstractUiEvents;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Button extends AbstractUi implements Ui
	{
		
		public function Button() 
		{
			this.buttonMode = true;
			this.mouseChildren = false;
			
			
			this.addEventListener(MouseEvent.CLICK, this.click);
			
			this.addEventListener(AbstractUiEvents.ADDED, this.added);
			this.addEventListener(AbstractUiEvents.CHANGE, this.change);
			this.addEventListener(AbstractUiEvents.REMOVED, this.removed);
		}
		public function click(event:Event):void 
		{
			trace("Soy el elemento button");
		}
		
		public function added(event:*):void {
			
		}
		public function change(event:*):void {
			
		}
		public function removed(event:*):void {
			
		}
	}

}