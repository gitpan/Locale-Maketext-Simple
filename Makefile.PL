#!/usr/bin/perl
# $File: //member/autrijus/Locale-Maketext-Simple/Makefile.PL $ $Author: autrijus $
# $Revision: #3 $ $Change: 8837 $ $DateTime: 2003/11/13 17:30:26 $

use inc::Module::Install;

name	    ('Locale-Maketext-Simple');
author	    ('Autrijus Tang (autrijus@autrijus.org)');
abstract    ('Simple interface to Locale::Maketext::Lexicon');
license	    ('perl');
sign	    (1);
version_from('lib/Locale/Maketext/Simple.pm');

&Meta->write;
&Makefile->write;
