//Небольшая справка в начале.
//Еще раз привет, мой псевдоним Tak и ты уже и сам об этом знаешь, если качал эту заготовку из описания моих роликов по созданию пушки.
//Я не полностью беру на себя авторство этого кода. Большая часть заготовки была нагло взята из руководства "Создание собственного оружия (SWEP)"
//От человека под ником Тосол, который, по-видимому, забил на стим и стал жить нормальной жизнью.
//Изначально говорите спасибо ему за код, а не мне.
//Также за авторством некоторой части кода стоит человек с ником Полковник. Он сделал множество паков с оружием для Garry's Mod'a, и некоторые его находки мне показались крайне клевыми,
//из-за чего я применил их и у себя в оружии, и в этом коде.
//Тем не менее, если вы нашли ошибки в этом коде, то будьте добры сообщить в комменты под видео. Я попытаюсь исправить.

//Также стоит понимать, что просто изменяя этот шаблон вы НЕ научитесь делать пушки. Я его выложил по-большей части только для начального толчка.
//Я крайне рекомендую после того, как вы закончите баловаться с этой заготовкой, создать свой код и написать реально свое оружие. Это поможет вам во многих ситуациях.

--У данной пушки имеется несколько шаблонов сразу:
--Стрельба							 - пулями/пропами.
--Тип разброса					 - Стандартный/Динамический
--Дополнительный огонь	 - Альтернативная атака/Прицеливание/Режим Стрельбы
--Выбирайте нужные вам и настраивайте их(инструкции по настройке лежат дальше).
--Изначально здесь стоят настройки для атаки пулями со стандартным типом разброса с возможностью смены режима стрельбы.


SWEP.PrintName	= "тебе въебать?"					-- Название оружия
SWEP.Category = "pain"											-- Категория, в которой будет находиться оружие
SWEP.Spawnable = true											-- Можно ли спавнить это оружие? Если нет, то оно не будет отображаться в спавн-меню.
SWEP.AdminOnly = true											-- Это оружие может спавнить только админ? Если нет, то все участники сервера
SWEP.AutoSwitchTo = false									-- Будем ли мы при подборе этой пушки автоматически сменяться на нее
SWEP.AutoSwitchFrom = false								-- Будем ли мы при подборе другой пушки автоматически сменяться с этой
SWEP.Instructions = "ты лох трусы в горох"	-- Описание оружия(необязательно)
SWEP.Weight = 5														-- Что-то вроде стоимости оружия. Оно используется при подборе нового оружия для определения, стоит ли переключаться на него или лучше остаться на нынешнем.

SWEP.Slot = 2											-- Слот, в котором будет находиться наше оружие
SWEP.SlotPos = 5									-- Позиция в слоту. Если у другого оружия она будет выше, то другое оружие будет браться в руки первым, и только потом эта пушка
SWEP.DrawCrosshair = true					-- Отображать перекрестие в центре экрана?
SWEP.DrawAmmo = true							-- Отображать кол-во патронов у пушки? Рекомендуется ставить на нет, если используется ближний бой
SWEP.BounceWeaponIcon = false 		-- Будет ли иконка с оружием смешно прыгать в меню выбора оружия
SWEP.DrawWeaponInfoBox = true		-- Отображать поле с информацией в меню выбора оружия? Если нет, то описание впринципе не нужно

--Параметры WalkSpeed и RunSpeed не будут работать просто так, для них требуется отдельное встраивание.

SWEP.HoldType = "ar2"																					-- Как мы будем держать наше оружие от третьего лица.
SWEP.ViewModelFlip = false																			-- Отзеркалить модель от первого лица на левую сторону?
SWEP.UseHands = true																					-- Использовать руки для модели от первого лица или оставить только пушку?
SWEP.ViewModel = "models/weapons/cstrike/c_smg_mac10.mdl"		-- Модель от первого лица
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"					-- Модель от третьего лица
SWEP.Primary.Sound = "Weapon_M4A1.Single"										-- Звук стрельбы.


///////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Вы можете выбрать два варианта разброса - Простой. Он всегда будет одним и тем же.

SWEP.Primary.Spread = 0.06 -- Разброс

// Или же динамический разброс ( заранее спасибо Полковнику, я в его паке с КСС пушками эту систему впервые увидел )
// В случае, если вы захотите включить эту систему, то через CTRL+F ищите "Динамический Разброс" и раскомментируйте то, что необходимо.


