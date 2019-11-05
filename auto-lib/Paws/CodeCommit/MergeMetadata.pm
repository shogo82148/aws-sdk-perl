package Paws::CodeCommit::MergeMetadata;
  use Moose;
  has IsMerged => (is => 'ro', isa => 'Bool', request_name => 'isMerged', traits => ['NameInRequest']);
  has MergeCommitId => (is => 'ro', isa => 'Str', request_name => 'mergeCommitId', traits => ['NameInRequest']);
  has MergedBy => (is => 'ro', isa => 'Str', request_name => 'mergedBy', traits => ['NameInRequest']);
<<<<<<< HEAD
  has MergeOption => (is => 'ro', isa => 'Str', request_name => 'mergeOption', traits => ['NameInRequest']);
=======

>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::MergeMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::MergeMetadata object:

  $service_obj->Method(Att1 => { IsMerged => $value, ..., MergeOption => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::MergeMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->IsMerged

=head1 DESCRIPTION

Returns information about a merge or potential merge between a source
reference and a destination reference in a pull request.

=head1 ATTRIBUTES


=head2 IsMerged => Bool

  A Boolean value indicating whether the merge has been made.


=head2 MergeCommitId => Str

  The commit ID for the merge commit, if any.


=head2 MergedBy => Str

  The Amazon Resource Name (ARN) of the user who merged the branches.


=head2 MergeOption => Str

  The merge strategy used in the merge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

