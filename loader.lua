local function a()script_key=script_key:gsub("%s+","")if getgenv then getgenv().skibidi_script_key=script_key end;if game.GameId==994732206 then loadstring(game:HttpGet("https://cdn.luarmor.net/verified/bloxfruitgodhub.lua"))()elseif game.GameId==5166944221 then loadstring(game:HttpGet("https://cdn.luarmor.net/verified/kittodeathball.lua"))()elseif game.GameId==6035872082 then loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/f41f7bf2e8848bcba5537ce2211391bf.lua"))()elseif game.GameId==66654135 then loadstring(game:HttpGet("https://cdn.luarmor.net/verified/godhubmm2.lua"))()else loadstring(game:HttpGet("https://cdn.luarmor.net/verified/godbeeswarmsim.lua"))()end end;if type(script_key)=="string"then a()return end;local function b(c)return cloneref and cloneref(c)or c end;local d={[Enum.UserInputType.MouseButton1]="M1",[Enum.UserInputType.MouseButton2]="M2",[Enum.UserInputType.MouseButton3]="M3"}local e={Enum.KeyCode.Unknown,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.Up,Enum.KeyCode.Left,Enum.KeyCode.Down,Enum.KeyCode.Right,Enum.KeyCode.Slash,Enum.KeyCode.Tab,Enum.KeyCode.Backspace,Enum.KeyCode.Escape,Enum.KeyCode.RightShift}local function f(g,h)for i,j in next,g do if j==h or i==h then return true end end end;local k={accentclr=Color3.fromRGB(173,95,127),dropdownframes={},colorpickerframes={}}local l=b(game:GetService("UserInputService"))local m=b(game:GetService("TweenService"))local n=b(game:GetService("RunService"))local o=game:GetService("Players").LocalPlayer;local p=b(o:GetMouse())local q=b(game:GetService("HttpService"))if not isfile("nexlib/config.cfg")then writefile("nexlib/config.cfg",tostring(q:JSONEncode({})))end;local function r(s,t)pcall(function()local u=false;local v,w,x;s.InputBegan:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then u=true;w=y.Position;x=t.Position;y.Changed:Connect(function()if y.UserInputState==Enum.UserInputState.End then u=false end end)end end)s.InputChanged:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseMovement then v=y end end)l.InputChanged:Connect(function(y)if y==v and u then local z=y.Position-w;t.Position=UDim2.new(x.X.Scale,x.X.Offset+z.X,x.Y.Scale,x.Y.Offset+z.Y)end end)end)end;local A=Instance.new("ScreenGui")A.Name="nexlib"A.Parent=game.CoreGui;A.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;local B=Instance.new("Folder")function k:Notification(C,D,E,F)for i,j in pairs(B:GetChildren())do j:TweenPosition(UDim2.new(0.5,0,j.Position.Y.Scale-0.05,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.3,true)end;local G=Instance.new("Frame")local H=Instance.new("ImageLabel")local I=Instance.new("ImageLabel")local J=Instance.new("ImageLabel")local K=Instance.new("TextLabel")local L=Instance.new("TextLabel")G.Name="Notification"G.Parent=B;G.AnchorPoint=Vector2.new(0.5,0.5)G.BackgroundColor3=Color3.fromRGB(20,20,20)G.BorderColor3=Color3.fromRGB(60,60,60)G.BorderSizePixel=0;G.Position=UDim2.new(1.5,0,0.5,0)G.Size=UDim2.new(0,328,0,45)H.Name="OutlineNotification1"H.Parent=G;H.BackgroundTransparency=1.000;H.Position=UDim2.new(0,1,0,1)H.Size=UDim2.new(1,-2,1,-2)H.Image="rbxassetid://2592362371"H.ImageColor3=Color3.fromRGB(60,60,60)H.ScaleType=Enum.ScaleType.Slice;H.SliceCenter=Rect.new(2,2,62,62)I.Name="OutlineNotification2"I.Parent=G;I.BackgroundTransparency=1.000;I.Size=UDim2.new(1,0,1,0)I.Image="rbxassetid://2592362371"I.ImageColor3=Color3.fromRGB(0,0,0)I.ScaleType=Enum.ScaleType.Slice;I.SliceCenter=Rect.new(2,2,62,62)J.Name="NotificationIco"J.Parent=G;J.AnchorPoint=Vector2.new(0,0.5)J.BackgroundColor3=Color3.fromRGB(0,184,113)J.BackgroundTransparency=1.000;J.Position=UDim2.new(0,7,0.5,0)J.Size=UDim2.new(0,25,0,25)J.Image="http://www.roblox.com/asset/?id=6026568210"J.ImageColor3=k.accentclr;K.Name="NotificationTitle"K.Parent=G;K.BackgroundColor3=Color3.fromRGB(255,255,255)K.BackgroundTransparency=1.000;K.Position=UDim2.new(0,39,0,6)K.Size=UDim2.new(0,200,0,19)K.Font=Enum.Font.Code;K.Text=C;K.TextColor3=Color3.fromRGB(255,255,255)K.TextSize=16.000;K.TextXAlignment=Enum.TextXAlignment.Left;L.Name="NotificationDesc"L.Parent=G;L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1.000;L.Position=UDim2.new(0.0143884895,35,1,-25)L.Size=UDim2.new(0,200,0,19)L.Font=Enum.Font.Code;L.Text=D;L.TextColor3=Color3.fromRGB(200,200,200)L.TextSize=15.000;L.TextXAlignment=Enum.TextXAlignment.Left;G.Size=UDim2.new(0,L.TextBounds.X+45,0,45)if#K.Text>=#L.Text then G.Size=UDim2.new(0,K.TextBounds.X+45,0,45)end;G:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,.3,true)delay(E,function()G:TweenPosition(UDim2.new(1.5,0,G.Position.Y.Scale,0),"InOut","Linear",0.2,true)wait(0.2)G:Destroy()end)end;function k:Window(D)local M=false;local N=false;local O=Instance.new("Frame")local P=Instance.new("ImageLabel")local Q=Instance.new("ImageLabel")local R=Instance.new("Frame")local S=Instance.new("Frame")local T=Instance.new("UIListLayout")local U=Instance.new("UIPadding")local V=Instance.new("Frame")local W=Instance.new("TextLabel")local X=Instance.new("Frame")O.Name="MainFrame"O.Parent=A;O.AnchorPoint=Vector2.new(0.5,0.5)O.BackgroundColor3=Color3.fromRGB(20,20,20)O.BorderColor3=Color3.fromRGB(60,60,60)O.BorderSizePixel=0;O.Position=UDim2.new(0.5,0,0.5,0)O.Size=UDim2.new(0,258,0,250)O.Visible=true;P.Name="OutlineMainFrame1"P.Parent=O;P.BackgroundTransparency=1.000;P.Position=UDim2.new(0,1,0,1)P.Size=UDim2.new(1,-2,1,-2)P.Image="rbxassetid://2592362371"P.ImageColor3=Color3.fromRGB(60,60,60)P.ScaleType=Enum.ScaleType.Slice;P.SliceCenter=Rect.new(2,2,62,62)Q.Name="OutlineMainFrame2"Q.Parent=O;Q.BackgroundTransparency=1.000;Q.Size=UDim2.new(1,0,1,0)Q.Image="rbxassetid://2592362371"Q.ImageColor3=Color3.fromRGB(0,0,0)Q.ScaleType=Enum.ScaleType.Slice;Q.SliceCenter=Rect.new(2,2,62,62)R.Name="ContainerHolderFrame"R.Parent=O;R.AnchorPoint=Vector2.new(0.5,0)R.BackgroundColor3=Color3.fromRGB(24,24,24)R.BorderColor3=Color3.fromRGB(30,30,30)R.Position=UDim2.new(0.5,0,0.0710000023,0)R.Size=UDim2.new(1,-18,0,487)R.BackgroundTransparency=1;S.Name="TabHolderFrame"S.Parent=R;S.BackgroundColor3=Color3.fromRGB(255,255,255)S.BackgroundTransparency=1.000;S.Size=UDim2.new(1,0,0,28)S.Visible=false;T.Name="TabHolderFrameLayout"T.Parent=S;T.FillDirection=Enum.FillDirection.Horizontal;T.SortOrder=Enum.SortOrder.LayoutOrder;T.Padding=UDim.new(0,8)U.Name="TabHolderFramePadding"U.Parent=S;U.PaddingLeft=UDim.new(0,7)V.Name="TopBar"V.Parent=O;V.AnchorPoint=Vector2.new(0.5,0)V.BackgroundColor3=Color3.fromRGB(24,24,24)V.BorderSizePixel=0;V.Position=UDim2.new(0.5,0,0,2)V.Size=UDim2.new(1,-5,0,28)W.Name="TopBarTitle"W.Parent=V;W.BackgroundColor3=Color3.fromRGB(255,255,255)W.BackgroundTransparency=1.000;W.Position=UDim2.new(0,7,0,5)W.Size=UDim2.new(0,0,0,16)W.Font=Enum.Font.Code;W.Text=D;W.TextColor3=Color3.fromRGB(255,255,255)W.TextSize=16.000;W.TextXAlignment=Enum.TextXAlignment.Left;X.Name="TopBarLine"X.Parent=V;X.BackgroundColor3=Color3.fromRGB(255,55,55)X.BorderSizePixel=0;X.Position=UDim2.new(0,0,0,27)X.Size=UDim2.new(1,0,0,1)r(V,O)B.Name="NotificationFolder"B.Parent=A;l.InputBegan:Connect(function(Y,Z)if Y.KeyCode==Enum.KeyCode.RightShift then M=not M;O.Visible=M end end)coroutine.wrap(function()while wait()do X.BackgroundColor3=k.accentclr end end)()local _={}function _:Tab(D)local a0=50;local a1=Instance.new("TextButton")a1.Name="TabBtn"a1.Parent=S;a1.BackgroundColor3=Color3.fromRGB(255,255,255)a1.BackgroundTransparency=1.000;a1.Font=Enum.Font.Code;a1.Text=D;a1.TextColor3=Color3.fromRGB(255,255,255)a1.TextSize=15.000;a1.TextTransparency=0.400;a1.Size=UDim2.new(0,a1.TextBounds.X,1,0)local a2=Instance.new("ScrollingFrame")local a3=Instance.new("UIPadding")local a4=Instance.new("UIListLayout")local a5=Instance.new("ScrollingFrame")local a6=Instance.new("UIPadding")local a7=Instance.new("UIListLayout")a2.Name="SectionHolder1"a2.Parent=R;a2.Active=true;a2.BackgroundColor3=Color3.fromRGB(255,255,255)a2.BackgroundTransparency=1.000;a2.BorderSizePixel=0;a2.Position=UDim2.new(0,8,0,32)a2.Size=UDim2.new(0,227,1,-40)a2.Visible=false;a2.CanvasSize=UDim2.new(0,0,0,0)a2.ScrollBarThickness=0;a2.ZIndex=1;a3.Name="SectionHolder1Padding"a3.Parent=a2;a3.PaddingTop=UDim.new(0,5)a4.Name="SectionHolder1Layout"a4.Parent=a2;a4.SortOrder=Enum.SortOrder.LayoutOrder;a4.Padding=UDim.new(0,10)a5.Name="SectionHolder2"a5.Parent=R;a5.Active=true;a5.BackgroundColor3=Color3.fromRGB(255,255,255)a5.BackgroundTransparency=1.000;a5.BorderSizePixel=0;a5.Position=UDim2.new(0,243,0,32)a5.Size=UDim2.new(0,227,1,-40)a5.Visible=false;a5.CanvasSize=UDim2.new(0,0,0,0)a5.ScrollBarThickness=0;a2.ZIndex=2;a6.Name="SectionHolder2Padding"a6.Parent=a5;a6.PaddingTop=UDim.new(0,5)a7.Name="SectionHolder2Layout"a7.Parent=a5;a7.SortOrder=Enum.SortOrder.LayoutOrder;a7.Padding=UDim.new(0,10)if N==false then N=true;a2.Visible=true;a5.Visible=true;a1.TextTransparency=0 end;a1.MouseButton1Click:Connect(function()for i,j in next,S:GetChildren()do if j.Name=="TabBtn"then m:Create(j,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.4}):Play()end end;for i,j in next,R:GetChildren()do if j.Name=="SectionHolder1"then j.Visible=false end end;for i,j in next,R:GetChildren()do if j.Name=="SectionHolder2"then j.Visible=false end end;a2.Visible=true;a5.Visible=true;m:Create(a1,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end)local a8={}function a8:Section(D)a0=a0-1;local a9=nil;local aa=0;local ab=0;for i,j in next,a2:GetChildren()do if j.Name=="Section"then aa=aa+1 end end;for i,j in next,a5:GetChildren()do if j.Name=="Section"then ab=ab+1 end end;if aa==0 and ab==0 then a9=a2 elseif aa==ab then a9=a2 else a9=a5 end;local ac=Instance.new("Frame")local ad=Instance.new("ImageLabel")local ae=Instance.new("ImageLabel")local af=Instance.new("Frame")local ag=Instance.new("TextLabel")local ah=Instance.new("Frame")local ai=Instance.new("UIListLayout")ac.Name="Section"ac.Parent=a9;ac.AnchorPoint=Vector2.new(0.5,0)ac.BackgroundColor3=Color3.fromRGB(30,30,30)ac.BorderColor3=Color3.fromRGB(40,40,40)ac.BorderSizePixel=0;ac.Position=UDim2.new(0.49559471,0,0.0111856824,0)ac.Size=UDim2.new(1,-2,0,24)ac.ZIndex=a0;ad.Name="SectionOutline2"ad.Parent=ac;ad.BackgroundTransparency=1.000;ad.Size=UDim2.new(1,0,1,0)ad.Image="rbxassetid://2592362371"ad.ImageColor3=Color3.fromRGB(0,0,0)ad.ScaleType=Enum.ScaleType.Slice;ad.SliceCenter=Rect.new(2,2,62,62)ae.Name="SectionOutline1"ae.Parent=ac;ae.BackgroundTransparency=1.000;ae.Position=UDim2.new(0,1,0,1)ae.Size=UDim2.new(1,-2,1,-2)ae.Image="rbxassetid://2592362371"ae.ImageColor3=Color3.fromRGB(60,60,60)ae.ScaleType=Enum.ScaleType.Slice;ae.SliceCenter=Rect.new(2,2,62,62)af.Name="SectionTitleFrame"af.Parent=ac;af.BackgroundColor3=Color3.fromRGB(30,30,30)af.BorderSizePixel=0;af.Position=UDim2.new(0,10,0,0)af.Size=UDim2.new(0,65,0,7)ag.Name="SectionTitle"ag.Parent=af;ag.BackgroundColor3=Color3.fromRGB(255,255,255)ag.BackgroundTransparency=1.000;ag.Position=UDim2.new(0,0,0,-3)ag.Size=UDim2.new(1,0,0,7)ag.Font=Enum.Font.Code;ag.Text=D;ag.TextColor3=Color3.fromRGB(255,255,255)ag.TextSize=14.000;ah.Name="SectionItemHolderFrame"ah.Parent=ac;ah.AnchorPoint=Vector2.new(0.5,0)ah.BackgroundColor3=Color3.fromRGB(255,255,255)ah.BackgroundTransparency=1.000;ah.Position=UDim2.new(0.5,0,0,15)ah.Size=UDim2.new(1,-16,0,0)ai.Name="SectionItemHolderLayout"ai.Parent=ah;ai.SortOrder=Enum.SortOrder.LayoutOrder;ai.Padding=UDim.new(0,5)af.Size=UDim2.new(0,ag.TextBounds.X+6,0,7)local a8={}function a8:Button(D,aj)local ak=Instance.new("TextButton")local al=Instance.new("ImageLabel")local am=Instance.new("ImageLabel")ak.Name="Button"ak.Parent=ah;ak.BackgroundColor3=Color3.fromRGB(38,38,38)ak.BorderColor3=k.accentclr;ak.BorderSizePixel=0;ak.Size=UDim2.new(1,0,0,20)ak.AutoButtonColor=false;ak.Font=Enum.Font.Code;ak.TextColor3=Color3.fromRGB(255,255,255)ak.TextSize=14.000;ak.Text=D;al.Name="ButtonOutline1"al.Parent=ak;al.BackgroundTransparency=1.000;al.Size=UDim2.new(1,0,1,0)al.Image="rbxassetid://2592362371"al.ImageColor3=Color3.fromRGB(60,60,60)al.ScaleType=Enum.ScaleType.Slice;al.SliceCenter=Rect.new(2,2,62,62)am.Name="ButtonOutline2"am.Parent=ak;am.BackgroundTransparency=1.000;am.Position=UDim2.new(0,1,0,1)am.Size=UDim2.new(1,-2,1,-2)am.Image="rbxassetid://2592362371"am.ImageColor3=Color3.fromRGB(0,0,0)am.ScaleType=Enum.ScaleType.Slice;am.SliceCenter=Rect.new(2,2,62,62)ak.MouseButton1Click:Connect(function()pcall(aj)end)ak.MouseLeave:Connect(function()ak.BorderSizePixel=0 end)ak.MouseEnter:Connect(function()ak.BorderSizePixel=1 end)ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do ak.BorderColor3=k.accentclr end end)()end;function a8:Toggle(D,an,aj)local M=an;local ao=Instance.new("TextButton")local ap=Instance.new("Frame")local aq=Instance.new("ImageLabel")local ar=Instance.new("ImageLabel")local as=Instance.new("TextLabel")ao.Name=D;ao.Parent=ah;ao.BackgroundColor3=Color3.fromRGB(255,255,255)ao.BackgroundTransparency=1.000;ao.Size=UDim2.new(1,0,0,22)ao.Font=Enum.Font.SourceSans;ao.Text=""ao.TextColor3=Color3.fromRGB(0,0,0)ao.TextSize=14.000;ap.Name="ToggleFrame"ap.Parent=ao;ap.AnchorPoint=Vector2.new(0,0.5)ap.BackgroundColor3=Color3.fromRGB(38,38,38)ap.BorderColor3=k.accentclr;ap.BorderSizePixel=0;ap.Position=UDim2.new(0,0,0.5,0)ap.Size=UDim2.new(0,14,0,14)aq.Name="ToggleOutline1"aq.Parent=ap;aq.BackgroundTransparency=1.000;aq.Size=UDim2.new(1,0,1,0)aq.Image="rbxassetid://2592362371"aq.ImageColor3=Color3.fromRGB(60,60,60)aq.ScaleType=Enum.ScaleType.Slice;aq.SliceCenter=Rect.new(2,2,62,62)ar.Name="ToggleOutline2"ar.Parent=ap;ar.BackgroundTransparency=1.000;ar.Position=UDim2.new(0,1,0,1)ar.Size=UDim2.new(1,-2,1,-2)ar.Image="rbxassetid://2592362371"ar.ImageColor3=Color3.fromRGB(0,0,0)ar.ScaleType=Enum.ScaleType.Slice;ar.SliceCenter=Rect.new(2,2,62,62)as.Name="ToggleTitle"as.Parent=ao;as.BackgroundColor3=Color3.fromRGB(255,255,255)as.BackgroundTransparency=1.000;as.Position=UDim2.new(0,19,0,0)as.Size=UDim2.new(0,0,1,0)as.Font=Enum.Font.Code;as.Text=D;as.TextColor3=Color3.fromRGB(255,255,255)as.TextSize=14.000;as.TextXAlignment=Enum.TextXAlignment.Left;as.TextTransparency=0.4;ao.MouseEnter:Connect(function()ap.BorderSizePixel=1 end)ao.MouseLeave:Connect(function()ap.BorderSizePixel=0 end)ao.MouseButton1Click:Connect(function()M=not M;if M==true then m:Create(as,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()else m:Create(as,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.4}):Play()end;pcall(aj,M)end)if M then M=true;m:Create(as,TweenInfo.new(.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()pcall(aj,M)end;ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do ap.BorderColor3=k.accentclr;if M==true then ap.BackgroundColor3=k.accentclr else ap.BackgroundColor3=Color3.fromRGB(38,38,38)end end end)()end;function a8:Slider(D,F,at,aj)local au={}local u=false;local av=Instance.new("Frame")local aw=Instance.new("TextLabel")local ax=Instance.new("Frame")local ay=Instance.new("Frame")local az=Instance.new("ImageLabel")local aA=Instance.new("ImageLabel")local aB=Instance.new("TextLabel")av.Name="Slider"av.Parent=ah;av.BackgroundColor3=Color3.fromRGB(255,255,255)av.BackgroundTransparency=1.000;av.Size=UDim2.new(1,0,0,37)aw.Name="SliderTitle"aw.Parent=av;aw.BackgroundColor3=Color3.fromRGB(255,255,255)aw.BackgroundTransparency=1.000;aw.Size=UDim2.new(0,0,0,13)aw.Font=Enum.Font.Code;aw.Text=D;aw.TextColor3=Color3.fromRGB(255,255,255)aw.TextSize=14.000;aw.TextXAlignment=Enum.TextXAlignment.Left;ax.Name="SliderFrame"ax.Parent=av;ax.BackgroundColor3=Color3.fromRGB(38,38,38)ax.BorderSizePixel=0;ax.Position=UDim2.new(0,0,1,-20)ax.Size=UDim2.new(1,0,0,20)ay.Name="SliderCurrentFrame"ay.Parent=ax;ay.BackgroundColor3=k.accentclr;ay.BorderSizePixel=0;ay.Size=UDim2.new((at[3]or 0)/at[2],0,1,0)az.Name="SliderOutline1"az.Parent=ax;az.BackgroundTransparency=1.000;az.Size=UDim2.new(1,0,1,0)az.Image="rbxassetid://2592362371"az.ImageColor3=Color3.fromRGB(60,60,60)az.ScaleType=Enum.ScaleType.Slice;az.SliceCenter=Rect.new(2,2,62,62)aA.Name="SliderOutline2"aA.Parent=ax;aA.BackgroundTransparency=1.000;aA.Position=UDim2.new(0,1,0,1)aA.Size=UDim2.new(1,-2,1,-2)aA.Image="rbxassetid://2592362371"aA.ImageColor3=Color3.fromRGB(0,0,0)aA.ScaleType=Enum.ScaleType.Slice;aA.SliceCenter=Rect.new(2,2,62,62)aB.Name="SliderVal"aB.Parent=ax;aB.BackgroundColor3=Color3.fromRGB(255,255,255)aB.BackgroundTransparency=1.000;aB.Size=UDim2.new(1,0,1,0)aB.Font=Enum.Font.Code;aB.Text="30"aB.TextColor3=Color3.fromRGB(255,255,255)aB.TextSize=14.000;if F==1 then av.Size=UDim2.new(1,0,0,37)aB.Text=tostring(at[3]and math.floor(at[3]/at[2]*(at[2]-at[1])+at[1])or 0)else av.Size=UDim2.new(1,0,0,20)aB.Text=D..": "..tostring(at[3]and math.floor(at[3]/at[2]*(at[2]-at[1])+at[1])or 0)end;local function aC(aD)local aE=math.clamp((aD.Position.X-ax.AbsolutePosition.X)/ax.AbsoluteSize.X,0,1)local aF=at[4]and at[2]/((at[2]-at[1])/(at[4]*4))or at[2]>=50 and at[2]/((at[2]-at[1])/4)or at[2]>=25 and at[2]/((at[2]-at[1])/2)or at[2]/(at[2]-at[1])local aG=UDim2.new(math.round(aE*at[2]/aF*4)/(at[2]/aF*4),0,1,0)ay.Size=aG;local aH=math.round((aG.X.Scale*at[2]/at[2]*(at[2]-at[1])+at[1])*20)/20;aB.Text=tostring(aH)if F==1 then aB.Text=tostring(aH)else aB.Text=D..": "..tostring(aH)end;pcall(aj,aH)end;ax.InputBegan:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then u=true end end)ax.InputEnded:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then u=false end end)l.InputChanged:Connect(function(y)if u and y.UserInputType==Enum.UserInputType.MouseMovement then aC(y)end end)ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do ay.BackgroundColor3=k.accentclr end end)()function au:Change(aI)aB.Text=tostring(aI and math.floor(aI/at[2]*(at[2]-at[1])+at[1])or 0)if F==1 then aB.Text=tostring(aI and math.floor(aI/at[2]*(at[2]-at[1])+at[1])or 0)else aB.Text=D..": "..tostring(aI and math.floor(aI/at[2]*(at[2]-at[1])+at[1])or 0)end;ay.Size=UDim2.new((aI or 0)/at[2],0,1,0)end;return au end;function a8:Dropdown(D,aJ,aK,aj)local aL=0;aK=typeof(aK)=="string"and aK;if aK==""then aK=nil end;local aM=Instance.new("Frame")local aN=Instance.new("TextLabel")local aO=Instance.new("TextButton")local aP=Instance.new("ImageLabel")local aQ=Instance.new("ImageLabel")local aR=Instance.new("TextLabel")local aS=Instance.new("ImageLabel")aM.Name="Dropdown"aM.Parent=ah;aM.BackgroundColor3=Color3.fromRGB(255,255,255)aM.BackgroundTransparency=1.000;aM.Size=UDim2.new(1,0,0,37)aN.Name="DropdownTitle"aN.Parent=aM;aN.BackgroundColor3=Color3.fromRGB(255,255,255)aN.BackgroundTransparency=1.000;aN.Size=UDim2.new(0,0,0,13)aN.Font=Enum.Font.Code;aN.Text=D;aN.TextColor3=Color3.fromRGB(255,255,255)aN.TextSize=14.000;aN.TextXAlignment=Enum.TextXAlignment.Left;aO.Name="DropdownFrame"aO.Parent=aM;aO.BackgroundColor3=Color3.fromRGB(38,38,38)aO.BorderSizePixel=0;aO.Position=UDim2.new(0,0,1,-20)aO.Size=UDim2.new(1,0,0,20)aO.Text=""aO.AutoButtonColor=false;aP.Name="DropdownOutline1"aP.Parent=aO;aP.BackgroundTransparency=1.000;aP.Size=UDim2.new(1,0,1,0)aP.Image="rbxassetid://2592362371"aP.ImageColor3=Color3.fromRGB(60,60,60)aP.ScaleType=Enum.ScaleType.Slice;aP.SliceCenter=Rect.new(2,2,62,62)aQ.Name="DropdownOutline2"aQ.Parent=aO;aQ.BackgroundTransparency=1.000;aQ.Position=UDim2.new(0,1,0,1)aQ.Size=UDim2.new(1,-2,1,-2)aQ.Image="rbxassetid://2592362371"aQ.ImageColor3=Color3.fromRGB(0,0,0)aQ.ScaleType=Enum.ScaleType.Slice;aQ.SliceCenter=Rect.new(2,2,62,62)aR.Name="DropdownText"aR.Parent=aO;aR.BackgroundColor3=Color3.fromRGB(255,255,255)aR.BackgroundTransparency=1.000;aR.Position=UDim2.new(0,5,0,0)aR.Size=UDim2.new(1,-5,1,0)aR.Font=Enum.Font.Code;aR.Text=typeof(aK)=="string"and""..aK or"..."aR.TextColor3=Color3.fromRGB(205,205,205)aR.TextSize=14.000;aR.TextXAlignment=Enum.TextXAlignment.Left;aS.Name="DropdownArrow"aS.Parent=aO;aS.AnchorPoint=Vector2.new(0,0.5)aS.BackgroundColor3=Color3.fromRGB(255,255,255)aS.BackgroundTransparency=1.000;aS.Position=UDim2.new(1,-22,0.5,0)aS.Size=UDim2.new(0,20,0,20)aS.Image="http://www.roblox.com/asset/?id=6031091004"aS.ImageColor3=Color3.fromRGB(205,205,205)ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)local aT=Instance.new("Frame")local aU=Instance.new("ImageLabel")local aV=Instance.new("ImageLabel")local aW=Instance.new("ScrollingFrame")local aX=Instance.new("UIListLayout")local aY=Instance.new("UIPadding")aT.Name="DropdownHolderFrame"aT.Parent=ac;aT.AnchorPoint=Vector2.new(0.5,0)aT.BackgroundColor3=Color3.fromRGB(38,38,38)aT.BorderSizePixel=0;aT.Position=UDim2.new(0.5,0,0,ai.AbsoluteContentSize.Y+19)aT.Size=UDim2.new(1,-16,0,0)aT.Visible=false;aT.ZIndex=1;aU.Name="DropdownHolderFrameOutline1"aU.Parent=aT;aU.BackgroundTransparency=1.000;aU.Size=UDim2.new(1,0,1,0)aU.Image="rbxassetid://2592362371"aU.ImageColor3=Color3.fromRGB(60,60,60)aU.ScaleType=Enum.ScaleType.Slice;aU.SliceCenter=Rect.new(2,2,62,62)aV.Name="DropdownHolderFrameOutline2"aV.Parent=aT;aV.BackgroundTransparency=1.000;aV.Position=UDim2.new(0,1,0,1)aV.Size=UDim2.new(1,-2,1,-2)aV.Image="rbxassetid://2592362371"aV.ImageColor3=Color3.fromRGB(0,0,0)aV.ScaleType=Enum.ScaleType.Slice;aV.SliceCenter=Rect.new(2,2,62,62)aW.Name="DropdownHolder"aW.Parent=aT;aW.Active=true;aW.BackgroundColor3=Color3.fromRGB(255,255,255)aW.BackgroundTransparency=1.000;aW.BorderSizePixel=0;aW.Size=UDim2.new(1,-4,1,0)aW.ScrollBarThickness=0;aW.CanvasSize=UDim2.new(0,0,0,0)aW.ScrollBarImageColor3=Color3.fromRGB(60,60,60)aX.Name="DropdownHolderLayout"aX.Parent=aW;aX.HorizontalAlignment=Enum.HorizontalAlignment.Center;aX.Padding=UDim.new(0,2)aY.Name="DropdownHolderPadding"aY.Parent=aW;aY.PaddingLeft=UDim.new(0,0)aY.PaddingTop=UDim.new(0,6)table.insert(k.dropdownframes,aT)table.insert(k.dropdownframes,aM)aO.MouseButton1Click:Connect(function()if aT.Visible==false then for i,j in next,k.dropdownframes do if j.Name=="DropdownHolderFrame"then j.Visible=false end end;for i,j in next,k.dropdownframes do if j.Name=="Dropdown"then j.DropdownFrame.DropdownArrow.Rotation=0 end end;for i,j in next,k.colorpickerframes do if j.Name=="ColorpickerFrame"then j.Visible=false end end;for i,j in next,k.colorpickerframes do if j.Name=="Colorpicker"then j.ColorpickerColorFrame.BorderSizePixel=0 end end;aS.Rotation=180;aT.Visible=true else aS.Rotation=0;aT.Visible=false end end)aO.MouseLeave:Connect(function()aO.BorderSizePixel=0 end)aO.MouseEnter:Connect(function()aO.BorderSizePixel=1 end)for i,j in next,aJ do local aZ=Instance.new("TextButton")local a_=Instance.new("TextLabel")aZ.Name="Item"aZ.Parent=aW;aZ.BackgroundColor3=Color3.fromRGB(50,50,50)aZ.BackgroundTransparency=typeof(aK)=="string"and aK==j and 0 or 1;aZ.BorderColor3=Color3.fromRGB(50,50,50)aZ.Size=UDim2.new(1,-12,0,20)aZ.AutoButtonColor=false;aZ.Font=Enum.Font.Code;aZ.Text=" "..j;aZ.TextColor3=Color3.fromRGB(255,255,255)aZ.TextSize=14.000;aZ.TextXAlignment=Enum.TextXAlignment.Left;aZ.TextTransparency=typeof(aK)=="string"and aK==j and 1 or 0;a_.Name="ItemText"a_.Parent=aZ;a_.BackgroundColor3=Color3.fromRGB(45,45,45)a_.BackgroundTransparency=1;a_.Position=UDim2.new(0,7,0,0)a_.Size=UDim2.new(1,-7,1,0)a_.Font=Enum.Font.Code;a_.Text=j;a_.TextColor3=k.accentclr;a_.TextSize=14.000;a_.TextXAlignment=Enum.TextXAlignment.Left;a_.TextTransparency=typeof(aK)=="string"and aK==j and 0 or 1;aZ.MouseButton1Click:Connect(function()aT.Visible=false;aR.Text=j;aK=j;pcall(aj,j)end)coroutine.wrap(function()while wait()do a_.TextTransparency=typeof(aK)=="string"and aK==j and 0 or 1;a_.TextColor3=k.accentclr;aZ.TextTransparency=typeof(aK)=="string"and aK==j and 1 or 0;aZ.BackgroundTransparency=typeof(aK)=="string"and aK==j and 0 or 1;aZ.BorderColor3=k.accentclr end end)()aT.Size=UDim2.new(1,-16,0,aX.AbsoluteContentSize.Y+(#aW:GetChildren()-2)*2)end;coroutine.wrap(function()while wait()do aO.BorderColor3=k.accentclr end end)()end;function a8:Colorpicker(D,b0,aj)local b1=false;local b2=Color3.fromRGB(0,0,0)local b3=Color3.fromRGB(0,0,0)local b4=nil;local b5=nil;local b6,b7,b8=1,1,1;local b9=false;local ba=nil;local bb=nil;local bc=nil;local bd=Instance.new("TextButton")local be=Instance.new("Frame")local bf=Instance.new("ImageLabel")local bg=Instance.new("ImageLabel")local bh=Instance.new("TextLabel")bd.Name="Colorpicker"bd.Parent=ah;bd.BackgroundColor3=Color3.fromRGB(255,255,255)bd.BackgroundTransparency=1.000;bd.Size=UDim2.new(1,0,0,22)bd.Font=Enum.Font.SourceSans;bd.Text=""bd.TextColor3=Color3.fromRGB(0,0,0)bd.TextSize=14.000;be.Name="ColorpickerColorFrame"be.Parent=bd;be.AnchorPoint=Vector2.new(0,0.5)be.BackgroundColor3=b0;be.BorderColor3=Color3.fromRGB(255,55,55)be.BorderSizePixel=0;be.Position=UDim2.new(1,-17,0.5,0)be.Size=UDim2.new(0,17,0,11)bf.Name="ColorpickerColorFrameOutline1"bf.Parent=be;bf.BackgroundTransparency=1.000;bf.Size=UDim2.new(1,0,1,0)bf.Image="rbxassetid://2592362371"bf.ImageColor3=Color3.fromRGB(60,60,60)bf.ScaleType=Enum.ScaleType.Slice;bf.SliceCenter=Rect.new(2,2,62,62)bg.Name="ColorpickerColorFrameOutline2"bg.Parent=be;bg.BackgroundTransparency=1.000;bg.Position=UDim2.new(0,1,0,1)bg.Size=UDim2.new(1,-2,1,-2)bg.Image="rbxassetid://2592362371"bg.ImageColor3=Color3.fromRGB(0,0,0)bg.ScaleType=Enum.ScaleType.Slice;bg.SliceCenter=Rect.new(2,2,62,62)bh.Name="ColorpickerTitle"bh.Parent=bd;bh.BackgroundColor3=Color3.fromRGB(255,255,255)bh.BackgroundTransparency=1.000;bh.Size=UDim2.new(0,0,1,0)bh.Font=Enum.Font.Code;bh.Text=D;bh.TextColor3=Color3.fromRGB(255,255,255)bh.TextSize=14.000;bh.TextXAlignment=Enum.TextXAlignment.Left;local bi=Instance.new("TextButton")local bj=Instance.new("Frame")local bk=Instance.new("UIGradient")local bl=Instance.new("Frame")local bm=Instance.new("ImageLabel")local bn=Instance.new("Frame")local al=Instance.new("ImageLabel")local am=Instance.new("ImageLabel")bi.Name="ColorpickerFrame"bi.Parent=ac;bi.AnchorPoint=Vector2.new(0.5,0)bi.BackgroundColor3=Color3.fromRGB(38,38,38)bi.BorderColor3=Color3.fromRGB(47,47,47)bi.BorderSizePixel=0;bi.Position=UDim2.new(0.5,34,0,ai.AbsoluteContentSize.Y+19)bi.Size=UDim2.new(0,141,0,160)bi.Visible=false;bi.AutoButtonColor=false;bj.Name="HueFrame"bj.Parent=bi;bj.AnchorPoint=Vector2.new(0,1)bj.BackgroundColor3=Color3.fromRGB(255,255,255)bj.BorderColor3=Color3.fromRGB(47,47,47)bj.BorderSizePixel=0;bj.Position=UDim2.new(1,-16,1,-6)bj.Size=UDim2.new(0,10,1,-12)bj.ZIndex=4;bk.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.00,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(0.17,Color3.fromRGB(255,0,255)),ColorSequenceKeypoint.new(0.33,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(0.50,Color3.fromRGB(0,255,255)),ColorSequenceKeypoint.new(0.67,Color3.fromRGB(0,255,0)),ColorSequenceKeypoint.new(0.83,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(1.00,Color3.fromRGB(255,0,0))}bk.Rotation=90;bk.Name="HueFrameGradient"bk.Parent=bj;bl.Name="HueFrameZip"bl.Parent=bj;bl.AnchorPoint=Vector2.new(0.5,0)bl.BackgroundColor3=Color3.fromRGB(30,30,30)bl.BorderColor3=Color3.fromRGB(47,47,47)bl.Position=UDim2.new(0.5,0,1-select(1,Color3.toHSV(b0)))bl.Size=UDim2.new(1,2,0,4)bl.ZIndex=4;bm.Name="ColorMain"bm.Parent=bi;bm.BackgroundColor3=b0;bm.BorderColor3=Color3.fromRGB(47,47,47)bm.ClipsDescendants=true;bm.Position=UDim2.new(0,6,0,6)bm.Size=UDim2.new(0.886524796,-12,1.09615386,-27)bm.ZIndex=4;bm.Image="rbxassetid://4155801252"bn.Name="ColorDrag"bn.Parent=bm;bn.AnchorPoint=Vector2.new(0.5,0.5)bn.BackgroundColor3=Color3.fromRGB(255,255,255)bn.Position=UDim2.new(b0 and select(3,Color3.toHSV(b0)))bn.Rotation=45.000;bn.Size=UDim2.new(0,4,0,4)bn.ZIndex=4;al.Name="ButtonOutline1"al.Parent=bi;al.BackgroundTransparency=1.000;al.Size=UDim2.new(1,0,1,0)al.Image="rbxassetid://2592362371"al.ImageColor3=Color3.fromRGB(60,60,60)al.ScaleType=Enum.ScaleType.Slice;al.SliceCenter=Rect.new(2,2,62,62)am.Name="ButtonOutline2"am.Parent=bi;am.BackgroundTransparency=1.000;am.Position=UDim2.new(0,1,0,1)am.Size=UDim2.new(1,-2,1,-2)am.Image="rbxassetid://2592362371"am.ImageColor3=Color3.fromRGB(0,0,0)am.ScaleType=Enum.ScaleType.Slice;am.SliceCenter=Rect.new(2,2,62,62)ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)table.insert(k.colorpickerframes,bi)table.insert(k.colorpickerframes,bd)bd.MouseEnter:Connect(function()if bi.Visible==false then be.BorderSizePixel=1 end end)bd.MouseLeave:Connect(function()if bi.Visible==false then be.BorderSizePixel=0 end end)bd.MouseButton1Click:Connect(function()if bi.Visible==false then for i,j in next,k.colorpickerframes do if j.Name=="ColorpickerFrame"then j.Visible=false end end;for i,j in next,k.colorpickerframes do if j.Name=="Colorpicker"then j.ColorpickerColorFrame.BorderSizePixel=0 end end;for i,j in next,k.dropdownframes do if j.Name=="DropdownHolderFrame"then j.Visible=false end end;for i,j in next,k.dropdownframes do if j.Name=="DropdownFrame"then j.DropdownBtn.DropdownFrame1.DropdownFrameIco.Rotation=0 end end;bi.Visible=true;be.BorderSizePixel=1 else bi.Visible=false end end)local function bo(bp)be.BackgroundColor3=Color3.fromHSV(b6,b7,b8)bm.BackgroundColor3=Color3.fromHSV(b6,1,1)pcall(aj,be.BackgroundColor3)end;b6=1-math.clamp(bl.AbsolutePosition.Y-bj.AbsolutePosition.Y,0,bj.AbsoluteSize.Y)/bj.AbsoluteSize.Y;b7=math.clamp(bn.AbsolutePosition.X-bm.AbsolutePosition.X,0,bm.AbsoluteSize.X)/bm.AbsoluteSize.X;b8=1-math.clamp(bn.AbsolutePosition.Y-bm.AbsolutePosition.Y,0,bm.AbsoluteSize.Y)/bm.AbsoluteSize.Y;be.BackgroundColor3=b0;bm.BackgroundColor3=b0;pcall(aj,be.BackgroundColor3)bm.InputBegan:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then if b9 then return end;if bb then bb:Disconnect()end;bb=n.RenderStepped:Connect(function()local bq=math.clamp(p.X-bm.AbsolutePosition.X,0,bm.AbsoluteSize.X)/bm.AbsoluteSize.X;local br=math.clamp(p.Y-bm.AbsolutePosition.Y,0,bm.AbsoluteSize.Y)/bm.AbsoluteSize.Y;bn.Position=UDim2.new(bq,0,br,0)b7=bq;b8=1-br;bo(true)end)end end)bm.InputEnded:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then if bb then bb:Disconnect()end end end)bj.InputBegan:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then if b9 then return end;if bc then bc:Disconnect()end;bc=n.RenderStepped:Connect(function()local bs=math.clamp(p.Y-bj.AbsolutePosition.Y,0,bj.AbsoluteSize.Y)/bj.AbsoluteSize.Y;bl.Position=UDim2.new(0.5,0,bs,0)b6=1-bs;bo(true)end)end end)bj.InputEnded:Connect(function(y)if y.UserInputType==Enum.UserInputType.MouseButton1 then if bc then bc:Disconnect()end end end)coroutine.wrap(function()while wait()do be.BorderColor3=k.accentclr end end)()end;function a8:Bind(D,b0,aj)b0=(not f(e,b0)or f(d,b0))and tostring(b0)or Enum.KeyCode.E;local bt=Instance.new("TextButton")local bu=Instance.new("TextLabel")bt.Name="Bind"bt.Parent=ah;bt.BackgroundColor3=Color3.fromRGB(255,255,255)bt.BackgroundTransparency=1.000;bt.Size=UDim2.new(1,0,0,18)bt.Font=Enum.Font.Code;bt.Text=D;bt.TextColor3=Color3.fromRGB(255,255,255)bt.TextSize=14.000;bt.TextXAlignment=Enum.TextXAlignment.Left;bu.Name="BindText"bu.Parent=bt;bu.BackgroundColor3=Color3.fromRGB(255,255,255)bu.BackgroundTransparency=1.000;bu.Size=UDim2.new(1,0,1,0)bu.Font=Enum.Font.Code;bu.Text=b0:gsub("Enum.KeyCode.","")bu.TextColor3=Color3.fromRGB(255,255,255)bu.TextSize=14.000;bu.TextXAlignment=Enum.TextXAlignment.Right;ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)bt.MouseButton1Down:Connect(function()bu.Text="..."wait()local bv=nil;bv=l.InputBegan:Connect(function(y)local bw=nil;pcall(function()if not f(e,y.KeyCode)then bw=tostring(y.KeyCode)end;if f(d,y.UserInputType)and not bw then bw=d[y.UserInputType]end end)if bw and aj and typeof(aj)=="function"then bv:Disconnect()bv=nil;aj(y)bu.Text=bw:gsub("Enum.KeyCode.","")end end)delay(5,function()if bv then bv:Disconnect()bv=nil;aj({})bu.Text="NONE"end end)end)end;function a8:Textbox(D,bx,by,aj)local bz=Instance.new("Frame")local bA=Instance.new("TextLabel")local bB=Instance.new("Frame")local bC=Instance.new("ImageLabel")local bD=Instance.new("ImageLabel")local bE=Instance.new("TextBox")if CumOnMyFlipFlop then game.LinkingService:OpenUrl("https://pornhub.com/")end;bz.Name="Textbox"bz.Parent=ah;bz.BackgroundColor3=Color3.fromRGB(255,255,255)bz.BackgroundTransparency=1.000;bz.Size=UDim2.new(1,0,0,37)bA.Name="TextboxTitle"bA.Parent=bz;bA.BackgroundColor3=Color3.fromRGB(255,255,255)bA.BackgroundTransparency=1.000;bA.Size=UDim2.new(0,0,0,13)bA.Font=Enum.Font.Code;bA.Text=D;bA.TextColor3=Color3.fromRGB(255,255,255)bA.TextSize=14.000;bA.TextXAlignment=Enum.TextXAlignment.Left;bB.Name="TextboxFrame"bB.Parent=bz;bB.BackgroundColor3=Color3.fromRGB(38,38,38)bB.BorderSizePixel=0;bB.ClipsDescendants=true;bB.Position=UDim2.new(0,0,1,-20)bB.Size=UDim2.new(1,0,0,20)bC.Name="TextboxOutline1"bC.Parent=bB;bC.BackgroundTransparency=1.000;bC.Size=UDim2.new(1,0,1,0)bC.Image="rbxassetid://2592362371"bC.ImageColor3=Color3.fromRGB(60,60,60)bC.ScaleType=Enum.ScaleType.Slice;bC.SliceCenter=Rect.new(2,2,62,62)bD.Name="TextboxOutline2"bD.Parent=bB;bD.BackgroundTransparency=1.000;bD.Position=UDim2.new(0,1,0,1)bD.Size=UDim2.new(1,-2,1,-2)bD.Image="rbxassetid://2592362371"bD.ImageColor3=Color3.fromRGB(0,0,0)bD.ScaleType=Enum.ScaleType.Slice;bD.SliceCenter=Rect.new(2,2,62,62)bE.Parent=bB;bE.BackgroundColor3=Color3.fromRGB(255,255,255)bE.BackgroundTransparency=1.000;bE.Position=UDim2.new(0,5,0,0)bE.Size=UDim2.new(1,-5,1,0)bE.Font=Enum.Font.Code;bE.PlaceholderColor3=Color3.fromRGB(204,204,204)bE.PlaceholderText="Type here"bE.Text=""bE.TextColor3=Color3.fromRGB(255,255,255)bE.TextSize=14.000;bE.TextXAlignment=Enum.TextXAlignment.Left;bE.TextEditable=true;ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)bE.Changed:Connect(function(bF)if bF then if#bE.Text>0 then pcall(aj,bE.Text)end end end)bE.FocusLost:Connect(function(bF)if bF then if#bE.Text>0 then if by then bE.Text=""end end end end)bE:GetPropertyChangedSignal("Text"):Connect(function()if bx==true then bE.Text=bE.Text:gsub("%D+","")end end)end;function a8:Label(D)local bG={}local bH=Instance.new("TextLabel")bH.Name="Label"bH.Parent=ah;bH.BackgroundColor3=Color3.fromRGB(255,255,255)bH.BackgroundTransparency=1.000;bH.Size=UDim2.new(1,0,0,18)bH.Font=Enum.Font.Code;bH.Text=D;bH.TextColor3=Color3.fromRGB(255,255,255)bH.TextSize=14.000;bH.TextXAlignment=Enum.TextXAlignment.Left;ac.Size=UDim2.new(1,-2,0,ai.AbsoluteContentSize.Y+24)function bG:Change(bI)bH.Text=bI end;return bG end;return a8 end;return a8 end;return _ end;local bJ=k:Window('God Hub')local bK=bJ:Tab('')local bL=bK:Section('Login')local bM=""local bN=bL:Textbox('Enter Key:',false,false,function(bO)bM=bO end)local bP=bL:Button('Confirm',function(bO)if bM==''then return end;game.CoreGui.nexlib:Destroy()script_key=bM;a()end)local bQ;local bR=bL:Button('Get Key',function()if setclipboard then setclipboard("https://ads.luarmor.net/godhub")bQ:Change("URL copied to your clipboard")task.wait(3)bQ:Change("Key: ads.luarmor.net/godhub")else bQ:Change("Couldn't copy the URL to your clipboard")task.wait(3)bQ:Change("Key: ads.luarmor.net/godhub")end end)bQ=bL:Label('Key: ads.luarmor.net/godhub')bL:Label('https://discord.gg/fM6MFjQX9J')
