use File::Basename;

add_cus_dep('acn', 'acr', 0, 'makeglo2gls');
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');

sub makeglo2gls {
    my ($base_name, $path) = fileparse($_[0]);
    my $arg = ($path ne "./") ? "-d \"$path\" \"$base_name\"" : "\"$base_name\"";
    return system("makeglossaries $arg");
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';