package com.rdf.core.ui 
{
	
	import flash.events.Event;
	import flash.events.TextEvent;
	import flash.text.AntiAliasType;
	import flash.text.StyleSheet;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import com.rdf.common.Ui;
	import com.rdf.core.AbstractUi;
	import com.rdf.core.AbstractUiEvents;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Text extends AbstractUi implements Ui
	{				
		//private var _content:TextField;
		private var _textfield:TextField;
		private var _textformat:TextFormat;
		
		public function Text(value:String, html:Boolean = false, style:StyleSheet = null) 
		{
			//this.label = value;
			//this.graphics.beginFill(0xCCCCCC, 0.5);
			//this.graphics.drawRect(0, 0, 25, 25);
			/**/
			
			this._textformat = new TextFormat();
			this._textformat.font = "Arial";
			this._textformat.size = 12;
			this._textformat.color = 0x000000;
			
			
			this._textfield = new TextField();
			this._textfield.embedFonts = true;
			this._textfield.defaultTextFormat = this._textformat;
			this._textfield.autoSize = TextFieldAutoSize.LEFT;
			
			
			this._textfield.antiAliasType =  AntiAliasType.ADVANCED;
			if (html)
			{
				this._textfield.multiline = true;
				this._textfield.wordWrap = true;
				this._textfield.styleSheet = style;
				this._textfield.htmlText = value as String;
			}else
			{
				this._textfield.text = value;
			}
			
			this.child = this._textfield;
			
			this._textfield.addEventListener(TextEvent.LINK, this.link);
			
			this.addEventListener(AbstractUiEvents.ADDED, this.added);
			this.addEventListener(AbstractUiEvents.CHANGE, this.change);
			this.addEventListener(AbstractUiEvents.REMOVED, this.removed);
			
			//this.addChild(this._content);
			//this.content = value;
			//trace(this.width);
			//this.addEventListener(Event.ADDED_TO_STAGE, this.added);
		}
		
		public function link(event:TextEvent):void 
		{
			trace(this + this.father.father.father);
		}
		
		public function added(event:*):void {
			this._textfield.width = this.father.width;
			
		}
		public function change(event:*):void {
			
		}
		public function removed(event:*):void {
			
		}
		
		/*public function set content(value:String):void {
			this._content.text = value;
		}
		public function get content():String {
			return this._content.text;
		}*/
	}
}