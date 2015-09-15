﻿local ADDON_NAME, private = ...

-- RealUI --
local RealUI = RealUI
local L = RealUI.L

if RealUI.locale == "deDE" then

-- General
L["Alert_CombatLockdown"] = "Kampfsperre" -- Needs review
L["DoReloadUI"] = "Du musst das UI neu laden, damit die Änderungen wirksam werden. Jetzt neu laden?" -- Needs review
-- L["Slash_Profile"] = ""
L["Slash_RealUI"] = "Tippe %s um UI-Style, Positionen und Einstellungen zu konfigurieren" -- Needs review
-- L["Slash_Taint"] = ""
L["Version"] = "Version"


-- Install
L["Install"] = "KLICKEN UM DIE INSTALLATION ZU STARTEN"
L["Patch_DoApply"] = "Möchtest du die letzten Einstellungen von RealUI übernehmen?" -- Needs review
L["Patch_MiniPatch"] = "RealUI Mini Patch" -- Needs review


-- Options
L["Appearance_ClassColorHealth"] = "Leben in Klassenfarben" -- Needs review
L["Appearance_ClassColorNames"] = "Namen in Klassenfarben" -- Needs review
L["Appearance_StripeOpacity"] = "Streifen-Transparenz"
L["Appearance_WinOpacity"] = "Fenster-Transparenz"
-- L["CombatFade"] = ""
-- L["CombatFade_HarmTarget"] = ""
-- L["CombatFade_Hurt"] = ""
-- L["CombatFade_InCombat"] = ""
-- L["CombatFade_NoCombat"] = ""
-- L["CombatFade_Target"] = ""
L["Fonts"] = "Schriftarten"
-- L["Fonts_ChangeYellow"] = ""
-- L["Fonts_ChangeYellowDesc"] = ""
-- L["Fonts_Chat"] = ""
-- L["Fonts_ChatDesc"] = ""
-- L["Fonts_Desc"] = ""
-- L["Fonts_Font"] = ""
-- L["Fonts_Header"] = ""
-- L["Fonts_HeaderDesc"] = ""
-- L["Fonts_Normal"] = ""
-- L["Fonts_NormalDesc"] = ""
-- L["Fonts_NormalOffset"] = ""
-- L["Fonts_NormalOffsetDesc"] = ""
-- L["Fonts_Outline"] = ""
-- L["Fonts_PixelCooldown"] = ""
-- L["Fonts_PixelLarge"] = ""
-- L["Fonts_PixelNumbers"] = ""
-- L["Fonts_PixelSmall"] = ""
-- L["Fonts_Standard"] = ""
-- L["Fonts_YellowFont"] = ""
L["General_Enabled"] = "Aktiviert"
-- L["General_EnabledDesc"] = ""
-- L["General_InvalidParent"] = ""
-- L["General_NoteParent"] = ""
-- L["General_NoteReload"] = ""
-- L["General_Tristatefalse"] = ""
-- L["General_Tristatenil"] = ""
-- L["General_Tristatetrue"] = ""
L["Layout_ApplyOOC"] = "Layout ändert sich sobald du den Kampf verläßt."
L["Layout_DPSTank"] = "DPS/Tank" -- Needs review
L["Layout_Healing"] = "Heilung"
L["Layout_Link"] = "Layouts verknüpfen" -- Needs review
L["Layout_LinkDesc"] = "Benutze die gleichen Einstellungen zwischen DPS/Tank- und Heiler-Layout"
L["Power_Eco"] = "Economy" -- Needs review
L["Power_EcoDesc"] = [=[Dieser Modus plant graphische Updates mit einer geringeren Rate als normal.
Kann bei Low-end PCs die Leistung erhöhen.]=]
L["Power_Normal"] = "Standardmodus"
L["Power_NormalDesc"] = "Dieser Modus plant graphische Updates mit einer Standardrate."
L["Power_PowerMode"] = "Powermodus"
L["Power_Turbo"] = "Turbomodus"
L["Power_TurboDesc"] = [=[Dieser Modus plant graphische Updates mit einer sehr hohen Rate und stellt die Animationen des UIs flüssiger dar.
Erhöht die Nutzung der CPU.]=] -- Needs review
L["Reset_Confirm"] = "Bist du sicher, dass du RealUI zurücksetzen möchtest?" -- Needs review
L["Reset_SettingsLost"] = "Alle Benutzereinstellungen gehen verloren."
-- L["Tweaks_HideRaidFilter"] = ""
-- L["Tweaks_HideRaidFilterDesc"] = ""


