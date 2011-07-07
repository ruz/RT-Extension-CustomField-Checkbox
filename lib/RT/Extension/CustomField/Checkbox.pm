package RT::Extension::CustomField::Checkbox;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.03';

=head1 NAME

RT::Extension::CustomField::Checkbox - extension for RT to add checkboxes and radio buttons based custom fields

=head1 DESCRIPTION

Install it, register within @Plugins in the config. Enjoy.

=head1 ATTENTION FOR USERS OF RT 4.0

You don't need this extension. RT 4.0 and newer has this
functionality build in.

If you're B<upgrading> from RT 3.8 and used this extension
then additinal steps may be required. At least RT 4.0.0
and 4.0.1 has no upgrade script to convert custom fields
created by this extensions into 4.x CFs.

Run the following SQL:

    UPDATE CustomFields SET Type = 'Select' AND RenderType = 'List'
    WHERE Type = 'SelectCheckbox';

Delete this extension from @Plugins in the config file.

Hopefuly in RT 4.0.2 all this would be automated.

=cut

# code goes here

die "\n\nYou don't need this extension. RT 4.0 and newer has this functionality build in. Read documentation for upgrade instructions.\n\n"
    if $RT::VERSION =~ /^[4-9]\./;

use RT::CustomField;
$RT::CustomField::FieldTypes{'SelectCheckbox'} = [
    'Check multiple values',    # loc
    'Check one value',           # loc
    'Check up to [_1] values',  # loc
];


=head1 AUTHOR

Ruslan Zakirov E<lt>Ruslan.Zakirov@gmail.comE<gt>

=head1 LICENSE

Under the same terms as perl itself.

=cut

1;