-- SWEP.Primary.Spread = 0.025													 -- Разброс по умолчанию
-- SWEP.Primary.SpreadMin = 0.025											 -- Минимальный разброс
-- SWEP.Primary.SpreadMax = 0.1355										 -- Максимальный разброс
-- SWEP.Primary.SpreadKick = 0.022											 -- Какое кол-во разброса будет добавляться после каждого выстрела
-- SWEP.Primary.SpreadKickAlt = 0.02										 -- Какое кол-во разброса будет добавляться после каждого выстрела(Альтернативная Атака)
-- SWEP.Primary.SpreadMove = 0.0911										 -- Какой разброс будет в движении
-- SWEP.Primary.SpreadAir = 0.1177											 -- Какой разброс будет в воздухе
-- SWEP.Primary.SpreadRecoveryTime = 0.97							 -- время, необходимое на полное восстановление разброса(иначе говоря от максимального к минимальному)
-- SWEP.Primary.SpreadRecoveryTimer = CurTime()				 -- Необходимый таймер.
-- SWEP.ShotTimer = CurTime()													 -- Нужное значение для определения, когда происходит атака.
///////////////////////////////////////////////////////////////////////////////////////////////////////////////


SWEP.Primary.Delay = 0.12						 -- Скорострельность
SWEP.Primary.Recoil_pitch = -0.8			 -- Отдача вверх
SWEP.Primary.Recoil_yaw_min = -0.2		 -- Отдача влево/вправо(зависит от того, является ли значение положительным или отрицательным)
SWEP.Primary.Recoil_yaw_max = 0.2		 -- наверх посмотри
SWEP.Primary.Recoil_roll = 0.1					 -- Отдача в себя(скручивание)

SWEP.Primary.Damage = 14						 -- непонятный набор слов
SWEP.Primary.NPCDamage = 9.5				 -- непонятный набор слов для НПС
SWEP.Primary.NumberofShots = 1			 -- количество пуль, создаваемых при выстреле
SWEP.Primary.TakeAmmo = 1					 -- количество патронов, забираемых при выстреле
SWEP.Primary.ClipSize = 34						 -- размер обоймы
SWEP.Primary.DefaultClip = 34					 -- кол-во патронов при подборе
SWEP.Primary.Automatic = true				 -- определяет, является ли пушка автоматической
SWEP.Primary.Ammo = "ar2"						 -- патроны для пушки
SWEP.CSMuzzleFlashes = 1						 -- исправляет вспышки выстрелов для CSS оружия

SWEP.Base = "weapon_base" -- То, на чем будет основываться наша пушка. Рекомендуется к изменениям только для опытных геймеров.

//Настройки дополнительной атаки.
SWEP.Secondary.ClipSize	= 0				 -- Размер обоймы дополнительного огня
SWEP.Secondary.DefaultClip = 0			 -- Сколько патронов к доп. огню будет выдаваться при подборе оружия
SWEP.Secondary.Automatic = false		 -- Доп. Огонь автоматически или полу-автоматический?
SWEP.Secondary.Ammo = "none"			 -- Какие патроны будет использовать доп. Огонь
SWEP.Secondary.Delay	= 0.25				 -- Скорострельность доп. Огня.

//Альтернативный Огонь. Настройки дополнительной атаки.
-- SWEP.Secondary.ClipSize	= 3					 -- Размер обоймы дополнительного огня
-- SWEP.Secondary.DefaultClip = 0				 -- Сколько патронов к доп. огню будет выдаваться при подборе оружия
-- SWEP.Secondary.Automatic = false			 -- Доп. Огонь автоматически или полу-автоматический?
-- SWEP.Secondary.Ammo = "smg1_grenade"			 -- Какие патроны будет использовать доп. Огонь
-- SWEP.Secondary.Delay	= 0.30					 -- Скорострельность доп. Огня.

SWEP.Burst = 0		 -- Какой режим огня стоит по умолчанию(см. SecondaryAttack)
SWEP.OBO = 0			 -- Кол-во отстрелянных патронов.

SWEP.Scope = 0 -- Включен ли по умолчанию прицел?(см. SecondaryAttack)

 
 
 
 
 
 
 
 
 
 

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // 	Это заготовка для оружия, стреляющего пластмассовыми пульками, шариками и прочей херней, не похожей на гарпуны. \\
//		Если хочешь ее использовать, то закоментируй второй по счету SWEP.PrimaryAttack и раскомментируй первый.			 \\
 
 
 
