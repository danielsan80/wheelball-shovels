thick = 2.5;
min_thick = 0.3;
fix = 0.1;
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


module shovel1() {
    trapeze();
    code("1");

    translate([0,0,head_z_bottom])
    head1();
}

module shovel2() {
    trapeze();
    code("2");

    translate([0,0,head_z_bottom])
    head2();
}

module shovel3() {
    trapeze();
    code("3");

    translate([0,0,head_z_bottom])
    head3();
}

module shovel4() {
    trapeze();
    code("4");

    translate([0,0,head_z_bottom])
    head4();
}

module shovel5() {
    trapeze();
    code("5");

    translate([0,0,head_z_bottom])
    head5();
}

module shovel6() {
    trapeze();
    code("6");

    translate([0,0,head_z_bottom])
    head6();
}

module shovel7() {
    trapeze();
    code("7");

    translate([0,0,head_z_bottom])
    head7();
}

module shovel8() {
    trapeze();
    code("8");

    translate([0,0,head_z_bottom])
    head8();
}

module shovel9() {
    trapeze();
    code("9");

    translate([0,0,head_z_bottom])
    head9();
}






module shovel(i=1) {
    if (i==1)
        shovel1();
    if (i==2)
        shovel2();
    if (i==3)
        shovel3();
    if (i==4)
        shovel4();
    if (i==5)
        shovel5();
    if (i==6)
        shovel6();
    if (i==7)
        shovel7();
    if (i==8)
        shovel8();
    if (i==9)
        shovel9();
}


for (i=[1:9]) {
    translate([50*i,0,0])
    shovel(i);

}
