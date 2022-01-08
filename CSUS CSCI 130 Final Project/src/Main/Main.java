package Main;

import java.awt.Color;
import java.util.ArrayList;

import Data.Vector2D;
import Data.spriteInfo;
import logic.Control;
import timer.stopWatchX;
import java.util.Random;

public class Main {
	// Fields (Static) below...
	public static stopWatchX timer = new stopWatchX(50);

	// Vectors
	public static Vector2D currentVec = new Vector2D(600, 300); // vector for player/sprite
	public static Vector2D keyVec = new Vector2D(300, 200); // vector for key
	public static Vector2D chestVec = new Vector2D(900, 200); // vector for chest

	// ArrayLists
	// One for each direction + one to store the bounding boxes + level art
	public static ArrayList<spriteInfo> upSprites = new ArrayList<>();
	public static ArrayList<spriteInfo> downSprites = new ArrayList<>();
	public static ArrayList<spriteInfo> leftSprites = new ArrayList<>();
	public static ArrayList<spriteInfo> rightSprites = new ArrayList<>();
	public static ArrayList<BoundingBox> boundingBoxes = new ArrayList<>();
	public static ArrayList<spriteInfo> levelArt = new ArrayList<>();

	// PLAYABLE DIMENSIONS:
	// X: (57, 1219)
	// Y: (77, 567)

	// Create the bounding boxes
	public static BoundingBox leftWall = new BoundingBox(0, 57, 0, 567); // left wall
	public static BoundingBox rightWall = new BoundingBox(1219, 1280, 0, 567); // right wall
	public static BoundingBox topWall = new BoundingBox(0, 1280, 0, 77); // top wall
	public static BoundingBox bottomWallWithTextbox = new BoundingBox(0, 1280, 567, 800); // bottom wall + textbox
	public static BoundingBox playerBb = new BoundingBox(currentVec.getX(), currentVec.getX() + 128, currentVec.getY(),
			currentVec.getY() + 128); // Player box
	public static BoundingBox key = new BoundingBox(keyVec.getX(), keyVec.getX() + 62, keyVec.getY(),
			keyVec.getY() + 62); // key
	public static BoundingBox chest = new BoundingBox(chestVec.getX(), chestVec.getX() + 100, chestVec.getY(),
			chestVec.getY() + 100); // chest

	// Ints
	public static int currentSpriteIndex = 0; // keeps track of frame
	public static int keyXMax = 519; // X coord maximum for key
	public static int keyXMin = 57; // X coord minimum for key
	public static int chestXMax = 1119; // X coord maximum for chest
	public static int chestXMin = 630; // X coord minimum for chest
	public static int keyYMax = 505; // Y coord maximum for key
	public static int yMin = 77; // Y min for all objects
	public static int chestYMax = 467; // Y coord maximum for chest
	public static int playerXReplay = 600;
	public static int playerYMax = 439;
	public static int score = 0; // keeps track of score
	public static final int STEP_SIZE = 1; // movement size

	// create instance of Random class
	// needed for replay function to select random coords for the key and chest
	public static Random rand = new Random();

	// Strings
	public static String trigger = "stopped"; // keeps track of the action
	public static String direction = "up"; // keeps track of direction
	public static String textboxMessage = ""; // message displayed in the textbox

	// Booleans
	public static boolean isMoveableDown = true;
	public static boolean isMoveableUp = true;
	public static boolean isMoveableLeft = true;
	public static boolean isMoveableRight = true;
	public static boolean isKeyFound = false;
	public static boolean isFacingKey = false;
	public static boolean isFacingChest = false;
	public static boolean isReplay = false;

	// End Static fields...

	public static void main(String[] args) {
		Control ctrl = new Control(); // Do NOT remove!
		ctrl.gameLoop(); // Do NOT remove!
	}

