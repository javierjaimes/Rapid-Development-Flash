package com.rdf.utils.request 
{
	import com.rdf.core.AbstractNet;
	import com.rdf.core.AbstractNetEvents;
	import flash.events.Event;
	import flash.net.URLRequestMethod;
	import flash.net.URLLoaderDataFormat;
	
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class XmlObject extends AbstractNet 
	{
		//private var dispatcher:*;
		//public var data:XML;
		
		public function XmlObject(resource:String) 
		{
			
			super(resource, URLRequestMethod.GET, URLLoaderDataFormat.TEXT);
			//this.dispatcher = dispatcher;
			this.execute();
		}
		/*override public function complete(event:Event):void {
			//trace("Me ejecuto.." + event.target.data);
			
			this.father.dispatchEvent(new AbstractNetEvents(AbstractNetEvents.REQUEST_COMPLETE, {xml: new XML(event.target.data)}));			
		}*/
	}

}