function SWEP:PrimaryAttack()	 -- Бесполезный кусок текста, вообще не знаю зачем он тут нужен.
if ( !self:CanPrimaryAttack() )		 -- Можно ли щас стрелять или нет.
then 
return
end
if self.Owner:IsPlayer() then
local tr = self.Owner:GetEyeTrace() -- пушка смотрит куда мы смотрим.
end
local bullet = {} -- создание пули
bullet.Num = self.Primary.NumberofShots --пуля набирает параметры, выставленные ранее.
bullet.Src = self.Owner:GetShootPos()
bullet.Dir = self.Owner:GetAimVector()
bullet.Spread = Vector( self.Primary.Spread, self.Primary.Spread, 0 )
bullet.Tracer = self.Primary.Tracer 
if self.Owner:IsPlayer() then --Проверка связи, пользуется ли игрок пушкой. Если нет, то будет использоваться второй урон.
bullet.Damage = self.Primary.Damage 
else
bullet.Damage = self.Primary.NPCDamage 
end
bullet.AmmoType = self.Primary.Ammo 

//Для использования звука выстрела можно использовать как стандартные звуки, так и свои собственные.
//Если хочешь использовать собственные:
--self.EmitSound("weapons/huntingrifle/chr_fire1.wav", 40, 100, 1, 136) -- звук выстрела
//Если хочешь использовать стандартные
--self.EmitSound(Sound(Weapon_Crowbar.Single), 40, 100, 1, 136) -- звук выстрела с расширенными настройками.
self:EmitSound( self.Primary.Sound ) -- да еб вашу мать, еще один звук.

self:TakePrimaryAmmo(self.Primary.TakeAmmo) -- разводят на патроны.

self.Weapon:MuzzleFlash()							 -- вспышка
self.Owner:FireBullets( bullet )					 -- выставление владельца пули чтобы понять, кого сажать.
self.Owner:ViewPunch( Angle( self.Primary.Recoil_pitch,math.Rand(self.Primary.Recoil_yaw_min,self.Primary.Recoil_yaw_max),self.Primary.Recoil_roll ) ) -- фейковая отдача оружия.
self.Weapon:SendWeaponAnim(ACT_VM_PRIMARYATTACK)		 -- анимация пушки от первого лица.
self.Owner:SetAnimation( PLAYER_ATTACK1 )								 -- анимации от третьего лица.
self:SetNextPrimaryFire( CurTime() + self.Primary.Delay)			 -- Когда можно будет выстрелить в следующий раз.


--Дальше идут переменные для Альтернативных атак, так что для лучшего понимания лучше сначала ознакомиться с ними ниже.
--Режим стрельбы


//Динамический разброс. Также поддерживает использование прицела.
-- self.ShotTimer = CurTime() + 0.101									 -- как я и говорил, необхимая переменная для полноценной работы
-- if self.Primary.Spread < self.Primary.SpreadMax then	 -- Разброс при использовании прицела
-- if self.Scope == 0 then
-- self.Primary.Spread = self.Primary.Spread + self.Primary.SpreadKick
-- end
-- if self.Scope == 1 then
-- self.Primary.Spread = self.Primary.Spread + self.Primary.SpreadKickAlt
-- end
-- end

//Режим Стрельбы. Этот кусочек кода позволяет стрелять очередями.
if self.Burst == 1 then		 -- счетчик отстрелянных патронов.
self.OBO = self.OBO + 1
bullet.Spread = Vector( self.Primary.Spread, self.Primary.Spread, 0 )		 -- Разброс пули. С этим режимом стрельбы существует баг: первая пуля всегда будет бить точно туда, куда мы смотрим.
if self.OBO <= 2 then
timer.Simple( 0.068, function() self:PrimaryAttack() end ) -- Функция заставляет оружие самостоятельно стрелять до тех пор, пока не будет отстреляно 3 патрона.
else
self.OBO = 0
end
end

end


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // 	Это заготовка для оружия, стреляющего пропами/менхеками и прочей херней, не похожей на пластмассовые пульки. \\
//		 Если хочешь ее использовать, то закоментируй верхний SWEP.PrimaryAttack и раскомментируй нижние строки.			 \\
-- function SWEP:PrimaryAttack()

-- self:OhShit()

-- end

-- function SWEP:OhShit() -- Here We Go Again

-- if ( CLIENT ) then return end