	/* This is your access to things BEFORE the game loop starts */
	public static void start() {
		// Populate sprites
		for (int i = 0; i <= 32; i++) {
			if (i < 8) { // sprites index 0-7
				// System.out.println("I: " + i);
				upSprites.add(new spriteInfo("up" + i));
			} else if (i < 16) { // sprites index 8-15
				int counter = i - 8;
				// System.out.println("I: " + i);
				downSprites.add(new spriteInfo("down" + counter));
				counter++;
			} else if (i < 24) { // sprites index 16-23
				int counter = i - 8 * 2;
				// System.out.println("I: " + i);
				leftSprites.add(new spriteInfo("left" + counter));
				counter++;
			} else { // sprites index 24-31
				int counter = i - 8 * 3;
				// System.out.println("I: " + i);
				rightSprites.add(new spriteInfo("right" + counter));
				counter++;
			}
		}
		
		// Add level art into container
		levelArt.add(new spriteInfo(new Vector2D(0,0), "grass&textbox")); // background & textbox
		levelArt.add(new spriteInfo(new Vector2D(0,0), "wallBorder")); // wall border

		// Add bounding boxes into the ArrayList
		boundingBoxes.add(leftWall); // left wall
		boundingBoxes.add(rightWall); // right wall
		boundingBoxes.add(topWall); // top wall
		boundingBoxes.add(bottomWallWithTextbox); // bottom wall + textbox
		boundingBoxes.add(key); // key
		boundingBoxes.add(chest); // chest
		boundingBoxes.add(playerBb); // bottom wall + textbox

		// For testing/debugging
		/*
		 * for (int i = 0; i<8; i++) { System.out.println( "Up INDEX = " + i + " || " +
		 * upSprites.get(i).toString() ); } for (int i = 0; i<8; i++) {
		 * System.out.println( "Down INDEX = " + i + " || " +
		 * downSprites.get(i).toString() ); } for (int i = 0; i<8; i++) {
		 * System.out.println( "Left INDEX = " + i + " || " +
		 * leftSprites.get(i).toString() ); } for (int i = 0; i<8; i++) {
		 * System.out.println( "Right INDEX = " + i + " || " +
		 * rightSprites.get(i).toString() ); }
		 * 
		 * 
		 * for (int i = 0; i < boundingBoxes.size(); i++) { System.out.println("I: " + i
		 * + boundingBoxes.get(i).toString() ); }
		 */
	}

