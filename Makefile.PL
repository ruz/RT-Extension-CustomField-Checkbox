use inc::Module::Install;
RTx('RT-Extension-CustomField-Checkbox');
die "\n\nYou don't need this extension. RT 4.0 and newer has this functionality build in.\n\n"
    if $RT::VERSION =~ /^[4-9]\./;
all_from('lib/RT/Extension/CustomField/Checkbox.pm');
readme_from('lib/RT/Extension/CustomField/Checkbox.pm');
WriteAll();
