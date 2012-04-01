package com.rdf 
{
	import com.rdf.build.Index;
	import com.rdf.core.AbstractEvents;
	import flash.display.Stage;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.display.MovieClip;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Abstract extends MovieClip 
	{
		//private var _child:Page;
		private var _url:String;
		private var _domain:String;
		
		//public static var rdf:Object;
		
		private var _allow:Boolean = false;
		private static var _instance:Abstract;
		
		public function Abstract() 
		{
			if (_allow) 
				throw new Error("The instance exist, call Application.instance");
				
			_instance = this;
			this._allow = true;
			
			
			this.addEventListener(AbstractEvents.INITIALIZE, this.initialize);
			this.addEventListener(Event.ADDED_TO_STAGE, this.added_to_stage);
			/*try 
			{
				Abstract.rdf = Root.instance;
			}catch (error:Error) {
				
			}*/
		}
		
		public function added_to_stage(event:Event):void 
		{
			this.dispatchEvent(new AbstractEvents(AbstractEvents.INITIALIZE));
		}
		/**
		 * Return the instance (Singleton)
		 */
		public static function get instance():Abstract {
			return _instance;
		}
		
		/**
		 * Return domain 
		 */
		public function get domain():String {
			return this._domain;
		}
		/**
		 * Set domain
		 * @param String value
		 */
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
		
		public function initialize(event:AbstractEvents):void 
		{
			this.addChild(new Index());
		}
		
	}

}