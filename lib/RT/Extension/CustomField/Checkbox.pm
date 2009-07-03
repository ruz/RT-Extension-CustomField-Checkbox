package RT::Extension::CustomField::Checkbox;

use 5.008003;
use strict;
use warnings;

our $VERSION = '0.01';

=head1 NAME

Extension::CustomField::Checkbox - extension for RT to add checkboxes and radio buttons based custom fields

=head1 DESCRIPTION

Install it, register within plugin in the config. Enjoy.

=cut

# code goes here

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
