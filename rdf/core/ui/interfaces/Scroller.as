package com.rdf.core.ui.interfaces 
{
	import com.rdf.Abstract;
	import com.rdf.common.Ui;
	import com.rdf.core.ui.Block;	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import com.rdf.core.ui.interfaces.scroller.Controls	;
	import com.rdf.core.ui.interfaces.scroller.Canvas;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Scroller extends Block
	{
		//public var wrapper:Sprite;
		//public var handler:MovieClip;
		//private var _content:*;
		//private var _controls:Controls;
		//private var _mask:Sprite;
		//private var _content:*;
		//public var content:Content;
		public var _width:int;
		public var _height:int;
		
		private var canvas:Canvas;
		private var controls:Controls;
		
		public function Scroller(width:int, height:int, content:*) 
		{
			this._width = width;
			this._height = height;
			
			this.graphics.beginFill(0xEEEEEE, 0);
			this.graphics.drawRect(0, 0, width, height);
			//this.content = content;
			//this.addChild(this.content);
			
			
			//this._mask = new Sprite();
			//this._mask.graphics.beginFill(0x000000);
			//this._mask.graphics.drawRect(this.x, this.y, this.width, this.height);
			//this._controls = new Controls();
			//this.addChild(this._controls);
			
			this.canvas = new Canvas(this.width, this.height, content);
			this.controls = new Controls();
			this.controls.alpha = 0; 
			
			//this.addEventListener(MouseEvent.MOUSE_MOVE, this.mouse_move);
			
			
		}
		
		private function mouse_move(event:MouseEvent):void
		{
			if (event.stageX > 540)
			{
				this.controls.tween.play();
			}else
			{
				this.controls.tween.reverse();
			}
			//trace(this + ": mouse move..." + event.);
		}
		
		override public function added(event:*):void {
			trace(this + ": " + this.width + " " + +this.height + root);
			
			Abstract(root).stage.addEventListener(MouseEvent.MOUSE_MOVE, this.mouse_move);
			this.child = this.canvas;
			this.child = this.controls;
			
			
			
			//trace("El scroll cuando se crea..." + this.width);
			 
			//this.controls.x = this.width - this.controls.width;
			
			
			//this.child = new Canvas();
			//this.content.mask = this._mask;
			//this.child = this.controls;
			//this.child = this.content;
		}
	}

}