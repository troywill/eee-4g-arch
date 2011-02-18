#!/usr/bin/env perl
use warnings;
use strict;

&run_command ('pacman --sync dbus');
&run_command ('pacman --sync xf86-input-evdev');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
