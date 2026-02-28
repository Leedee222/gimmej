// 1. Increase the score
global.coins += 1;

// 2. Mario-style sound/visual effect
image_blend = c_yellow; // Flash yellow when you grab it
alarm[1] = 5; // Set an alarm to change the color back to white

// 3. Danger Dash Speed Boost
// Every time you get a coin, the game gets a tiny bit faster!
global.gamespeed += 0.1;

// 4. Destroy the coin so it disappears
instance_destroy(other);