-- Config
-- L["ActionBars_ActionBarsDesc"] = ""
-- L["ActionBars_Center"] = ""
-- L["ActionBars_CenterDesc"] = ""
-- L["ActionBars_CenterOption"] = ""
-- L["ActionBars_EAB"] = ""
-- L["ActionBars_Move"] = ""
-- L["ActionBars_MoveDesc"] = ""
-- L["ActionBars_Pet"] = ""
-- L["ActionBars_ShowDoodads"] = ""
-- L["ActionBars_ShowDoodadsDesc"] = ""
-- L["ActionBars_Sides"] = ""
-- L["ActionBars_SidesDesc"] = ""
-- L["ActionBars_SidesOption"] = ""
-- L["ActionBars_Stance"] = ""
L["Alert_CantOpenInCombat"] = "Die RealUI-Konfiguration kann während des Kampfes nicht geöffnet werden."
-- L["Alert_UseClickToSetFocus"] = ""
-- L["AuraTrack"] = ""
L["AuraTrack_Buff"] = "Stärkungszauber"
L["AuraTrack_Create"] = "Erzeuge einen neuen Tracker" -- Needs review
L["AuraTrack_Debuff"] = "Schwächungszauber"
L["AuraTrack_HideOOC"] = "Verstecke außerhalb des Kampfes" -- Needs review
L["AuraTrack_HideOOCDesc"] = "Verstecken des Trackers außerhalb des Kampfes erzwingen, auch wenn er aktiv ist." -- Needs review
L["AuraTrack_HideStack"] = "Verstecke Stapelzähler" -- Needs review
L["AuraTrack_HideStackDesc"] = "Zeige keinen Stapelzähler für Stärkungs-/Schwächaungszauber auf diesem Tracker." -- Needs review
L["AuraTrack_HideTime"] = "Zeit verbergen" -- Needs review
L["AuraTrack_HideTimeDesc"] = "Verbleibende Zeit auf diesem Tracker nicht anzeigen." -- Needs review
L["AuraTrack_IgnoreSpec"] = "Ignoriere Spezalisierung" -- Needs review
L["AuraTrack_IgnoreSpecDesc"] = "Tracker unabhängig von der Spezialisierung anzeigen" -- Needs review
L["AuraTrack_InactiveOpacity"] = "Transparenz inaktiver Indikatoren" -- Needs review
-- L["AuraTrack_InvalidName"] = ""
L["AuraTrack_MinLevel"] = "Min Level (0 = ignorieren)" -- Needs review
-- L["AuraTrack_MinLevelDesc"] = ""
L["AuraTrack_NoteSpellID"] = [=[Hinweis: Zaubername oder ID muss exakt dem Zauber entsprechen, den du verfolgen möchtest
Großschreibung und Leerzeichen spielen eine Rolle
Um mehrere Zauber zu verfolgen, nutze die ZauberID und separiere sie mit einem Komma (z.B. 1122,2233,3344).]=] -- Needs review
L["AuraTrack_Padding"] = "Indikatorfüllung" -- Needs review
-- L["AuraTrack_Remove"] = ""
-- L["AuraTrack_RemoveConfirm"] = ""
L["AuraTrack_Reset"] = "Bist du sicher, dass du Tracking-Informationen auf Standard zurücksetzen möchtest?" -- Needs review
-- L["AuraTrack_Selected"] = ""
L["AuraTrack_ShowHostile"] = "Anzeigen mit feindlichem Ziel" -- Needs review
L["AuraTrack_ShowHostileDesc"] = "Zeige Indikatoren, wenn ein angreifbares Ziel vorhanden ist" -- Needs review
L["AuraTrack_ShowInCombat"] = "Im Kampf anzeigen"
L["AuraTrack_ShowInCombatDesc"] = "Zeige Indikatoren im Kampf" -- Needs review
L["AuraTrack_ShowInPvE"] = "Im PvE anzeigen"
L["AuraTrack_ShowInPvEDesc"] = "Zeige Indikatoren in einer PvE-Instanz"
L["AuraTrack_ShowInPvP"] = "Im PvP anzeigen"
L["AuraTrack_ShowInPvPDesc"] = "Zeige Indikatoren in einer PvP-Instanz"
L["AuraTrack_Size"] = "Indikatorgröße" -- Needs review
L["AuraTrack_SpellNameID"] = "Zaubername oder ID"
L["AuraTrack_Static"] = "Statisch"
L["AuraTrack_StaticDesc"] = "Statische Tracker verbleiben sichtbar an der gleichen Stelle"
L["AuraTrack_TrackerOptions"] = "Trackeroptionen" -- Needs review
-- L["AuraTrack_TristateSpecfalse"] = ""
-- L["AuraTrack_TristateSpecnil"] = ""
-- L["AuraTrack_TristateSpectrue"] = ""
-- L["AuraTrack_Type"] = ""
-- L["AuraTrack_TypeDesc"] = ""
-- L["AuraTrack_Unit"] = ""
L["AuraTrack_VerticalCD"] = "Vertikale Abklingzeit"
L["AuraTrack_VerticalCDDesc"] = "Benutze vertikale Abklingzeitenindikatoren anstatt der Spirale" -- Needs review
-- L["AuraTrack_Visibility"] = ""
-- L["CastBars"] = ""
-- L["CastBars_Bottom"] = ""
-- L["CastBars_BottomDesc"] = ""
-- L["CastBars_Inside"] = ""
-- L["CastBars_InsideDesc"] = ""
L["Control_AddonControl"] = "AddOn Kontrolle"
-- L["Control_Layout"] = ""
-- L["Control_LayoutDesc"] = ""
-- L["Control_Position"] = ""
-- L["Control_PositionDesc"] = ""
L["General_Position"] = "Position"
L["General_Positions"] = "Positionen"
-- L["General_XOffset"] = ""
-- L["General_YOffset"] = ""
L["HuD_AlertHuDChangeSize"] = "Ändern der HUD-Größe kann die Positionen einiger Elemente verändern. Daher wird empfohlen, die Positionen der UI-Elemente zu überprüfen, nachdem die Änderungen angewendet wurden." -- Needs review
L["HuD_Height"] = "Höhe"
L["HuD_Horizontal"] = "Horizontal"
L["HuD_ReverseBars"] = "Lebensbalken umkehren" -- Needs review
L["HuD_ShowElements"] = "Zeige UI-Elemente"
-- L["HuD_Uninterruptible"] = ""
L["HuD_UseLarge"] = "Benutze großes HuD"
L["HuD_UseLargeDesc"] = "Erhöht die Größe der Schlüsselelemente des HuD (Einheitenfenster, etc)." -- Needs review
L["HuD_Vertical"] = "Vertikal" -- Needs review
-- L["HuD_VerticalDesc"] = ""
L["HuD_Width"] = "Breite"
-- L["Misc_SpellAlertsDesc"] = ""
-- L["Misc_SpellAlertsWidthDesc"] = ""
L["Raid_30Width"] = "30 Spieler Breite" -- Needs review
L["Raid_40Width"] = "40 Spieler Breite" -- Needs review
-- L["Raid_LargeGroup"] = ""
-- L["Raid_LargeGroupDesc"] = ""
L["Raid_ShowSolo"] = "Anzeigen wenn Solo" -- Needs review
-- L["Raid_SmallGroup"] = ""
-- L["Raid_SmallGroupDesc"] = ""
-- L["Resource"] = ""
-- L["Resource_BloodShield"] = ""
-- L["Resource_DemonicFury"] = ""
-- L["Resource_Eclipse"] = ""
-- L["Resource_Gap"] = ""
-- L["Resource_GapDesc"] = ""
-- L["Resource_HeightDesc"] = ""
-- L["Resource_HideUnused"] = ""
-- L["Resource_HideUnusedDesc"] = ""
-- L["Resource_Resolve"] = ""
-- L["Resource_Reverse"] = ""
-- L["Resource_ReverseDesc"] = ""
-- L["Resource_Stagger"] = ""
-- L["Resource_WidthDesc"] = ""
-- L["UnitFrames_AnchorWidth"] = ""
-- L["UnitFrames_AnchorWidthDesc"] = ""
-- L["UnitFrames_AnnounceChatDesc"] = ""
-- L["UnitFrames_AnnounceTrink"] = ""
-- L["UnitFrames_AnnounceTrinkDesc"] = ""
-- L["UnitFrames_BuffCount"] = ""
-- L["UnitFrames_DebuffCount"] = ""
-- L["UnitFrames_Gap"] = ""
-- L["UnitFrames_GapDesc"] = ""
-- L["UnitFrames_ModifierKey"] = ""
-- L["UnitFrames_NPCAuras"] = ""
-- L["UnitFrames_NPCAurasDesc"] = ""
-- L["UnitFrames_PlayerAuras"] = ""
-- L["UnitFrames_PlayerAurasDesc"] = ""
-- L["UnitFrames_SetFocus"] = ""
-- L["UnitFrames_SetFocusDesc"] = ""
-- L["UnitFrames_Units"] = ""


