package Paws::GameLift::MatchmakingTicket;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str');
  has GameSessionConnectionInfo => (is => 'ro', isa => 'Paws::GameLift::GameSessionConnectionInfo');
  has Players => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Player]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');
  has TicketId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::MatchmakingTicket

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::MatchmakingTicket object:

  $service_obj->Method(Att1 => { ConfigurationName => $value, ..., TicketId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::MatchmakingTicket object:

  $result = $service_obj->Method(...);
  $result->Att1->ConfigurationName

=head1 DESCRIPTION

Ticket generated to track the progress of a matchmaking request. Each
ticket is uniquely identified by a ticket ID, supplied by the
requester, when creating a matchmaking request with StartMatchmaking.
Tickets can be retrieved by calling DescribeMatchmaking with the ticket
ID.

=head1 ATTRIBUTES


=head2 ConfigurationName => Str

  Name of the MatchmakingConfiguration that is used with this ticket.
Matchmaking configurations determine how players are grouped into a
match and how a new game session is created for the match.


=head2 GameSessionConnectionInfo => L<Paws::GameLift::GameSessionConnectionInfo>

  Identifier and connection information of the game session created for
the match. This information is added to the ticket only after the
matchmaking request has been successfully completed.


=head2 Players => ArrayRef[L<Paws::GameLift::Player>]

  A set of C<Player> objects, each representing a player to find matches
for. Players are identified by a unique player ID and may include
latency data for use during matchmaking. If the ticket is in status
C<COMPLETED>, the C<Player> objects include the team the players were
assigned to in the resulting match.


=head2 StartTime => Str

  Time stamp indicating when this matchmaking request was received.
Format is a number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Status => Str

  Current status of the matchmaking request.

=over

=item *

B<QUEUED> E<ndash> The matchmaking request has been received and is
currently waiting to be processed.

=item *

B<SEARCHING> E<ndash> The matchmaking request is currently being
processed.

=item *

B<REQUIRES_ACCEPTANCE> E<ndash> A match has been proposed and the
players must accept the match (see AcceptMatch). This status is used
only with requests that use a matchmaking configuration with a player
acceptance requirement.

=item *

B<PLACING> E<ndash> The FlexMatch engine has matched players and is in
the process of placing a new game session for the match.

=item *

B<COMPLETED> E<ndash> Players have been matched and a game session is
ready to host the players. A ticket in this state contains the
necessary connection information for players.

=item *

B<FAILED> E<ndash> The matchmaking request was not completed. Tickets
with players who fail to accept a proposed match are placed in
C<FAILED> status; new matchmaking requests can be submitted for these
players.

=item *

B<CANCELLED> E<ndash> The matchmaking request was canceled with a call
to StopMatchmaking.

=item *

B<TIMED_OUT> E<ndash> The matchmaking request was not completed within
the duration specified in the matchmaking configuration. Matchmaking
requests that time out can be resubmitted.

=back



=head2 StatusMessage => Str

  Additional information about the current status.


=head2 StatusReason => Str

  Code to explain the current status. For example, a status reason may
indicate when a ticket has returned to C<SEARCHING> status after a
proposed match fails to receive player acceptances.


=head2 TicketId => Str

  Unique identifier for a matchmaking ticket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
