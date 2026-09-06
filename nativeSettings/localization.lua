-- Native Settings UI chrome localization (19 game languages).
-- Keys are locale ids (en_US). Config uses game codes (en-us) or "auto".

local Localization = {}

Localization.MODS_BUTTON_ID = "Native Mods" -- Stable English identity for menu activation checks

Localization.gameCodeToLocale = {
    ["ar-ar"] = "ar_AR",
    ["cz-cz"] = "cz_CZ",
    ["de-de"] = "de_DE",
    ["en-us"] = "en_US",
    ["es-es"] = "es_ES",
    ["es-mx"] = "es_MX",
    ["fr-fr"] = "fr_FR",
    ["hu-hu"] = "hu_HU",
    ["it-it"] = "it_IT",
    ["jp-jp"] = "jp_JP",
    ["kr-kr"] = "kr_KR",
    ["pl-pl"] = "pl_PL",
    ["pt-br"] = "pt_BR",
    ["ru-ru"] = "ru_RU",
    ["th-th"] = "th_TH",
    ["tr-tr"] = "tr_TR",
    ["ua-ua"] = "ua_UA",
    ["zh-cn"] = "zh_CN",
    ["zh-tw"] = "zh_TW",
}

Localization.localeToGameCode = {}
for code, locale in pairs(Localization.gameCodeToLocale) do
    Localization.localeToGameCode[locale] = code
end

-- Native display names for the language selector.
Localization.localeDisplayNames = {
    ar_AR = "العربية (ar-ar)",
    cz_CZ = "Čeština (cz-cz)",
    de_DE = "Deutsch (de-de)",
    en_US = "English (en-us)",
    es_ES = "Español (es-es)",
    es_MX = "Español latinoamericano (es-mx)",
    fr_FR = "Français (fr-fr)",
    hu_HU = "Magyar (hu-hu)",
    it_IT = "Italiano (it-it)",
    jp_JP = "日本語 (jp-jp)",
    kr_KR = "한국어 (kr-kr)",
    pl_PL = "Polski (pl-pl)",
    pt_BR = "Português do Brasil (pt-br)",
    ru_RU = "Русский (ru-ru)",
    th_TH = "ไทย (th-th)",
    tr_TR = "Türkçe (tr-tr)",
    ua_UA = "Українська (ua-ua)",
    zh_CN = "简体中文 (zh-cn)",
    zh_TW = "繁體中文 (zh-tw)",
}

Localization.localeOrder = {
    "ar_AR", "cz_CZ", "de_DE", "en_US", "es_ES", "es_MX", "fr_FR", "hu_HU", "it_IT",
    "jp_JP", "kr_KR", "pl_PL", "pt_BR", "ru_RU", "th_TH", "tr_TR", "ua_UA", "zh_CN", "zh_TW",
}

local function T(mods, noMods, language, languageDesc, auto, settings, none)
    return {
        mods = mods,
        no_mods = noMods,
        language = language,
        language_desc = languageDesc,
        auto = auto,
        settings = settings,
        none = none,
    }
end

-- Chrome strings for all 19 game languages.
local en = T(
    "Native Mods",
    "No mods using NativeSettings installed!",
    "UI Language",
    "Native Settings menu language. Auto follows the game interface language.",
    "Auto (Game Language)",
    "Native Settings",
    "None"
)

