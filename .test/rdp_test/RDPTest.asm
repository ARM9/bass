arch n64.rdp
output "RDPTest.n64", create
endian msb

// RDP Commands:
No_Op

ZBuffer_Coefficients 1,2, 3,4, 5,6, 7,8 // z,zf, dzdx,dzdxf, dzde,dzdef, dzdy,dzdyf

Texture_Rectangle 1,2, 3, 4,5, 6,7, 8,9 // xl,yl, tile, xh,yh, s,t, dsdx,dtdy
Texture_Rectangle_Flip 1,2, 3, 4,5, 6,7, 8,9 // xl,yl, tile, xh,yh, s,t, dsdx,dtdy

Sync_Load
Sync_Pipe
Sync_Tile
Sync_Full

Set_Key_GB 1,2, 3,4, 5,6 // wg,wb, cg,sg, cb,sb
Set_Key_R 1,2,3 // wr,cr,sr
Set_Convert 1,2,3,4,5,6 // k0,k1,k2,k3,k4,k5
Set_Scissor 1,2, 1,1, 3,4 // xh,yh, f,o, xl,yl
Set_Prim_Depth 1,2 // pz,pdz

Load_Tlut 1,2, 3, 4,5 // sl,tl, tile, sh,th
Set_Tile_Size 1,2, 3, 4,5 // sl,tl, tile, sh,th
Load_Block 1,2, 3, 4,5 // sl,tl, tile, sh,dxt
Load_Tile 1,2, 3, 4,5 // sl,tl, tile, sh,th

Fill_Rectangle 1,2, 3,4 // xl,yl, xh,yh
Set_Fill_Color $FFEEDDCC // packed fill color
Set_Fog_Color $FFEEDDCC // fog color
Set_Blend_Color $FFEEDDCC // blend color
Set_Prim_Color 1,2, $FFEEDDCC // min level,level fractional, primitive color
Set_Env_Color $FFEEDDCC // environment color
Set_Combine_Mode 15,31, 7,7, 15,31, 15,15, 7,7, 7,7,7, 7,7,7 // sub_aR0,mulR0, sub_aA0,mulA0, sub_aR1,mulR1, sub_bR0,sub_bR1, sub_aA1,mulA1, addR0,sub_bA0,addA0, addR1,sub_bA1,addA1
Set_Texture_Image 1,2,3, $FFEEDDCC // format,size,width, dram base
Set_Z_Image $FFEEDDCC // dram base
Set_Color_Image 1,2,3, $FFEEDDCC // format,size,width, dram base