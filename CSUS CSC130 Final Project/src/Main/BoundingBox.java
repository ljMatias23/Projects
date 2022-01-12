package Main;

public class BoundingBox {
	// Static Fields
	private int leftX, rightX, topY, bottomY;
	
	//Constructor
	public BoundingBox(int leftX, int rightX, int topY, int bottomY) {
		this.leftX = leftX;
		this.rightX = rightX;
		this.topY = topY;
		this.bottomY = bottomY;
	}

	public int getLeftX() {
		return leftX;
	}

	public void setLeftX(int leftX) {
		this.leftX = leftX;
	}

	public int getRightX() {
		return rightX;
	}

	public void setRightX(int rightX) {
		this.rightX = rightX;
	}

	public int getTopY() {
		return topY;
	}

	public void setTopY(int topY) {
		this.topY = topY;
	}

	public int getBottomY() {
		return bottomY;
	}

	public void setBottomY(int bottomY) {
		this.bottomY = bottomY;
	}
	
	// Checks for collision between two bounding boxes
	public boolean isCollided(BoundingBox obj2) {
		if (this.getLeftX() > obj2.getRightX()) {
			return false;
		}
		else if (this.getRightX() < obj2.getLeftX()) {
			return false;
		}
		else if (this.getTopY() > obj2.getBottomY()) {
			return false;
		}
		else if (this.getBottomY() < obj2.getTopY()) {
			return false;
		}
		else
			return true;
	}
	
	// updates all coords of a bounding box in one method, rather than 4 separate method calls
	public void updateBoundingBox( int leftX, int rightX, int topY, int bottomY) {
		this.setLeftX(leftX);
		this.setRightX(rightX);
		this.setTopY(topY);
		this.setBottomY(bottomY);
	}

	@Override
	public String toString() {
		return "BoundingBox [leftX=" + leftX + ", rightX=" + rightX + ", topY=" + topY + ", bottomY=" + bottomY + "]";
	}
	
	
}
