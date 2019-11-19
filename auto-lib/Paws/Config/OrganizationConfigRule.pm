package Paws::Config::OrganizationConfigRule;
  use Moose;
  has ExcludedAccounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastUpdateTime => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleArn => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationConfigRuleName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationCustomRuleMetadata => (is => 'ro', isa => 'Paws::Config::OrganizationCustomRuleMetadata');
  has OrganizationManagedRuleMetadata => (is => 'ro', isa => 'Paws::Config::OrganizationManagedRuleMetadata');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationConfigRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationConfigRule object:

  $service_obj->Method(Att1 => { ExcludedAccounts => $value, ..., OrganizationManagedRuleMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationConfigRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ExcludedAccounts

=head1 DESCRIPTION

An organization config rule that has information about config rules
that AWS Config creates in member accounts.

=head1 ATTRIBUTES


=head2 ExcludedAccounts => ArrayRef[Str|Undef]

  A comma-separated list of accounts excluded from organization config
rule.


=head2 LastUpdateTime => Str

  The timestamp of the last update.


=head2 B<REQUIRED> OrganizationConfigRuleArn => Str

  Amazon Resource Name (ARN) of organization config rule.


=head2 B<REQUIRED> OrganizationConfigRuleName => Str

  The name that you assign to organization config rule.


=head2 OrganizationCustomRuleMetadata => L<Paws::Config::OrganizationCustomRuleMetadata>

  An C<OrganizationCustomRuleMetadata> object.


=head2 OrganizationManagedRuleMetadata => L<Paws::Config::OrganizationManagedRuleMetadata>

  An C<OrganizationManagedRuleMetadata> object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

