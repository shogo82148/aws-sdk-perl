package Paws::S3::SourceSelectionCriteria;
  use Moose;
  has SseKmsEncryptedObjects => (is => 'ro', isa => 'Paws::S3::SseKmsEncryptedObjects');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::SourceSelectionCriteria

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::SourceSelectionCriteria object:

  $service_obj->Method(Att1 => { SseKmsEncryptedObjects => $value, ..., SseKmsEncryptedObjects => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::SourceSelectionCriteria object:

  $result = $service_obj->Method(...);
  $result->Att1->SseKmsEncryptedObjects

=head1 DESCRIPTION

A container that describes additional filters for identifying the
source objects that you want to replicate. You can choose to enable or
disable the replication of these objects. Currently, Amazon S3 supports
only the filter that you can specify for objects created with
server-side encryption using an AWS KMS-Managed Key (SSE-KMS).

=head1 ATTRIBUTES


=head2 SseKmsEncryptedObjects => L<Paws::S3::SseKmsEncryptedObjects>

  A container for filter information for the selection of Amazon S3
objects encrypted with AWS KMS. If you include
C<SourceSelectionCriteria> in the replication configuration, this
element is required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

