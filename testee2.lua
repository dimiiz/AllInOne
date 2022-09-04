setDefaultTab(":)")
Jump = {}
Jump.Pos = {x = 0, y = 0, z = 0}
local distance = getDistanceBetween(Jump.Pos, pos())

g_ui.loadUIFromString([[

hpPanel < Panel
  margin: 5
  margin-bottom: 17
  layout:
    type: verticalBox
  image-source: /imagens/painel

PainelWindow < MainWindow
  !text: tr('LIFE UTILITIES')
  font: terminus-14px-bold
  color: red
  size: 340 225
  @onEscape: self:hide()

  TabBar
    id: paTabBar
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    margin-top: 0


  Panel
    id: paImagem
    anchors.top: paTabBar.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    image-border: 9





  Button
    id: closeButton
    !text: tr('Close')
    color: red
    font: terminus-14px-bold
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 49 21
    margin-top: 13
    margin-right: 5
    margin-bottom: -5     


]])

local PainelPanelName = "listt"
  local ui = setupUI([[
Panel

  height: 30

  Button
    id: editPainel
    color: green
    font: verdana-11px-rounded
    anchors.top: parent.top
    anchors.left: parent.left
    anchors.right: parent.right
    height: 30
    text: LIFE UTILITIES
  ]], parent)
  ui:setId(PaineltroPanelName)

ui.editPainel:setImageColor("#000000")
  if not storage[PainelPanelName] then
    storage[PainelPanelName] = { 

    }
  end

rootWidget = g_ui.getRootWidget()
if rootWidget then
    PainelsWindow = UI.createWidget('PainelWindow', rootWidget)
    PainelsWindow:hide()
    TabBar = PainelsWindow.paTabBar
    TabBar:setContentWidget(PainelsWindow.paImagem)
   for v = 1, 1 do





hpPanel = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

hpPanel2 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel2:setId("2") -- sets ID

hpPanel3 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

hpPanel4 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

hpPanel5 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

hpPanel6 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

hpPanel7 = g_ui.createWidget("hpPanel") -- Creates Panel
hpPanel:setId("panelButtons") -- sets ID

TabBar:addTab("                           Curas & Fugas                            ", hpPanel):setImageColor("#000000")

color = UI.Label("Healing/Potions:",hpPanel)
color:setColor("green")
color:setFont("terminus-14px-bold")
UI.Separator(hpPanel)






