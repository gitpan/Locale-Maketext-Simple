#!/usr/bin/perl
# $File: //member/autrijus/Locale-Maketext-Simple/Makefile.PL $ $Author: autrijus $
# $Revision: #1 $ $Change: 5742 $ $DateTime: 2003/05/09 20:52:47 $

use ExtUtils::MakeMaker;

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

