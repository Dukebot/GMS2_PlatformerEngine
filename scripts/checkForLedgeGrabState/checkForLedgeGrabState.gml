var falling = isFalling();
var wasntWall = not position_meeting(x + grabWidth * image_xscale, yprevious, oSolid);
var isWall = position_meeting(x + grabWidth * image_xscale, y, oSolid);

return falling and wasntWall and isWall;