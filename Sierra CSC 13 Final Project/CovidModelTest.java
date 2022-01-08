import static org.junit.Assert.*;
import org.junit.Test;
import java.time.LocalDate;
import java.util.*;

public class CovidModelTest{
	@Test
	public void testValidState(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		assertEquals(true, c.getWx(state, date));
	}

	@Test
	public void testInvalidState(){
		CovidModel c = new CovidModel();
		String state = "Denmark";
		LocalDate date = LocalDate.parse("2020-05-01");
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testValidDate(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		assertEquals(true, c.getWx(state, date));
	}

	@Test
	public void testInvalidDatePast(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2019-05-01");
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testInvalidDateFuture(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2030-05-01");
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testGetTotalPos(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		c.getWx(state, date);
		assertTrue( Integer.parseInt(c.getTotPos()) >= 0 );
	}

	@Test
	public void testGetIncreasePos(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		c.getWx(state, date);
		assertTrue( Integer.parseInt(c.getIncPos()) >= 0 );
	}

	@Test
	public void testGetTotalNeg(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		c.getWx(state, date);
		assertTrue( Integer.parseInt(c.getTotNeg()) >= 0 );
	}

	@Test
	public void testGetIncreaseNeg(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = LocalDate.parse("2020-05-01");
		c.getWx(state, date);
		assertTrue( Integer.parseInt(c.getIncNeg()) >= 0 );
	}

	@Test
	public void testNoState(){
		CovidModel c = new CovidModel();
		String state = "";
		LocalDate date = LocalDate.parse("2019-05-01");
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testNoDate(){
		CovidModel c = new CovidModel();
		String state = "California";
		LocalDate date = null;
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testNoData(){
		CovidModel c = new CovidModel();
		String state = "";
		LocalDate date = null;
		assertEquals(false, c.getWx(state, date));
	}

	@Test
	public void testNoValidData(){
		CovidModel c = new CovidModel();
		String state = "Denmark";
		LocalDate date = LocalDate.parse("2019-05-01");
		assertEquals(false, c.getWx(state, date));
	}
}