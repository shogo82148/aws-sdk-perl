
package Paws::SecurityHub::DeclineInvitations;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeclineInvitations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/invitations/decline');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::DeclineInvitationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DeclineInvitations - Arguments for method DeclineInvitations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeclineInvitations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method DeclineInvitations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeclineInvitations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $DeclineInvitationsResponse = $securityhub->DeclineInvitations(
      AccountIds => [ 'MyNonEmptyString', ... ],

    );

    # Results:
    my $UnprocessedAccounts = $DeclineInvitationsResponse->UnprocessedAccounts;

    # Returns a L<Paws::SecurityHub::DeclineInvitationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/DeclineInvitations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The list of account IDs for the accounts from which to decline the
invitations to Security Hub.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeclineInvitations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

