package Games::Word::Wordlist::KBBI;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);
use WordList::ID::KBBI;

sub new {
    bless Games::Word::Wordlist->new ([WordList::ID::KBBI->new->all_words]), shift;
}

1;

# ABSTRACT: Wordlist from Kamus Besar Bahasa Indonesia (Indonesian)

=head1 SYNOPSIS

  use Games::Word::Wordlist::KBBI;
  my $wl = Games::Word::Wordlist::KBBI->new;
  my $word = $wl->random_word;
  print "We have a word." if $wl->is_word ($word);


=head1 DESCRIPTION


=head1 SEE ALSO

L<< Games::Word::Wordlist >>.

=cut
