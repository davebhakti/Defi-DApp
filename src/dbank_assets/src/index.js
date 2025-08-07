import { dbank } from "../../declarations/dbank";

window.addEventListener("load", async function () {
  try {
    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText =
      Math.round(currentAmount * 100) / 100;
  } catch (err) {
    console.error("checkBalance failed:", err);
  }
});

document.querySelector("form").addEventListener("submit", async function(event) {
    event.preventDefault();
    //console.log("SUbmitted");
    const inputAmount = parseFloat(document.getElementById("input-amount").value);
    const outputAmount = parseFloat(document.getElementById("withdrawl-amount").value);

    await dbank.topUp(inputAmount);

    const currentAmount = await dbank.checkBalance();
    document.getElementById("value").innerText = Math.round(currentAmount + 100) / 100;
});