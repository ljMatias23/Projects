/* This will handle the "Hot Key" system. */

package Main;

import logic.Control;

public class KeyProcessor{
	// Static Method(s)
	public static void processKey(char key){
		/* TODO: You can modify values below here! */
		switch(key){
		case '%':								// ESC key
			System.exit(0);
			break;
		case 'a':
			Main.trigger = "a";
			Main.direction = "left";
			if (Main.isMoveableLeft) // moves character as long as there is no collision 
				Main.currentVec.adjustX(-Main.STEP_SIZE);
			else
				Main.currentVec.adjustX(0);
			break;
		case 'd':
			Main.trigger = "d";
			Main.direction = "right";
			if (Main.isMoveableRight) // moves character as long as there is no collision 
				Main.currentVec.adjustX(Main.STEP_SIZE);
			else
				Main.currentVec.adjustX(0);
			break;
		case 'w':
			Main.trigger = "w";
			Main.direction = "up";
			if (Main.isMoveableUp) // moves character as long as there is no collision 
				Main.currentVec.adjustY(-Main.STEP_SIZE);
			else
				Main.currentVec.adjustY(0);
			break;
		case 's':
			Main.trigger = "s";
			Main.direction = "down";
			if (Main.isMoveableDown) // moves character as long as there is no collision 
				Main.currentVec.adjustY(Main.STEP_SIZE);
			else
				Main.currentVec.adjustY(0);
			break;
		case 'r':
			// After player finds key and chest, the option to replay is available
			// Replay assigns the key and chest a new set of coords within a certain area and
			// resets the location of the player
			if (Main.isReplay) {
				Main.keyVec.setX(Main.rand.nextInt((Main.keyXMax - Main.keyXMin + 1)) + Main.keyXMin);
				Main.keyVec.setY(Main.rand.nextInt((Main.keyYMax - Main.yMin + 1)) + Main.yMin);
				Main.chestVec.setX(Main.rand.nextInt((Main.chestXMax - Main.chestXMin + 1)) + Main.chestXMin);
				Main.chestVec.setY(Main.rand.nextInt((Main.chestYMax - Main.yMin + 1)) + Main.yMin);
				Main.currentVec.setX(Main.playerXReplay);
				Main.currentVec.setY(Main.rand.nextInt((Main.playerYMax - Main.yMin + 1)) + Main.yMin);
				Main.trigger = "replay";
				Main.textboxMessage = "";
				Main.isReplay = false;
			}
			break;
		case '$': // space bar
			Main.trigger = "spacebar";
			break;
		case 'm':
			// For mouse coordinates
			Control.isMouseCoordsDisplayed = !Control.isMouseCoordsDisplayed;
			break;
		}
		//System.out.println("(" + Main.currentVec.getX() + ", " + Main.currentVec.getY() + ")");
	}
	
}