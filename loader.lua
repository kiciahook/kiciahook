local a='discord.gg/kicia'if not game:IsLoaded()then game.Loaded:Wait()end;setthreadidentity=setthreadidentity or function()end;local b={[994732206]={FFA=false,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/3db4341c9f12adde471066f83805bf0b.lua]]},[5166944221]={FFA=false,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/fc82b302f8dbfbe4b93a6ec8e131a9a1.lua]]},[6035872082]={FFA=true,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/f41f7bf2e8848bcba5537ce2211391bf.lua]]},[66654135]={FFA=false,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/00dcfe2a87bc1f7ac3e2c33e91ee3d57.lua]]},[245662005]={FFA=false,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/ccc03e6688add4599dddefbb34ffe7dc.lua]]},[115797356]={FFA=false,Unloadable=false,Url=[[https://api.luarmor.net/files/v3/loaders/290265902cbed14fa3f9a15b692da97b.lua]]},[7018190066]={FFA=true,Unloadable=true,Url=[[https://api.luarmor.net/files/v3/loaders/f442f580304e53e183560ff4cfd715fc.lua]]},[7436755782]={FFA=true,Unloadable=true,Url=[[https://api.luarmor.net/files/v3/loaders/b7d180acad508c48c140afe43d01ea0c.lua]]},[7178032757]={FFA=true,Unloadable=true,Url=[[https://api.luarmor.net/files/v3/loaders/2e6b46bc05af83e8427cd9b5123bba27.lua]]}}local c=b[game.GameId]if not c then game:GetService('Players').LocalPlayer:Kick('This game is not supported!')return end;if not c.Unloadable then if _G.kiciahook_loaded then return end;_G.kiciahook_loaded=true end;local function d()pcall(function()setthreadidentity(8)game:GetService('CoreGui').nexlib:Destroy()end)loadstring(game:HttpGet(c.Url))()end;local e='[Key status appears here]'local f=loadstring(game:HttpGet('https://sdkapi-public.luarmor.net/library.lua'))()f.script_id=c.Url:split('/')[7]:sub(1,-5)local g={['KEY_VALID']='Valid key!',['KEY_EXPIRED']='Key expired!',['KEY_BANNED']='Key is banned!',['KEY_HWID_LOCKED']='Reset your HWID in our server!',['KEY_INCORRECT']='Key is wrong or deleted!',['KEY_INVALID']='Key is in an invalid format!',['SCRIPT_ID_INCORRECT']='Incorrect script id!',['SCRIPT_ID_INVALID']='Invalid script id!',['INVALID_EXECUTOR']='Executor not supported!',['SECURITY_ERROR']='Cloudflare error!',['TIME_ERROR']='Request took too long!',['UNKNOWN_ERROR']='Unknown server error!'}local function h(i)return g[i]or'Key check failed: '..i end;if c.FFA then d()return end;if type(script_key)=='string'then script_key=script_key:gsub('%s+','')local j=f.check_key(script_key)if j.code=='KEY_VALID'then d()return end end;do local k={[Enum.UserInputType.MouseButton1]='M1',[Enum.UserInputType.MouseButton2]='M2',[Enum.UserInputType.MouseButton3]='M3'}local l={Enum.KeyCode.Unknown,Enum.KeyCode.W,Enum.KeyCode.A,Enum.KeyCode.S,Enum.KeyCode.D,Enum.KeyCode.Up,Enum.KeyCode.Left,Enum.KeyCode.Down,Enum.KeyCode.Right,Enum.KeyCode.Slash,Enum.KeyCode.Tab,Enum.KeyCode.Backspace,Enum.KeyCode.Escape,Enum.KeyCode.RightShift}local function m(n,o)for p,q in next,n do if q==o or p==o then return true end end end;local r={accentclr=Color3.fromRGB(128,213,247),dropdownframes={},colorpickerframes={}}local function s(t,u)pcall(function()local v=false;local w,x,y;t.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then v=true;x=z.Position;y=u.Position;z.Changed:Connect(function()if z.UserInputState==Enum.UserInputState.End then v=false end end)end end)t.InputChanged:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseMovement then w=z end end)game:GetService('UserInputService').InputChanged:Connect(function(z)if z==w and v then local A=z.Position-x;u.Position=UDim2.new(y.X.Scale,y.X.Offset+A.X,y.Y.Scale,y.Y.Offset+A.Y)end end)end)end;local B=Instance.new('ScreenGui')B.Name='nexlib'setthreadidentity(8)B.Parent=game:GetService('CoreGui')B.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;local C=Instance.new('Folder')function r:Notification(D,E,F,G)for p,q in pairs(C:GetChildren())do q:TweenPosition(UDim2.new(0.5,0,q.Position.Y.Scale-0.05,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.3,true)end;local H=Instance.new('Frame')local I=Instance.new('ImageLabel')local J=Instance.new('ImageLabel')local K=Instance.new('ImageLabel')local L=Instance.new('TextLabel')local M=Instance.new('TextLabel')H.Name='Notification'H.Parent=C;H.AnchorPoint=Vector2.new(0.5,0.5)H.BackgroundColor3=Color3.fromRGB(20,20,20)H.BorderColor3=Color3.fromRGB(60,60,60)H.BorderSizePixel=0;H.Position=UDim2.new(1.5,0,0.5,0)H.Size=UDim2.new(0,328,0,45)I.Name='OutlineNotification1'I.Parent=H;I.BackgroundTransparency=1;I.Position=UDim2.new(0,1,0,1)I.Size=UDim2.new(1,-2,1,-2)I.Image='rbxassetid://2592362371'I.ImageColor3=Color3.fromRGB(60,60,60)I.ScaleType=Enum.ScaleType.Slice;I.SliceCenter=Rect.new(2,2,62,62)J.Name='OutlineNotification2'J.Parent=H;J.BackgroundTransparency=1;J.Size=UDim2.new(1,0,1,0)J.Image='rbxassetid://2592362371'J.ImageColor3=Color3.fromRGB(0,0,0)J.ScaleType=Enum.ScaleType.Slice;J.SliceCenter=Rect.new(2,2,62,62)K.Name='NotificationIco'K.Parent=H;K.AnchorPoint=Vector2.new(0,0.5)K.BackgroundColor3=Color3.fromRGB(0,184,113)K.BackgroundTransparency=1;K.Position=UDim2.new(0,7,0.5,0)K.Size=UDim2.new(0,25,0,25)K.Image='http://www.roblox.com/asset/?id=6026568210'K.ImageColor3=r.accentclr;L.Name='NotificationTitle'L.Parent=H;L.BackgroundColor3=Color3.fromRGB(255,255,255)L.BackgroundTransparency=1;L.Position=UDim2.new(0,39,0,6)L.Size=UDim2.new(0,200,0,19)L.Font=Enum.Font.Code;L.Text=D;L.TextColor3=Color3.fromRGB(255,255,255)L.TextSize=16;L.TextXAlignment=Enum.TextXAlignment.Left;M.Name='NotificationDesc'M.Parent=H;M.BackgroundColor3=Color3.fromRGB(255,255,255)M.BackgroundTransparency=1;M.Position=UDim2.new(0.0143884895,35,1,-25)M.Size=UDim2.new(0,200,0,19)M.Font=Enum.Font.Code;M.Text=E;M.TextColor3=Color3.fromRGB(200,200,200)M.TextSize=15;M.TextXAlignment=Enum.TextXAlignment.Left;H.Size=UDim2.new(0,M.TextBounds.X+45,0,45)if#L.Text>=#M.Text then H.Size=UDim2.new(0,L.TextBounds.X+45,0,45)end;H:TweenPosition(UDim2.new(0.5,0,0.5,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.3,true)delay(F,function()H:TweenPosition(UDim2.new(1.5,0,H.Position.Y.Scale,0),'InOut','Linear',0.2,true)wait(0.2)H:Destroy()end)end;function r:Window(E)local N=false;local O=false;local P=Instance.new('Frame')local Q=Instance.new('ImageLabel')local R=Instance.new('ImageLabel')local S=Instance.new('Frame')local T=Instance.new('Frame')local U=Instance.new('UIListLayout')local V=Instance.new('UIPadding')local W=Instance.new('Frame')local X=Instance.new('TextLabel')local Y=Instance.new('Frame')P.Name='MainFrame'P.Parent=B;P.AnchorPoint=Vector2.new(0.5,0.5)P.BackgroundColor3=Color3.fromRGB(20,20,20)P.BorderColor3=Color3.fromRGB(60,60,60)P.BorderSizePixel=0;P.Position=UDim2.new(0.5,0,0.5,0)P.Size=UDim2.new(0,258,0,c.FFA and 290 or 265)P.Visible=true;Q.Name='OutlineMainFrame1'Q.Parent=P;Q.BackgroundTransparency=1;Q.Position=UDim2.new(0,1,0,1)Q.Size=UDim2.new(1,-2,1,-2)Q.Image='rbxassetid://2592362371'Q.ImageColor3=Color3.fromRGB(60,60,60)Q.ScaleType=Enum.ScaleType.Slice;Q.SliceCenter=Rect.new(2,2,62,62)R.Name='OutlineMainFrame2'R.Parent=P;R.BackgroundTransparency=1;R.Size=UDim2.new(1,0,1,0)R.Image='rbxassetid://2592362371'R.ImageColor3=Color3.fromRGB(0,0,0)R.ScaleType=Enum.ScaleType.Slice;R.SliceCenter=Rect.new(2,2,62,62)S.Name='ContainerHolderFrame'S.Parent=P;S.AnchorPoint=Vector2.new(0.5,0)S.BackgroundColor3=Color3.fromRGB(24,24,24)S.BorderColor3=Color3.fromRGB(30,30,30)S.Position=UDim2.new(0.5,0,0.0710000023,0)S.Size=UDim2.new(1,-18,0,487)S.BackgroundTransparency=1;T.Name='TabHolderFrame'T.Parent=S;T.BackgroundColor3=Color3.fromRGB(255,255,255)T.BackgroundTransparency=1;T.Size=UDim2.new(1,0,0,28)T.Visible=false;U.Name='TabHolderFrameLayout'U.Parent=T;U.FillDirection=Enum.FillDirection.Horizontal;U.SortOrder=Enum.SortOrder.LayoutOrder;U.Padding=UDim.new(0,8)V.Name='TabHolderFramePadding'V.Parent=T;V.PaddingLeft=UDim.new(0,7)W.Name='TopBar'W.Parent=P;W.AnchorPoint=Vector2.new(0.5,0)W.BackgroundColor3=Color3.fromRGB(24,24,24)W.BorderSizePixel=0;W.Position=UDim2.new(0.5,0,0,2)W.Size=UDim2.new(1,-5,0,28)X.Name='TopBarTitle'X.Parent=W;X.BackgroundColor3=Color3.fromRGB(255,255,255)X.BackgroundTransparency=1;X.Position=UDim2.new(0,7,0,5)X.Size=UDim2.new(0,0,0,16)X.Font=Enum.Font.Code;X.Text=E;X.TextColor3=Color3.fromRGB(255,255,255)X.TextSize=16;X.TextXAlignment=Enum.TextXAlignment.Left;Y.Name='TopBarLine'Y.Parent=W;Y.BackgroundColor3=Color3.fromRGB(255,55,55)Y.BorderSizePixel=0;Y.Position=UDim2.new(0,0,0,27)Y.Size=UDim2.new(1,0,0,1)s(W,P)C.Name='NotificationFolder'C.Parent=B;game:GetService('UserInputService').InputBegan:Connect(function(Z,_)if Z.KeyCode==Enum.KeyCode.RightShift then N=not N;P.Visible=N end end)coroutine.wrap(function()while wait()do Y.BackgroundColor3=r.accentclr end end)()local a0={}function a0:Tab(E)local a1=50;local a2=Instance.new('TextButton')a2.Name='TabBtn'a2.Parent=T;a2.BackgroundColor3=Color3.fromRGB(255,255,255)a2.BackgroundTransparency=1;a2.Font=Enum.Font.Code;a2.Text=E;a2.TextColor3=Color3.fromRGB(255,255,255)a2.TextSize=15;a2.TextTransparency=0.4;a2.Size=UDim2.new(0,a2.TextBounds.X,1,0)local a3=Instance.new('ScrollingFrame')local a4=Instance.new('UIPadding')local a5=Instance.new('UIListLayout')local a6=Instance.new('ScrollingFrame')local a7=Instance.new('UIPadding')local a8=Instance.new('UIListLayout')a3.Name='SectionHolder1'a3.Parent=S;a3.Active=true;a3.BackgroundColor3=Color3.fromRGB(255,255,255)a3.BackgroundTransparency=1;a3.BorderSizePixel=0;a3.Position=UDim2.new(0,8,0,32)a3.Size=UDim2.new(0,227,1,-40)a3.Visible=false;a3.CanvasSize=UDim2.new(0,0,0,0)a3.ScrollBarThickness=0;a3.ZIndex=1;a4.Name='SectionHolder1Padding'a4.Parent=a3;a4.PaddingTop=UDim.new(0,5)a5.Name='SectionHolder1Layout'a5.Parent=a3;a5.SortOrder=Enum.SortOrder.LayoutOrder;a5.Padding=UDim.new(0,10)a6.Name='SectionHolder2'a6.Parent=S;a6.Active=true;a6.BackgroundColor3=Color3.fromRGB(255,255,255)a6.BackgroundTransparency=1;a6.BorderSizePixel=0;a6.Position=UDim2.new(0,243,0,32)a6.Size=UDim2.new(0,227,1,-40)a6.Visible=false;a6.CanvasSize=UDim2.new(0,0,0,0)a6.ScrollBarThickness=0;a3.ZIndex=2;a7.Name='SectionHolder2Padding'a7.Parent=a6;a7.PaddingTop=UDim.new(0,5)a8.Name='SectionHolder2Layout'a8.Parent=a6;a8.SortOrder=Enum.SortOrder.LayoutOrder;a8.Padding=UDim.new(0,10)if O==false then O=true;a3.Visible=true;a6.Visible=true;a2.TextTransparency=0 end;a2.MouseButton1Click:Connect(function()for p,q in next,T:GetChildren()do if q.Name=='TabBtn'then game:GetService('TweenService'):Create(q,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.4}):Play()end end;for p,q in next,S:GetChildren()do if q.Name=='SectionHolder1'then q.Visible=false end end;for p,q in next,S:GetChildren()do if q.Name=='SectionHolder2'then q.Visible=false end end;a3.Visible=true;a6.Visible=true;game:GetService('TweenService'):Create(a2,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()end)local a9={}function a9:Section(E)a1=a1-1;local aa=nil;local ab=0;local ac=0;for p,q in next,a3:GetChildren()do if q.Name=='Section'then ab=ab+1 end end;for p,q in next,a6:GetChildren()do if q.Name=='Section'then ac=ac+1 end end;if ab==0 and ac==0 then aa=a3 elseif ab==ac then aa=a3 else aa=a6 end;local ad=Instance.new('Frame')local ae=Instance.new('ImageLabel')local af=Instance.new('ImageLabel')local ag=Instance.new('Frame')local ah=Instance.new('TextLabel')local ai=Instance.new('Frame')local aj=Instance.new('UIListLayout')ad.Name='Section'ad.Parent=aa;ad.AnchorPoint=Vector2.new(0.5,0)ad.BackgroundColor3=Color3.fromRGB(30,30,30)ad.BorderColor3=Color3.fromRGB(40,40,40)ad.BorderSizePixel=0;ad.Position=UDim2.new(0.49559471,0,0.0111856824,0)ad.Size=UDim2.new(1,-2,0,24)ad.ZIndex=a1;ae.Name='SectionOutline2'ae.Parent=ad;ae.BackgroundTransparency=1;ae.Size=UDim2.new(1,0,1,0)ae.Image='rbxassetid://2592362371'ae.ImageColor3=Color3.fromRGB(0,0,0)ae.ScaleType=Enum.ScaleType.Slice;ae.SliceCenter=Rect.new(2,2,62,62)af.Name='SectionOutline1'af.Parent=ad;af.BackgroundTransparency=1;af.Position=UDim2.new(0,1,0,1)af.Size=UDim2.new(1,-2,1,-2)af.Image='rbxassetid://2592362371'af.ImageColor3=Color3.fromRGB(60,60,60)af.ScaleType=Enum.ScaleType.Slice;af.SliceCenter=Rect.new(2,2,62,62)ag.Name='SectionTitleFrame'ag.Parent=ad;ag.BackgroundColor3=Color3.fromRGB(30,30,30)ag.BorderSizePixel=0;ag.Position=UDim2.new(0,10,0,0)ag.Size=UDim2.new(0,65,0,7)ah.Name='SectionTitle'ah.Parent=ag;ah.BackgroundColor3=Color3.fromRGB(255,255,255)ah.BackgroundTransparency=1;ah.Position=UDim2.new(0,0,0,-3)ah.Size=UDim2.new(1,0,0,7)ah.Font=Enum.Font.Code;ah.Text=E;ah.TextColor3=Color3.fromRGB(255,255,255)ah.TextSize=14;ai.Name='SectionItemHolderFrame'ai.Parent=ad;ai.AnchorPoint=Vector2.new(0.5,0)ai.BackgroundColor3=Color3.fromRGB(255,255,255)ai.BackgroundTransparency=1;ai.Position=UDim2.new(0.5,0,0,15)ai.Size=UDim2.new(1,-16,0,0)aj.Name='SectionItemHolderLayout'aj.Parent=ai;aj.SortOrder=Enum.SortOrder.LayoutOrder;aj.Padding=UDim.new(0,5)ag.Size=UDim2.new(0,ah.TextBounds.X+6,0,7)local a9={}function a9:Button(E,ak)local al=Instance.new('TextButton')local am=Instance.new('ImageLabel')local an=Instance.new('ImageLabel')al.Name='Button'al.Parent=ai;al.BackgroundColor3=Color3.fromRGB(38,38,38)al.BorderColor3=r.accentclr;al.BorderSizePixel=0;al.Size=UDim2.new(1,0,0,20)al.AutoButtonColor=false;al.Font=Enum.Font.Code;al.TextColor3=Color3.fromRGB(255,255,255)al.TextSize=14;al.Text=E;am.Name='ButtonOutline1'am.Parent=al;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,1,0)am.Image='rbxassetid://2592362371'am.ImageColor3=Color3.fromRGB(60,60,60)am.ScaleType=Enum.ScaleType.Slice;am.SliceCenter=Rect.new(2,2,62,62)an.Name='ButtonOutline2'an.Parent=al;an.BackgroundTransparency=1;an.Position=UDim2.new(0,1,0,1)an.Size=UDim2.new(1,-2,1,-2)an.Image='rbxassetid://2592362371'an.ImageColor3=Color3.fromRGB(0,0,0)an.ScaleType=Enum.ScaleType.Slice;an.SliceCenter=Rect.new(2,2,62,62)al.MouseButton1Click:Connect(function()pcall(ak)end)al.MouseLeave:Connect(function()al.BorderSizePixel=0 end)al.MouseEnter:Connect(function()al.BorderSizePixel=1 end)ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do al.BorderColor3=r.accentclr end end)()end;function a9:Toggle(E,ao,ak)local N=ao;local ap=Instance.new('TextButton')local aq=Instance.new('Frame')local ar=Instance.new('ImageLabel')local as=Instance.new('ImageLabel')local at=Instance.new('TextLabel')ap.Name=E;ap.Parent=ai;ap.BackgroundColor3=Color3.fromRGB(255,255,255)ap.BackgroundTransparency=1;ap.Size=UDim2.new(1,0,0,22)ap.Font=Enum.Font.SourceSans;ap.Text=''ap.TextColor3=Color3.fromRGB(0,0,0)ap.TextSize=14;aq.Name='ToggleFrame'aq.Parent=ap;aq.AnchorPoint=Vector2.new(0,0.5)aq.BackgroundColor3=Color3.fromRGB(38,38,38)aq.BorderColor3=r.accentclr;aq.BorderSizePixel=0;aq.Position=UDim2.new(0,0,0.5,0)aq.Size=UDim2.new(0,14,0,14)ar.Name='ToggleOutline1'ar.Parent=aq;ar.BackgroundTransparency=1;ar.Size=UDim2.new(1,0,1,0)ar.Image='rbxassetid://2592362371'ar.ImageColor3=Color3.fromRGB(60,60,60)ar.ScaleType=Enum.ScaleType.Slice;ar.SliceCenter=Rect.new(2,2,62,62)as.Name='ToggleOutline2'as.Parent=aq;as.BackgroundTransparency=1;as.Position=UDim2.new(0,1,0,1)as.Size=UDim2.new(1,-2,1,-2)as.Image='rbxassetid://2592362371'as.ImageColor3=Color3.fromRGB(0,0,0)as.ScaleType=Enum.ScaleType.Slice;as.SliceCenter=Rect.new(2,2,62,62)at.Name='ToggleTitle'at.Parent=ap;at.BackgroundColor3=Color3.fromRGB(255,255,255)at.BackgroundTransparency=1;at.Position=UDim2.new(0,19,0,0)at.Size=UDim2.new(0,0,1,0)at.Font=Enum.Font.Code;at.Text=E;at.TextColor3=Color3.fromRGB(255,255,255)at.TextSize=14;at.TextXAlignment=Enum.TextXAlignment.Left;at.TextTransparency=0.4;ap.MouseEnter:Connect(function()aq.BorderSizePixel=1 end)ap.MouseLeave:Connect(function()aq.BorderSizePixel=0 end)ap.MouseButton1Click:Connect(function()N=not N;if N==true then game:GetService('TweenService'):Create(at,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()else game:GetService('TweenService'):Create(at,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0.4}):Play()end;pcall(ak,N)end)if N then N=true;game:GetService('TweenService'):Create(at,TweenInfo.new(0.2,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),{TextTransparency=0}):Play()pcall(ak,N)end;ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do aq.BorderColor3=r.accentclr;if N==true then aq.BackgroundColor3=r.accentclr else aq.BackgroundColor3=Color3.fromRGB(38,38,38)end end end)()end;function a9:Slider(E,G,au,ak)local av={}local v=false;local aw=Instance.new('Frame')local ax=Instance.new('TextLabel')local ay=Instance.new('Frame')local az=Instance.new('Frame')local aA=Instance.new('ImageLabel')local aB=Instance.new('ImageLabel')local aC=Instance.new('TextLabel')aw.Name='Slider'aw.Parent=ai;aw.BackgroundColor3=Color3.fromRGB(255,255,255)aw.BackgroundTransparency=1;aw.Size=UDim2.new(1,0,0,37)ax.Name='SliderTitle'ax.Parent=aw;ax.BackgroundColor3=Color3.fromRGB(255,255,255)ax.BackgroundTransparency=1;ax.Size=UDim2.new(0,0,0,13)ax.Font=Enum.Font.Code;ax.Text=E;ax.TextColor3=Color3.fromRGB(255,255,255)ax.TextSize=14;ax.TextXAlignment=Enum.TextXAlignment.Left;ay.Name='SliderFrame'ay.Parent=aw;ay.BackgroundColor3=Color3.fromRGB(38,38,38)ay.BorderSizePixel=0;ay.Position=UDim2.new(0,0,1,-20)ay.Size=UDim2.new(1,0,0,20)az.Name='SliderCurrentFrame'az.Parent=ay;az.BackgroundColor3=r.accentclr;az.BorderSizePixel=0;az.Size=UDim2.new((au[3]or 0)/au[2],0,1,0)aA.Name='SliderOutline1'aA.Parent=ay;aA.BackgroundTransparency=1;aA.Size=UDim2.new(1,0,1,0)aA.Image='rbxassetid://2592362371'aA.ImageColor3=Color3.fromRGB(60,60,60)aA.ScaleType=Enum.ScaleType.Slice;aA.SliceCenter=Rect.new(2,2,62,62)aB.Name='SliderOutline2'aB.Parent=ay;aB.BackgroundTransparency=1;aB.Position=UDim2.new(0,1,0,1)aB.Size=UDim2.new(1,-2,1,-2)aB.Image='rbxassetid://2592362371'aB.ImageColor3=Color3.fromRGB(0,0,0)aB.ScaleType=Enum.ScaleType.Slice;aB.SliceCenter=Rect.new(2,2,62,62)aC.Name='SliderVal'aC.Parent=ay;aC.BackgroundColor3=Color3.fromRGB(255,255,255)aC.BackgroundTransparency=1;aC.Size=UDim2.new(1,0,1,0)aC.Font=Enum.Font.Code;aC.Text='30'aC.TextColor3=Color3.fromRGB(255,255,255)aC.TextSize=14;if G==1 then aw.Size=UDim2.new(1,0,0,37)aC.Text=tostring(au[3]and math.floor(au[3]/au[2]*(au[2]-au[1])+au[1])or 0)else aw.Size=UDim2.new(1,0,0,20)aC.Text=E..': '..tostring(au[3]and math.floor(au[3]/au[2]*(au[2]-au[1])+au[1])or 0)end;local function aD(aE)local aF=math.clamp((aE.Position.X-ay.AbsolutePosition.X)/ay.AbsoluteSize.X,0,1)local aG=au[4]and au[2]/((au[2]-au[1])/(au[4]*4))or au[2]>=50 and au[2]/((au[2]-au[1])/4)or au[2]>=25 and au[2]/((au[2]-au[1])/2)or au[2]/(au[2]-au[1])local aH=UDim2.new(math.round(aF*au[2]/aG*4)/(au[2]/aG*4),0,1,0)az.Size=aH;local aI=math.round((aH.X.Scale*au[2]/au[2]*(au[2]-au[1])+au[1])*20)/20;aC.Text=tostring(aI)if G==1 then aC.Text=tostring(aI)else aC.Text=E..': '..tostring(aI)end;pcall(ak,aI)end;ay.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then v=true end end)ay.InputEnded:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then v=false end end)game:GetService('UserInputService').InputChanged:Connect(function(z)if v and z.UserInputType==Enum.UserInputType.MouseMovement then aD(z)end end)ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)coroutine.wrap(function()while wait()do az.BackgroundColor3=r.accentclr end end)()function av:Change(aJ)aC.Text=tostring(aJ and math.floor(aJ/au[2]*(au[2]-au[1])+au[1])or 0)if G==1 then aC.Text=tostring(aJ and math.floor(aJ/au[2]*(au[2]-au[1])+au[1])or 0)else aC.Text=E..': '..tostring(aJ and math.floor(aJ/au[2]*(au[2]-au[1])+au[1])or 0)end;az.Size=UDim2.new((aJ or 0)/au[2],0,1,0)end;return av end;function a9:Dropdown(E,aK,aL,ak)local aM=0;aL=typeof(aL)=='string'and aL;if aL==''then aL=nil end;local aN=Instance.new('Frame')local aO=Instance.new('TextLabel')local aP=Instance.new('TextButton')local aQ=Instance.new('ImageLabel')local aR=Instance.new('ImageLabel')local aS=Instance.new('TextLabel')local aT=Instance.new('ImageLabel')aN.Name='Dropdown'aN.Parent=ai;aN.BackgroundColor3=Color3.fromRGB(255,255,255)aN.BackgroundTransparency=1;aN.Size=UDim2.new(1,0,0,37)aO.Name='DropdownTitle'aO.Parent=aN;aO.BackgroundColor3=Color3.fromRGB(255,255,255)aO.BackgroundTransparency=1;aO.Size=UDim2.new(0,0,0,13)aO.Font=Enum.Font.Code;aO.Text=E;aO.TextColor3=Color3.fromRGB(255,255,255)aO.TextSize=14;aO.TextXAlignment=Enum.TextXAlignment.Left;aP.Name='DropdownFrame'aP.Parent=aN;aP.BackgroundColor3=Color3.fromRGB(38,38,38)aP.BorderSizePixel=0;aP.Position=UDim2.new(0,0,1,-20)aP.Size=UDim2.new(1,0,0,20)aP.Text=''aP.AutoButtonColor=false;aQ.Name='DropdownOutline1'aQ.Parent=aP;aQ.BackgroundTransparency=1;aQ.Size=UDim2.new(1,0,1,0)aQ.Image='rbxassetid://2592362371'aQ.ImageColor3=Color3.fromRGB(60,60,60)aQ.ScaleType=Enum.ScaleType.Slice;aQ.SliceCenter=Rect.new(2,2,62,62)aR.Name='DropdownOutline2'aR.Parent=aP;aR.BackgroundTransparency=1;aR.Position=UDim2.new(0,1,0,1)aR.Size=UDim2.new(1,-2,1,-2)aR.Image='rbxassetid://2592362371'aR.ImageColor3=Color3.fromRGB(0,0,0)aR.ScaleType=Enum.ScaleType.Slice;aR.SliceCenter=Rect.new(2,2,62,62)aS.Name='DropdownText'aS.Parent=aP;aS.BackgroundColor3=Color3.fromRGB(255,255,255)aS.BackgroundTransparency=1;aS.Position=UDim2.new(0,5,0,0)aS.Size=UDim2.new(1,-5,1,0)aS.Font=Enum.Font.Code;aS.Text=typeof(aL)=='string'and''..aL or'...'aS.TextColor3=Color3.fromRGB(205,205,205)aS.TextSize=14;aS.TextXAlignment=Enum.TextXAlignment.Left;aT.Name='DropdownArrow'aT.Parent=aP;aT.AnchorPoint=Vector2.new(0,0.5)aT.BackgroundColor3=Color3.fromRGB(255,255,255)aT.BackgroundTransparency=1;aT.Position=UDim2.new(1,-22,0.5,0)aT.Size=UDim2.new(0,20,0,20)aT.Image='http://www.roblox.com/asset/?id=6031091004'aT.ImageColor3=Color3.fromRGB(205,205,205)ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)local aU=Instance.new('Frame')local aV=Instance.new('ImageLabel')local aW=Instance.new('ImageLabel')local aX=Instance.new('ScrollingFrame')local aY=Instance.new('UIListLayout')local aZ=Instance.new('UIPadding')aU.Name='DropdownHolderFrame'aU.Parent=ad;aU.AnchorPoint=Vector2.new(0.5,0)aU.BackgroundColor3=Color3.fromRGB(38,38,38)aU.BorderSizePixel=0;aU.Position=UDim2.new(0.5,0,0,aj.AbsoluteContentSize.Y+19)aU.Size=UDim2.new(1,-16,0,0)aU.Visible=false;aU.ZIndex=1;aV.Name='DropdownHolderFrameOutline1'aV.Parent=aU;aV.BackgroundTransparency=1;aV.Size=UDim2.new(1,0,1,0)aV.Image='rbxassetid://2592362371'aV.ImageColor3=Color3.fromRGB(60,60,60)aV.ScaleType=Enum.ScaleType.Slice;aV.SliceCenter=Rect.new(2,2,62,62)aW.Name='DropdownHolderFrameOutline2'aW.Parent=aU;aW.BackgroundTransparency=1;aW.Position=UDim2.new(0,1,0,1)aW.Size=UDim2.new(1,-2,1,-2)aW.Image='rbxassetid://2592362371'aW.ImageColor3=Color3.fromRGB(0,0,0)aW.ScaleType=Enum.ScaleType.Slice;aW.SliceCenter=Rect.new(2,2,62,62)aX.Name='DropdownHolder'aX.Parent=aU;aX.Active=true;aX.BackgroundColor3=Color3.fromRGB(255,255,255)aX.BackgroundTransparency=1;aX.BorderSizePixel=0;aX.Size=UDim2.new(1,-4,1,0)aX.ScrollBarThickness=0;aX.CanvasSize=UDim2.new(0,0,0,0)aX.ScrollBarImageColor3=Color3.fromRGB(60,60,60)aY.Name='DropdownHolderLayout'aY.Parent=aX;aY.HorizontalAlignment=Enum.HorizontalAlignment.Center;aY.Padding=UDim.new(0,2)aZ.Name='DropdownHolderPadding'aZ.Parent=aX;aZ.PaddingLeft=UDim.new(0,0)aZ.PaddingTop=UDim.new(0,6)table.insert(r.dropdownframes,aU)table.insert(r.dropdownframes,aN)aP.MouseButton1Click:Connect(function()if aU.Visible==false then for p,q in next,r.dropdownframes do if q.Name=='DropdownHolderFrame'then q.Visible=false end end;for p,q in next,r.dropdownframes do if q.Name=='Dropdown'then q.DropdownFrame.DropdownArrow.Rotation=0 end end;for p,q in next,r.colorpickerframes do if q.Name=='ColorpickerFrame'then q.Visible=false end end;for p,q in next,r.colorpickerframes do if q.Name=='Colorpicker'then q.ColorpickerColorFrame.BorderSizePixel=0 end end;aT.Rotation=180;aU.Visible=true else aT.Rotation=0;aU.Visible=false end end)aP.MouseLeave:Connect(function()aP.BorderSizePixel=0 end)aP.MouseEnter:Connect(function()aP.BorderSizePixel=1 end)for p,q in next,aK do local a_=Instance.new('TextButton')local b0=Instance.new('TextLabel')a_.Name='Item'a_.Parent=aX;a_.BackgroundColor3=Color3.fromRGB(50,50,50)a_.BackgroundTransparency=typeof(aL)=='string'and aL==q and 0 or 1;a_.BorderColor3=Color3.fromRGB(50,50,50)a_.Size=UDim2.new(1,-12,0,20)a_.AutoButtonColor=false;a_.Font=Enum.Font.Code;a_.Text=' '..q;a_.TextColor3=Color3.fromRGB(255,255,255)a_.TextSize=14;a_.TextXAlignment=Enum.TextXAlignment.Left;a_.TextTransparency=typeof(aL)=='string'and aL==q and 1 or 0;b0.Name='ItemText'b0.Parent=a_;b0.BackgroundColor3=Color3.fromRGB(45,45,45)b0.BackgroundTransparency=1;b0.Position=UDim2.new(0,7,0,0)b0.Size=UDim2.new(1,-7,1,0)b0.Font=Enum.Font.Code;b0.Text=q;b0.TextColor3=r.accentclr;b0.TextSize=14;b0.TextXAlignment=Enum.TextXAlignment.Left;b0.TextTransparency=typeof(aL)=='string'and aL==q and 0 or 1;a_.MouseButton1Click:Connect(function()aU.Visible=false;aS.Text=q;aL=q;pcall(ak,q)end)coroutine.wrap(function()while wait()do b0.TextTransparency=typeof(aL)=='string'and aL==q and 0 or 1;b0.TextColor3=r.accentclr;a_.TextTransparency=typeof(aL)=='string'and aL==q and 1 or 0;a_.BackgroundTransparency=typeof(aL)=='string'and aL==q and 0 or 1;a_.BorderColor3=r.accentclr end end)()aU.Size=UDim2.new(1,-16,0,aY.AbsoluteContentSize.Y+(#aX:GetChildren()-2)*2)end;coroutine.wrap(function()while wait()do aP.BorderColor3=r.accentclr end end)()end;function a9:Colorpicker(E,b1,ak)local b2=false;local b3=Color3.fromRGB(0,0,0)local b4=Color3.fromRGB(0,0,0)local b5=nil;local b6=nil;local b7,b8,b9=1,1,1;local ba=false;local bb=nil;local bc=nil;local bd=nil;local be=Instance.new('TextButton')local bf=Instance.new('Frame')local bg=Instance.new('ImageLabel')local bh=Instance.new('ImageLabel')local bi=Instance.new('TextLabel')be.Name='Colorpicker'be.Parent=ai;be.BackgroundColor3=Color3.fromRGB(255,255,255)be.BackgroundTransparency=1;be.Size=UDim2.new(1,0,0,22)be.Font=Enum.Font.SourceSans;be.Text=''be.TextColor3=Color3.fromRGB(0,0,0)be.TextSize=14;bf.Name='ColorpickerColorFrame'bf.Parent=be;bf.AnchorPoint=Vector2.new(0,0.5)bf.BackgroundColor3=b1;bf.BorderColor3=Color3.fromRGB(255,55,55)bf.BorderSizePixel=0;bf.Position=UDim2.new(1,-17,0.5,0)bf.Size=UDim2.new(0,17,0,11)bg.Name='ColorpickerColorFrameOutline1'bg.Parent=bf;bg.BackgroundTransparency=1;bg.Size=UDim2.new(1,0,1,0)bg.Image='rbxassetid://2592362371'bg.ImageColor3=Color3.fromRGB(60,60,60)bg.ScaleType=Enum.ScaleType.Slice;bg.SliceCenter=Rect.new(2,2,62,62)bh.Name='ColorpickerColorFrameOutline2'bh.Parent=bf;bh.BackgroundTransparency=1;bh.Position=UDim2.new(0,1,0,1)bh.Size=UDim2.new(1,-2,1,-2)bh.Image='rbxassetid://2592362371'bh.ImageColor3=Color3.fromRGB(0,0,0)bh.ScaleType=Enum.ScaleType.Slice;bh.SliceCenter=Rect.new(2,2,62,62)bi.Name='ColorpickerTitle'bi.Parent=be;bi.BackgroundColor3=Color3.fromRGB(255,255,255)bi.BackgroundTransparency=1;bi.Size=UDim2.new(0,0,1,0)bi.Font=Enum.Font.Code;bi.Text=E;bi.TextColor3=Color3.fromRGB(255,255,255)bi.TextSize=14;bi.TextXAlignment=Enum.TextXAlignment.Left;local bj=Instance.new('TextButton')local bk=Instance.new('Frame')local bl=Instance.new('UIGradient')local bm=Instance.new('Frame')local bn=Instance.new('ImageLabel')local bo=Instance.new('Frame')local am=Instance.new('ImageLabel')local an=Instance.new('ImageLabel')bj.Name='ColorpickerFrame'bj.Parent=ad;bj.AnchorPoint=Vector2.new(0.5,0)bj.BackgroundColor3=Color3.fromRGB(38,38,38)bj.BorderColor3=Color3.fromRGB(47,47,47)bj.BorderSizePixel=0;bj.Position=UDim2.new(0.5,34,0,aj.AbsoluteContentSize.Y+19)bj.Size=UDim2.new(0,141,0,160)bj.Visible=false;bj.AutoButtonColor=false;bk.Name='HueFrame'bk.Parent=bj;bk.AnchorPoint=Vector2.new(0,1)bk.BackgroundColor3=Color3.fromRGB(255,255,255)bk.BorderColor3=Color3.fromRGB(47,47,47)bk.BorderSizePixel=0;bk.Position=UDim2.new(1,-16,1,-6)bk.Size=UDim2.new(0,10,1,-12)bk.ZIndex=4;bl.Color=ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.fromRGB(255,0,0)),ColorSequenceKeypoint.new(0.17,Color3.fromRGB(255,0,255)),ColorSequenceKeypoint.new(0.33,Color3.fromRGB(0,0,255)),ColorSequenceKeypoint.new(0.5,Color3.fromRGB(0,255,255)),ColorSequenceKeypoint.new(0.67,Color3.fromRGB(0,255,0)),ColorSequenceKeypoint.new(0.83,Color3.fromRGB(255,255,0)),ColorSequenceKeypoint.new(1,Color3.fromRGB(255,0,0))})bl.Rotation=90;bl.Name='HueFrameGradient'bl.Parent=bk;bm.Name='HueFrameZip'bm.Parent=bk;bm.AnchorPoint=Vector2.new(0.5,0)bm.BackgroundColor3=Color3.fromRGB(30,30,30)bm.BorderColor3=Color3.fromRGB(47,47,47)bm.Position=UDim2.new(0.5,0,1-select(1,Color3.toHSV(b1)))bm.Size=UDim2.new(1,2,0,4)bm.ZIndex=4;bn.Name='ColorMain'bn.Parent=bj;bn.BackgroundColor3=b1;bn.BorderColor3=Color3.fromRGB(47,47,47)bn.ClipsDescendants=true;bn.Position=UDim2.new(0,6,0,6)bn.Size=UDim2.new(0.886524796,-12,1.09615386,-27)bn.ZIndex=4;bn.Image='rbxassetid://4155801252'bo.Name='ColorDrag'bo.Parent=bn;bo.AnchorPoint=Vector2.new(0.5,0.5)bo.BackgroundColor3=Color3.fromRGB(255,255,255)bo.Position=UDim2.new(b1 and select(3,Color3.toHSV(b1)))bo.Rotation=45;bo.Size=UDim2.new(0,4,0,4)bo.ZIndex=4;am.Name='ButtonOutline1'am.Parent=bj;am.BackgroundTransparency=1;am.Size=UDim2.new(1,0,1,0)am.Image='rbxassetid://2592362371'am.ImageColor3=Color3.fromRGB(60,60,60)am.ScaleType=Enum.ScaleType.Slice;am.SliceCenter=Rect.new(2,2,62,62)an.Name='ButtonOutline2'an.Parent=bj;an.BackgroundTransparency=1;an.Position=UDim2.new(0,1,0,1)an.Size=UDim2.new(1,-2,1,-2)an.Image='rbxassetid://2592362371'an.ImageColor3=Color3.fromRGB(0,0,0)an.ScaleType=Enum.ScaleType.Slice;an.SliceCenter=Rect.new(2,2,62,62)ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)table.insert(r.colorpickerframes,bj)table.insert(r.colorpickerframes,be)be.MouseEnter:Connect(function()if bj.Visible==false then bf.BorderSizePixel=1 end end)be.MouseLeave:Connect(function()if bj.Visible==false then bf.BorderSizePixel=0 end end)be.MouseButton1Click:Connect(function()if bj.Visible==false then for p,q in next,r.colorpickerframes do if q.Name=='ColorpickerFrame'then q.Visible=false end end;for p,q in next,r.colorpickerframes do if q.Name=='Colorpicker'then q.ColorpickerColorFrame.BorderSizePixel=0 end end;for p,q in next,r.dropdownframes do if q.Name=='DropdownHolderFrame'then q.Visible=false end end;for p,q in next,r.dropdownframes do if q.Name=='DropdownFrame'then q.DropdownBtn.DropdownFrame1.DropdownFrameIco.Rotation=0 end end;bj.Visible=true;bf.BorderSizePixel=1 else bj.Visible=false end end)local function bp(bq)bf.BackgroundColor3=Color3.fromHSV(b7,b8,b9)bn.BackgroundColor3=Color3.fromHSV(b7,1,1)pcall(ak,bf.BackgroundColor3)end;b7=1-math.clamp(bm.AbsolutePosition.Y-bk.AbsolutePosition.Y,0,bk.AbsoluteSize.Y)/bk.AbsoluteSize.Y;b8=math.clamp(bo.AbsolutePosition.X-bn.AbsolutePosition.X,0,bn.AbsoluteSize.X)/bn.AbsoluteSize.X;b9=1-math.clamp(bo.AbsolutePosition.Y-bn.AbsolutePosition.Y,0,bn.AbsoluteSize.Y)/bn.AbsoluteSize.Y;bf.BackgroundColor3=b1;bn.BackgroundColor3=b1;pcall(ak,bf.BackgroundColor3)bn.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if ba then return end;if bc then bc:Disconnect()end;bc=game:GetService('RunService').RenderStepped:Connect(function()local br=math.clamp(game:GetService('Players').LocalPlayer:GetMouse().X-bn.AbsolutePosition.X,0,bn.AbsoluteSize.X)/bn.AbsoluteSize.X;local bs=math.clamp(game:GetService('Players').LocalPlayer:GetMouse().Y-bn.AbsolutePosition.Y,0,bn.AbsoluteSize.Y)/bn.AbsoluteSize.Y;bo.Position=UDim2.new(br,0,bs,0)b8=br;b9=1-bs;bp(true)end)end end)bn.InputEnded:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bc then bc:Disconnect()end end end)bk.InputBegan:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if ba then return end;if bd then bd:Disconnect()end;bd=game:GetService('RunService').RenderStepped:Connect(function()local bt=math.clamp(game:GetService('Players').LocalPlayer:GetMouse().Y-bk.AbsolutePosition.Y,0,bk.AbsoluteSize.Y)/bk.AbsoluteSize.Y;bm.Position=UDim2.new(0.5,0,bt,0)b7=1-bt;bp(true)end)end end)bk.InputEnded:Connect(function(z)if z.UserInputType==Enum.UserInputType.MouseButton1 then if bd then bd:Disconnect()end end end)coroutine.wrap(function()while wait()do bf.BorderColor3=r.accentclr end end)()end;function a9:Bind(E,b1,ak)b1=(not m(l,b1)or m(k,b1))and tostring(b1)or Enum.KeyCode.E;local bu=Instance.new('TextButton')local bv=Instance.new('TextLabel')bu.Name='Bind'bu.Parent=ai;bu.BackgroundColor3=Color3.fromRGB(255,255,255)bu.BackgroundTransparency=1;bu.Size=UDim2.new(1,0,0,18)bu.Font=Enum.Font.Code;bu.Text=E;bu.TextColor3=Color3.fromRGB(255,255,255)bu.TextSize=14;bu.TextXAlignment=Enum.TextXAlignment.Left;bv.Name='BindText'bv.Parent=bu;bv.BackgroundColor3=Color3.fromRGB(255,255,255)bv.BackgroundTransparency=1;bv.Size=UDim2.new(1,0,1,0)bv.Font=Enum.Font.Code;bv.Text=b1:gsub('Enum.KeyCode.','')bv.TextColor3=Color3.fromRGB(255,255,255)bv.TextSize=14;bv.TextXAlignment=Enum.TextXAlignment.Right;ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)bu.MouseButton1Down:Connect(function()bv.Text='...'wait()local bw=nil;bw=game:GetService('UserInputService').InputBegan:Connect(function(z)local bx=nil;pcall(function()if not m(l,z.KeyCode)then bx=tostring(z.KeyCode)end;if m(k,z.UserInputType)and not bx then bx=k[z.UserInputType]end end)if bx and ak and typeof(ak)=='function'then bw:Disconnect()bw=nil;ak(z)bv.Text=bx:gsub('Enum.KeyCode.','')end end)delay(5,function()if bw then bw:Disconnect()bw=nil;ak({})bv.Text='NONE'end end)end)end;function a9:Textbox(E,by,bz,ak)local bA=Instance.new('Frame')local bB=Instance.new('TextLabel')local bC=Instance.new('Frame')local bD=Instance.new('ImageLabel')local bE=Instance.new('ImageLabel')local bF=Instance.new('TextBox')bA.Name='Textbox'bA.Parent=ai;bA.BackgroundColor3=Color3.fromRGB(255,255,255)bA.BackgroundTransparency=1;bA.Size=UDim2.new(1,0,0,37)bB.Name='TextboxTitle'bB.Parent=bA;bB.BackgroundColor3=Color3.fromRGB(255,255,255)bB.BackgroundTransparency=1;bB.Size=UDim2.new(0,0,0,13)bB.Font=Enum.Font.Code;bB.Text=E;bB.TextColor3=Color3.fromRGB(255,255,255)bB.TextSize=14;bB.TextXAlignment=Enum.TextXAlignment.Left;bC.Name='TextboxFrame'bC.Parent=bA;bC.BackgroundColor3=Color3.fromRGB(38,38,38)bC.BorderSizePixel=0;bC.ClipsDescendants=true;bC.Position=UDim2.new(0,0,1,-20)bC.Size=UDim2.new(1,0,0,20)bD.Name='TextboxOutline1'bD.Parent=bC;bD.BackgroundTransparency=1;bD.Size=UDim2.new(1,0,1,0)bD.Image='rbxassetid://2592362371'bD.ImageColor3=Color3.fromRGB(60,60,60)bD.ScaleType=Enum.ScaleType.Slice;bD.SliceCenter=Rect.new(2,2,62,62)bE.Name='TextboxOutline2'bE.Parent=bC;bE.BackgroundTransparency=1;bE.Position=UDim2.new(0,1,0,1)bE.Size=UDim2.new(1,-2,1,-2)bE.Image='rbxassetid://2592362371'bE.ImageColor3=Color3.fromRGB(0,0,0)bE.ScaleType=Enum.ScaleType.Slice;bE.SliceCenter=Rect.new(2,2,62,62)bF.Parent=bC;bF.BackgroundColor3=Color3.fromRGB(255,255,255)bF.BackgroundTransparency=1;bF.Position=UDim2.new(0,5,0,0)bF.Size=UDim2.new(1,-5,1,0)bF.Font=Enum.Font.Code;bF.PlaceholderColor3=Color3.fromRGB(204,204,204)bF.PlaceholderText='Type here'bF.Text=''bF.TextColor3=Color3.fromRGB(255,255,255)bF.TextSize=14;bF.TextXAlignment=Enum.TextXAlignment.Left;bF.TextEditable=true;ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)bF.Changed:Connect(function(bG)if bG then if#bF.Text>0 then pcall(ak,bF.Text)end end end)bF.FocusLost:Connect(function(bG)if bG then if#bF.Text>0 then if bz then bF.Text=''end end end end)bF:GetPropertyChangedSignal('Text'):Connect(function()if by==true then bF.Text=bF.Text:gsub('%D+','')end end)end;function a9:Label(E)local bH={}local bI=Instance.new('TextLabel')bI.Name='Label'bI.Parent=ai;bI.BackgroundColor3=Color3.fromRGB(255,255,255)bI.BackgroundTransparency=1;bI.Size=UDim2.new(1,0,0,18)bI.Font=Enum.Font.Code;bI.Text=E;bI.TextColor3=Color3.fromRGB(255,255,255)bI.TextSize=14;bI.TextXAlignment=Enum.TextXAlignment.Left;ad.Size=UDim2.new(1,-2,0,aj.AbsoluteContentSize.Y+24)function bH:Change(bJ)bI.Text=bJ end;return bH end;return a9 end;return a9 end;return a0 end;local bK=r:Window('Kicia Hook')local bL=bK:Tab('')local bM=bL:Section('Login')local bN=''bM:Textbox('Enter Key:',false,false,function(bO)bN=bO end)if c.FFA then bM:Label('Script is currently keyless!')end;local bP;bM:Button('Confirm',function(bO)bN=bN:gsub('%s+','')if bN==''then if c.FFA then d()end end;local j=f.check_key(bN)if j.code=='KEY_VALID'then script_key=bN;d()else bP:Change(h(j.code))task.wait(5)bP:Change('[Key status appears here]')end end)local bQ;bM:Button('Get Key',function()if setclipboard then setclipboard('https://ads.luarmor.net/godhub')bQ:Change('URL copied to your clipboard')task.wait(3)bQ:Change('Key: ads.luarmor.net/godhub')else bQ:Change("Couldn't copy the URL to your clipboard")task.wait(3)bQ:Change('Key: ads.luarmor.net/godhub')end end)bM:Button('Copy Discord Invite',function()if setclipboard then setclipboard(a)end end)bQ=bM:Label('Key: ads.luarmor.net/godhub')bM:Label('Discord: '..a)bP=bM:Label(e)end
