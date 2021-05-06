
package Paws::AppStream::ListAssociatedStacks;
  use Moose;
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::ListAssociatedStacksResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListAssociatedStacks - Arguments for method ListAssociatedStacks on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedStacks on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method ListAssociatedStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedStacks.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $ListAssociatedStacksResult = $appstream2->ListAssociatedStacks(
      FleetName => 'MyString',
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Names     = $ListAssociatedStacksResult->Names;
    my $NextToken = $ListAssociatedStacksResult->NextToken;

    # Returns a L<Paws::AppStream::ListAssociatedStacksResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/ListAssociatedStacks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetName => Str

The name of the fleet.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedStacks in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

