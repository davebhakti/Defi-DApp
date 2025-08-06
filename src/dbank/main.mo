import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Float "mo:base/Float";
import Float "mo:base/Float";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBack {
  stable var currentValue: Float = 300;
  currentValue := 100;

  stable var startTime = Time.now();
  startTime:= Time.now();
  Debug.print(debug_show(startTime));

  let id = 1234567890;

  public func topUp(amount: Float) {
    currentValue += amount;
    Debug.print(debug_show(currentValue));
  };

  public func withdraw(amount: Float) {
    let tempValue: Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Amount is too large, currentValue is less than zero.");
    }
  };

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compund() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElaspedNS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsed));
    startTime := currenTime;
  }
}