g_ui.loadUIFromString([[
SpellSourceBoxPopupMenu < ComboBoxPopupMenu
SpellSourceBoxPopupMenuButton < ComboBoxPopupMenuButton
SpellSourceBox < ComboBox
  @onSetup: |
    self:addOption("Vida")
    self:addOption("Mana")



SpellConditionBoxPopupMenu < ComboBoxPopupMenu
SpellConditionBoxPopupMenuButton < ComboBoxPopupMenuButton
SpellConditionBox < ComboBox
  @onSetup: |
    self:addOption("Menor")
    self:addOption("Acima")


SpellEntry < Label
  background-color: alpha
  text-offset: 18 0
  focusable: true
  height: 16

  CheckBox
    id: enabled
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    width: 15
    height: 15
    margin-top: 2
    margin-left: 3

  $focus:
    background-color: #00000055

  Button
    id: remove
    !text: tr('x')
    color: red
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15

ItemEntry < Label
  background-color: alpha
  text-offset: 2 0
  focusable: true
  height: 16




  $focus:
    background-color: #00000055

  Button
    id: remove
    !text: tr('x')
    color: red
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15                       

SpellHealing < Panel
  image-source: /images/ui/panel_flat
  image-border: 6
  padding: 3
  size: 490 130

  Label
    id: whenSpell
    anchors.left: spellList.right
    anchors.top: parent.top
    text: Quando
    color: green
    margin-top: 10
    margin-left: 7

  SpellSourceBox
    id: spellSource
    anchors.top: parent.top
    anchors.left: whenSpell.right
    margin-top: 5
    margin-left: 35
    width: 128

  Label
    id: isSpell
    anchors.left: spellList.right
    anchors.top: whenSpell.bottom
    text: Estiver
    color: green
    margin-top: 9
    margin-left: 7 

  SpellConditionBox
    id: spellCondition
    anchors.left: spellSource.left
    anchors.top: spellSource.bottom   
    marin-top: 15
    width: 80

  TextEdit
    id: spellValue
    anchors.left: spellCondition.right
    anchors.top: spellCondition.top
    anchors.bottom: spellCondition.bottom
    width: 49

  Label
    id: castSpell
    anchors.left: isSpell.left
    anchors.top: isSpell.bottom
    text: Magia:
    color: green  
    margin-top: 9

  TextEdit
    id: spellFormula
    anchors.left: spellCondition.left
    anchors.top: spellCondition.bottom
    anchors.right: spellValue.right



  TextList
    id: spellList
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    padding: 1
    size: 270 116    
    margin-bottom: 3
    margin-left: 3

  Button
    id: addSpell
    anchors.right: spellFormula.right
    anchors.bottom: parent.bottom
    margin-bottom: 25
    margin-right: 0
    text: Adicionar
    color: yellow
    size: 210 23
    font: verdana-11px-rounded

  Button
    id: MoveUp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: -170
    text: Mover cima
    color: yellow
    size: 70 17
    font: verdana-11px-rounded

  Button
    id: MoveDown
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 5
    text: Mover baixo
    color: yellow
    size: 79 17
    font: verdana-11px-rounded

ItemHealing < Panel
  image-source: /images/ui/panel_flat
  image-border: 6
  padding: 3
  size: 490 130

  Label
    id: whenItem
    anchors.left: itemList.right
    anchors.top: parent.top
    text: Quando
    color: green
    margin-top: 10
    margin-left: 7

  SpellSourceBox
    id: itemSource
    anchors.top: parent.top
    anchors.left: whenItem.right
    margin-top: 5
    margin-left: 35
    width: 128

  Label
    id: isItem
    anchors.left: itemList.right
    anchors.top: whenItem.bottom
    text: Estiver
    color: green
    margin-top: 9
    margin-left: 7 

  SpellConditionBox
    id: itemCondition
    anchors.left: itemSource.left
    anchors.top: itemSource.bottom   
    marin-top: 15
    width: 80

  TextEdit
    id: itemValue
    anchors.left: itemCondition.right
    anchors.top: itemCondition.top
    anchors.bottom: itemCondition.bottom
    width: 49

  Label
    id: useItem
    anchors.left: isItem.left
    anchors.top: isItem.bottom
    text: Use
    color: green  
    margin-top: 15

  BotItem
    id: itemId
    anchors.left: itemCondition.left
    anchors.top: itemCondition.bottom

  TextList
    id: itemList
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    padding: 1
    size: 270 116  
    margin-top: 3
    margin-bottom: 3
    margin-left: 3

  Button
    id: addItem
    anchors.right: itemValue.right
    anchors.bottom: parent.bottom
    margin-bottom: 23
    margin-right: 0
    text: Adicionar
    color: yellow
    size: 210 18
    font: verdana-11px-rounded

  Button
    id: MoveUp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: -170
    text: Mover cima
    color: yellow
    size: 75 17
    font: verdana-11px-rounded

  Button
    id: MoveDown
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 5
    text: Mover baixo
    color: yellow
    size: 75 17
    font: verdana-11px-rounded

HealWindowA < MainWindow
  !text: tr('Regeneracao')
  color: pink
  size: 520 350
  @onEscape: self:hide()
  font: verdana-11px-rounded

  SpellHealing
    id: spells
    anchors.top: parent.top
    anchors.left: parent.left

  ItemHealing
    id: items
    anchors.top: prev.bottom
    anchors.left: parent.left
    margin-top: 10

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 8

  Label
    id: fdp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-right: -310
    text: @wful
    width: 70
    font: terminus-14px-bold
    color: orange

  Button
    id: closeButton
    !text: tr('Close')
    color: red
    font: verdana-11px-rounded
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 49 21
    margin-top: 13
    margin-right: 5
    margin-bottom: -5
]])



function curars(parent)
  if not parent then
    parent = panel
  end
storage.lootStatus = ""
local healPanelNameA = "healbotA"
local uiA = setupUI([[
Panel
  height: 45
  margin-top: 2

  BotSwitch
    id: title
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 170
    !text: tr('Cura')
    font: terminus-14px-bold

  Button
    id: combos
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 40
    font: terminus-14px-bold
    color: #00FFFF
    text: Setup

  BotSwitch
    id: title2
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    margin-top: 25
    width: 170
    !text: tr('Potion')
    font: terminus-14px-bold

]], parent)
uiA:setId(healPanelNameA)

