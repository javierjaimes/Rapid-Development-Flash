package com.rdf.core.ui 
{
	
	import com.rdf.core.AbstractUiEvents;
	import flash.text.TextField;
	import flash.utils.getDefinitionByName;	
	
	import com.rdf.common.Ui;
	import com.rdf.core.AbstractEvents;
	import com.rdf.core.AbstractUi;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Block extends AbstractUi implements Ui
	{
		//public var label:TextField;
		public function Block() 
		{
			this.addEventListener(AbstractUiEvents.ADDED, this.added);
			this.addEventListener(AbstractUiEvents.CHANGE, this.change);
			this.addEventListener(AbstractUiEvents.REMOVED, this.removed);
			//this.addEventListener(AbstractEvents.CHANGE, this.change);
		}
		public function added(event:*):void {
			
		}
		public function change(event:*):void {
			/*if (this.numChildren)
				this.removeChild(this.getChildAt(0));
				
			var instance:Class = getDefinitionByName(rdf.current.anchors[rdf.current.anchor]) as Class;
			rdf.current.current = new instance();
			//trace(this.application.current.current);
			this.addChild(rdf.current.current);*/
		}
		public function removed(event:*):void {
			
		}
	}
}