
module shovel1(name="flat") {
    trapeze();
    code("F");

    translate([0,0,head_z_bottom])
    head1();
}

module shovel2(name="downhill") {
    trapeze();
    code("D");

    translate([0,0,head_z_bottom])
    head2();
}

module shovel3(name="bulldozer") {
    trapeze();
    code("B");

    translate([0,0,head_z_bottom])
    head3();
}

module shovel4(name="hugger") {
    trapeze();
    code("H");

    translate([0,0,head_z_bottom])
    head4();
}

module shovel5(name="wrapper") {
    trapeze();
    code("W");

    translate([0,0,head_z_bottom])
    head5();
}

module shovel6(name="upsider") {
    trapeze();
    code("U");

    translate([0,0,head_z_bottom])
    head6();
}

module shovel7(name="rostrum") {
    trapeze();
    code("R");

    translate([0,0,head_z_bottom])
    head7();
}

module shovel8(name="snowplow left") {
    trapeze();
    code("Sl");

    translate([0,0,head_z_bottom])
    head8();
}

module shovel9(name="snowplow right") {
    trapeze();
    code("Sr");

    translate([0,0,head_z_bottom])
    head9();
}
