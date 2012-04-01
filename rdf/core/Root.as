package com.rdf.core 
{
	
	import com.rdf.core.ui.Page;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getDefinitionByName;
	import flash.display.DisplayObject;

	import com.rdf.common.UI;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Root extends MovieClip implements UI
	{
		
		//Navigation
		//private var _pages:Object;
		private var _child:Page;
		private var _url:String;
		private var _domain:String;
		
		//Singleton Variables
		private var _allow:Boolean = false;
		private static var _instance:Root;
		
		public function Root() 
		{
			if (_allow) 
				throw new Error("The instance exist, call Application.instance");
				
			_instance = this;
			this._allow = true;
			
			this.addEventListener(AbstractEvents.CHANGE, this.change);
		}
		/**
		 * Return the instance and 
		 */
		public static function get instance():Root {
			return _instance;
		}
		
		public function get domain():String {
			return this._domain;
		}
		public function set domain(value:String):void {
			this._domain = value;
		}
		/**
		 * Return current url
		 */
		public function get url():String {
			return _url;	
		}
		/**
		 * Set the url value
		 * @param String value;
		 */
		public function set url(value:String):void {
			this._url = value;
		}
		
		/**
		 * Setter current page
		 * @param Object value
		 */
		public function set child(value:Page):void {
			this._child = value;
		}
		/**
		 * Get current page object
		 */
		public function get child():Page {
			return this._child;
		}
		
		/**
		 * Return set pages for the application
		 * @param object properties
		 */
		/*public function set pages(properties:Object):void {
			this._pages = properties;
		}*/
		/**
		 * 
		 */
		/*public function get pages():Object {
			return this._pages;
		}*/
		
		/**
		 * Change the stage
		 * @param	event
		 */
		public function change(event:*):void {
			//trace("Lo tengo..");
			if (!this.pages.hasOwnProperty(this.url))
				throw new Error("Page don't exists...");
				
			var instance:Class = getDefinitionByName(this.pages[this.url]) as Class;
			this.current = new instance();
			
			if (this.numChildren)
				this.removeChild(this.getChildAt[0]);*/
				
			this.addChild(DisplayObject(new instance()));
			//trace(this.current);
			this.current.dispatchEvent(new AbstractEvents(AbstractEvents.ADDED));
			
			//trace(this.current);
		}
		/**
		 * Go to application for a new section
		 * @param	url
		 */
		public function added(event:*):void {
			
		}
		public function removed(event:*):void {
			
		}
	}

}