
package Paws::SESv2::GetDomainStatisticsReportResponse;
  use Moose;
  has DailyVolumes => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::DailyVolume]', required => 1);
  has OverallVolume => (is => 'ro', isa => 'Paws::SESv2::OverallVolume', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDomainStatisticsReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DailyVolumes => ArrayRef[L<Paws::SESv2::DailyVolume>]

An object that contains deliverability metrics for the domain that you
specified. This object contains data for each day, starting on the
C<StartDate> and ending on the C<EndDate>.


=head2 B<REQUIRED> OverallVolume => L<Paws::SESv2::OverallVolume>

An object that contains deliverability metrics for the domain that you
specified. The data in this object is a summary of all of the data that
was collected from the C<StartDate> to the C<EndDate>.


=head2 _request_id => Str


=cut

