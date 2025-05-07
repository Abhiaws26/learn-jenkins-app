import { test, expect } from '@playwright/test';

test('has Jenkins in the body', async ({ page }) => {
  await page.goto('http://localhost:3000');
  const isVisible = await page.locator('a:has-text("Learn Jenkins on Udemy")').isVisible();
  expect(isVisible).toBeTruthy();
});
