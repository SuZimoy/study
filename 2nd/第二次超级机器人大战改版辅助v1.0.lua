---@diagnostic disable: undefined-global

local X = 0
local Y = 0

local tableNum = {}
local tableStunt = { 0.75, 0.75, 0, 0.66, 0.66, 0, 0, 0 }
--------我方机体---------

local ourNum = 12

--我方机体坐标
local ourXAdr = 0x7597
local ourYAdr = 0x75b7

local tableOurX             = {}
local tableOurY             = {}
--我方机体属性地址
local ourBodyLevelAdr       = 0x7577
local ourBodyStrenthHighAdr = 0x74d4
local ourBodyStrenthLowAdr  = 0x7777
local ourBodyDefenseLowAdr  = 0x7797
local ourBodyDefenseHighAdr = 0x74db
local ourBodySpeedLowAdr    = 0x77b7
local ourBodySpeedHighAdr   = 0x74e4
local ourBodyStuntAdr       = 0x77f7
local ourBodyDefenseAdr     = 0x6206
local ourBodySpeedAdr       = 0x6246
local ourBodyTypeAdr        = 0x77d7
--我方机体属性表

local tableOurBodyLevel       = {}
local tableOurBodyStrenth     = {}
local tableOurBodyStrenthLow  = {}
local tableOurBodyStrenthHigh = {}

local tableOurBodyDefense     = {}
local tableOurBodyDefenseLow  = {}
local tableOurBodyDefenseHigh = {}

local tableOurBodySpeed     = {}
local tableOurBodySpeedLow  = {}
local tableOurBodySpeedHigh = {}

local tableOurBodyStunt = {}
local tableOurBodyType = {}


--我方武器地址
local ourBodyWepon1Adr = 0x75f7
local ourBodyWepon2Adr = 0x7617

local tableOurBodyWepon1 = {}
local tableOurBodyWepon2 = {}

local ourBodyWeponAdr_air  = 0x666b
local ourBodyWeponAdr_land = 0x6673
local ourBodyWeponAdr_sea  = 0x667b

local tableOurBodyGunshot1    = {}
local tableOurBodyWepon1_air  = {}
local tableOurBodyWepon1_land = {}
local tableOurBodyWepon1_sea  = {}

local tableOurBodyGunshot2    = {}
local tableOurBodyWepon2_air  = {}
local tableOurBodyWepon2_land = {}
local tableOurBodyWepon2_sea  = {}

----------敌方机体---------

local enemyNum  = 20
--敌机坐标
local enemyXAdr = 0x75a5
local enemyYAdr = 0x75c5
local enemyX
local enemyY


local tableEnemyX       = {}
local tableEnemyY       = {}
--敌方属性地址
local enemyBodyLevelAdr = 0x7585
local enemyBodyMotorAdr
local enemyBodyNowspriteAdr
local enemyBodyTotalSpriteAdr

local enemyBodyNowHpAdr
local enemyBodyHpAdr
local enemyBodyStrenthHighAdr   = 0x74d7
local enemyBodyStrenthLowAdr    = 0x7785
local enemyBodyDefenseHighAdr   = 0x74cf
local enemyBodyDefenseLowAdr    = 0x77a5
local enemyBodySpeedHighAdr     = 0x74e7
local enemyBodySpeedLowAdr      = 0x77c5
local enemyBodyEXPAdr
local enemyBodyUpNeedAdr
local enemyBodyTypeAdr          = 0x77e5
local enemyBodyStuntAdr         = 0x7805
--敌方属性表
local tableEnemyBodyStrenth     = {}
local tableEnemyBodyStrenthHigh = {}
local tableEnemyBodyStrenthLow  = {}

local tableEnemyBodyDefense     = {}
local tableEnemyBodyDefenseHigh = {}
local tableEnemyBodyDefenseLow  = {}


local tableEnemyBodySpeed     = {}
local tableEnemyBodySpeedHigh = {}
local tableEnemyBodySpeedLow  = {}

local tableEnemyBodyLevel = {}

