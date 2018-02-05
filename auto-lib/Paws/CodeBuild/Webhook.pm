package Paws::CodeBuild::Webhook;
  use Moose;
  has PayloadUrl => (is => 'ro', isa => 'Str', request_name => 'payloadUrl', traits => ['NameInRequest']);
  has Secret => (is => 'ro', isa => 'Str', request_name => 'secret', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::Webhook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::Webhook object:

  $service_obj->Method(Att1 => { PayloadUrl => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::Webhook object:

  $result = $service_obj->Method(...);
  $result->Att1->PayloadUrl

=head1 DESCRIPTION

Information about a webhook in GitHub that connects repository events
to a build project in AWS CodeBuild.

=head1 ATTRIBUTES


=head2 PayloadUrl => Str

  This is the server endpoint that will receive the webhook payload.


=head2 Secret => Str

  Use this secret while creating a webhook in GitHub for Enterprise. The
secret allows webhook requests sent by GitHub for Enterprise to be
authenticated by AWS CodeBuild.


=head2 Url => Str

  The URL to the webhook.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

