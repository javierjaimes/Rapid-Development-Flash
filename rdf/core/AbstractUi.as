package com.rdf.core 
{
	import com.greensock.TweenLite;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.utils.getQualifiedClassName;
	
	import com.rdf.core.AbstractUiEvents;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class AbstractUi extends MovieClip
	{
		//public var rdf:Abstract;
		private var _tween:TweenLite;
		private var _father:MovieClip;
		//private var _child:*;
		private var _childs:Array = new Array();
		
		public function AbstractUi() 
		{
			/*try{
				
			}catch (error:Error) {
				
			}*/
			this.name = getQualifiedClassName(this).replace(new RegExp("^.*::"), "");
			
			this.addEventListener(Event.ADDED_TO_STAGE, this.added_to_stage);
		}
		public function added_to_stage(event:Event) {
			this.removeEventListener(Event.ADDED_TO_STAGE, this.added_to_stage);
			this.father = MovieClip(parent);
			this.dispatchEvent(new AbstractUiEvents(AbstractUiEvents.ADDED));
			//trace("Hola mundo...");
		}
		
		public function get father():MovieClip {
			return this._father;
		}
		
		public function set father (value:MovieClip):void 
		{
			this._father = value;
		}
		
		public function get child():*
		{
			if (this._childs.length > 1) {
				return this._childs;
			}else {
				return this._childs[0];
			}
			/*if (this.numChildren > 1) {
				for (var i:int = 0; i < this.numChildren; i++) {
					//trace("Objetos de: " + this + " " + this.getChildAt(i));
					this._childs.push(this.getChildAt(i));
				}
				return this._childs;
			}else {
				//trace("Paso aqui..." + this);
				return this._child;
			}*/
		}
		
		public function reference(name:String):*
		{
			return this.getChildByName(name);
		}
		
		public function set child (value:*):void 
		{
			//trace(this + " " + " num: "  + this.numChildren);
			//this._child = value;
			this._childs.push(value);
			this.addChild(value);
		}
		
		public function clean(child:* = null): void
		{
			if (child != null)
			{
				this.removeChild(child);
			}else
			{
				if (this.child.length > 1)
				{
					for (var i:String in this.child) 
					{
						this.removeChild(this.child[i]);
						
					}
				}else
				{
					this.removeChild(this.child);
				}
			}
			//trace(this + ": clean the stage...");
		}
		
		public function set tween(variables:*):void 
		{
			this._tween = new TweenLite(this, 1, variables);
		}
		public function get tween():TweenLite
		{
			return this._tween;
		}
	}
}