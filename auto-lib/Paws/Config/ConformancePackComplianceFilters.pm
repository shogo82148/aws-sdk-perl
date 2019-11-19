package Paws::Config::ConformancePackComplianceFilters;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str');
  has ConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::ConformancePackComplianceFilters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::ConformancePackComplianceFilters object:

  $service_obj->Method(Att1 => { ComplianceType => $value, ..., ConfigRuleNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::ConformancePackComplianceFilters object:

  $result = $service_obj->Method(...);
  $result->Att1->ComplianceType

=head1 DESCRIPTION

Filters the conformance pack by compliance types and AWS Config rule
names.

=head1 ATTRIBUTES


=head2 ComplianceType => Str

  Filters the results by compliance.

The allowed values are C<COMPLIANT> and C<NON_COMPLIANT>.


=head2 ConfigRuleNames => ArrayRef[Str|Undef]

  Filters the results by AWS Config rule names.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

