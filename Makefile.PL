#!/usr/bin/perl
# $File: //member/autrijus/Locale-Maketext-Simple/Makefile.PL $ $Author: autrijus $
# $Revision: #2 $ $Change: 6008 $ $DateTime: 2003/05/20 09:04:29 $

use inc::Module::Install;

WriteMakefile(
    AUTHOR		=> 'Autrijus Tang (autrijus@autrijus.org)',
    ABSTRACT		=> 'Simple interface to Locale::Maketext::Lexicon',
    NAME		=> 'Locale::Maketext::Simple',
    VERSION_FROM	=> 'lib/Locale/Maketext/Simple.pm', 
    DISTNAME		=> 'Locale-Maketext-Simple',
    BINARY_LOCATION	=> 'x86/Locale-Maketext-Simple.tar.gz',

    dist		=> {
        COMPRESS	=> 'gzip -9',
        SUFFIX		=> '.gz',
    },
);

