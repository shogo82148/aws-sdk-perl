
package Paws::CloudFront::ListDistributionsByWebACLIdResult;
  use Moose;
  has DistributionList => (is => 'ro', isa => 'Paws::CloudFront::DistributionList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByWebACLIdResult

=head1 ATTRIBUTES


=head2 DistributionList => L<Paws::CloudFront::DistributionList>

The C<DistributionList> type.




=cut

