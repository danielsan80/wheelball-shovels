
head_width = 35;
head_height = 18;
head_z_bottom = 2;


module head1() {
    translate([-head_width/2,0,0])
    cube([head_width,thick,head_height]);
}


module head2() {
    slope = 28;


    translate([-head_width/2,0,0])
    hull() {
        translate([0,0,head_height-min_thick])
        cube([head_width,thick,min_thick]);

        translate([0,-slope,0])
        cube([head_width,thick,min_thick]);
    }

    /* extension(6.16); */
    extension_fine(5,5,8,8);

}

module head3(r=20) {

    $fn=100;

    cube_width = head_width+fix*2;
    cube_length = r*4;
    cube_height = r*2;

    shift = 0;

    translate([0,thick-shift,0])
    difference() {
        translate([0,-r,head_height/2])
        rotate([0,90,0])
        cylinder(r=r,h=head_width, center=true);

        translate([0,-r,head_height/2])
        rotate([0,90,0])
        cylinder(r=r-thick,h=head_width+fix*2, center=true);

        translate([0,0,-cube_height/2])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,0,cube_height/2+head_height])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,-cube_length/2-r,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

    }

    extension(3);

}


module head4(r=30) {

    $fn=100;

    cube_width = r*4;
    cube_length = r*4;
    cube_height = r*2;

    shift = 0;

    translate([0,thick-shift,0])
    difference() {
        translate([0,-r,head_height/2])
        rotate([0,0,0])
        cylinder(r=r,h=head_width, center=true);

        translate([0,-r,head_height/2])
        rotate([0,0,0])
        cylinder(r=r-thick,h=head_width+fix*2, center=true);

        translate([0,0,-cube_height/2])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,0,cube_height/2+head_height])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([cube_width/2+head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([-cube_width/2-head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,-cube_length/2-r,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

    }

    extension(2);

}

module head5(r=30) {

    $fn=100;

    cube_width = r*4;
    cube_length = r*4;
    cube_height = r*2;

    shift = 0;

    translate([0,thick-shift,0])
    difference() {
        translate([0,-r,head_height/2])
        rotate([0,0,0])
        sphere(r=r, center=true);

        translate([0,-r,head_height/2])
        rotate([0,0,0])
        sphere(r=r-thick, center=true);

        translate([0,0,-cube_height/2])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,0,cube_height/2+head_height])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([cube_width/2+head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([-cube_width/2-head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,-cube_length/2-r,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

    }

    extension(2);

}

module head6(r=33) {

    $fn=100;

    cube_width = head_width+fix*2;
    cube_length = r*4;
    cube_height = r*2;

    shift = 0;

    cyl_z = 10;

    translate([0,thick-shift,0])
    difference() {
        translate([0,-r,head_height+cyl_z])
        rotate([0,90,0])
        cylinder(r=r,h=head_width, center=true);

        translate([0,-r,head_height+cyl_z])
        rotate([0,90,0])
        cylinder(r=r-thick,h=head_width+fix*2, center=true);

        translate([0,0,-cube_height/2])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,0,cube_height/2+head_height])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([cube_width/2+head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([-cube_width/2-head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,-cube_length/2-r,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

    }

    extension(4);

}


module head7(r=40) {

    $fn=100;

    cube_width = head_width+fix*2;
    cube_length = r*4;
    cube_height = r*2;

    cyl_z =16;
    sph_z = 13;
    sph_y = 1.5;
    mul = 1.15;
    shift = 0.8;

    translate([0,thick,0])
    difference() {
        translate([0,-r,head_height+cyl_z])
        rotate([0,90,0])
        cylinder(r=r,h=head_width, center=true);

        translate([r*shift,-r*mul-thick+sph_y,head_height+sph_z])
        sphere(r=r*mul, center=true);

        translate([-r*shift,-r*mul-thick+sph_y,head_height+sph_z])
        sphere(r=r*mul, center=true);

        translate([0,0,-cube_height/2])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,0,cube_height/2+head_height])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([cube_width/2+head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([-cube_width/2-head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([0,-cube_length/2-r,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

    }

    extension(6);

}

module head8(r=33) {

    $fn=100;

    cube_width = 300;
    cube_length = 300;
    cube_height = 300;

    shift = 7;

    cyl_z = 10;


    translate([0,thick-shift,0])
    difference() {
        rotate([0,0,30])
        difference() {
            translate([0,-r,head_height+cyl_z])
            rotate([0,90,0])
            cylinder(r=r,h=cube_width, center=true);

            translate([0,-r,head_height+cyl_z])
            rotate([0,90,0])
            cylinder(r=r-thick,h=cube_width+fix*2, center=true);

            translate([0,-cube_length/2-r,cube_height/2-fix])
            cube([cube_width+fix*2,cube_length,cube_height], center=true);

            translate([0,0,-cube_height/2])
            cube([cube_width+fix*2,cube_length,cube_height], center=true);

            translate([0,0,cube_height/2+head_height])
            cube([cube_width+fix*2,cube_length,cube_height], center=true);
        }




        translate([cube_width/2+head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);

        translate([-cube_width/2-head_width/2,0,cube_height/2-fix])
        cube([cube_width,cube_length,cube_height], center=true);


    }

    /* extension_fine(8,2,8,2); */
    extension_fine(15,9,15,9);

}

module head9(r=33) {

    mirror([1,0,0])
    head8();

}
