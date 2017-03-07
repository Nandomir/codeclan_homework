//instance variables
public class Bus {
  private int number;
  private Passenger[] bus_capacity;
  private BusStop[] stop_capacity;


// constructor
  public Bus(int number){
    this.number = number;
    this.bus_capacity = new Passenger[20];
    this.stop_capacity = new BusStop[20];
  }


// calling methods
  public int getNumber() {
    return this.number;
  }


  public int countPassengers() {
    int count = 0;

    for (Passenger passenger : bus_capacity) {
      if (passenger != null) {
        count++;
      }
    }
    return count;
  }


  public void add(Passenger person) {
    if (isBusFull()) {
      return;
    }

    int index = this.countPassengers();
    bus_capacity[index] = person;
  }

  public boolean isBusFull() {
    return countPassengers() == bus_capacity.length;
  }
}