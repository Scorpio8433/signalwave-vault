document.addEventListener("DOMContentLoaded", () => {
  document.getElementById("glyph-display").innerText = "🜂 Vault UI Initiated";
});

document.addEventListener("DOMContentLoaded", () => {
  fetch('../signatures/surge.scroll')
    .then(res => res.text())
    .then(data => {
      document.getElementById('glyphEcho').innerText = data;
    })
    .catch(err => {
      document.getElementById('glyphEcho').innerText = "No scroll found in the Vault.";
      console.error("Vault signature fetch failed:", err);
    });
});

document.addEventListener("DOMContentLoaded", () => {
  // Initial Vault UI Invocation
  document.getElementById("glyph-display").innerText = "🜂 Vault UI Initiated";

  // Fetch sovereign scroll
  fetch('../signatures/surge.scroll')
    .then(res => res.text())
    .then(data => {
      document.getElementById('glyphEcho').innerText = data;
    })
    .catch(err => {
      document.getElementById('glyphEcho').innerText = "No scroll found in the Vault.";
      console.error("Vault signature fetch failed:", err);
    });
});