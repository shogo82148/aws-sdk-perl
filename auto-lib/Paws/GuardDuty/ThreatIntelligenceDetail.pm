# Generated by default/object.tt
package Paws::GuardDuty::ThreatIntelligenceDetail;
  use Moose;
  has ThreatListName => (is => 'ro', isa => 'Str', request_name => 'threatListName', traits => ['NameInRequest']);
  has ThreatNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'threatNames', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ThreatIntelligenceDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::ThreatIntelligenceDetail object:

  $service_obj->Method(Att1 => { ThreatListName => $value, ..., ThreatNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::ThreatIntelligenceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ThreatListName

=head1 DESCRIPTION

An instance of a threat intelligence detail that constitutes evidence
for the finding.

=head1 ATTRIBUTES


=head2 ThreatListName => Str

The name of the threat intelligence list that triggered the finding.


=head2 ThreatNames => ArrayRef[Str|Undef]

A list of names of the threats in the threat intelligence list that
triggered the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

