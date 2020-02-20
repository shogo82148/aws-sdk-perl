package Paws::SESv2::SuppressedDestination;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SESv2::SuppressedDestinationAttributes');
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdateTime => (is => 'ro', isa => 'Str', required => 1);
  has Reason => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::SuppressedDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::SuppressedDestination object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Reason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::SuppressedDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An object that contains information about an email address that is on
the suppression list for your account.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SESv2::SuppressedDestinationAttributes>

  An optional value that can contain additional information about the
reasons that the address was added to the suppression list for your
account.


=head2 B<REQUIRED> EmailAddress => Str

  The email address that is on the suppression list for your account.


=head2 B<REQUIRED> LastUpdateTime => Str

  The date and time when the suppressed destination was last updated,
shown in Unix time format.


=head2 B<REQUIRED> Reason => Str

  The reason that the address was added to the suppression list for your
account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

