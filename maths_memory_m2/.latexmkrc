add_cus_dep('acn', 'acr', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeglossaries -d \"$out_dir\" \"$_[0]\"");
}

add_cus_dep('glo', 'gls', 0, 'makeglo2gls2');
sub makeglo2gls2 {
    system("makeglossaries -d \"$out_dir\" \"$_[0]\"");
}

push @generated_exts, 'glo', 'gls', 'glg';
push @generated_exts, 'acn', 'acr', 'alg';
$clean_ext .= ' %R.ist %R.xdy';