local tableEnemyBodyStunt    = {}
local tableEnemyBodyType     = {}
--敌方武器地址
local enemyBodyWeponAdr_air  = 0x666b
local enemyBodyWeponAdr_land = 0x6673
local enemyBodyWeponAdr_sea  = 0x667b

local tableEnemyBodyGunshot1    = {}
local tableEnemyBodyWepon1_air  = {}
local tableEnemyBodyWepon1_land = {}
local tableEnemyBodyWepon1_sea  = {}

local tableEnemyBodyGunshot2    = {}
local tableEnemyBodyWepon2_air  = {}
local tableEnemyBodyWepon2_land = {}
local tableEnemyBodyWepon2_sea  = {}

--通用大型机属性地址
local bigBodyLevelAdr       = 0x6246
local bigBodyMotorAdr       = 0x6288
local bigBodyNowspriteAdr   = 0x6294
local bigBodyTotalSpriteAdr = 0x6296
local bigBodyForceAdr       = 0x62c7
local bigBodyNowHpAdr       = 0x62d4
local bigBodyHpAdr          = 0x62d8
local bigBodyDefenseAdr     = 0x6307
local bigBodySpeedAdr       = 0x6347
local bigBodyEXPAdr         = 0x6317
local bigBodyUpNeedAdr      = 0x6357

local BigBodyGunshotAdr = 0x665b


local bigBodyWeponAdr_air  = 0x66ab
local bigBodyWeponAdr_land = 0x66b3
local bigBodyWeponAdr_sea  = 0x66bb

--通用小型机地址
local bodyGunshotAdr = 0x661b
local ro1 = 1
local ro2 = 1
local count = 1
---初始化我方属性表
for i = 1, ourNum do

  tableOurX[i]               = 0
  tableOurY[i]               = 0
  tableOurBodyLevel[i]       = 0
  tableOurBodyStrenthLow[i]  = 0
  tableOurBodyStrenthHigh[i] = 0
  tableOurBodyStrenth[i]     = 0
  tableOurBodyDefense[i]     = 0
  tableOurBodyDefenseLow[i]  = 0
  tableOurBodyDefenseHigh[i] = 0
  tableOurBodySpeed[i]       = 0
  tableOurBodySpeedLow[i]    = 0
  tableOurBodySpeedHigh[i]   = 0
  tableOurBodyStunt[i]       = 0

  tableOurBodyType[i] = 0

  tableOurBodyGunshot1[i]    = 0
  tableOurBodyGunshot2[i]    = 0
  tableOurBodyWepon1[i]      = 0
  tableOurBodyWepon2[i]      = 0
  tableOurBodyWepon1_air[i]  = 0
  tableOurBodyWepon1_land[i] = 0
  tableOurBodyWepon1_sea[io] = 0

  tableOurBodyWepon2_air[i] = 0
  tableOurBodyWepon2_land[i] = 0
  tableOurBodyWepon2_sea[i] = 0
end
--初始化敌方属性表
for i = 1, enemyNum do
  tableEnemyX[i]         = 0
  tableEnemyY[i]         = 0
  tableEnemyBodyLevel[i] = 0

  tableEnemyBodyStrenth[i] = 0
  tableEnemyBodyStrenthHigh[i] = 0
  tableEnemyBodyStrenthLow[i] = 0

  tableEnemyBodyDefense[i]     = 0
  tableEnemyBodyDefenseHigh[i] = 0
  tableEnemyBodyDefenseLow[i]  = 0

  tableEnemyBodySpeed[i]     = 0
  tableEnemyBodySpeedHigh[i] = 0
  tableEnemyBodySpeedLow[i]  = 0


  tableEnemyBodyType[i] = 0
  tableEnemyBodyStunt[i] = 0
  tableEnemyBodyGunshot1[i] = 0
  tableEnemyBodyGunshot2[i] = 0
  tableEnemyBodyWepon1_air[i] = 0
  tableEnemyBodyWepon1_land[i] = 0
  tableEnemyBodyWepon1_sea[i] = 0

  tableEnemyBodyWepon2_air[i] = 0
  tableEnemyBodyWepon2_land[i] = 0
  tableEnemyBodyWepon2_sea[i] = 0
