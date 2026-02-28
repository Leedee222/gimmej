// Make the text bigger so it looks cool
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white); // You can change this to c_yellow for Mario vibes

// Draw the Score (Coins)
draw_text(30, 30, "HEARTS: " + string(global.coins));

// Draw the Danger Dash Speed
draw_text(30, 60, "DASH SPEED: " + string(global.gamespeed));

// Optional: Draw the Jump Timer if power is active
if (oPlayer.is_super_jumping) {
    draw_text(30, 90, "SUPER POWER: " + string(round(oPlayer.jump_timer / 60)) + "s");
}