-- InfoLine
L["Clock_CalenderInvites"] = "Ausstehende Einladungen" -- Needs review
L["Clock_Date"] = "Datum" -- Needs review
L["Clock_NoTBTime"] = "Keine Zeit für Tol Barad verfügbar"
L["Clock_NoWGTime"] = "Keine Zeit für Tausendwinter verfügbar"
L["Clock_ShowCalendar"] = "<Klicken> um den Kalendar anzuzeigen"
L["Clock_ShowTimer"] = "<Shift+Klick> um die Timer anzuzeigen."
L["Clock_TBTime"] = "Restliche Zeit bis Tol Barad" -- Needs review
L["Clock_WGTime"] = "Restliche Zeit bis Tausendwinter" -- Needs review
L["Currency_Cycle"] = "<Klicken> um durch die angezeigten Währungen zu wechseln."
L["Currency_EraseData"] = "<Alt+Klick> um die hervorgehobenen Charakterdaten zu löschen"
L["Currency_NoteWeeklyReset"] = [=[Hinweis: Wöchentliche Grenzen werden zurückgesetzt nachdem die Währungsdaten eines
Charakters geladen werden wenn dessen wöchentliche Grenzen zurückgesetzt wurden.]=] -- Needs review
L["Currency_ResetCaps"] = "<Shift+Klick> um die wöchentlichen Caps zurückzusetzen"
L["Currency_TrackMore"] = "Um zusätzliche Währungen zu verfolgen, benutze den Währungstab im Spielerfenster und ändere die gewünschte Währung zu 'Zeige im Rucksack'" -- Needs review
L["Currency_UpdatedAbbr"] = "Upd." -- Needs review
L["Friend_WhisperInvite"] = "<Klicken> zum Anflüstern, <Alt+Klick> zum Einladen." -- Needs review
L["Guild_WhisperInvite"] = "<Klicken> zum Anflüstern, <Alt+Klick> zum Einladen." -- Needs review
L["InfoLine"] = "Informationszeile"
-- L["InfoLine_ShowBG"] = ""
L["Layout_Change"] = "<Klicken> um das Layout zu wechseln"
L["Layout_Current"] = "Derzeitiges Layout" -- Needs review
L["Layout_LayoutChanger"] = "Layoutwechsler" -- Needs review
L["Meters_Active"] = "Aktive Anzeigen:"
L["Meters_Header"] = "Anzeigenumschalter" -- Needs review
L["Meters_Toggle"] = "<Klicken> um Anzeigen ein- und auszublenden."
L["Spec_ChangeSpec"] = "<Spec Klick> um die Talentspezialisierung zu wechseln"
L["Spec_Equip"] = "< Ausrüstung Klick> zum Ausrüsten" -- Needs review
L["Spec_EquipAssignPrimary"] = "< Ausrüstung Strg+Klick> zum Zuweisen des Primärsets" -- Needs review
L["Spec_EquipAssignSecondary"] = "< Ausrüstung Alt+Klick> zum Zuweisen des Sekundärsets" -- Needs review
L["Spec_EquipUnassign"] = "< Ausrüstung Shift+Klick> um Zuweisung aufzuheben" -- Needs review
L["Spec_SpecChanger"] = "Spezialisierungswechsler" -- Needs review
L["Spec_StatConfig"] = "<Wert Klick> zum konfigurieren." -- Needs review
L["Spec_StatDisplay"] = "Werteanzeige" -- Needs review
L["Start"] = "Start"
L["Start_Config"] = "RealUI-Konfiguration" -- Needs review
L["Sys_AverageAbbr"] = "Avg" -- Needs review
L["Sys_CurrentAbbr"] = "Cur" -- Needs review
L["Sys_FPS"] = "FPS" -- Needs review
L["Sys_In"] = "Eingehend" -- Needs review
L["Sys_kbps"] = "kbps" -- Needs review
L["Sys_Max"] = "Max" -- Needs review
L["Sys_Min"] = "Min" -- Needs review
L["Sys_ms"] = "ms" -- Needs review
L["Sys_Out"] = "Ausgehend" -- Needs review
L["Sys_Stat"] = "Wert"
L["Sys_SysInfo"] = "Systeminformation"
L["XPRep"] = "EP/Ruf" -- Needs review
L["XPRep_Current"] = "Aktuell"
L["XPRep_NoFaction"] = "Keine Fraktion ausgewählt" -- Needs review
L["XPRep_Remaining"] = "Verbleibend"
L["XPRep_Toggle"] = "<Klicken> zum Umschalten der EP/Ruf-Anzeige" -- Needs review

end
