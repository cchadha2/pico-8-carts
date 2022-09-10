pico-8 cartridge // http://www.pico-8.com
version 36
__lua__

pos = {}

function _init()
 --pos.me_x = 64
 --pos.me_y = 64
	pos.me_w = 0
	pos.me_s = 1
end

function _draw()
	cls()
	spr_r(pos.me_s,
					  48,
					  48,
					  pos.me_w,
					  6,
					  9)
end

function _update()
 if btnp(0) then 
		--pos.me_x -= 1 
		pos.me_w -= 10 
	end

	if btnp(1) then 
		--pos.me_x += 1 
		pos.me_w += 10 
	end

 if btnp(2) then pos.me_y-=1 end
 if btnp(3) then pos.me_y+=1 end

	pos.me_w = pos.me_w % 360
end

function spr_r(s,x,y,a,w,h)
 sw=(w or 1)*8
 sh=(h or 1)*8
 sx=(s%8)*8
 sy=flr(s/8)*8
 x0=flr(0.5*sw)
 y0=flr(0.5*sh)
 a=a/360
 sa=sin(a)
 ca=cos(a)
 for ix=0,sw-1 do
  for iy=0,sh-1 do
   dx=ix-x0
   dy=iy-y0
   xx=flr(dx*ca-dy*sa+x0)
   yy=flr(dx*sa+dy*ca+y0)
   if (xx>=0
						 and xx<sw
							and yy>=0
							and yy<=sh) then
    pset(x+ix,y+iy,
									sget(sx+xx,sy+yy))
   end
  end
 end
end



__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00aaaa00000000000000000000000000000000000000000000000000000660000000000000000000000000000000000000066000000660000000000000000000
0aa22aa0000000000000000000000000000000000000000000000000006666000000000000000000000000000000000000666600006666000002200000000000
0a2aa2a00000000000000000000000000000000000000000000000000cccccc0000000000000000000000000000000000cccccc00cccccc0002aa20000000000
0a2aa2a0000000000000000000000000000000000000000000000000cccccccc00000000000000000000000000000000cccccccccccccccc002aa20000000000
0aa22aa0000000000000000000000000000000000000000000000000cc0cc0cc00000000000000000000000000000000ccaccaccccaccacc0002200000000000
00aaaa00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a00a0000a00a000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009009000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000999999999999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000999999999999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000999999999999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000099999999999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000999999999990000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000099999900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000000000000000000000e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000e0000000000000000000000000000000e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000e0000000000000000000e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000e0000000000000000000000000e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000e00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
