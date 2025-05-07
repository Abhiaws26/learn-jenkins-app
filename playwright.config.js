// playwright.config.js
import { defineConfig } from '@playwright/test';

export default defineConfig({
  testDir: './tests', // or './e2e', if that's where your test files are
  timeout: 30000,
  use: {
    headless: true,
    baseURL: 'http://localhost:3000', // Update this if needed
  },
});
