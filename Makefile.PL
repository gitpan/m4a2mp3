use File::Which;
use ExtUtils::MakeMaker;
map { File::Which::which($_) or die("Missing '$_' on this system") } qw/lame mplayer/;

WriteMakefile(

   NAME => 'm4a2mp3',
   
   VERSION_FROM   => 'bin/m4a2mp3',
   
   ABSTRACT_FROM  => 'bin/m4a2mp3',      
   
   LICENSE        => 'perl',   
   
   AUTHOR         => 'Leo Charre leocharre at cpan dot org',   
   
   EXE_FILES => [qw(bin/m4a2mp3)],

   
   # gen /usr/bin/pmused by Wed Jan 20 13:16:02 EST 2010 
   PREREQ_PM => {
      'Carp'                              => '1',
      'Cwd'                               => '3',
      'File::Which'                       => '0.05',
      'LEOCHARRE::CLI2'                   => '1.14',
      'LEOCHARRE::Dir'                    => '1.07',
   },

);


