trapeze_b_min=13;
trapeze_b_maj=19;
trapeze_h = 13;
trapeze_z_shift = 2;
trapeze_z_top = 18;
trapeze_z_bottom = 15;


module code(code) {
    translate([0,thick+trapeze_h/2,trapeze_z_bottom+thick])
    rotate([8,0,0])
    linear_extrude(height=2)
    text(
        code,
        /* font="Vecna", */
        font="MathJax_Typewriter",
                /* font="Stardos Stencil", */
        size=6,
        halign="center",
        valign="center"
    );
}

module trapeze() {
    translate([0, thick-fix, trapeze_z_bottom])

    hull() {

        translate([-trapeze_b_maj/2,trapeze_h-min_thick,thick-min_thick+trapeze_z_shift])
        cube([trapeze_b_maj,min_thick,min_thick]);

        translate([-trapeze_b_min/2,0,thick-min_thick])
        cube([trapeze_b_min,min_thick,min_thick]);

        translate([-trapeze_b_min/2,0,0])
        cube([trapeze_b_min,min_thick,min_thick]);
    }
}

module extension(length) {
    translate([-trapeze_b_min/2,thick-length,trapeze_z_bottom-head_z_bottom])
    cube([trapeze_b_min, length, thick]);

}

module extension_fine(length_tl, length_tr, length_bl, length_br) {
    translate([-trapeze_b_min/2,thick,trapeze_z_bottom-head_z_bottom])
    hull() {

        translate([0,-length_bl,0])
        cube([min_thick, length_bl, min_thick]);

        translate([trapeze_b_min-min_thick,-length_br,0])
        cube([min_thick, length_br, min_thick]);

        translate([0,-length_tl,thick-min_thick])
        cube([min_thick, length_tl, min_thick]);

        translate([trapeze_b_min-min_thick,-length_tr,thick-min_thick])
        cube([min_thick, length_tr, min_thick]);
    }

}