-- local herewegoagain = ents.Create( "npc_manhack" ) -- сюда вставлять либо prop_physics, либо название энтити/нпс

-- if ( !IsValid( herewegoagain ) ) then return end -- Rolling Heights Ballas Country

 -- -- herewegoagain:SetModel( "models/props_junk/harpoon002a.mdl" ) -- модель, если используется prop_physics

-- herewegoagain:SetPos( ( self.Owner:GetAimVector() * 60 ) + self.Owner:EyePos() ) 		--| Задает позицию и направление. 
-- herewegoagain:SetAngles( self.Owner:EyeAngles() )										--} Если проп слишком большой и есть небольшое застревание после его появления,
-- herewegoagain:Spawn()																	--| поменять значение 60 на любое другое.

-- --Значения ниже предназначены для prop_physics(кроме velocity)
-- local rollingheightsballascountry = herewegoagain:GetPhysicsObject() -- Worst place in the world.
-- if ( !IsValid( phys ) ) then herewegoagain:Remove() return end

-- local velocity = self.Owner:GetAimVector()
-- velocity = velocity * 2000 -- по странным обстоятельствам работает только с нпс(npc_manhack)
-- velocity = velocity + ( VectorRand() * 10 )
-- rollingheightsballascountry:ApplyForceCenter( velocity )

-- cleanup.Add( self.Owner, "props", herewegoagain ) -- блок текста, позволяющий на Z удалять весь наш бардак.
-- undo.Create( "Suicide" )
-- undo.AddEntity( herewegoagain )
-- undo.SetPlayer( self.Owner )
-- undo.Finish()-- atleast I ain't represent the Grove in five years
-- end -- But the ballas don't give a shit, 
-- --Here We Go Again





//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Дальше перечислены различные варианты Дополнительного огня. Вы можете разумеется сделать свои варианты, здесь я лишь предлагаю как его можно применить.
//Необходимый вам вариант нужно раскомментировать. Все остальные должны быть закомментированы.
//Также иногда эти варианты используют код и в других функциях(вроде основной атаки). Если это так, то ищите их название (к примеру, "Прицеливание")
//Через CTRL+F и отключайте/включайте необходимые вам вещи с помощью комментирования.



// Прицеливание
// Позволяет прицеливаться через изменение угла обзора. Выглядит колхозно, но работает.
// При использовании с Динамическим Разбросом он будет ниже(и соответственно, проще контролируемый) во время прицеливания.
-- function SWEP:SecondaryAttack()
-- if self.Scope == 0 then
-- self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )		-- Когда можно будет убрать прицеливание.
-- self.Scope = 1																								-- Переменная для контроля остальных функций.
-- -- self.Primary.Spread = 0.011																	-- Изменяет параметр разброса. Поддерживается только Простой Разброс.
-- self.Weapon:SetNWInt( "MouseSensitivity", 0.67 )								-- Должна изменять чувствительность мыши. Почему должна? Потому что она почему-то не работает.
-- self.Owner:SetFOV( self.Owner:GetFOV() / 1.4, 0.22 )							-- Изменяет угол обзора(первая цифра), и скорость перехода в этот угол обзора(вторая цифра, в секундах)
-- self.Owner:SetWalkSpeed( self.Owner:GetWalkSpeed * 0.5 )				-- Изменяет скорость передвижения
-- self.Owner:SetRunSpeed( self.Owner:GetRunSpeed * 0.5 )					-- Настолько непохожая на верхнюю строчку кода строчка кода, что бог делал ее седьмой день.
-- -- self:EmitSound("weapons_scope/rifle/zoom_in_rifl"..(math.random (1,6))..".wav", 40, 100, 1, 3)			-- Звук.
-- else -- Если мы уже находились в прицеливании, то функция ниже вернет оружие в положение "От бедра".
-- if self.Scope == 1 then
-- self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
-- self.Scope = 0
-- -- self.Primary.Spread = 0.04																	-- Изменяет параметр разброса. Поддерживается только Простой Разброс.
-- self.Weapon:SetNWInt( "MouseSensitivity", 1 )
-- self.Owner:SetFOV( 0, 0.2 )
-- self.Owner:SetWalkSpeed( self.Owner:GetWalkSpeed * 2 )
-- self.Owner:SetRunSpeed( self.Owner:GetRunSpeed * 2 )
-- -- self:EmitSound("weapons_scope/rifle/zoom_out_rifl"..(math.random (1,6))..".wav", 40, 100, 1, 136)
-- end
-- end
-- if self.Scope >= 2 then -- Это на всякий случай, если по каким-то причинам переменная ушла сильно далеко.
-- self.Scope = 1
-- end
-- if self.Scope =< -1 then -- Опять же, на всякий случай.
-- self.Scope = 0
-- end
-- end



