package com.rdf.core.ui 
{
	import com.rdf.common.Ui;
	import com.rdf.core.AbstractEvents;
	import com.rdf.core.AbstractUi;
	import com.rdf.core.AbstractUiEvents;
	import flash.events.Event;
	
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Page extends AbstractUi implements Ui
	{
		/*private var _current:Object;
		private var _anchors:Object;
		private var _anchor:String;*/
		
		public function Page() 
		{
			this.addEventListener(AbstractUiEvents.ADDED, this.added);
			//this.addEventListener(AbstractEvents.CHANGE, this.change);
			//this.addEventListener(AbstractEvents.REMOVED, this.removed);
		}
		/*public function set anchor(value:String):void {
			this._anchor = value;
		}
		public function get anchor():String {
			return this._anchor;
		}*/
		
		/**
		 * Return set anchors for the pages
		 * @param object properties
		 */
		/*public function set anchors(value:Object):void {
			this._anchors = value;
		}*/
		/**
		 * 
		 */
		/*public function get anchors():Object {
			return this._anchors;
		}*/
		
		/**
		 * Setter current anchor
		 * @param Object value
		 */
		/*public function set current(value:Object):void {
			this._current = value;
		}*/
		/**
		 * Get current anchor object
		 */
		/*public function get current():Object {
			return this._current;
		}^*/
		
		public function added(event:*):void 
		{
			
		}
		public function change(event:*):void {
			if (!event.parameters.hasOwnProperty("holder") && event.parameters.hasOwnProperty("holder") == Block)
				throw new Error("Page holder don't exists...");
				
			//this.anchor = event.parameters.anchor;
			//this.getChildByName(event.parameters.holder).dispatchEvent(new AbstractEvents(AbstractEvents.CHANGE));
		}
		public function removed(event:*):void {
			
		}
	}

}