#!/usr/bin/perl
# $File: //member/autrijus/Locale-Maketext-Simple/Makefile.PL $ $Author: autrijus $
# $Revision: #4 $ $Change: 9922 $ $DateTime: 2004/02/06 11:13:31 $

use inc::Module::Install;

name	    ('Locale-Maketext-Simple');
author	    ('Autrijus Tang (autrijus@autrijus.org)');
abstract    ('Simple interface to Locale::Maketext::Lexicon');
license	    ('perl');
version_from('lib/Locale/Maketext/Simple.pm');

WriteAll( sign => 1 );
