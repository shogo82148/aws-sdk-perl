package Paws::Neptune::CharacterSet;
  use Moose;
  has CharacterSetDescription => (is => 'ro', isa => 'Str');
  has CharacterSetName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CharacterSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::CharacterSet object:

  $service_obj->Method(Att1 => { CharacterSetDescription => $value, ..., CharacterSetName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::CharacterSet object:

  $result = $service_obj->Method(...);
  $result->Att1->CharacterSetDescription

=head1 DESCRIPTION

This data type is used as a response element in the action
DescribeDBEngineVersions.

=head1 ATTRIBUTES


=head2 CharacterSetDescription => Str

  The description of the character set.


=head2 CharacterSetName => Str

  The name of the character set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
