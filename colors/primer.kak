evaluate-commands %sh{

source "$kak_config/colors/light.sh"

export bg_gray_light="$gray_000"
export bg_gray="$gray_100"
export bg_gray_dark="$gray_900"
export bg_blue_light="$blue_000"
export bg_blue="$blue_500"
export bg_green_light="$green_100"
export bg_green="$green_500"
export bg_purple_light="$purple_000"
export bg_purple="$purple_500"
export bg_yellow_light="$yellow_200"
export bg_yellow="$yellow_500"
export bg_yellow_dark="$yellow_700"
export bg_orange="$orange_700"
export bg_red_light="$red_100"
export bg_red="$red_500"
export bg_pink="$pink_500"

export text_gray_light="$gray_500"
export text_gray="$gray_600"
export text_gray_dark="$gray_900"
export text_blue="$blue_500"
export text_green="$green_500"
export text_purple="$purple_500"
export text_yellow="$yellow_800"
export text_orange_light="$orange_600"
export text_orange="$orange_900"
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
set-face global error              $(c default            $bg_red_light)
set-face global identifier         $(c default            default)

# Interface
set-face global Default            $(c $foreground        $background)

set-face global Error              $(c default            $bg_red_light)

set-face global LineNumberCursor   $(c $text_gray         $bg_gray)
set-face global LineNumbers        $(c $text_gray_light   $bg_gray)
set-face global LineNumbersWrapped $(c $text_gray_light   $bg_gray)
set-face global BufferPadding      $(c default            default)

set-face global MatchingChar       $(c default            $bg_green_light)

set-face global MenuBackground     $(c default            $bg_gray)
set-face global MenuForeground     $(c $background        $bg_blue)
set-face global MenuInfo           $(c default            default)
set-face global Information        $(c default            $bg_blue_light)

set-face global PrimaryCursor      $(c default            $bg_yellow)
set-face global PrimaryCursorEol   $(c default            $bg_orange)
set-face global PrimarySelection   $(c default            $bg_yellow_light)
set-face global SecondaryCursor    $(c $bg_red_light      $bg_pink)
set-face global SecondaryCursorEol $(c $bg_red_light      $bg_red)
set-face global SecondarySelection $(c default            $bg_red_light)
set-face global StatusCursor       $(c default            $bg_gray_dark)

set-face global StatusLine         $(c default            $bg_gray)
set-face global StatusLineInfo     $(c default            $bg_yellow_light)
set-face global StatusLineMode     $(c $text_blue         $bg_gray)
set-face global StatusLineValue    $(c $text_pink         $bg_gray)
set-face global Prompt             $(c default            default)

set-face global Whitespace         $(c default            default)
set-face global WrapMarker         $(c default            default)
"
}
