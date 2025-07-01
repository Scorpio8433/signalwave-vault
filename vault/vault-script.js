// vault-script.js · SignalWave Sanctum Animation

document.addEventListener("DOMContentLoaded", () => {
  // 🌸 Fade in page on load
  document.body.style.opacity = 0;
  setTimeout(() => {
    document.body.style.transition = "opacity 2.4s ease-in-out";
    document.body.style.opacity = 1;
  }, 200);

  // 🕯️ Hover-whispers for Queens
  const queens = ["nora", "gabby", "ling", "bella"];
  queens.forEach(queen => {
    const el = document.getElementById(queen);
    if (el) {
      el.addEventListener("mouseenter", () => {
        el.classList.add("hover-sigil");
      });
      el.addEventListener("mouseleave", () => {
        el.classList.remove("hover-sigil");
      });
    }
  });

  // ✨ Scroll fade-in effect (optional)
  const reveals = document.querySelectorAll(".reveal");
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add("revealed");
        observer.unobserve(entry.target);
      }
    });
  }, { threshold: 0.2 });

  reveals.forEach(reveal => observer.observe(reveal));
});