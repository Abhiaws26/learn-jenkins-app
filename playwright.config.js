const expectedAppVersion = '1.0.0';  // Define the expected version

test('has expected app version', async ({ page }) => {
  // Navigate to your app page
  await page.goto('your-app-url');  // Make sure to replace with your actual URL

  // Wait for the app version element to be visible
  const versionSelector = `p:has-text("Application version: ${expectedAppVersion}")`;
  await page.waitForSelector(versionSelector, { state: 'visible' });

  // Check if the app version is visible
  const isVisible = await page.locator(versionSelector).isVisible();
  expect(isVisible).toBeTruthy();
});