Localization.strings = {
    en_US = en,
    ar_AR = T("التعديلات الأصلية", "لا توجد تعديلات تستخدم NativeSettings!", "لغة الواجهة", "لغة قائمة Native Settings. تلقائي يتبع لغة واجهة اللعبة.", "تلقائي (لغة اللعبة)", "إعدادات Native", "لا شيء"),
    cz_CZ = T("Nativní módy", "Nejsou nainstalovány žádné módy používající NativeSettings!", "Jazyk rozhraní", "Jazyk nabídky Native Settings. Auto se řídí jazykem herního rozhraní.", "Auto (jazyk hry)", "Nativní nastavení", "Žádné"),
    de_DE = T("Native Mods", "Keine Mods installiert, die NativeSettings nutzen!", "UI-Sprache", "Sprache des Native-Settings-Menüs. Auto folgt der Spieloberfläche.", "Auto (Spielsprache)", "Native Einstellungen", "Keine"),
    es_ES = T("Mods nativos", "¡No hay mods instalados que usen NativeSettings!", "Idioma de la interfaz", "Idioma del menú de Native Settings. Auto sigue el idioma de la interfaz del juego.", "Auto (idioma del juego)", "Ajustes nativos", "Ninguno"),
    es_MX = T("Mods nativos", "¡No hay mods instalados que usen NativeSettings!", "Idioma de la interfaz", "Idioma del menú de Native Settings. Auto sigue el idioma de la interfaz del juego.", "Auto (idioma del juego)", "Configuración nativa", "Ninguno"),
    fr_FR = T("Mods natifs", "Aucun mod utilisant NativeSettings n'est installé !", "Langue de l'interface", "Langue du menu Native Settings. Auto suit la langue de l'interface du jeu.", "Auto (langue du jeu)", "Paramètres natifs", "Aucun"),
    hu_HU = T("Natív modok", "Nincs NativeSettings-et használó mod telepítve!", "Felület nyelve", "A Native Settings menü nyelve. Az Auto a játék felületének nyelvét követi.", "Auto (játék nyelve)", "Natív beállítások", "Nincs"),
    it_IT = T("Mod native", "Nessuna mod che usa NativeSettings installata!", "Lingua interfaccia", "Lingua del menu Native Settings. Auto segue la lingua dell'interfaccia di gioco.", "Auto (lingua di gioco)", "Impostazioni native", "Nessuno"),
    jp_JP = T("ネイティブMOD", "NativeSettings を使用する MOD がインストールされていません！", "UI言語", "Native Settings メニューの言語。「自動」はゲームのインターフェース言語に従います。", "自動（ゲーム言語）", "ネイティブ設定", "なし"),
    kr_KR = T("네이티브 모드", "NativeSettings를 사용하는 모드가 설치되어 있지 않습니다!", "UI 언어", "Native Settings 메뉴 언어. 자동은 게임 인터페이스 언어를 따릅니다.", "자동 (게임 언어)", "네이티브 설정", "없음"),
    pl_PL = T("Natywne mody", "Brak zainstalowanych modów korzystających z NativeSettings!", "Język interfejsu", "Język menu Native Settings. Auto podąża za językiem interfejsu gry.", "Auto (język gry)", "Ustawienia natywne", "Brak"),
    pt_BR = T("Mods nativos", "Nenhum mod que usa NativeSettings instalado!", "Idioma da interface", "Idioma do menu Native Settings. Automático segue o idioma da interface do jogo.", "Auto (idioma do jogo)", "Configurações nativas", "Nenhum"),
    ru_RU = T("Нативные моды", "Нет модов, использующих NativeSettings!", "Язык интерфейса", "Язык меню Native Settings. Авто — язык интерфейса игры.", "Авто (язык игры)", "Нативные настройки", "Нет"),
    th_TH = T("ม็อดเนทีฟ", "ไม่มีม็อดที่ใช้ NativeSettings ติดตั้งอยู่!", "ภาษาของ UI", "ภาษาเมนู Native Settings โหมดอัตโนมัติจะตามภาษาอินเทอร์เฟซของเกม", "อัตโนมัติ (ภาษาเกม)", "การตั้งค่าเนทีฟ", "ไม่มี"),
    tr_TR = T("Yerel Modlar", "NativeSettings kullanan yüklü mod yok!", "Arayüz Dili", "Native Settings menü dili. Otomatik, oyun arayüz dilini takip eder.", "Otomatik (Oyun Dili)", "Yerel Ayarlar", "Yok"),
    ua_UA = T("Нативні моди", "Немає встановлених модів, що використовують NativeSettings!", "Мова інтерфейсу", "Мова меню Native Settings. Авто слідує за мовою ігрового інтерфейсу.", "Авто (мова гри)", "Нативні налаштування", "Немає"),
    zh_CN = T("原生模组", "没有使用 NativeSettings 的模组！", "界面语言", "Native Settings 菜单语言。自动跟随游戏界面语言。", "自动（游戏语言）", "原生设置", "无"),
    zh_TW = T("原生模組", "沒有使用 NativeSettings 的模組！", "介面語言", "Native Settings 選單語言。自動跟隨遊戲介面語言。", "自動（遊戲語言）", "原生設定", "無"),
}

