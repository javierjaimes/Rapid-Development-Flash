package com.rdf.core 
{	
	
	
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLVariables;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLLoader;
	import flash.events.Event;
	
	import com.rdf.common.Net;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractNet extends AbstractUi implements Net
	{
		private var _loader:URLLoader;
		private var _request:URLRequest;
		private var _data:*;
		private var _dataformat:String;
		private var _resource:String;
		private var _method:String = URLRequestMethod.GET;
		
		public function AbstractNet(resource:String, method:String, dataformat:String) 
		{
			this.resource = resource;
			this.dataformat = dataformat;
			this.request = new URLRequest(resource);
			
			this.loader = new URLLoader();
			this.loader.dataFormat = this.dataformat;
			
			this.loader.addEventListener(Event.COMPLETE, this.complete);
		}
		
		public function get resource():String {
			return this._resource;
		}
		public function set resource(value:String):void {
			this._resource = value;
		}
		
		public function get method():String {
			return this._method;
		}
		public function set method(value:String):void {
			this._method = value;
		}
		
		public function set data(value:*):void {
			this._data = value;
		}
		public function get data():*{
			return this._data;
		}
		
		public function set dataformat(value:String):void {
			this._dataformat = value;
		}
		public function get dataformat():String {
			return this._dataformat;
		}
		
		public function set loader(value:URLLoader):void {
			this._loader = value;
		}
		public function get loader():URLLoader {
			return this._loader;
		}
		
		public function get request():URLRequest {
			return this._request;
		}
		public function set request(value:URLRequest):void {
			this._request = value;
		}
		
		public function complete(event:Event):void {
			trace("Obtengo la respuesta...");
			//this.dispatcher.dispatchEvent(new RequestEvents(RequestEvents.COMPLETE));
		}
		public function execute():void {
			this.loader.load(this.request);
		}
	}

}