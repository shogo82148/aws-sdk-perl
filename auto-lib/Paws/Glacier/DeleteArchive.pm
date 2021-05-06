
package Paws::Glacier::DeleteArchive;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has ArchiveId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'archiveId', required => 1);
  has VaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'vaultName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteArchive');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{accountId}/vaults/{vaultName}/archives/{archiveId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::DeleteArchive - Arguments for method DeleteArchive on L<Paws::Glacier>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteArchive on the
L<Amazon Glacier|Paws::Glacier> service. Use the attributes of this class
as arguments to method DeleteArchive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteArchive.

=head1 SYNOPSIS

    my $glacier = Paws->service('Glacier');
    # To delete an archive
    # The example deletes the archive specified by the archive ID.
    $glacier->DeleteArchive(
      'AccountId' => '-',
      'ArchiveId' =>
'NkbByEejwEggmBz2fTHgJrg0XBoDfjP4q6iu87-TjhqG6eGoOY9Z8i1_AUyUsuhPAdTqLHy8pTl5nfCFJmDl2yEZONi5L26Omw12vcs01MNGntHEQL8MBfGlqrEXAMPLEArchiveId',
      'VaultName' => 'examplevault'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glacier/DeleteArchive>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<AccountId> value is the AWS account ID of the account that owns
the vault. You can either specify an AWS account ID or optionally a
single 'C<->' (hyphen), in which case Amazon S3 Glacier uses the AWS
account ID associated with the credentials used to sign the request. If
you use an account ID, do not include any hyphens ('-') in the ID.



=head2 B<REQUIRED> ArchiveId => Str

The ID of the archive to delete.



=head2 B<REQUIRED> VaultName => Str

The name of the vault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteArchive in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

