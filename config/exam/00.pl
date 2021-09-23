aff_a -p
aff_a
check -t ====
%tests = (
	"$program" => "a\n",
	"$program 'dubO a POIL'" => "a\n",
	"$program 'a'" => "a\n",
	"$program 'zz sent le poney'" => "\n",
);
====

aff_first_param -p
aff_first_param
check -t ====
%tests = (
	"$program" => "\n",
	"$program vincent mit \"l\'ane\" dans un pre et \"s\'en\" vint" => "vincent\n",
	"$program \"j\'aime le fromage de chevre\"" => "j\'aime le fromage de chevre\n",
);
====

aff_last_param -p
aff_last_param
check -t ====
%tests = (
	"$program zaz mange des chats" => "chats\n",
	"$program \"j'aime le savon\"" => "j'aime le savon\n",
	"$program" => "\n",
);
====

aff_z -p
aff_z
check -t ====
%tests = (
	"$program abc" => "z\n",
	"$program \"dubO a POIL\"" => "z\n",
	"$program \"zaz sent le poney\"" => "z\n",
	"$program" => "z\n",
);
====

ft_countdown -p
ft_countdown
check -t ====
%tests = (
	"$program" => "9876543210\n",
);
====

hello -p
hello
check -t ====
%tests = (
	"$program" => "Hello World!\n",
);
====

maff_alpha -p
maff_alpha
check -t ====
%tests = (
	"$program" => "aBcDeFgHiJkLmNoPqRsTuVwXyZ\n",
);
====

maff_revalpha -p
maff_revalpha
check -t ====
%tests = (
	"$program" => "zYxWvUtSrQpOnMlKjIhGfEdCbA\n",
);
====

only_a -p
only_a
check -t ====
%tests = (
	"$program" => "a\n",
);
====

only_z -p
only_z
check -t ====
%tests = (
	"$program" => "z\n",
);
====