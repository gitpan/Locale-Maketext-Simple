# $File: //member/autrijus/Locale-Maketext-Simple/t/1-basic.t $ $Author: autrijus $
# $Revision: #5 $ $Change: 8150 $ $DateTime: 2003/09/16 13:38:35 $

use strict;
use Test;

BEGIN { plan tests => 7 }

use Locale::Maketext::Simple;
ok(Locale::Maketext::Simple->VERSION);
ok(loc("Just [_1] Perl [_2]", qw(another hacker)), "Just another Perl hacker");

{
    local $^W; # shuts up 'redefined' warnings
    Locale::Maketext::Simple->reload_loc;
    Locale::Maketext::Simple->import(Style => 'gettext');
}

ok(loc("Just %1 Perl %2", qw(another hacker)), "Just another Perl hacker");
ok(loc_lang('fr'));
ok(loc("Just %quant(%1,Perl hacker)", 1), "Just 1 Perl hacker");
ok(loc("Just %quant(%1,Perl hacker)", 2), "Just 2 Perl hackers");
ok(loc("Just %quant(%1,Mad skill,Mad skillz)", 3), "Just 3 Mad skillz");
