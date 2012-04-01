package com.rdf.common 
{	
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public interface Net 
	{
		function execute():void;
		function complete(event:Event):void;
	}
	
}