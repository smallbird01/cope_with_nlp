#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; 设置屏幕范围
SysGet, VirtualHeight, 79
SysGet, VirtualWidth, 78
; 设置鼠标移动速度
SetDefaultMouseSpeed, 1


#z::
  ; 其中PicPath,图片物理地址
  Send, {Click 672 309 left}
  MouseMove, 211, 212
  findPic:=isPic(ImageFilePathMy:=PicPath, clickNum:=0, colorR:=80, Width:=1431,  Height:=358,  sysRes:=0)
  if findPic{
      ; MsgBox, nihao
      }
  Else{
      Sleep, 1500
      Send, {Click 1380 345 left} 
      ;
    }
 Return
