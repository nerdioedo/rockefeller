use utf8;
package SequencesDB::Schema::Result::Sequencer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

SequencesDB::Schema::Result::Sequencer

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<Sequencer>

=cut

__PACKAGE__->table("Sequencer");

=head1 ACCESSORS

=head2 sequencer_id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 sequencer_name

  data_type: 'varchar'
  is_nullable: 1
  size: 45

=cut

__PACKAGE__->add_columns(
  "sequencer_id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "sequencer_name",
  { data_type => "varchar", is_nullable => 1, size => 45 },
);

=head1 PRIMARY KEY

=over 4

=item * L</sequencer_id>

=back

=cut

__PACKAGE__->set_primary_key("sequencer_id");

=head1 RELATIONS

=head2 libraries

Type: has_many

Related object: L<SequencesDB::Schema::Result::Library>

=cut

__PACKAGE__->has_many(
  "libraries",
  "SequencesDB::Schema::Result::Library",
  { "foreign.sequencer_sequencer_id" => "self.sequencer_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07043 @ 2015-07-08 11:50:11
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XDpwBj94xnP1wgNYlr0aJQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
