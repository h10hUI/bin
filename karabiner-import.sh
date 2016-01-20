#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.doublepresscommandQ 1
/bin/echo -n .
$cli set repeat.wait 13
/bin/echo -n .
$cli set repeat.initial_wait 200
/bin/echo -n .
$cli set private.app_terminal_esc_with_eisuu 1
/bin/echo -n .
$cli set private.app_terminal_ctrl[_with_eisuu 1
/bin/echo -n .
$cli set private.app_terminal_ctrlj_with_eisuu 1
/bin/echo -n .
/bin/echo