// Режим стрельбы
//Изменяет режим стрельбы оружия. Лучше использовать параметры динамического разброса, посколько так легче изменять баланс пушки.
//При смене режима стрельбы оружие будет стрелять медленнее, но контролируемо в плане кол-ва патронов. В случае стрельбы очередями пушка будет выстреливать по три патрона.
//ВНИМАНИЕ - Данные параметры нужно изменять вручную, включая разброс и скорострельность.
function SWEP:SecondaryAttack()
if self.Burst == 0 then
self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )							 -- стрелять можно будет только через некоторое время после смены режима огня. Это некоторое время выставляется скорострельностью альтернативной атаки.
self.Burst = 1																													 -- Переменная для активации других функций.
self.Secondary.Automatic = true																					 -- Изменяет режим стрельбы альт огня. Сделано для защиты от постоянной смены режима огня, просто зажимая ПКМ.
self.Primary.Delay = 0.068																							 -- Скорострельность в другом режиме огня.
self.Owner:PrintMessage( HUD_PRINTTALK, "Режим стрельбы - Очередь." ) 		 -- Для того, чтобы игрок понимал, что он изменил режим огня на определенный другой.
self:EmitSound("weapons/autopistol/firemode.wav", 50, 100, 1, 136)					 -- Чтобы он блять точно понимал че он делает.
self.Primary.Spread = 0.072																							 -- Разброс у другого режима огня.
-- self.Primary.SpreadMin = 0.038
-- self.Primary.SpreadMax = 0.1681
-- self.Primary.SpreadKick = 0.01423
-- self.Primary.SpreadKickAlt = 0.015
-- self.Primary.SpreadMove = 0.1202
-- self.Primary.SpreadAir = 0.145
-- self.Primary.SpreadRecoveryTime = 2.46
else
self:SetNextSecondaryFire( CurTime() + self.Secondary.Delay )
self.Burst = 0
self.Secondary.Automatic = false			 -- Изменяет режим стрельбы альт огня. Сделано для защиты от постоянной смены режима огня, просто зажимая ПКМ.
self.Primary.Delay = 0.12
self.Owner:PrintMessage( HUD_PRINTTALK, "Режим стрельбы - Автоматический." )
self:EmitSound("weapons/autopistol/firemode.wav", 50, 100, 1, 136)
self.Primary.Spread = 0.06
-- self.Primary.SpreadMin = 0.025
-- self.Primary.SpreadMax = 0.1355
-- self.Primary.SpreadKick = 0.022
-- self.Primary.SpreadKickAlt = 0.02
-- self.Primary.SpreadMove = 0.0911
-- self.Primary.SpreadAir = 0.1177
-- self.Primary.SpreadRecoveryTime = 0.97
end
end






//Альт атака заканчивается тут.
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



function SWEP:Reload()			 -- Перезарядим пушку.
if ( self:GetNextPrimaryFire() > CurTime() ) then return end																						 -- Проверка связи
if ( self.Weapon:Clip1() < self.Primary.ClipSize && self.Owner:GetAmmoCount( self.Primary.Ammo ) > 0 ) then -- проверка связи я говорю
self:SetNextPrimaryFire( CurTime() + 3)																								 -- когда можно будет стрелять. Изменяй цифру 3.
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )		 -- когда можно будет стрелять доп. огнем.
self.Scope = 0																 -- Если будешь делать вместо альтернативной атаки прицеливание, то эта переменная будет его отключать в ненужное время.
self:DefaultReload(ACT_VM_RELOAD)											 -- Анимация от первого лица.
self.Owner:SetAnimation( PLAYER_RELOAD )								 -- Анимация от третьего лица.
--self:EmitSound("weapons/assaultrifle/reload_full.wav")		 -- сюда можешь по преколу вставить свой звук перезарядки, а точнее путь к нему.


timer.Simple( 2, function() self:EmitSound("weapons/reload.wav") end) -- опять звук, но уже на таймере, какого хера их тут так много


end
end



