// 1. DANGER DASH SPEED (The game gets faster over time)
global.gamespeed += 0.001;

// 2. HORIZONTAL MOVEMENT (Small Mario-style adjustments)
x_speed = 0;
if keyboard_check(vk_right) x_speed = movement_speed; 
if keyboard_check(vk_left)  x_speed = -movement_speed;

// 3. THE 8-SECOND POWER JUMP
// Check if on ground (oSolid) to start a jump
if (place_meeting(x, y + 1, oSolid)) {
    if (keyboard_check_pressed(vk_up)) { 
        y_speed = -10; 
        is_super_jumping = true;
        jump_timer = jump_duration; // Trigger the 8 seconds
    } else {
        y_speed = 0;
        is_super_jumping = false;
    }
} else {
    // If in the air and the timer is active, defy gravity!
    if (is_super_jumping && jump_timer > 0) {
        y_speed = -0.2; // Floating effect
        jump_timer -= 1;
        
        // GRAPHICS ENHANCEMENT
        image_yscale = 0.7;   // Squish for speed
        image_blend = c_aqua; // Turn blue/glowing
    } else {
        y_speed += grav;      // Normal Mario gravity
        image_yscale = 1;
        image_blend = c_white;
    }
}

// 4. COLLISIONS & MOVEMENT
move_and_collide(x_speed, y_speed, oSolid);

// 5. THE DEATH LOOP (Spikes)
if (place_meeting(x, y, Object3)) {
    room_restart();
}

// 6. SPRITE FLIPPING
if (x_speed > 0) image_xscale = -1;
if (x_speed < 0) image_xscale = 1;