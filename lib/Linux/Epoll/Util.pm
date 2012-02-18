package Linux::Epoll::Util;
{
  $Linux::Epoll::Util::VERSION = '0.004';
}

use strict;
use warnings FATAL => 'all';

use Linux::Epoll;

use Sub::Exporter -setup => { exports => [qw/event_names_to_bits event_bits_to_names event_bits_to_hash/] };

1;    # End of Linux::Epoll::Util

#ABSTRACT: Utility functions for Linux::Epoll



=pod

=head1 NAME

Linux::Epoll::Util - Utility functions for Linux::Epoll

=head1 VERSION

version 0.004

=head1 DESCRIPTION

This module provides a few utility functions for Linux::Epoll

=head1 FUNCTIONS

=head2 event_names_to_bits($names)

Convert $names into a event bitset. $names must either be a string from the set described in L<Linux::Epoll>, or an arrayref containing such strings.

=head2 event_bits_to_names($bits)

Convert bitset $bits into an arrayref of strings containing the names of the bits that are set.

=head2 event_bits_to_hash($bits)

Convert a bitset into a hashref, with keys being the names of the bits that are set and the values being true.

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

