include <modules/all.scad>

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


/* for (i=[1:9]) {
    translate([50*i,0,0])
    shovel(i);
} */

shovel(1);
