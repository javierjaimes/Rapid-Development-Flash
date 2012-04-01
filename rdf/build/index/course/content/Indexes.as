package com.rdf.build.index.course.content 
{
	import com.rdf.core.ui.Block;
	import com.rdf.build.index.course.content.chapter.Body;
	import com.rdf.build.index.course.content.chapter.Header;
	import com.rdf.build.index.ui.Vinculo;
	
	/**
	 * ...
	 * @author Javier Jaimes
	 */
	public class Indexes extends Chapter 
	{
		
		public function Indexes() 
		{
		
		}
		
		override public function added(event:*):void 
		{
			this.graphics.beginFill(0xffffff, 0.5);
			this.graphics.drawRect(0, 0, this.father.width - 20, this.father.height - 20);
			
			this.x = (this.father.width - this.width) / 2;
			this.y = (this.father.height - this.height) / 2;
			
			//trace(this + ": width " + this.father.father.father);
			
			this.title = "Indice de contenidos";
			this.content = new Block();
			var link:Vinculo;
			
			trace(this + ": probando "+ this.father.father.father);
			
			for (var i:String in this.father.father.father.chapters) {
				//trace(this.father.data.units[i].title.text());
				trace(this.father.father.father.chapters[i].title.text() + "HOla mundo...");
				
				link = new Vinculo(this.father.father.father.chapters[i].title.text());
				link.index = int(i) + 1;
				//element.name = i;
				link.y = (link.height + 2) * int(i);
				//trace(this + " El ancho de cada nodo es: " + chapter.width);
				content.child = link;
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
		
	}

}