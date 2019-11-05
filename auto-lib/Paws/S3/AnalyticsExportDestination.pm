package Paws::S3::AnalyticsExportDestination;
  use Moose;
  has S3BucketDestination => (is => 'ro', isa => 'Paws::S3::AnalyticsS3BucketDestination', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AnalyticsExportDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AnalyticsExportDestination object:

  $service_obj->Method(Att1 => { S3BucketDestination => $value, ..., S3BucketDestination => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AnalyticsExportDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->S3BucketDestination

=head1 DESCRIPTION

Where to publish the analytics results.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3BucketDestination => L<Paws::S3::AnalyticsS3BucketDestination>

  A destination signifying output to an S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

