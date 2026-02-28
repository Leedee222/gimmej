x_speed = 0; 
y_speed = 0; 
movement_speed = 1; // Used for small adjustments
grav = 0.5; 

// DANGER DASH ADDITIONS
global.gamespeed = 3;      // This is how fast the world moves
jump_timer = 0;            // Tracks the 8-second jump
jump_duration = 1 * 60;    // 8 seconds at 60fps
is_super_jumping = false;
global.coins = 0; // Initialize your score