function Localization.normalizeGameCode(code)
    if not code then return nil end
    local s = string.lower(tostring(code)):gsub("_", "-")
    return s
end

function Localization.gameCodeToLocaleId(code)
    local normalized = Localization.normalizeGameCode(code)
    if not normalized then return "en_US" end
    return Localization.gameCodeToLocale[normalized] or "en_US"
end

function Localization.localeIdToGameCode(locale)
    if not locale or locale == "auto" then return "auto" end
    return Localization.localeToGameCode[locale] or "en-us"
end

function Localization.detectGameLanguageCode()
    local gameCode = nil

    if Codeware then
        local ok, result = pcall(function()
            local container = Game.GetScriptableSystemsContainer()
            if not container then return nil end
            local system = container:Get(CName.new("Codeware.Localization.LocalizationSystem"))
            if not system then return nil end
            local langName = system:GetInterfaceLanguage()
            if not langName then return nil end
            return NameToString(langName)
        end)
        if ok and result and result ~= "" then
            gameCode = result
        end
    end

    if not gameCode then
        local ok, result = pcall(function()
            local settings = Game.GetSettingsSystem()
            if not settings then return nil end
            local var = settings:GetVar("/language", "OnScreen")
            if not var then return nil end
            local value = var:GetValue()
            if value == nil then return nil end
            if type(value) == "userdata" then
                return NameToString(value)
            end
            return tostring(value)
        end)
        if ok and result and result ~= "" then
            gameCode = result
        end
    end

    if not gameCode then
        return "en-us"
    end

    return Localization.normalizeGameCode(gameCode) or "en-us"
end

function Localization.resolveLocale(languageSetting)
    if not languageSetting or languageSetting == "auto" then
        return Localization.gameCodeToLocaleId(Localization.detectGameLanguageCode())
    end

    -- Accept either game code (en-us) or locale id (en_US)
    if Localization.strings[languageSetting] then
        return languageSetting
    end

    return Localization.gameCodeToLocaleId(languageSetting)
end

function Localization.getStrings(locale)
    return Localization.strings[locale] or Localization.strings.en_US
end

function Localization.get(locale, key)
    local table = Localization.getStrings(locale)
    if table[key] and table[key] ~= "" then
        return table[key]
    end
    return Localization.strings.en_US[key] or key
end

function Localization.buildLanguageSelectorElements(locale)
    locale = locale or "en_US"
    local elements = { Localization.get(locale, "auto") }
    for _, id in ipairs(Localization.localeOrder) do
        table.insert(elements, Localization.localeDisplayNames[id] or id)
    end
    return elements
end

function Localization.selectorIndexToLanguage(index)
    if not index or index <= 1 then
        return "auto"
    end
    local locale = Localization.localeOrder[index - 1]
    return Localization.localeIdToGameCode(locale)
end

function Localization.languageToSelectorIndex(languageSetting)
    if not languageSetting or languageSetting == "auto" then
        return 1
    end

    local locale = languageSetting
    if not Localization.strings[locale] then
        locale = Localization.gameCodeToLocaleId(languageSetting)
    end

    for i, id in ipairs(Localization.localeOrder) do
        if id == locale then
            return i + 1
        end
    end

    return 1
end

return Localization
