package Paws::S3::AnalyticsFilter;
  use Moose;
  has And => (is => 'ro', isa => 'Paws::S3::AnalyticsAndOperator');
  has Prefix => (is => 'ro', isa => 'Str');
  has Tag => (is => 'ro', isa => 'Paws::S3::Tag');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::AnalyticsFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::AnalyticsFilter object:

  $service_obj->Method(Att1 => { And => $value, ..., Tag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::AnalyticsFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->And

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 And => L<Paws::S3::AnalyticsAndOperator>

  A conjunction (logical AND) of predicates, which is used in evaluating
an analytics filter. The operator must have at least two predicates.


=head2 Prefix => Str

  The prefix to use when evaluating an analytics filter.


=head2 Tag => L<Paws::S3::Tag>

  The tag to use when evaluating an analytics filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

