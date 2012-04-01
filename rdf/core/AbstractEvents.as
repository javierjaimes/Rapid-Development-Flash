package com.rdf.core 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractEvents extends Event 
	{
		public static var INITIALIZE:String = "Application start...";
		
		
		//public var parameters:Object;
		private var _parameters:Object;
		
		
		
		public function AbstractEvents(type:String, parameters:Object = null, bubbles:Boolean = false, cancelable:Boolean = false) 
		{
			super(type, bubbles, cancelable);
			this.parameters = parameters;
		}
		
		public function set parameters(value:Object):void {
			this._parameters = value;
		}
		public function get parameters():Object {
			return this._parameters;
		}
		
	}

}