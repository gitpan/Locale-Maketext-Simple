# $File: //member/autrijus/Locale-Maketext-Simple/t/1-basic.t $ $Author: autrijus $
# $Revision: #2 $ $Change: 6000 $ $DateTime: 2003/05/20 08:03:23 $

use strict;
use Test;

BEGIN { plan tests => 4 }

use Locale::Maketext::Simple;
ok(Locale::Maketext::Simple->VERSION);
ok(loc("Just [_1] Perl [_2]", qw(another hacker)), "Just another Perl hacker");

Locale::Maketext::Simple->import(Style => 'gettext');
ok(loc("Just %1 Perl %2", qw(another hacker)), "Just another Perl hacker");
ok(loc_lang('fr'));
