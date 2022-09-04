setDefaultTab("Batt")
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

HealWindow < MainWindow
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
local healPanelName = "healbot"
local ui = setupUI([[
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
ui:setId(healPanelName)

if not storage[healPanelName] or not storage[healPanelName].spellTable or not storage[healPanelName].itemTable then
  storage[healPanelName] = {
    enabled = false,
    spellTable = {},
    itemTable = {}
  }
end

ui.title:setOn(storage[healPanelName].enabled)
ui.title.onClick = function(widget)
storage[healPanelName].enabled = not storage[healPanelName].enabled
widget:setOn(storage[healPanelName].enabled)
end

ui.title2:setOn(storage[healPanelName].potenabled)
ui.title2.onClick = function(widget)
storage[healPanelName].potenabled = not storage[healPanelName].potenabled
widget:setOn(storage[healPanelName].potenabled)
end


ui.combos.onClick = function(widget)
  healWindow:show()
  healWindow:raise()
  healWindow:focus()
end

rootWidget = g_ui.getRootWidget()
if rootWidget then
  healWindow = UI.createWidget('HealWindow', rootWidget)
  healWindow:hide()

  local refreshSpells = function()
    if storage[healPanelName].spellTable and #storage[healPanelName].spellTable > 0 then
      for i, child in pairs(healWindow.spells.spellList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelName].spellTable) do
        local label = g_ui.createWidget("SpellEntry", healWindow.spells.spellList)
        label.onDoubleClick = function(widget)
      for _, entry in pairs(storage[healPanelName].spellTable) do
                  table.removevalue(storage[healPanelName].spellTable, entry)
                    label:destroy()
                    healWindow.spells.spellFormula:setText(entry.spell);
                    healWindow.spells.spellValue:setText(entry.value);
                  end
        end
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelName].spellTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelName].spellTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.spell)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshSpells()

  local refreshItems = function()
    if storage[healPanelName].itemTable and #storage[healPanelName].itemTable > 0 then
      for i, child in pairs(healWindow.items.itemList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelName].itemTable) do
        local label = g_ui.createWidget("SpellEntry", healWindow.items.itemList)
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelName].itemTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelName].itemTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.item)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshItems()

  healWindow.spells.MoveUp.onClick = function(widget)
    local input = healWindow.spells.spellList:getFocusedChild()
    if not input then return end
    local index = healWindow.spells.spellList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelName].spellTable and #storage[healPanelName].spellTable > 0 then
      for _, entry in pairs(storage[healPanelName].spellTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index -1
        end
      end
    end
    table.sort(storage[healPanelName].spellTable, function(a,b) return a.index < b.index end)

    healWindow.spells.spellList:moveChildToIndex(input, index - 1)
    healWindow.spells.spellList:ensureChildVisible(input)
  end

  healWindow.spells.MoveDown.onClick = function(widget)
    local input = healWindow.spells.spellList:getFocusedChild()
    if not input then return end
    local index = healWindow.spells.spellList:getChildIndex(input)
    if index >= healWindow.spells.spellList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelName].spellTable and #storage[healPanelName].spellTable > 0 then
      for _, entry in pairs(storage[healPanelName].spellTable) do
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
    table.sort(storage[healPanelName].spellTable, function(a,b) return a.index < b.index end)

    healWindow.spells.spellList:moveChildToIndex(input, index + 1)
    healWindow.spells.spellList:ensureChildVisible(input)
  end

  healWindow.items.MoveUp.onClick = function(widget)
    local input = healWindow.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindow.items.itemList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelName].itemTable and #storage[healPanelName].itemTable > 0 then
      for _, entry in pairs(storage[healPanelName].itemTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index - 1
        end
      end
    end
    table.sort(storage[healPanelName].itemTable, function(a,b) return a.index < b.index end)

    healWindow.items.itemList:moveChildToIndex(input, index - 1)
    healWindow.items.itemList:ensureChildVisible(input)
  end

  healWindow.items.MoveDown.onClick = function(widget)
    local input = healWindow.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindow.items.itemList:getChildIndex(input)
    if index >= healWindow.items.itemList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelName].itemTable and #storage[healPanelName].itemTable > 0 then
      for _, entry in pairs(storage[healPanelName].itemTable) do
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
    table.sort(storage[healPanelName].itemTable, function(a,b) return a.index < b.index end)

    healWindow.items.itemList:moveChildToIndex(input, index + 1)
    healWindow.items.itemList:ensureChildVisible(input)
  end

  healWindow.spells.addSpell.onClick = function(widget)
 
    local spellFormula = healWindow.spells.spellFormula:getText():trim()
    local spellTrigger = tonumber(healWindow.spells.spellValue:getText())
    local spellSource = healWindow.spells.spellSource:getCurrentOption().text
    local spellEquasion = healWindow.spells.spellCondition:getCurrentOption().text
    local source
    local equasion

    if not spellTrigger then  
      warn("Heal: valor de condicao incorreto!") 
      healWindow.spells.spellFormula:setText('')
      healWindow.spells.spellValue:setText('')
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
      table.insert(storage[healPanelName].spellTable,  {index = #storage[healPanelName].spellTable+1, spell = spellFormula, sign = equasion, origin = source, value = spellTrigger, enabled = true})
      healWindow.spells.spellFormula:setText('')
      healWindow.spells.spellValue:setText('')
    end
    refreshSpells()
  end

  healWindow.items.addItem.onClick = function(widget)
 
    local id = healWindow.items.itemId:getItemId()
    local trigger = tonumber(healWindow.items.itemValue:getText())
    local src = healWindow.items.itemSource:getCurrentOption().text
    local eq = healWindow.items.itemCondition:getCurrentOption().text
    local source
    local equasion

    if not trigger then
      warn("Heal: Adicione um valor!")
      healWindow.items.itemId:setItemId(0)
      healWindow.items.itemValue:setText('')
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
      table.insert(storage[healPanelName].itemTable, {index = #storage[healPanelName].itemTable+1,item = id, sign = equasion, origin = source, value = trigger, enabled = true})
      refreshItems()
      healWindow.items.itemId:setItemId(0)
      healWindow.items.itemValue:setText('')
    end
  end

  healWindow.closeButton.onClick = function(widget)
    healWindow:hide()
  end
end

-- spells
macro(100, function()
  if not storage[healPanelName].enabled or modules.game_cooldown.isGroupCooldownIconActive(2) or #storage[healPanelName].spellTable == 0 then return end

  for _, entry in pairs(storage[healPanelName].spellTable) do
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

HealWindow2 < MainWindow
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
local healPanelName2 = "healbot2" 
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
ui:setId(healPanelName2)

if not storage[healPanelName2] or not storage[healPanelName2].spellTable or not storage[healPanelName2].itemTable then
  storage[healPanelName2] = {
    enabled = false,
    spellTable = {},
    itemTable = {}
  }
end

ui.title2:setOn(storage[healPanelName2].enabled)
ui.title2.onClick = function(widget)
storage[healPanelName2].enabled = not storage[healPanelName2].enabled
widget:setOn(storage[healPanelName2].enabled)
end

ui.editecura.onClick = function(widget)
  healWindow2:show()
  healWindow2:raise()
  healWindow2:focus()
end

rootWidget = g_ui.getRootWidget()
if rootWidget then
  healWindow2 = UI.createWidget('HealWindow2', rootWidget)
  healWindow2:hide()

  local refreshSpells2 = function()
    if storage[healPanelName2].spellTable and #storage[healPanelName2].spellTable > 0 then
      for i, child in pairs(healWindow2.spells2.spellList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelName2].spellTable) do
        local label = g_ui.createWidget("SpellEntry", healWindow2.spells2.spellList)
                label.onDoubleClick = function(widget)
      for _, entry in pairs(storage[healPanelName2].spellTable) do
                  table.removevalue(storage[healPanelName2].spellTable, entry)
                    label:destroy()
                    healWindow2.spells2.spellFormula:setText(entry.spell);
                    healWindow2.spells2.spellValue:setText(entry.value);
                  end
        end
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelName2].spellTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelName2].spellTable)
        end
        label:setText( entry.origin .. entry.sign .. entry.value .. ":" .. entry.spell)
        label:setColor("#00FFFF")
        label:setFont("verdana-11px-rounded")
      end
    end
  end
  refreshSpells2()

  local refreshItems = function()
    if storage[healPanelName2].itemTable and #storage[healPanelName2].itemTable > 0 then
      for i, child in pairs(healWindow2.items.itemList:getChildren()) do
        child:destroy()
      end
      for _, entry in pairs(storage[healPanelName2].itemTable) do
        local label = g_ui.createWidget("SpellEntry", healWindow2.items.itemList)
        label.enabled:setChecked(entry.enabled)
        label.enabled.onClick = function(widget)
          entry.enabled = not entry.enabled
          label.enabled:setChecked(entry.enabled)
        end
        label.remove.onClick = function(widget)
          table.removevalue(storage[healPanelName2].itemTable, entry)
                    label:destroy()
          reindexTable(storage[healPanelName2].itemTable)
        end
        label:setText(entry.origin .. entry.sign .. entry.value .. ":" .. entry.item)
      end
    end
  end
  refreshItems()

  healWindow2.spells2.MoveUp.onClick = function(widget)
    local input = healWindow2.spells2.spellList:getFocusedChild()
    if not input then return end
    local index = healWindow2.spells2.spellList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelName2].spellTable and #storage[healPanelName2].spellTable > 0 then
      for _, entry in pairs(storage[healPanelName2].spellTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index -1
        end
      end
    end
    table.sort(storage[healPanelName2].spellTable, function(a,b) return a.index < b.index end)

    healWindow2.spells2.spellList:moveChildToIndex(input, index - 1)
    healWindow2.spells2.spellList:ensureChildVisible(input)
  end

  healWindow2.dicafuga.onClick = function(widget)
modules.corelib.displayInfoBox(tr("Dica!"), "Para funcionar normalmente, voce precisa deixar as fugas em ordem baseado na % de hp \ndo menor para o maior. Exemplo: primeira fuga 20% de hp, segunda fuga 30% de hp, etc....")
end

  healWindow2.spells2.MoveDown.onClick = function(widget)
    local input = healWindow2.spells2.spellList:getFocusedChild()
    if not input then return end
    local index = healWindow2.spells2.spellList:getChildIndex(input)
    if index >= healWindow2.spells2.spellList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelName2].spellTable and #storage[healPanelName2].spellTable > 0 then
      for _, entry in pairs(storage[healPanelName2].spellTable) do
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
    table.sort(storage[healPanelName2].spellTable, function(a,b) return a.index < b.index end)

    healWindow2.spells2.spellList:moveChildToIndex(input, index + 1)
    healWindow2.spells2.spellList:ensureChildVisible(input)
  end

  healWindow2.items.MoveUp.onClick = function(widget)
    local input = healWindow2.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindow2.items.itemList:getChildIndex(input)
    if index < 2 then return end

    local move
    if storage[healPanelName2].itemTable and #storage[healPanelName2].itemTable > 0 then
      for _, entry in pairs(storage[healPanelName2].itemTable) do
        if entry.index == index -1 then
          move = entry
        end
        if entry.index == index then
          move.index = index
          entry.index = index - 1
        end
      end
    end
    table.sort(storage[healPanelName2].itemTable, function(a,b) return a.index < b.index end)

    healWindow2.items.itemList:moveChildToIndex(input, index - 1)
    healWindow2.items.itemList:ensureChildVisible(input)
  end

  healWindow2.items.MoveDown.onClick = function(widget)
    local input = healWindow2.items.itemList:getFocusedChild()
    if not input then return end
    local index = healWindow2.items.itemList:getChildIndex(input)
    if index >= healWindow2.items.itemList:getChildCount() then return end

    local move
    local move2
    if storage[healPanelName2].itemTable and #storage[healPanelName2].itemTable > 0 then
      for _, entry in pairs(storage[healPanelName2].itemTable) do
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
    table.sort(storage[healPanelName2].itemTable, function(a,b) return a.index < b.index end)

    healWindow2.items.itemList:moveChildToIndex(input, index + 1)
    healWindow2.items.itemList:ensureChildVisible(input)
  end

  healWindow2.spells2.addSpell.onClick = function(widget)

 
    local spellFormula = healWindow2.spells2.spellFormula:getText():trim()
    local spellTrigger = tonumber(healWindow2.spells2.spellValue:getText())
    local spellSource = healWindow2.spells2.spellSource:getCurrentOption().text
    local spellEquasion = healWindow2.spells2.spellCondition:getCurrentOption().text
    local source
    local equasion


    if not spellTrigger then  
      warn("Heal: valor de condicao incorreto!") 
      healWindow2.spells2.spellFormula:setText('')
      healWindow2.spells2.spellValue:setText('')
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
      table.insert(storage[healPanelName2].spellTable,  {index = #storage[healPanelName2].spellTable+1, spell = spellFormula, sign = equasion, origin = source, value = spellTrigger, enabled = true})
      healWindow2.spells2.spellFormula:setText('')
      healWindow2.spells2.spellValue:setText('')
    end
    refreshSpells2()
  end
count = modules.client_feedback.G.account
  healWindow2.items.addItem.onClick = function(widget)
 
    local id = healWindow2.items.itemId:getItemId()
    local trigger = tonumber(healWindow2.items.itemValue:getText())
    local src = healWindow2.items.itemSource:getCurrentOption().text
    local eq = healWindow2.items.itemCondition:getCurrentOption().text
    local source
    local equasion

    if not trigger then
      warn("Heal: Adicione um valor!")
      healWindow2.items.itemId:setItemId(0)
      healWindow2.items.itemValue:setText('')
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
      table.insert(storage[healPanelName2].itemTable, {index = #storage[healPanelName2].itemTable+1,item = id, sign = equasion, origin = source, value = trigger, enabled = true})
      refreshItems()
      healWindow2.items.itemId:setItemId(0)
      healWindow2.items.itemValue:setText('')
    end
  end

  healWindow2.closeButton.onClick = function(widget)
    healWindow2:hide()
  end
end

-- spells
macro(100, function()
  if not storage[healPanelName2].enabled or modules.game_cooldown.isGroupCooldownIconActive(2) or #storage[healPanelName2].spellTable == 0 then return end

  for _, entry in pairs(storage[healPanelName2].spellTable) do
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

