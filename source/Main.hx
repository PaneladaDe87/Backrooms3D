package;

import openfl.display.Sprite;
import openfl.events.Event;

class Main extends Sprite {
    public function new() {
        super();
        this.addEventListener(Event.ADDED_TO_STAGE, this.onAddedToStage);
    }

    private function onAddedToStage(event:Event):Void {
        var helloWorld:TextField = new TextField();
        helloWorld.text = "Hello, World!";
        this.addChild(helloWorld);
    }
}
