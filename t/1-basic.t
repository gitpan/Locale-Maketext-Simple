# $File: //member/autrijus/Locale-Maketext-Simple/t/1-basic.t $ $Author: autrijus $
# $Revision: #1 $ $Change: 5742 $ $DateTime: 2003/05/09 20:52:47 $

use strict;
use Test;

BEGIN { plan tests => 3 }

use Locale::Maketext::Simple;
ok(Locale::Maketext::Simple->VERSION);
ok(loc("Just [_1] Perl [_2]", qw(another hacker)), "Just another Perl hacker");

Locale::Maketext::Simple->import(Style => 'gettext');
ok(loc("Just %1 Perl %2", qw(another hacker)), "Just another Perl hacker");

