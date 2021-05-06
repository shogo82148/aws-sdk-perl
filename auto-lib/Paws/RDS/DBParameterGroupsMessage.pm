
package Paws::RDS::DBParameterGroupsMessage;
  use Moose;
  has DBParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RDS::DBParameterGroup]', request_name => 'DBParameterGroup', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBParameterGroupsMessage

=head1 ATTRIBUTES


=head2 DBParameterGroups => ArrayRef[L<Paws::RDS::DBParameterGroup>]

A list of C<DBParameterGroup> instances.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

