package com.rdf.core 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractUiEvents extends Event 
	{
		public static var CHANGE:String = "Change element...";
		public static var ADDED:String = "Added element...";
		public static var REMOVED:String = "Remove element...";
		
		public function AbstractUiEvents(type:String, bubbles:Boolean = false, cancelable:Boolean = false) 
		{
			super(type, bubbles, cancelable);
			
		}
		
	}

}