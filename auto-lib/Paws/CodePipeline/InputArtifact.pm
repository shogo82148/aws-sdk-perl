package Paws::CodePipeline::InputArtifact;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::InputArtifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::InputArtifact object:

  $service_obj->Method(Att1 => { Name => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::InputArtifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Represents information about an artifact to be worked on, such as a
test or build artifact.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the artifact to be worked on, for example, "My App".

The input artifact of an action must exactly match the output artifact
declared in a preceding action, but the input artifact does not have to
be the next action in strict sequence from the action that provided the
output artifact. Actions in parallel can declare different output
artifacts, which are in turn consumed by different following actions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

