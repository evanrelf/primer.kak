evaluate-commands %sh{

# All colors

export black="rgb:1b1f24"

export white="rgb:ffffff"

export gray_000="rgb:f6f8fa"
export gray_100="rgb:eaeef2"
export gray_200="rgb:d0d7de"
export gray_300="rgb:afb8c1"
export gray_400="rgb:8c959f"
export gray_500="rgb:6e7781"
export gray_600="rgb:57606a"
export gray_700="rgb:424a53"
export gray_800="rgb:32383f"
export gray_900="rgb:24292f"

export blue_000="rgb:ddf4ff"
export blue_100="rgb:b6e3ff"
export blue_200="rgb:80ccff"
export blue_300="rgb:54aeff"
export blue_400="rgb:218bff"
export blue_500="rgb:0969da"
export blue_600="rgb:0550ae"
export blue_700="rgb:033d8b"
export blue_800="rgb:0a3069"
export blue_900="rgb:002155"

export green_000="rgb:dafbe1"
export green_100="rgb:aceebb"
export green_200="rgb:6fdd8b"
export green_300="rgb:4ac26b"
export green_400="rgb:2da44e"
export green_500="rgb:1a7f37"
export green_600="rgb:116329"
export green_700="rgb:044f1e"
export green_800="rgb:003d16"
export green_900="rgb:002d11"

export yellow_000="rgb:fff8c5"
export yellow_100="rgb:fae17d"
export yellow_200="rgb:eac54f"
export yellow_300="rgb:d4a72c"
export yellow_400="rgb:bf8700"
export yellow_500="rgb:9a6700"
export yellow_600="rgb:7d4e00"
export yellow_700="rgb:633c01"
export yellow_800="rgb:4d2d00"
export yellow_900="rgb:3b2300"

export orange_000="rgb:fff1e5"
export orange_100="rgb:ffd8b5"
export orange_200="rgb:ffb77c"
export orange_300="rgb:fb8f44"
export orange_400="rgb:e16f24"
export orange_500="rgb:bc4c00"
export orange_600="rgb:953800"
export orange_700="rgb:762c00"
export orange_800="rgb:5c2200"
export orange_900="rgb:471700"

export red_000="rgb:ffebe9"
export red_100="rgb:ffcecb"
export red_200="rgb:ffaba8"
export red_300="rgb:ff8182"
export red_400="rgb:fa4549"
export red_500="rgb:cf222e"
export red_600="rgb:a40e26"
export red_700="rgb:82071e"
export red_800="rgb:660018"
export red_900="rgb:4c0014"

export purple_000="rgb:fbefff"
export purple_100="rgb:ecd8ff"
export purple_200="rgb:d8b9ff"
export purple_300="rgb:c297ff"
export purple_400="rgb:a475f9"
export purple_500="rgb:8250df"
export purple_600="rgb:6639ba"
export purple_700="rgb:512a97"
export purple_800="rgb:3e1f79"
export purple_900="rgb:2e1461"

export pink_000="rgb:ffeff7"
export pink_100="rgb:ffd3eb"
export pink_200="rgb:ffadda"
export pink_300="rgb:ff80c8"
export pink_400="rgb:e85aad"
export pink_500="rgb:bf3989"
export pink_600="rgb:99286e"
export pink_700="rgb:772057"
export pink_800="rgb:611347"
export pink_900="rgb:4d0336"

export coral_000="rgb:fff0eb"
export coral_100="rgb:ffd6cc"
export coral_200="rgb:ffb4a1"
export coral_300="rgb:fd8c73"
export coral_400="rgb:ec6547"
export coral_500="rgb:c4432b"
export coral_600="rgb:9e2f1c"
export coral_700="rgb:801f0f"
export coral_800="rgb:691105"
export coral_900="rgb:510901"

# Background colors

export bg_gray_light="$gray_000"
export bg_gray="$gray_100"
export bg_gray_dark="$gray_900"
export bg_blue_light="$blue_000"
export bg_blue="$blue_500"
export bg_green_light="$green_100"
export bg_green="$green_500"
export bg_purple_light="$purple_000"
export bg_purple="$purple_500"
export bg_yellow_light="$yellow_000"
export bg_yellow="$yellow_200"
export bg_yellow_dark="$yellow_400"
export bg_orange="$orange_500"
export bg_red_light="$red_100"
export bg_red="$red_500"
export bg_pink="$pink_500"

# Text colors

export text_gray_light="$gray_500"
export text_gray="$gray_600"
export text_gray_dark="$gray_900"
export text_blue="$blue_500"
export text_green="$green_500"
export text_purple="$purple_500"
export text_yellow="$yellow_500"
export text_orange_light="$orange_400"
export text_orange="$orange_600"
export text_red="$red_600"
export text_pink="$pink_500"

c() {
  fg="$1"
  bg="$2"
  attrs="$3"

  [ -n "$fg" ] && printf "%s" "$fg"
  [ -n "$bg" ] && printf "%s" ",$bg"
  [ -n "$attrs" ] && printf "%s" "+$attrs"
}

printf "%s\n" "
# Code
set-face global title              $(c $text_orange       default)
set-face global header             $(c $text_red          default)
set-face global bold               $(c $text_orange_light default)
set-face global italic             $(c $text_pink         default)
set-face global mono               $(c $text_purple       default)
set-face global block              $(c default            default)
set-face global link               $(c $text_blue         default)
set-face global bullet             $(c default            default)
set-face global list               $(c default            default)

# Markup
set-face global value              $(c $text_blue         default)
set-face global type               $(c $text_blue         default)
set-face global variable           $(c $text_blue         default)
set-face global module             $(c $text_purple       default)
set-face global function           $(c $text_purple       default)
set-face global string             $(c $text_yellow       default)
set-face global keyword            $(c $text_red          default)
set-face global operator           $(c $text_orange_light default)
set-face global attribute          $(c $text_green        default)
set-face global comment            $(c $text_gray_light   default)
set-face global documentation      $(c $text_gray         default)
set-face global meta               $(c $text_orange       default)
set-face global builtin            $(c $text_red          default)

# Deprecated?
set-face global error              $(c $black             $bg_red_light)
set-face global identifier         $(c default            default)

# Interface
set-face global Default            $(c $black             $white)

set-face global Error              $(c $black             $bg_red_light)

set-face global LineNumberCursor   $(c $text_gray         $bg_gray)
set-face global LineNumbers        $(c $text_gray_light   $bg_gray)
set-face global LineNumbersWrapped $(c $text_gray_light   $bg_gray)
set-face global BufferPadding      $(c default            default)

set-face global MatchingChar       $(c default            $bg_green_light)

set-face global MenuBackground     $(c $black             $bg_gray)
set-face global MenuForeground     $(c $white             $bg_blue)
set-face global MenuInfo           $(c default            default)
set-face global Information        $(c $black             $bg_blue_light)

set-face global PrimaryCursor      $(c $black             $bg_yellow)
set-face global PrimaryCursorEol   $(c default            $bg_orange)
set-face global PrimarySelection   $(c default            $bg_yellow_light)
set-face global SecondaryCursor    $(c $bg_red_light      $bg_pink)
set-face global SecondaryCursorEol $(c $bg_red_light      $bg_red)
set-face global SecondarySelection $(c default            $bg_red_light)
set-face global StatusCursor       $(c default            $bg_gray_dark)

set-face global StatusLine         $(c $black             $bg_gray)
set-face global StatusLineInfo     $(c default            $bg_yellow_light)
set-face global StatusLineMode     $(c $text_blue         $bg_gray)
set-face global StatusLineValue    $(c $text_pink         $bg_gray)
set-face global Prompt             $(c default            default)

set-face global Whitespace         $(c default            default)
set-face global WrapMarker         $(c default            default)
"
}
