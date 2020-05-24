evaluate-commands %sh{

source "colors.sh"

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
set-face global title              $(c default default)
set-face global header             $(c default default)
set-face global bold               $(c default default)
set-face global italic             $(c default default)
set-face global mono               $(c default default)
set-face global block              $(c default default)
set-face global link               $(c default default)
set-face global bullet             $(c default default)
set-face global list               $(c default default)

# Markup
set-face global value              $(c default default)
set-face global type               $(c default default)
set-face global variable           $(c default default)
set-face global module             $(c default default)
set-face global function           $(c default default)
set-face global string             $(c default default)
set-face global keyword            $(c default default)
set-face global operator           $(c default default)
set-face global attribute          $(c default default)
set-face global comment            $(c default default)
set-face global documentation      $(c default default)
set-face global meta               $(c default default)
set-face global builtin            $(c default default)

# Deprecated?
set-face global error              $(c default default)
set-face global identifier         $(c default default)

# Interface
set-face global Default            $(c default default)

set-face global Error              $(c default default)

set-face global LineNumberCursor   $(c default default)
set-face global LineNumbers        $(c default default)
set-face global LineNumbersWrapped $(c default default)
set-face global BufferPadding      $(c default default)

set-face global MatchingChar       $(c default default)

set-face global MenuBackground     $(c default default)
set-face global MenuForeground     $(c default default)
set-face global MenuInfo           $(c default default)
set-face global Information        $(c default default)

set-face global PrimaryCursor      $(c default default)
set-face global PrimaryCursorEol   $(c default default)
set-face global PrimarySelection   $(c default default)
set-face global SecondaryCursor    $(c default default)
set-face global SecondaryCursorEol $(c default default)
set-face global SecondarySelection $(c default default)
set-face global StatusCursor       $(c default default)

set-face global StatusLine         $(c default default)
set-face global StatusLineInfo     $(c default default)
set-face global StatusLineMode     $(c default default)
set-face global StatusLineValue    $(c default default)
set-face global Prompt             $(c default default)

set-face global Whitespace         $(c default default)
set-face global WrapMarker         $(c default default)

# Plugins (may need to apply these manually)
# set-face global PhantomSelection $(c default default)
"
}