	/*
	 * This is your access to the "game loop" (It is a "callback" method from the
	 * Control class (do NOT modify that class!))
	 */
	// PLAYABLE DIMENSIONS:
	// X: (57, 1219)
	// Y: (77, 567)
	public static void update(Control ctrl) {
		// draws level art
		for (spriteInfo i : levelArt) {
			ctrl.addSpriteToFrontBuffer(i.getCoords().getX(), i.getCoords().getY(), i.getTag());
		}
		
		ctrl.addSpriteToFrontBuffer(keyVec.getX(), keyVec.getY(), "key"); // draws key
		ctrl.addSpriteToFrontBuffer(chestVec.getX(), chestVec.getY(), "chest"); // draws chest

		// For testing/debugging
		/*
		 * ctrl.drawString(currentVec.getX(), currentVec.getY(), currentVec.getX() +
		 * ", " + currentVec.getY(), Color.black); ctrl.drawString(keyVec.getX(),
		 * keyVec.getY(), keyVec.getX() + ", " + keyVec.getY(), Color.black);
		 * ctrl.drawString(chestVec.getX(), chestVec.getY(), chestVec.getX() + ", " +
		 * chestVec.getY(), Color.black);
		 */

		ctrl.drawString(1018, 680, "Inventory:", Color.black); // Inventory Header
		ctrl.drawString(670, 680, "Score: " + score, Color.black); // Score Header
		ctrl.drawString(70, 720, textboxMessage, Color.black); // Displays textbox message

		if (isReplay) // Once key and chest are found, ask player to replay
			ctrl.drawString(currentVec.getX(), currentVec.getY(), "Press the 'R' key to play again!", Color.red);

		// Constantly updates the bounding boxes for the player, key, and chest
		playerBb.updateBoundingBox(currentVec.getX() + 10, currentVec.getX() + 118, currentVec.getY() + 15,
				currentVec.getY() + 118);
		key.updateBoundingBox(keyVec.getX(), keyVec.getX() + 62, keyVec.getY(), keyVec.getY() + 62);
		chest.updateBoundingBox(chestVec.getX(), chestVec.getX() + 100, chestVec.getY(), chestVec.getY() + 100);

		// Checks for collision between player and any bounding boxes
		for (int i = 0; i < boundingBoxes.size()-1; i++) {
			if (playerBb.isCollided(boundingBoxes.get(i))) {
				if (playerBb.isCollided(key)) // if collision with key
					isFacingKey = true;
				else if (playerBb.isCollided(chest)) // if collision with chest
					isFacingChest = true;
				
				// stops movement in opposite direction of collision and push back one
				switch(direction) {
				case "up":
					isMoveableUp = false;
					currentVec.setY(currentVec.getY()+1);
					break;
				case "down":
					isMoveableDown = false;
					currentVec.setY(currentVec.getY()-1);
					break;
				case "left":
					isMoveableLeft = false;
					currentVec.setX(currentVec.getX()+1);
					break;
				case "right":
					isMoveableRight = false;
					currentVec.setX(currentVec.getX()-1);
					break;
				}
			}
			else { // if not collisions, make sure movement in all direction is enabled 
				isMoveableDown = true;
				isMoveableUp = true;
				isMoveableLeft = true;
				isMoveableRight = true;
			}
		}

		// Based on trigger, display the proper animation
		// !! Check keyProcessor.java as well !!
		// For WASD, reassign trigger to "stopped" so the character stops on key release
		switch (trigger) {
		case "a":
			frameManagement(7);
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(),
					leftSprites.get(currentSpriteIndex).getTag());
			trigger = "stopped";
			break;
		case "d":
			frameManagement(7);
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(),
					rightSprites.get(currentSpriteIndex).getTag());
			trigger = "stopped";
			break;
		case "w":
			frameManagement(7);
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(),
					upSprites.get(currentSpriteIndex).getTag());
			trigger = "stopped";
			break;
		case "s":
			frameManagement(7);
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(),
					downSprites.get(currentSpriteIndex).getTag());
			trigger = "stopped";
			break;
		case "stopped":
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(), direction + "0");
			break;
		case "spacebar": // Inspection trigger
			// checks if facing key & near key
			if (((currentVec.getX() == keyVec.getX() - 119) || (currentVec.getX() == keyVec.getX() + 53)
					|| (currentVec.getY() == keyVec.getY() - 119) || (currentVec.getY() == keyVec.getY() + 48))
					&& isFacingKey) {
				isKeyFound = true; // enables player to unlock key when true
				
				// draws key in player inventory
				keyVec.setX(1025);
				keyVec.setY(700);
				
				textboxMessage = "Key: Can be used to unlock something..."; // change textbox message
				isFacingKey = false; // reassign to false for replay function
			}
			
			// checks if facing chest
			if (((currentVec.getX() == chestVec.getX() - 119) || (currentVec.getX() == chestVec.getX() + 91)
					|| (currentVec.getY() == chestVec.getY() - 119) || (currentVec.getY() == chestVec.getY() + 86))
					&& isFacingChest) {
				if (isKeyFound) { // if key is found
					textboxMessage = "The Chest opened with the key!";
					
					//  draws chest in player inventory
					chestVec.setX(1115);
					chestVec.setY(675);
					
					// resets to false in case of replay
					isKeyFound = false;
					isFacingChest = false;
					
					isReplay = true; // enables replay once key and chest are found
					score++; // adds to player score
				} else { // displays message if the player hasnt found the key
					textboxMessage = "A Chest! Seems like it needs a key to unlock it...";
				}
			}
			// while inspecting object, make the sprite stop
			ctrl.addSpriteToFrontBuffer(currentVec.getX(), currentVec.getY(), direction + "0");
			trigger = "stopped";
			break;
		case "replay": // replay function !! check keyProcessor.java !!
			trigger = "stopped";
			break;
		}
	}

	// Additional Static methods below...(if needed)
	// Created a static method in case there were varying frame #s for various
	// animations
	// Example: walking left frames: 8
	//			walking up frames: 10
	public static void frameManagement(int higher) {
		if (timer.isTimeUp()) {
			// timer is for how long each frame is
			if (currentSpriteIndex >= (higher))
				currentSpriteIndex = 0;
			else
				currentSpriteIndex++;

			timer.resetWatch();
		}
	}

}
