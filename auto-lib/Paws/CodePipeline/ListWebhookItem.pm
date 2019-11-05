package Paws::CodePipeline::ListWebhookItem;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Definition => (is => 'ro', isa => 'Paws::CodePipeline::WebhookDefinition', request_name => 'definition', traits => ['NameInRequest'], required => 1);
  has ErrorCode => (is => 'ro', isa => 'Str', request_name => 'errorCode', traits => ['NameInRequest']);
  has ErrorMessage => (is => 'ro', isa => 'Str', request_name => 'errorMessage', traits => ['NameInRequest']);
  has LastTriggered => (is => 'ro', isa => 'Str', request_name => 'lastTriggered', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::Tag]', request_name => 'tags', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListWebhookItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ListWebhookItem object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ListWebhookItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

The detail returned for each webhook after listing webhooks, such as
the webhook URL, the webhook name, and the webhook ARN.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the webhook.


=head2 B<REQUIRED> Definition => L<Paws::CodePipeline::WebhookDefinition>

  The detail returned for each webhook, such as the webhook
authentication type and filter rules.


=head2 ErrorCode => Str

  The number code of the error.


=head2 ErrorMessage => Str

  The text of the error message about the webhook.


=head2 LastTriggered => Str

  The date and time a webhook was last successfully triggered, in
timestamp format.


=head2 Tags => ArrayRef[L<Paws::CodePipeline::Tag>]

  Specifies the tags applied to the webhook.


=head2 B<REQUIRED> Url => Str

  A unique URL generated by CodePipeline. When a POST request is made to
this URL, the defined pipeline is started as long as the body of the
post request satisfies the defined authentication and filtering
conditions. Deleting and re-creating a webhook will make the old URL
invalid and generate a new URL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

