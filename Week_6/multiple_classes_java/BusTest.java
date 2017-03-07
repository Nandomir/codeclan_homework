import static org.junit.Assert.assertEquals;
import org.junit.*;

public class BusTest {

Bus bus;   
Passenger person;
BusStop stop;



@Before
public void before() {
  bus = new Bus (10);
  person = new Passenger();
  stop = new BusStop();
}



@Test
public void hasNumber() {
  assertEquals(10, bus.getNumber());
}

@Test
public void busStartsEmpty() {
  assertEquals(0, bus.countPassengers());
}

@Test
public void canAddPassengers() {
  bus.add(person);
  assertEquals(1, bus.countPassengers());
}

@Test
public void isBusFull() {
  for (int i = 0; i < 20; i++) {
    bus.add(person);
  }
  assertEquals(true, bus.isBusFull());
}

@Test
public void passengerTookOff() {
  bus.add(person);
  bus.
}
  
}