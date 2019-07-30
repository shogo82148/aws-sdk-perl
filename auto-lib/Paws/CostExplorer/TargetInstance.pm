package Paws::CostExplorer::TargetInstance;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DefaultTargetInstance => (is => 'ro', isa => 'Bool');
  has EstimatedMonthlyCost => (is => 'ro', isa => 'Str');
  has EstimatedMonthlySavings => (is => 'ro', isa => 'Str');
  has ExpectedResourceUtilization => (is => 'ro', isa => 'Paws::CostExplorer::ResourceUtilization');
  has ResourceDetails => (is => 'ro', isa => 'Paws::CostExplorer::ResourceDetails');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::TargetInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::TargetInstance object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., ResourceDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::TargetInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Details on recommended instance.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code that Amazon Web Services used to calculate the costs
for this instance.


=head2 DefaultTargetInstance => Bool

  Indicates whether or not this recommendation is the defaulted Amazon
Web Services recommendation.


=head2 EstimatedMonthlyCost => Str

  Expected cost to operate this instance type on a monthly basis.


=head2 EstimatedMonthlySavings => Str

  Estimated savings resulting from modification, on a monthly basis.


=head2 ExpectedResourceUtilization => L<Paws::CostExplorer::ResourceUtilization>

  Expected utilization metrics for target instance type.


=head2 ResourceDetails => L<Paws::CostExplorer::ResourceDetails>

  Details on the target instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