end
for i = 0, 9 do
  tableNum[i] = 48 + i
end



--传入坐标地址计算坐标
local function measurementsX(adrX)
  return memory.readbyte(adrX)
end

local function measurementsLevel(arry, adr)
  local m = 0
  local l = 0
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr) then
      m = j * 10
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 1) then
      l = j
    end
  end
  return m + l
end

local function measurements(arry, adr)
  local h = 0
  local m = 0
  local l = 0
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr) then

      h = j * 100
      --print("h",h)
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 1) then

      m = j * 10
      --print("m",m)
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 2) then

      l = j
    end
  end
  return h + m + l
end

local function measurementsWepon(arry, adr)
  local u = 0
  local h = 0
  local m = 0
  local l = 0
  for j = 0, 9 do

    if arry[j] == memory.readbyte(adr) then

      u = j * 1000
      --print("u",h)
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 1) then

      h = j * 100
      --print("h",h)
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 2) then

      m = j * 10
      --print("m",m)
    end
  end
  for j = 0, 9 do
    if arry[j] == memory.readbyte(adr + 3) then

      l = j
      --print("l",l)
    end
  end
  return u + h + m + l
end

local function ourDamage(ourId, weponId, enemyId)

  if weponId == 1 then

    if tableEnemyBodyType[enemyId] == 0 or tableEnemyBodyType[enemyId] == 20 then --�?
      return tableOurBodyWepon1_air[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    elseif tableEnemyBodyType[enemyId] == 1 or tableEnemyBodyType[enemyId] == 5 then --�?
      return tableOurBodyWepon1_land[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    elseif tableEnemyBodyType[enemyId] == 2 then --�?
      return tableOurBodyWepon1_sea[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    end

  elseif weponId == 2 then
    if tableEnemyBodyType[enemyId] == 0 or tableEnemyBodyType[enemyId] == 20 then --�?
      return tableOurBodyWepon2_air[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    elseif tableEnemyBodyType[enemyId] == 1 or tableEnemyBodyType[enemyId] == 5 then --�?
      return tableOurBodyWepon2_land[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    elseif tableEnemyBodyType[enemyId] == 2 then --�?
      return tableOurBodyWepon2_sea[ourId] - tableEnemyBodyDefense[enemyId] * 1.5
    end
  end
  return 0
end

local function enemyDamage(ourId, enemyId)
  local val1 = 0
  local val2 = 0
  if tableOurBodyType[ourId] == 0 or tableOurBodyType[ourId] == 20 then --�?
    val1 = tableEnemyBodyWepon1_air[enemyId] - tableOurBodyDefense[ourId] * 1.5
    val2 = tableEnemyBodyWepon2_air[enemyId] - tableOurBodyDefense[ourId] * 1.5
  elseif tableOurBodyType[ourId] == 1 or tableOurBodyType[ourId] == 5 then --�?
    val1 = tableEnemyBodyWepon1_land[enemyId] - tableOurBodyDefense[ourId] * 1.5
    val2 = tableEnemyBodyWepon2_land[enemyId] - tableOurBodyDefense[ourId] * 1.5
  elseif tableOurBodyType[ourId] == 2 then --�?
    val1 = tableEnemyBodyWepon1_sea[enemyId] - tableOurBodyDefense[ourId] * 1.5
    val2 = tableEnemyBodyWepon2_sea[enemyId] - tableOurBodyDefense[ourId] * 1.5
  end
  return val1, val2
end

local function ourDoubleAttacck(ourId, enemyId)
  if (tableOurBodySpeed[ourId] * 0.7 - 20) / 0.9 >= tableEnemyBodySpeed[enemyId] then
    return true
  end
  return false
end

local function enemyDoubleAttacck(ourId, enemyId)
  if (tableEnemyBodySpeed[enemyId] * 0.7 - 20) / 0.9 >= tableOurBodySpeed[ourId] then
    return true
  end
  return false
end

local function compareXY(x, y, numVal, tablex, tabley)

  for i = 1, numVal do
    if x == tablex[i] and y == tabley[i] then
      return true
    end
  end
  return false
end



local function byte2bin(n)
  local t = {}
  if n <= 255 then
    -- body
    for i = 7, 0, -1 do
      t[#t + 1] = math.floor(n / 2 ^ i)
      n = n % 2 ^ i
    end
    return t
  end
end

local function tableToNum(table)
  local temp = { 0, 0, 0, 0 }
  local i = 1
  local r = 1
  while i <= 7 do
    if table[i] == 0 and table[i + 1] == 0 then
      temp[r] = 0
    elseif table[i] == 0 and table[i + 1] == 1 then
      temp[r] = 1
    elseif table[i] == 1 and table[i + 1] == 0 then
      temp[r] = 2
    elseif table[i] == 1 and table[i + 1] == 1 then
      temp[r] = 3
    end
    r = r + 1
    i = i + 2
  end
  return temp[1], temp[2], temp[3], temp[4]
end

local function tableToNum(table)
  local temp = { 0, 0, 0, 0 }
  local i = 1
  local r = 1
  while i <= 7 do
    if table[i] == 0 and table[i + 1] == 0 then
      temp[r] = 0
    elseif table[i] == 0 and table[i + 1] == 1 then
      temp[r] = 1
    elseif table[i] == 1 and table[i + 1] == 0 then
      temp[r] = 2
    elseif table[i] == 1 and table[i + 1] == 1 then
      temp[r] = 3
    end
    r = r + 1
    i = i + 2
  end
  return temp[1], temp[2], temp[3], temp[4]
end





while true do
  X = memory.readbyte(0x00c0)
  Y = memory.readbyte(0x00c1)
  ----------------我方机体-------------------
  ro1 = 1
  ro2 = 1
  while ro1 <= 9 do
    --获取力量高位
    tableOurBodyStrenthHigh[ro1], tableOurBodyStrenthHigh[ro1 + 1], tableOurBodyStrenthHigh[ro1 + 2],
        tableOurBodyStrenthHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(ourBodyStrenthHighAdr + ro2 - 1)))
    --获取防卫高位
    tableOurBodyDefenseHigh[ro1], tableOurBodyDefenseHigh[ro1 + 1], tableOurBodyDefenseHigh[ro1 + 2],
        tableOurBodyDefenseHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(ourBodyDefenseHighAdr + ro2 - 1)))
    --获取速度高位
    tableOurBodySpeedHigh[ro1], tableOurBodySpeedHigh[ro1 + 1], tableOurBodySpeedHigh[ro1 + 2],
        tableOurBodySpeedHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(ourBodySpeedHighAdr + ro2 - 1)))
    ro2 = ro2 + 1
    ro1 = ro1 + 4
  end
  for i = 1, ourNum do

    tableOurX[i] = memory.readbyte(ourXAdr + i - 1)
    tableOurY[i] = memory.readbyte(ourYAdr + i - 1)
    --获取我方机体等级
    tableOurBodyLevel[i] = memory.readbyte(ourBodyLevelAdr + i - 1) + 1
    --获取种类
    tableOurBodyType[i] = memory.readbyte(ourBodyTypeAdr + i - 1)
    --获取机体强度低位
    tableOurBodyStrenthLow[i] = memory.readbyte(ourBodyStrenthLowAdr + i - 1)
    --获取防御低位
    tableOurBodyDefenseLow[i] = memory.readbyte(ourBodyDefenseLowAdr + i - 1)
    --获取速度低位
    tableOurBodySpeedLow[i] = memory.readbyte(ourBodySpeedLowAdr + i - 1)
    --获取武器
    tableOurBodyWepon1[i] = memory.readbyte(ourBodyWepon1Adr + i - 1)
    tableOurBodyWepon2[i] = memory.readbyte(ourBodyWepon2Adr + i - 1)
    --获取特技
    tableOurBodyStunt[i] = memory.readbyte(ourBodyStuntAdr + i - 1)
  end
  --计算强度,防卫，速度
  for i = 1, ourNum do
    tableOurBodyStrenth[i] = tableOurBodyStrenthHigh[i] * 256 + tableOurBodyStrenthLow[i]
    tableOurBodyDefense[i] = tableOurBodyDefenseHigh[i] * 256 + tableOurBodyDefenseLow[i]
    tableOurBodySpeed[i] = tableOurBodySpeedHigh[i] * 256 + tableOurBodySpeedLow[i]
  end
  -----------------------------敌方机体-------------------
  ro1 = 1
  ro2 = 1
  while ro1 <= 17 do

    --获取速度力量高位
    tableEnemyBodyStrenthHigh[ro1], tableEnemyBodyStrenthHigh[ro1 + 1], tableEnemyBodyStrenthHigh[ro1 + 2],
        tableEnemyBodyStrenthHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(enemyBodyStrenthHighAdr + ro2 - 1)))
    --获取防卫高位
    tableEnemyBodyDefenseHigh[ro1], tableEnemyBodyDefenseHigh[ro1 + 1], tableEnemyBodyDefenseHigh[ro1 + 2],
        tableEnemyBodyDefenseHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(enemyBodyDefenseHighAdr + ro2 - 1)))
    --获取速度高位
    tableEnemyBodySpeedHigh[ro1], tableEnemyBodySpeedHigh[ro1 + 1], tableEnemyBodySpeedHigh[ro1 + 2],
        tableEnemyBodySpeedHigh[ro1 + 3] = tableToNum(byte2bin(memory
      .readbyte(enemyBodySpeedHighAdr + ro2 - 1)))
    ro2 = ro2 + 1
    ro1 = ro1 + 4
  end
  ----------------敌方机体-----------
  for i = 1, enemyNum do
    --获取机体强度低位
    tableEnemyBodyStrenthLow[i] = memory.readbyte(enemyBodyStrenthLowAdr + i - 1)
    --获取防御低位
    tableEnemyBodyDefenseLow[i] = memory.readbyte(enemyBodyDefenseLowAdr + i - 1)
    --获取速度低位
    tableEnemyBodySpeedLow[i] = memory.readbyte(enemyBodySpeedLowAdr + i - 1)
  end
  for i = 1, enemyNum - 4 do

    tableEnemyX[i] = memory.readbyte(enemyXAdr + i - 1)
    tableEnemyY[i] = memory.readbyte(enemyYAdr + i - 1)

    tableEnemyBodyStrenth[i] = tableEnemyBodyStrenthHigh[i + 2] * 256 + tableEnemyBodyStrenthLow[i]
    tableEnemyBodyDefense[i] = tableEnemyBodyDefenseHigh[i + 2] * 256 + tableEnemyBodyDefenseLow[i]
    tableEnemyBodySpeed[i] = tableEnemyBodySpeedHigh[i + 2] * 256 + tableEnemyBodySpeedLow[i]
    tableEnemyBodyStunt[i] = memory.readbyte(enemyBodyStuntAdr + i - 1)
    tableEnemyBodyLevel[i] = memory.readbyte(enemyBodyLevelAdr + i - 1) + 1
    tableEnemyBodyType[i] = memory.readbyte(enemyBodyTypeAdr + i - 1)

  end

  for i = 1, enemyNum do
    if X == tableEnemyX[i] and Y == tableEnemyY[i] then
      ----------------大型机-----------------------

      if memory.readbyte(0x6248) == 175 then
        if measurementsWepon(tableNum, bigBodyWeponAdr_air) ~= 0 then
          if memory.readbyte(0x0012) == 128 then
            --武器1
            if tableEnemyBodyWepon1_air[i] ~= measurementsWepon(tableNum, bigBodyWeponAdr_air) then
              tableEnemyBodyGunshot1[i] = measurementsLevel(tableNum, BigBodyGunshotAdr)
              tableEnemyBodyWepon1_air[i] = measurementsWepon(tableNum, bigBodyWeponAdr_air)
              tableEnemyBodyWepon1_land[i] = measurementsWepon(tableNum, bigBodyWeponAdr_land)
              tableEnemyBodyWepon1_sea[i] = measurementsWepon(tableNum, bigBodyWeponAdr_sea)
              print("record enemy wepon 1,id", i, tableEnemyBodyWepon1_air[i], tableEnemyBodyWepon1_land[i],
                tableEnemyBodyWepon1_sea[i])
            end
          elseif memory.readbyte(0x0012) == 144 then
            --武器2
            if tableEnemyBodyWepon2_air[i] ~= measurementsWepon(tableNum, bigBodyWeponAdr_air) then
              tableEnemyBodyGunshot2[i] = measurementsLevel(tableNum, BigBodyGunshotAdr)
              tableEnemyBodyWepon2_air[i] = measurementsWepon(tableNum, bigBodyWeponAdr_air)
              tableEnemyBodyWepon2_land[i] = measurementsWepon(tableNum, bigBodyWeponAdr_land)
              tableEnemyBodyWepon2_sea[i] = measurementsWepon(tableNum, bigBodyWeponAdr_sea)
              print("record enemy wepon 2,id", i, tableEnemyBodyWepon2_air[i], tableEnemyBodyWepon2_land[i],
                tableEnemyBodyWepon2_sea[i])
            end
          end
        end
      end
    end
  end
  for i = 1, enemyNum do
    if X == tableEnemyX[i] and Y == tableEnemyY[i] then
      --小型机
      if memory.readbyte(0x6248) ~= 175 then
        if measurementsWepon(tableNum, enemyBodyWeponAdr_air) ~= 0 then
          if memory.readbyte(0x0012) == 112 then
            --武器1
            if tableEnemyBodyWepon1_air[i] ~= measurementsWepon(tableNum, enemyBodyWeponAdr_air) then
              tableEnemyBodyGunshot1[i]    = measurementsLevel(tableNum, bodyGunshotAdr)
              tableEnemyBodyWepon1_air[i]  = measurementsWepon(tableNum, enemyBodyWeponAdr_air)
              tableEnemyBodyWepon1_land[i] = measurementsWepon(tableNum, enemyBodyWeponAdr_land)
              tableEnemyBodyWepon1_sea[i]  = measurementsWepon(tableNum, enemyBodyWeponAdr_sea)
              print("record enemy wepon 1,id", i, tableEnemyBodyWepon1_air[i], tableEnemyBodyWepon1_land[i],
                tableEnemyBodyWepon1_sea[i])
            end
          elseif memory.readbyte(0x0012) == 128 then
            if tableEnemyBodyWepon2_air[i] ~= measurementsWepon(tableNum, enemyBodyWeponAdr_air) then
              tableEnemyBodyGunshot2[i]    = measurementsLevel(tableNum, bodyGunshotAdr)
              tableEnemyBodyWepon2_air[i]  = measurementsWepon(tableNum, enemyBodyWeponAdr_air)
              tableEnemyBodyWepon2_land[i] = measurementsWepon(tableNum, enemyBodyWeponAdr_land)
              tableEnemyBodyWepon2_sea[i]  = measurementsWepon(tableNum, enemyBodyWeponAdr_sea)
              print("record enemy wepon 2,id", i, tableEnemyBodyWepon2_air[i], tableEnemyBodyWepon2_land[i],
                tableEnemyBodyWepon2_sea[i])
            end
          end
        end
      end
    end
  end
  ------------我方机体---------------
  for i = 1, ourNum do
    if X == tableOurX[i] and Y == tableOurY[i] then

      if measurementsWepon(tableNum, bigBodyWeponAdr_air) ~= 0 then
        --大型机
        if memory.readbyte(0x0012) == 128 then
          --武器1
          if tableOurBodyWepon1_land[i] ~= measurementsWepon(tableNum, bigBodyWeponAdr_land) then
            tableOurBodyGunshot1[i]    = measurementsLevel(tableNum, BigBodyGunshotAdr)
            tableOurBodyWepon1_air[i]  = measurementsWepon(tableNum, bigBodyWeponAdr_air)
            tableOurBodyWepon1_land[i] = measurementsWepon(tableNum, bigBodyWeponAdr_land)
            tableOurBodyWepon1_sea[i]  = measurementsWepon(tableNum, bigBodyWeponAdr_sea)
            print("record our wepon 1,id", i, tableOurBodyWepon1_air[i], tableOurBodyWepon1_land[i],
              tableOurBodyWepon1_sea[i])
          end
        elseif memory.readbyte(0x0012) == 144 then
          if tableOurBodyWepon2_land[i] ~= measurementsWepon(tableNum, bigBodyWeponAdr_land) then
            tableOurBodyGunshot2[i]    = measurementsLevel(tableNum, BigBodyGunshotAdr)
            tableOurBodyWepon2_air[i]  = measurementsWepon(tableNum, bigBodyWeponAdr_air)
            tableOurBodyWepon2_land[i] = measurementsWepon(tableNum, bigBodyWeponAdr_land)
            tableOurBodyWepon2_sea[i]  = measurementsWepon(tableNum, bigBodyWeponAdr_sea)
            print("record our wepon 2,id", i, tableOurBodyWepon2_air[i], tableOurBodyWepon2_land[i],
              tableOurBodyWepon2_sea[i])
          end
        end
      end
    end
  end
  for i = 1, ourNum do
    if X == tableOurX[i] and Y == tableOurY[i] then

      if measurementsWepon(tableNum, ourBodyWeponAdr_air) ~= 0 then
        --小型机
        if memory.readbyte(0x0012) == 112 then

          --武器1
          --print("true1")
          if tableOurBodyWepon1_land[i] ~= measurementsWepon(tableNum, ourBodyWeponAdr_land) then
            tableOurBodyGunshot1[i]    = measurementsLevel(tableNum, bodyGunshotAdr)
            tableOurBodyWepon1_air[i]  = measurementsWepon(tableNum, ourBodyWeponAdr_air)
            tableOurBodyWepon1_land[i] = measurementsWepon(tableNum, ourBodyWeponAdr_land)
            tableOurBodyWepon1_sea[i]  = measurementsWepon(tableNum, ourBodyWeponAdr_sea)
            print("record our wepon 1,id", i, tableOurBodyWepon1_air[i], tableOurBodyWepon1_land[i],
              tableOurBodyWepon1_sea[i])
          end
        elseif memory.readbyte(0x0012) == 128 then
          --print("true2")
          if tableOurBodyWepon2_land[i] ~= measurementsWepon(tableNum, ourBodyWeponAdr_land) then
            tableOurBodyGunshot2[i]    = measurementsLevel(tableNum, bodyGunshotAdr)
            tableOurBodyWepon2_air[i]  = measurementsWepon(tableNum, ourBodyWeponAdr_air)
            tableOurBodyWepon2_land[i] = measurementsWepon(tableNum, ourBodyWeponAdr_land)
            tableOurBodyWepon2_sea[i]  = measurementsWepon(tableNum, ourBodyWeponAdr_sea)
            print("record our wepon 2,id", i, tableOurBodyWepon2_air[i], tableOurBodyWepon2_land[i],
              tableOurBodyWepon2_sea[i])
          end
        end
      end
    end
  end
  --------战斗--------
  --进入攻击页面
  while memory.readbyte(0x070d) == 192 do
    --判断使用武器
    local wepon = 0
    for i = 1, ourNum do
      if tableOurBodyWepon1 == memory.readbyte(0x00d7) then
        wepon = 1
      end
      if tableOurBodyWepon2[i] == memory.readbyte(0x00d7) then
        wepon = 2
      end
    end
    -----选择敌方机体
    local select = memory.readbyte(0x73ff)
    local t_ourid = 1
    while select == 128 do
      X = memory.readbyte(0x00c0)
      Y = memory.readbyte(0x00c1)
      for ourid = 1, ourNum do
        X = memory.readbyte(0x00c0)
        Y = memory.readbyte(0x00c1)
        if X == tableOurX[ourid] and Y == tableOurY[ourid] then
          local enemyid = 1
          while select == 128 do
            X = memory.readbyte(0x00c0)
            Y = memory.readbyte(0x00c1)
            while X == tableEnemyX[enemyid] and Y == tableEnemyY[enemyid] do
              local ourDamageVal = ourDamage(ourid, wepon, enemyid)
              local enemyDamageVal1 = 0
              local enemyDamageVal2 = 0
              X = memory.readbyte(0x00c0)
              Y = memory.readbyte(0x00c1)
              --计算我方伤害
              for j, k in ipairs(tableStunt) do
                --判断特技
                if tableEnemyBodyStunt[enemyid] == j then
                  ourDamageVal = ourDamageVal * k
                end
                --额外判断歪曲力场
                if tableEnemyBodyStunt[enemyid] == 128 then

                  if wepon == 1 and tableOurBodyGunshot1[ourid] > 1 then
                    ourDamageVal = 0
                  end
                  if wepon == 2 and tableOurBodyGunshot2[ourid] > 1 then
                    ourDamageVal = 0
                  end
                end
              end
              --计算敌方基础伤害
              enemyDamageVal1, enemyDamageVal2 = enemyDamage(ourid, enemyid)
              if wepon == 1 or tableOurBodyGunshot2[ourid] == 1 then
                if tableEnemyBodyGunshot1[enemyid] == 1 then
                end
                if tableEnemyBodyGunshot2[enemyid] == 1 then
                end
                if tableEnemyBodyGunshot2[enemyid] > 1 then
                  enemyDamageVal2 = 0
                end
              end
              if wepon == 2 and tableOurBodyGunshot2[ourid] > 1 then
                if tableEnemyBodyGunshot2[enemyid] == 1 or tableEnemyBodyGunshot2[enemyid] <
                    tableOurBodyGunshot2[ourid] then
                  enemyDamageVal2 = 0
                end
                enemyDamageVal1 = 0
              end
              for j, k in ipairs(tableStunt) do
                --判断特技
                if tableOurBodyStunt[ourid] == j then
                  enemyDamageVal1 = enemyDamageVal1 * k
                  enemyDamageVal2 = enemyDamageVal2 * k
                end
              end
              gui.drawtext(1, 10, "wepon")
              gui.drawtext(30, 10, wepon)
              gui.drawtext(65, 10, "-->")
              if ourDoubleAttacck(ourid, enemyid) == true then
                gui.drawtext(1, 20, "double")
                gui.drawtext(40, 10, 2 * ourDamageVal)
              else
                gui.drawtext(40, 10, ourDamageVal)
              end
              gui.drawtext(1, 50, enemyDamageVal1)
              gui.drawtext(1, 60, enemyDamageVal2)
              gui.drawtext(45, 50, "<--")
              gui.drawtext(45, 60, "<--")
              select = memory.readbyte(0x73ff)
              emu.frameadvance()
            end
            enemyid = enemyid + 1
            if enemyid > enemyNum then
              enemyid = 1
            end
            emu.frameadvance()
            select = memory.readbyte(0x73ff)
          end
        end
        emu.frameadvance()
        select = memory.readbyte(0x73ff)
      end
    end
    emu.frameadvance()
  end
  if count == 60 then
    for i = 1, enemyNum - 4 do
      X = memory.readbyte(0x00c0)
      Y = memory.readbyte(0x00c1)
      if X == tableEnemyX[i] and Y == tableEnemyY[i] then
        --print(i)
        --print(tableEnemyBodyStunt)
        --print("strenth", tableEnemyBodyStrenth[i])
        --print("defense", tableEnemyBodyDefense[i])
        --print("speed", tableEnemyBodySpeed[i])
        --print("wepon1", tableEnemyBodyWepon1_air)
      end
    end
    for i = 1, ourNum do
      X = memory.readbyte(0x00c0)
      Y = memory.readbyte(0x00c1)
      --print(X,Y)
      --print(tableEnemyX[i],tableEnemyY[i])
      -- body
      if X == tableOurX[i] and Y == tableOurY[i] then
        --print(i)
        --print("strenth", tableOurBodyStrenth[i])
        --print("defense", tableOurBodyDefense[i])
        --print("speed", tableOurBodySpeed[i])

        --print(tableOurBodySpeedHigh)
        --print("gunshot1", tableOurBodyGunshot1)
        --print("gunshot2", tableOurBodyGunshot2)
        --print("wepon1", tableOurBodyWepon1_air)
        --print("wepon2", tableOurBodyWepon2)
      end
    end
    count = 1
  end
  count = count + 1
  emu.frameadvance()
end
