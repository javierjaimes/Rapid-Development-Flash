package com.rdf.core 
{	
	import flash.utils.getDefinitionByName;
	
	import com.rdf.common.Navigation;
	import com.rdf.common.Transitions;
	import com.rdf.core.Abstract;
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractView extends Abstract implements Transitions, Navigation
	{
		
		private var _current:Object;
		private var _anchors:Object;
		private var _anchor:String;
		
		public function AbstractView() 
		{
			
		}
		
		public function set anchor(value:String):void {
			this._anchor = value;
		}
		public function get anchor():String {
			return this._anchor;
		}
		
		/**
		 * Return set anchors for the pages
		 * @param object properties
		 */
		public function set anchors(value:Object):void {
			this._anchors = value;
		}
		/**
		 * 
		 */
		public function get anchors():Object {
			return this._anchors;
		}
		
		/**
		 * Setter current anchor
		 * @param Object value
		 */
		public function set current(value:Object):void {
			this._current = value;
		}
		/**
		 * Get current anchor object
		 */
		public function get current():Object {
			return this._current;
		}
		
		public function add():void 
		{
			
		}
		public function remove():void {
			
		}
		
		public function next():void {
			
		}
		
		public function previus():void {
			
		}
		public function change(event:*):void {
			if (!event.parameters.hasOwnProperty("holder"))
				throw new Error("Page holder don't exists...");
				
			this.anchor = event.parameters.anchor;
			this.getChildByName(event.parameters.holder).dispatchEvent(new AbstractEvents(AbstractEvents.CHANGE));
				
			
			/*if (this.getChildByName(event.parameters.holder)) {
				this.getChildByName(event.parameters.holder).dispatchEvent(new AbstractEvents(AbstractEvents.CHANGE));
			}else {
				
			}*/
			/*
			var instance:Class = getDefinitionByName(this.anchors[this.anchor]) as Class;
			this.current = new instance();
			this.next();*/
		}
	}

}