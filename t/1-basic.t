# $File: //member/autrijus/Locale-Maketext-Simple/t/1-basic.t $ $Author: autrijus $
# $Revision: #3 $ $Change: 7311 $ $DateTime: 2003/08/03 08:19:59 $

use strict;
use Test;

BEGIN { plan tests => 4 }

use Locale::Maketext::Simple;
ok(Locale::Maketext::Simple->VERSION);
ok(loc("Just [_1] Perl [_2]", qw(another hacker)), "Just another Perl hacker");

{
    local $^W; # shuts up 'redefined' warnings
    Locale::Maketext::Simple->import(Style => 'gettext');
}

ok(loc("Just %1 Perl %2", qw(another hacker)), "Just another Perl hacker");
ok(loc_lang('fr'));