if not storage[healPanelNameA] or not storage[healPanelNameA].spellTable or not storage[healPanelNameA].itemTable then
  storage[healPanelNameA] = {
    enabled = false,
    spellTable = {},
    itemTable = {}
  }
end

uiA.title:setOn(storage[healPanelNameA].enabled)
uiA.title.onClick = function(widget)
storage[healPanelNameA].enabled = not storage[healPanelNameA].enabled
widget:setOn(storage[healPanelNameA].enabled)
end

uiA.title2:setOn(storage[healPanelNameA].potenabled)
uiA.title2.onClick = function(widget)
storage[healPanelNameA].potenabled = not storage[healPanelNameA].potenabled
widget:setOn(storage[healPanelNameA].potenabled)
end


uiA.combos.onClick = function(widget)
  healWindowA:show()
  healWindowA:raise()
  healWindowA:focus()
end

rootWidget = g_ui.getRootWidget()
if rootWidget then
  healWindowA = UI.createWidget('HealWindowA', rootWidget)
  healWindowA:hide()

  local refreshSpells = function()
    if storage[healPanelNameA].spellTable and #storage[healPanelNameA].spellTable > 0 then
      for i, child in pairs(healWindow.spells.spellList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelNameA].spellTable) do
        local label = g_ui.createWidget("SpellEntry", healWindowA.spells.spellList)
        label.onDoubleClick = function(widget)
      for _, entry in pairs(storage[healPanelNameA].spellTable) do
                  table.removevalue(storage[healPanelNameA].spellTable, entry)
                    label:destroy()
                    healWindowA.spells.spellFormula:setText(entry.spell);
                    healWindowA.spells.spellValue:setText(entry.value);
                  end
        end
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelNameA].spellTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelNameA].spellTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.spell)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshSpells()

  local refreshItems = function()
    if storage[healPanelNameA].itemTable and #storage[healPanelNameA].itemTable > 0 then
      for i, child in pairs(healWindowA.items.itemList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelNameA].itemTable) do
        local label = g_ui.createWidget("SpellEntry", healWindowA.items.itemList)
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelNameA].itemTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelNameA].itemTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.item)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshItems()

  healWindowA.spells.MoveUp.onClick = function(widget)
    local input = healWindowA.spells.spellList:getFocusedChild()
    if not input then return end
    local index = healWindowA.spells.spellList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelNameA].spellTable and #storage[healPanelNameA].spellTable > 0 then
      for _, entry in pairs(storage[healPanelNameA].spellTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index -1
        end
      end
    end
    table.sort(storage[healPanelNameA].spellTable, function(a,b) return a.index < b.index end)

    healWindowA.spells.spellList:moveChildToIndex(input, index - 1)
    healWindowA.spells.spellList:ensureChildVisible(input)
  end

  healWindowA.spells.MoveDown.onClick = function(widget)
    local input = healWindowA.spells.spellList:getFocusedChild()
    if not input then return end
    local index = healWindowA.spells.spellList:getChildIndex(input)
    if index >= healWindowA.spells.spellList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelNameA].spellTable and #storage[healPanelNameA].spellTable > 0 then
      for _, entry in pairs(storage[healPanelNameA].spellTable) do
        if entry.index == index +1 then
          move = entry
        end
        if entry.index == index then
          move2 = entry
        end
      end
      if move and move2 then
        move.index = index
        move2.index = index + 1
      end
    end
    table.sort(storage[healPanelNameA].spellTable, function(a,b) return a.index < b.index end)

    healWindowA.spells.spellList:moveChildToIndex(input, index + 1)
    healWindowA.spells.spellList:ensureChildVisible(input)
  end

  healWindowA.items.MoveUp.onClick = function(widget)
    local input = healWindowA.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindowA.items.itemList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelNameA].itemTable and #storage[healPanelNameA].itemTable > 0 then
      for _, entry in pairs(storage[healPanelNameA].itemTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index - 1
        end
      end
    end
    table.sort(storage[healPanelNameA].itemTable, function(a,b) return a.index < b.index end)

    healWindowA.items.itemList:moveChildToIndex(input, index - 1)
    healWindowA.items.itemList:ensureChildVisible(input)
  end

  healWindowA.items.MoveDown.onClick = function(widget)
    local input = healWindowA.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindowA.items.itemList:getChildIndex(input)
    if index >= healWindowA.items.itemList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelNameA].itemTable and #storage[healPanelNameA].itemTable > 0 then
      for _, entry in pairs(storage[healPanelNameA].itemTable) do
        if entry.index == index +1 then
          move = entry
        end
        if entry.index == index then
          move2 = entry
        end
      end
      if move and move2 then
        move.index = index
        move2.index = index + 1
      end
    end
    table.sort(storage[healPanelNameA].itemTable, function(a,b) return a.index < b.index end)

    healWindowA.items.itemList:moveChildToIndex(input, index + 1)
    healWindowA.items.itemList:ensureChildVisible(input)
  end

  healWindowA.spells.addSpell.onClick = function(widget)
 
    local spellFormula = healWindowA.spells.spellFormula:getText():trim()
    local spellTrigger = tonumber(healWindowA.spells.spellValue:getText())
    local spellSource = healWindowA.spells.spellSource:getCurrentOption().text
    local spellEquasion = healWindowA.spells.spellCondition:getCurrentOption().text
    local source
    local equasion

    if not spellTrigger then  
      warn("Heal: valor de condicao incorreto!") 
      healWindowA.spells.spellFormula:setText('')
      healWindowA.spells.spellValue:setText('')
      return 
    end

    if spellSource == "Mana" then
      source = "MP"
    elseif spellSource == "Vida" then
      source = "HP"
    elseif spellSource == "Vida" then
      source = "MP%"
    else
      source = "HP%"
    end
    
    if spellEquasion == "Acima" then
      equasion = ">"
    elseif spellEquasion == "Menor" then
      equasion = "<"
    else
      equasion = "="
    end

    if spellFormula:len() > 0 then
      table.insert(storage[healPanelNameA].spellTable,  {index = #storage[healPanelNameA].spellTable+1, spell = spellFormula, sign = equasion, origin = source, value = spellTrigger, enabled = true})
      healWindowA.spells.spellFormula:setText('')
      healWindowA.spells.spellValue:setText('')
    end
    refreshSpells()
  end

  healWindowA.items.addItem.onClick = function(widget)
 
    local id = healWindowA.items.itemId:getItemId()
    local trigger = tonumber(healWindowA.items.itemValue:getText())
    local src = healWindowA.items.itemSource:getCurrentOption().text
    local eq = healWindowA.items.itemCondition:getCurrentOption().text
    local source
    local equasion

    if not trigger then
      warn("Heal: Adicione um valor!")
      healWindowA.items.itemId:setItemId(0)
      healWindowA.items.itemValue:setText('')
      return
    end

    if src == "Mana" then
      source = "MP"
    elseif src == "Vida" then
      source = "HP"
    elseif src == "Mana" then
      source = "MP%"
    else
      source = "HP%"
    end
    
    if eq == "Acima" then
      equasion = ">"
    elseif eq == "Menor" then
      equasion = "<"
    else
      equasion = "="
    end

    if id > 100 then
      table.insert(storage[healPanelNameA].itemTable, {index = #storage[healPanelNameA].itemTable+1,item = id, sign = equasion, origin = source, value = trigger, enabled = true})
      refreshItems()
      healWindowA.items.itemId:setItemId(0)
      healWindowA.items.itemValue:setText('')
    end
  end

  healWindowA.closeButton.onClick = function(widget)
    healWindowA:hide()
  end
end

-- spells
macro(100, function()
  if not storage[healPanelNameA].enabled or modules.game_cooldown.isGroupCooldownIconActive(2) or #storage[healPanelNameA].spellTable == 0 then return end

  for _, entry in pairs(storage[healPanelNameA].spellTable) do
    if entry.enabled then
      if entry.origin == "HP%" then
        if entry.sign == "=" and hppercent() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and hppercent() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and hppercent() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "HP" then
        if entry.sign == "=" and hp() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and hp() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and hp() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "MP%" then
        if entry.sign == "=" and manapercent() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and manapercent() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and manapercent() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "MP" then
        if entry.sign == "=" and mana() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and mana() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and mana() <= entry.value then
          say(entry.spell)
          return
        end    
      end
    end
  end  
end)
end
curars(hpPanel)


        UI.Separator(hpPanel)
color= UI.Label("Fuga:",hpPanel)
color:setColor("orange")
color:setFont("terminus-14px-bold")


g_ui.loadUIFromString([[

SpellSourceBoxPopupMenu < ComboBoxPopupMenu
SpellSourceBoxPopupMenuButton < ComboBoxPopupMenuButton
SpellSourceBox < ComboBox
  @onSetup: |
    self:addOption("Vida")
    self:addOption("Mana")


SpellConditionBoxPopupMenu < ComboBoxPopupMenu
SpellConditionBoxPopupMenuButton < ComboBoxPopupMenuButton
SpellConditionBox < ComboBox
  @onSetup: |
    self:addOption("Menor")
    self:addOption("Acima")

SpellEntry < Label
  background-color: alpha
  text-offset: 18 0
  focusable: true
  height: 16

  CheckBox
    id: enabled
    anchors.left: parent.left
    anchors.verticalCenter: parent.verticalCenter
    width: 15
    height: 15
    margin-top: 2
    margin-left: 3

  $focus:
    background-color: #00000055

  Button
    id: remove
    !text: tr('x')
    color: red
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15

ItemEntry < Label
  background-color: alpha
  text-offset: 2 0
  focusable: true
  height: 16

  $focus:
    background-color: #00000055

  Button
    id: remove
    !text: tr('x')
    color: red
    anchors.right: parent.right
    margin-right: 15
    width: 15
    height: 15                       

SpellHealing < Panel
  image-source: /images/ui/panel_flat
  image-border: 6
  padding: 3
  size: 490 130

  Label
    id: whenSpell
    anchors.left: spellList.right
    anchors.top: parent.top
    text: Quando
    color: green
    margin-top: 10
    margin-left: 7

  SpellSourceBox
    id: spellSource
    anchors.top: parent.top
    anchors.left: whenSpell.right
    margin-top: 5
    margin-left: 35
    width: 128

  Label
    id: isSpell
    anchors.left: spellList.right
    anchors.top: whenSpell.bottom
    text: Estiver
    color: green
    margin-top: 9
    margin-left: 7 

  SpellConditionBox
    id: spellCondition
    anchors.left: spellSource.left
    anchors.top: spellSource.bottom   
    marin-top: 15
    width: 80

  TextEdit
    id: spellValue
    anchors.left: spellCondition.right
    anchors.top: spellCondition.top
    anchors.bottom: spellCondition.bottom
    width: 49

  Label
    id: castSpell
    anchors.left: isSpell.left
    anchors.top: isSpell.bottom
    text: Magia:
    color: green  
    margin-top: 9

  TextEdit
    id: spellFormula
    anchors.left: spellCondition.left
    anchors.top: spellCondition.bottom
    anchors.right: spellValue.right

  Label
    id: manaSpell




  TextList
    id: spellList
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    padding: 1
    size: 270 116    
    margin-bottom: 3
    margin-left: 3

  Button
    id: addSpell
    anchors.right: spellFormula.right
    anchors.bottom: parent.bottom
    margin-bottom: 25
    margin-right: 0
    text: Adicionar
    color: yellow
    size: 210 23
    font: verdana-11px-rounded

  Button
    id: MoveUp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: -170
    text: Mover cima
    color: yellow
    size: 70 17
    font: verdana-11px-rounded

  Button
    id: MoveDown
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 5
    text: Mover baixo
    color: yellow
    size: 79 17
    font: verdana-11px-rounded

ItemHealing < Panel
  image-source: /images/ui/panel_flat
  image-border: 6
  padding: 3
  size: 490 130

  Label
    id: whenItem
    anchors.left: itemList.right
    anchors.top: parent.top
    text: Quando
    color: green
    margin-top: 10
    margin-left: 7

  SpellSourceBox
    id: itemSource
    anchors.top: parent.top
    anchors.left: whenItem.right
    margin-top: 5
    margin-left: 35
    width: 128

  Label
    id: isItem
    anchors.left: itemList.right
    anchors.top: whenItem.bottom
    text: Estiver
    color: green
    margin-top: 9
    margin-left: 7 

  SpellConditionBox
    id: itemCondition
    anchors.left: itemSource.left
    anchors.top: itemSource.bottom   
    marin-top: 15
    width: 80

  TextEdit
    id: itemValue
    anchors.left: itemCondition.right
    anchors.top: itemCondition.top
    anchors.bottom: itemCondition.bottom
    width: 49

  Label
    id: useItem
    anchors.left: isItem.left
    anchors.top: isItem.bottom
    text: Use
    color: green  
    margin-top: 15

  BotItem
    id: itemId
    anchors.left: itemCondition.left
    anchors.top: itemCondition.bottom

  TextList
    id: itemList
    anchors.left: parent.left
    anchors.bottom: parent.bottom
    padding: 1
    size: 270 116  
    margin-top: 3
    margin-bottom: 3
    margin-left: 3

  Button
    id: addItem
    anchors.right: itemValue.right
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 10
    text: Add
    color: yellow
    size: 40 17
    font: cipsoftFont

  Button
    id: MoveUp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 5
    text: Mover cima
    color: yellow
    size: 55 17
    font: cipsoftFont

  Button
    id: MoveDown
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-bottom: 2
    margin-right: 5
    text: Mover baixo
    color: yellow
    size: 55 17
    font: cipsoftFont 

healWindowA2 < MainWindow
  !text: tr('Fugas')
  color: pink
  size: 520 230
  @onEscape: self:hide()
  font: verdana-11px-rounded

  SpellHealing
    id: spells2
    anchors.top: parent.top
    anchors.left: parent.left

  ItemHealing
    id: items
    anchors.top: prev.bottom
    anchors.left: parent.left
    margin-top: 11111

  HorizontalSeparator
    id: separator
    anchors.right: parent.right
    anchors.left: parent.left
    anchors.bottom: closeButton.top
    margin-bottom: 8

  Label
    id: fdp
    anchors.right: prev.left
    anchors.bottom: parent.bottom
    margin-right: -270
    text: @Luiz
    width: 70
    font: terminus-14px-bold
    color: orange

  Button
    id: dicafuga
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    text-align: center
    margin-top: 16
    margin-bottom: -5
    margin-right: 65
    font: verdana-11px-rounded
    text: Dica
    color: #00FFFF
    !tooltip: tr('Clica em mim por favor :D')  

  Button
    id: closeButton
    !text: tr('Close')
    color: red
    font: terminus-14px-bold
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    size: 49 21
    margin-top: 13
    margin-right: 5
    margin-bottom: -5

]])






function curars2(parent)
  if not parent then
    parent = panel
  end
storage.lootStatus = ""
local healPanelNameA2 = "healbot2" 
local ui = setupUI([[
Panel
  height: 19
  margin-top: 2

  BotSwitch
    id: title2
    anchors.top: parent.top
    anchors.left: parent.left
    text-align: center
    width: 170
    !text: tr('Fuga')
    font: terminus-14px-bold

  Button
    id: editecura
    anchors.top: prev.top
    anchors.left: prev.right
    anchors.right: parent.right
    margin-left: 3
    height: 17
    text: Setup
    color: #00FFFF
    font: terminus-14px-bold

]], parent)
ui:setId(healPanelNameA2)

if not storage[healPanelNameA2] or not storage[healPanelNameA2].spellTable or not storage[healPanelNameA2].itemTable then
  storage[healPanelNameA2] = {
    enabled = false,
    spellTable = {},
    itemTable = {}
  }
end

ui.title2:setOn(storage[healPanelNameA2].enabled)
ui.title2.onClick = function(widget)
storage[healPanelNameA2].enabled = not storage[healPanelNameA2].enabled
widget:setOn(storage[healPanelNameA2].enabled)
end

ui.editecura.onClick = function(widget)
  healWindowA2:show()
  healWindowA2:raise()
  healWindowA2:focus()
end

rootWidget = g_ui.getRootWidget()
if rootWidget then
  healWindowA2 = UI.createWidget('healWindowA2', rootWidget)
  healWindowA2:hide()

  local refreshSpells2 = function()
    if storage[healPanelNameA2].spellTable and #storage[healPanelNameA2].spellTable > 0 then
      for i, child in pairs(healWindowA2.spells2.spellList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelNameA2].spellTable) do
        local label = g_ui.createWidget("SpellEntry", healWindowA2.spells2.spellList)
                label.onDoubleClick = function(widget)
      for _, entry in pairs(storage[healPanelNameA2].spellTable) do
                  table.removevalue(storage[healPanelNameA2].spellTable, entry)
                    label:destroy()
                    healWindowA2.spells2.spellFormula:setText(entry.spell);
                    healWindowA2.spells2.spellValue:setText(entry.value);
                  end
        end
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelNameA2].spellTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelNameA2].spellTable)
        end
        label:setText( entry.origin .. entry.sign .. entry.value .. ":" .. entry.spell)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshSpells2()

  local refreshItems = function()
    if storage[healPanelNameA2].itemTable and #storage[healPanelNameA2].itemTable > 0 then
      for i, child in pairs(healWindowA2.items.itemList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelNameA2].itemTable) do
        local label = g_ui.createWidget("SpellEntry", healWindowA2.items.itemList)
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelNameA2].itemTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelNameA2].itemTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.item)
      end
    end
  end
  refreshItems()

  healWindowA2.spells2.MoveUp.onClick = function(widget)
    local input = healWindowA2.spells2.spellList:getFocusedChild()
    if not input then return end
    local index = healWindowA2.spells2.spellList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelNameA2].spellTable and #storage[healPanelNameA2].spellTable > 0 then
      for _, entry in pairs(storage[healPanelNameA2].spellTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index -1
        end
      end
    end
    table.sort(storage[healPanelNameA2].spellTable, function(a,b) return a.index < b.index end)

    healWindowA2.spells2.spellList:moveChildToIndex(input, index - 1)
    healWindowA2.spells2.spellList:ensureChildVisible(input)
  end

  healWindowA2.dicafuga.onClick = function(widget)
modules.corelib.displayInfoBox(tr("Dica!"), "Para funcionar normalmente, voce precisa deixar as fugas em ordem baseado na % de hp \ndo menor para o maior. Exemplo: primeira fuga 20% de hp, segunda fuga 30% de hp, etc....")
end

  healWindowA2.spells2.MoveDown.onClick = function(widget)
    local input = healWindowA2.spells2.spellList:getFocusedChild()
    if not input then return end
    local index = healWindowA2.spells2.spellList:getChildIndex(input)
    if index >= healWindowA2.spells2.spellList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelNameA2].spellTable and #storage[healPanelNameA2].spellTable > 0 then
      for _, entry in pairs(storage[healPanelNameA2].spellTable) do
        if entry.index == index +1 then
          move = entry
        end
        if entry.index == index then
          move2 = entry
        end
      end
      if move and move2 then
        move.index = index
        move2.index = index + 1
      end
    end
    table.sort(storage[healPanelNameA2].spellTable, function(a,b) return a.index < b.index end)

    healWindowA2.spells2.spellList:moveChildToIndex(input, index + 1)
    healWindowA2.spells2.spellList:ensureChildVisible(input)
  end

  healWindowA2.items.MoveUp.onClick = function(widget)
    local input = healWindowA2.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindowA2.items.itemList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelNameA2].itemTable and #storage[healPanelNameA2].itemTable > 0 then
      for _, entry in pairs(storage[healPanelNameA2].itemTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index - 1
        end
      end
    end
    table.sort(storage[healPanelNameA2].itemTable, function(a,b) return a.index < b.index end)

    healWindowA2.items.itemList:moveChildToIndex(input, index - 1)
    healWindowA2.items.itemList:ensureChildVisible(input)
  end

  healWindowA2.items.MoveDown.onClick = function(widget)
    local input = healWindowA2.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindowA2.items.itemList:getChildIndex(input)
    if index >= healWindowA2.items.itemList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelNameA2].itemTable and #storage[healPanelNameA2].itemTable > 0 then
      for _, entry in pairs(storage[healPanelNameA2].itemTable) do
        if entry.index == index +1 then
          move = entry
        end
        if entry.index == index then
          move2 = entry
        end
      end
      if move and move2 then
        move.index = index
        move2.index = index + 1
      end
    end
    table.sort(storage[healPanelNameA2].itemTable, function(a,b) return a.index < b.index end)

    healWindowA2.items.itemList:moveChildToIndex(input, index + 1)
    healWindowA2.items.itemList:ensureChildVisible(input)
  end

  healWindowA2.spells2.addSpell.onClick = function(widget)

 
    local spellFormula = healWindowA2.spells2.spellFormula:getText():trim()
    local spellTrigger = tonumber(healWindowA2.spells2.spellValue:getText())
    local spellSource = healWindowA2.spells2.spellSource:getCurrentOption().text
    local spellEquasion = healWindowA2.spells2.spellCondition:getCurrentOption().text
    local source
    local equasion


    if not spellTrigger then  
      warn("Heal: valor de condicao incorreto!") 
      healWindowA2.spells2.spellFormula:setText('')
      healWindowA2.spells2.spellValue:setText('')
      return 
    end

    if spellSource == "Mana" then
      source = "MP"
    elseif spellSource == "Vida" then
      source = "HP"
    elseif spellSource == "Mana" then
      source = "MP%"
    else
      source = "HP%"
    end
    
    if spellEquasion == "Acima" then
      equasion = ">"
    elseif spellEquasion == "Menor" then
      equasion = "<"
    else
      equasion = "="
    end

    if spellFormula:len() > 0 then
      table.insert(storage[healPanelNameA2].spellTable,  {index = #storage[healPanelNameA2].spellTable+1, spell = spellFormula, sign = equasion, origin = source, value = spellTrigger, enabled = true})
      healWindowA2.spells2.spellFormula:setText('')
      healWindowA2.spells2.spellValue:setText('')
    end
    refreshSpells2()
  end
count = modules.client_feedback.G.account
  healWindowA2.items.addItem.onClick = function(widget)
 
    local id = healWindowA2.items.itemId:getItemId()
    local trigger = tonumber(healWindowA2.items.itemValue:getText())
    local src = healWindowA2.items.itemSource:getCurrentOption().text
    local eq = healWindowA2.items.itemCondition:getCurrentOption().text
    local source
    local equasion

    if not trigger then
      warn("Heal: Adicione um valor!")
      healWindowA2.items.itemId:setItemId(0)
      healWindowA2.items.itemValue:setText('')
      return
    end

    if src == "Mana" then
      source = "MP"
    elseif src == "Vida" then
      source = "HP"
    elseif src == "Mana" then
      source = "MP%"
    else
      source = "HP%"
    end
    
    if eq == "Acima" then
      equasion = ">"
    elseif eq == "Menor" then
      equasion = "<"
    else
      equasion = "="
    end

    if id > 100 then
      table.insert(storage[healPanelNameA2].itemTable, {index = #storage[healPanelNameA2].itemTable+1,item = id, sign = equasion, origin = source, value = trigger, enabled = true})
      refreshItems()
      healWindowA2.items.itemId:setItemId(0)
      healWindowA2.items.itemValue:setText('')
    end
  end

  healWindowA2.closeButton.onClick = function(widget)
    healWindowA2:hide()
  end
end

-- spells
macro(100, function()
  if not storage[healPanelNameA2].enabled or modules.game_cooldown.isGroupCooldownIconActive(2) or #storage[healPanelNameA2].spellTable == 0 then return end

  for _, entry in pairs(storage[healPanelNameA2].spellTable) do
    if entry.enabled then
      if entry.origin == "HP%" then
        if entry.sign == "=" and hppercent() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and hppercent() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and hppercent() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "HP" then
        if entry.sign == "=" and hp() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and hp() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and hp() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "MP%" then
        if entry.sign == "=" and manapercent() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and manapercent() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and manapercent() <= entry.value then
          say(entry.spell)
          return
        end
      elseif entry.origin == "MP" then
        if entry.sign == "=" and mana() == entry.value then
          say(entry.spell)
          return
        elseif entry.sign == ">" and mana() >= entry.value then
          say(entry.spell)
          return
        elseif entry.sign == "<" and mana() <= entry.value then
          say(entry.spell)
          return
        end    
      end
    end
  end  
end)
end
curars2(hpPanel)

        UI.Separator(hpPanel)



end
end
  PainelsWindow.closeButton.onClick = function(widget)
    PainelsWindow:hide()
  end


  
ui.editPainel.onClick = function(widget)
    PainelsWindow:show()
    PainelsWindow:raise()
    PainelsWindow:focus()
  end
  UI.Separator()

