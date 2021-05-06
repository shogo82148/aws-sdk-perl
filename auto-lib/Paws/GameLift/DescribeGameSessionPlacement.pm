
package Paws::GameLift::DescribeGameSessionPlacement;
  use Moose;
  has PlacementId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGameSessionPlacement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeGameSessionPlacementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeGameSessionPlacement - Arguments for method DescribeGameSessionPlacement on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGameSessionPlacement on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeGameSessionPlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGameSessionPlacement.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeGameSessionPlacementOutput =
      $gamelift->DescribeGameSessionPlacement(
      PlacementId => 'MyIdStringModel',

      );

    # Results:
    my $GameSessionPlacement =
      $DescribeGameSessionPlacementOutput->GameSessionPlacement;

    # Returns a L<Paws::GameLift::DescribeGameSessionPlacementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeGameSessionPlacement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PlacementId => Str

A unique identifier for a game session placement to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGameSessionPlacement in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

