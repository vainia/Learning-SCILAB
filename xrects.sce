clf//erase window
plot2d([-100,500],[-50,50],[0])//block around plot
cols=[-9,-33,-32,-20:5:20,32,33,9];//colors
x=400*(0:14)/14;/*OX axis positions of each brick*/step=20;//size of bricks
rects=[x;10*ones(x)/*OY axis positions of each brick top*/;step*ones(x);30*ones(x)]/*
indent from top by OY axis of each brick*/;
xrects(rects,cols)//create multiple amount of bricks with color fill
xnumb(x/*OX axis position*/,15*ones(x)/*OY axis position*/,cols/*info*/)//createLabels
