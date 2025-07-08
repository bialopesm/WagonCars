// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

// Auto-hide flash messages after 2 seconds
window.addEventListener('DOMContentLoaded', () => {
  setTimeout(() => {
    document.querySelectorAll('.alert').forEach((el) => {
      // Bootstrap 5: use 'fade' and 'show' classes for transition
      el.classList.remove('show');
      setTimeout(() => el.remove(), 150); // remove from DOM after fade
    });
  }, 2000);
});
