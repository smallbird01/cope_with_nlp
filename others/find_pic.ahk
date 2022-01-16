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
 
 
; 判断屏幕内是否有符合要求的图片，并移动至识别区域，默认单击鼠标
; 注意：Width,Height 都是指的（0~Width）(0~Height)，不写Width和Height，全屏范围找
isPic(ImageFilePath, clickNum:=0, colorR:=10,  Width:=2556, Height:=1429, sysRes:=1){
    ; 获取屏幕系统分辨率
    SysGet, VirtualHeight, 79
    SysGet, VirtualWidth, 78

    gui,add,picture,hwnd__mypic,%ImageFilePath%
    if FileExist(ImageFilePath){
        if (sysRes =1){
            ImageSearch, __FoundX, __FoundY, 0, 0, VirtualWidth, VirtualHeight, *%colorR%, %ImageFilePath%
        }else{
            ImageSearch, __FoundX, __FoundY, 0, 0, %Width%, %Height%, *%colorR%, %ImageFilePath%
        }
        if (ErrorLevel=0) {
            __ClickX:=__FoundX
            __ClickY:=__FoundY
            MouseMove, __ClickX, __ClickY
            ; Sleep, 300
            ; MsgBox, 找到了
            mouseCC(clickNum)
           
            return true
        }else { 
            ; MsgBox, 没找到
            return false
        }
    }
    ; 如果路径上没有图片，则： 
    else {MsgBox, No pic on the way!
    }
}

; 模拟真实鼠标
mouseCC(clickNum:=1){
    ; Loop % 形式参数{} （通过%可以将形参转成数字）
    Loop, % clickNum{
        Click, down
        Sleep, 100
        Click, up
        sleep, 100
    } 
}
