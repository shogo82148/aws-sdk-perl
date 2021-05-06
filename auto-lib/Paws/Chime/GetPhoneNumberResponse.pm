
package Paws::Chime::GetPhoneNumberResponse;
  use Moose;
  has PhoneNumber => (is => 'ro', isa => 'Paws::Chime::PhoneNumber');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetPhoneNumberResponse

=head1 ATTRIBUTES


=head2 PhoneNumber => L<Paws::Chime::PhoneNumber>

The phone number details.


=head2 _request_id => Str


=cut

