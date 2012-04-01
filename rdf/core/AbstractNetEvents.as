package com.rdf.core 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractNetEvents extends Event 
	{
		private var _response:Object;
		
		public static var REQUEST_COMPLETE:String = "Request is complete...";
		
		public function AbstractNetEvents(type:String,  response:Object = null, bubbles:Boolean = false, cancelable:Boolean = false) 
		{
			super(type, bubbles, cancelable);
			this.response = response;
		}
		
		public function get response():Object {
			return this._response;
		}
		
		public function set response(value:Object):void {
			this._response = value;
		}
	}

}