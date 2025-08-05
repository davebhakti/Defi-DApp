import Debug "mo:base/Debug";

actor DBack {
  var currentValue = 300;
  currentValue := 100;

  let id = 1234567890;

  Debug.print(debug_show(currentValue));
}