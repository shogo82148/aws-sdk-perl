package Paws::Config::OrganizationManagedRuleMetadata;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has InputParameters => (is => 'ro', isa => 'Str');
  has MaximumExecutionFrequency => (is => 'ro', isa => 'Str');
  has ResourceIdScope => (is => 'ro', isa => 'Str');
  has ResourceTypesScope => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RuleIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TagKeyScope => (is => 'ro', isa => 'Str');
  has TagValueScope => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::OrganizationManagedRuleMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::OrganizationManagedRuleMetadata object:

  $service_obj->Method(Att1 => { Description => $value, ..., TagValueScope => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::OrganizationManagedRuleMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

An object that specifies organization managed rule metadata such as
resource type and ID of AWS resource along with the rule identifier. It
also provides the frequency with which you want AWS Config to run
evaluations for the rule if the trigger type is periodic.

=head1 ATTRIBUTES


=head2 Description => Str

  The description that you provide for organization config rule.


=head2 InputParameters => Str

  A string, in JSON format, that is passed to organization config rule
Lambda function.


=head2 MaximumExecutionFrequency => Str

  The maximum frequency with which AWS Config runs evaluations for a
rule. You are using an AWS managed rule that is triggered at a periodic
frequency.

By default, rules with a periodic trigger are evaluated every 24 hours.
To change the frequency, specify a valid value for the
C<MaximumExecutionFrequency> parameter.


=head2 ResourceIdScope => Str

  The ID of the AWS resource that was evaluated.


=head2 ResourceTypesScope => ArrayRef[Str|Undef]

  The type of the AWS resource that was evaluated.


=head2 B<REQUIRED> RuleIdentifier => Str

  For organization config managed rules, a predefined identifier from a
list. For example, C<IAM_PASSWORD_POLICY> is a managed rule. To
reference a managed rule, see Using AWS Managed Config Rules
(https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).


=head2 TagKeyScope => Str

  One part of a key-value pair that make up a tag. A key is a general
label that acts like a category for more specific tag values.


=head2 TagValueScope => Str

  The optional part of a key-value pair that make up a tag. A value acts
as a descriptor within a tag category (key).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

