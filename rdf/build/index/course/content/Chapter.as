package com.rdf.build.index.course.content 
{
	import com.rdf.build.index.ui.Vinculo;
	import com.rdf.core.ui.Block;
	import com.rdf.build.index.course.content.chapter.Header;
	import com.rdf.build.index.course.content.chapter.Body;
	import com.rdf.core.ui.Text;
	import flash.display.MovieClip;
	import flash.text.StyleSheet;
	
	import flash.events.Event;
	import flash.events.MouseEvent;

	import com.rdf.core.ui.interfaces.Scroller;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Chapter extends Block 
	{
		//public var scroller:Scroller;
		//public var name:Name;
		public var title:String;
		public var content:*;
		
		public function Chapter() 
		{
			//this.title = new Header();
			
			this.alpha = 0;
			this.tween = { alpha: 1, paused: true };
			
			//this.scroller = new Scroller(100, 100, new Paragraph("Javier Jaimes esta en el scroll..."));
			//this.addChild(this.scroller);
			/*trace("Hola content...");
			this.addChild(this.scroller);*/
			
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0xffffff, 0.5);
			this.graphics.drawRect(0, 0, this.father.width - 20, this.father.height - 20);
			
			this.x = (this.father.width - this.width) / 2;
			this.y = (this.father.height - this.height) / 2;
			
			//trace(this + ": width " + this.father.father.father);
			
			
			if (this.father.father.father.chapter) 
			{
				
				this.title = this.father.father.father.chapters[this.father.father.father.chapter - 1].title.text();
				
				
				this.content = new Text(this.father.father.father.chapters[this.father.father.father.chapter - 1].content.text(), true, this.father.styles);
				trace(this + ": current chapter is one..." + this.title);
			}else 
			{
				this.title = "Indice de contenidos";
				this.content = new Block();
				var link:Vinculo;
				
				for (var i:String in this.father.father.father.chapters) {
					//trace(this.father.data.units[i].title.text());
					link = new Vinculo(this.father.father.father.chapters[i].title.text());
					link.index = int(i) + 1;
					//element.name = i;
					link.y = (link.height + 2) * int(i);
					//trace(this + " El ancho de cada nodo es: " + chapter.width);
					content.child = link;
				}
				
			}
			
			this.child = new Header();
			this.child = new Body();
			
			this.tween.duration = 2;
			this.tween.play();
			//this.child = new Chapter("Hola mundo...");
			//trace(this + ": " + this.father.child[0]);
			//this.graphics.beginFill(0x000000, 0);
			//this.graphics.drawRect(0, 0, this.father.width, this.father.height - 50);
			
			//initialize position
			/*this.y = this.father.child[0].height;
			
			var block:Block = new Block();
			//this.src = this.father.source.data.units;
			
			
			this.child = new Scroller(this.width, this.height, block);
			*/
			//trace(this + ": " +  this.father.father.father.stage.stageWidth);
		}
		
		override public function removed(event:*):void 
		{
			this.tween = { alpha: 0, onComplete: this.father.clean, onCompleteParams: [this]};
		}
	}

}