function SWEP:Deploy()															 -- Достанем пушку из инвентаря.
self.Weapon:SendWeaponAnim( ACT_VM_DRAW )			 -- Анимация от первого лица
self:SetNextPrimaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )				 -- когда можно будет стрелять.
self:SetNextSecondaryFire( CurTime() + self.Owner:GetViewModel():SequenceDuration() )			 -- когда можно будет стрелять альт. Атакой.
self.Scope = 0															 -- Если будешь делать вместо альтернативной атаки прицеливание, то эта переменная будет его отключать
self:SetWeaponHoldType( self.HoldType )			 -- Анимации держания оружия от третьего лица.
return true
end



function SWEP:Holster()								 -- Спрячем пушку в инвентарь.
self.Scope = 0												 -- Если будешь делать вместо альтернативной атаки прицеливание, то эта переменная будет его отключать
self.Owner:SetFOV( 0, 0 )							 -- Возвращает FOV в нормальное состояние.
self.Owner:SetWalkSpeed( 200 )				 -- Возвращает скорость в нормальное состояние.
self.Owner:SetRunSpeed( 400 )				 -- Бля буду возвращает.
return true
end



function SWEP:Initialize()		-- Срабатывает при появлении в мире.
self:SetWeaponHoldType( self.HoldType )		 -- Анимации держания оружия от третьего лица.
end



function SWEP:Equip()			 -- Сработает, если подберешь, так что лучше не провоцируй.

end



function SWEP:Think() -- Работает всегда, пока оружие в руках(на самом деле не всегда, а если быть более точным то каждый кадр, но кого это мать вашу волнует)
//Режим Стрельбы. Этот кусочек кода позволяет стрелять очередями.
if self.OBO >= 2 then	 -- Эта функция используется для того, чтобы предотвращать бесконечное количество атак в режиме стрельбы очередями.
										 -- Она ставит задержку в секунду между уже отстрелянной и следующей очередями.
self.Primary.Delay = 1.1
timer.Simple( 1.10001 , function() self.OBO = 0 end)
end

//Динамический Разброс. Данные настройки позволяют ему нормально работать.
-- if self.ShotTimer > CurTime() then --Используется для определения, нужно ли ставить максимальное время восстановления разброса или нет.
-- self.Primary.SpreadRecoveryTimer = CurTime() + self.Primary.SpreadRecoveryTime
-- end
-- if self.Owner:IsOnGround() then -- Стандартные настройки разброса, когда игрок находится на земле.
-- if self.Owner:GetVelocity():Length() <= 100 then --Обычный разброс при стрельбе на месте.
-- if self.Primary.SpreadRecoveryTimer <= CurTime() then
-- self.Primary.Spread = self.Primary.SpreadMin
-- end
-- if self.Primary.Spread > self.Primary.SpreadMin then
-- self.Primary.Spread = ( ( self.Primary.SpreadRecoveryTimer - CurTime() ) / self.Primary.SpreadRecoveryTime ) * self.Primary.Spread
-- end
-- end
-- if self.Owner:GetVelocity():Length() <= 100 and self.Primary.Spread > self.Primary.SpreadMax then
-- self.Primary.Spread = self.Primary.SpreadMax
-- end
-- if self.Owner:GetVelocity():Length() > 100 then -- Разброс при стрельбе в движении. Он использует как вы уже наверняка заметили ускорение игрока для индикатора движения.
-- self.Primary.Spread = self.Primary.SpreadMove
-- self.Primary.SpreadRecoveryTimer = CurTime() + self.Primary.SpreadRecoveryTime
-- if self.Primary.Spread > self.Primary.SpreadMin then
-- self.Primary.Spread = ( ( self.Primary.SpreadRecoveryTimer - CurTime() ) / self.Primary.SpreadRecoveryTime ) * self.Primary.SpreadMove
-- end
-- end
-- end
-- if !self.Owner:IsOnGround() then -- Если игрок не находится в движении а куда-то зачем-то летит и при этом как дебил стреляет.
-- self.Primary.Spread = self.Primary.SpreadAir
-- self.Primary.SpreadRecoveryTimer = CurTime() + self.Primary.SpreadRecoveryTime
-- if self.Primary.Spread > self.Primary.SpreadMin then
-- self.Primary.Spread = ( ( self.Primary.SpreadRecoveryTimer - CurTime() ) / self.Primary.SpreadRecoveryTime ) * self.Primary.SpreadAir
-- end
-- end
end

function SWEP:OnRemove() -- Если нужно удалить что-то еще помимо пушки из мира при удалении оружия, то тебе в этот костер, сталкер.

end



