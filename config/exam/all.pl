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






first_word -p
first_word
check -t ====
%tests = (
	"$program 'FOR PONY'" => "FOR\n",
	"$program 'this        ...       is sparta, then again, maybe    not'" => "this\n",
	"$program a b" => "\n",
	"$program '  lorem,ipsum  '" => "lorem,ipsum\n",
);
====

ft_putstr
ft_putstr(char *str)
main_basic ====
int main()
{
	ft_putstr("hello world!");
	return 0;
}
====
check_basic -e ====
$expected = 'hello world!';
====
main_multiple ====
int main()
{
	ft_putstr("test1\n");
	ft_putstr("test2\n");
	ft_putstr("test3\n");
	return 0;
}
====
check_multiple -e ====
$expected = "test1\ntest2\ntest3\n";
====
main_empty ====
int main ()
{
	ft_putstr("");
	ft_putstr("");
	ft_putstr("");
	return 0;
}
====
check_empty -e ====
$expected = '';
====

ft_strcpy
char* ft_strcpy(char* dest, char* src)
main -m ====
char test1[256] = "asdf";
printf("%s", ft_strcpy(test1, "qwerty\n"));
printf("%s", ft_strcpy(test1, ""));
printf("%s", ft_strcpy(test1, "hell0\n"));
==== check -e ====
$expected = "qwerty\nhell0\n";
====

ft_strlen
int ft_strlen(char *str)
main_basic ====
int main()
{
	printf("%d,%d,%d", ft_strlen("asdf"), ft_strlen("qwerty"), ft_strlen("zxc0zxc"));
	return 0;
}
====
check_basic -e ====
$expected = '4,6,7';
====
main_empty ====
int main()
{
	printf("%d", ft_strlen(""));
	return 0;
}
====
check_empty -e ====
$expected = '0';
====

ft_swap
ft_swap(int *a, int *b)
main ====
int main()
{
	int a = 15;
	int b = -25;
	ft_swap(&a, &b);
	printf("%d,%d", a, b);
	return 0;
}
====
check -e ====
$expected = '-25,15';
====

repeat_alpha -p
repeat_alpha
check -t ====
%tests = (
	"$program 'abc'" => "abbccc\n",
	"$program 'Alex.'" => "Alllllllllllleeeeexxxxxxxxxxxxxxxxxxxxxxxx.\n",
	"$program 'abacadaba 42!'" => "abbacccaddddabba 42!\n",
	"$program ''" => "\n",
	"$program" => "\n",
);
====

rev_print -p
rev_print
check -t ====
%tests = (
	"$program zaz" => "zaz\n",
	"$program \"dub0 a POIL\"" => "LIOP a 0bud\n",
	"$program" => "\n",
);
====

rot_13 -p
rot_13
check -t ====
%tests = (
	"$program \"abc\"" => "nop\n",
	"$program \"My horse is Amazing.\"" => "Zl ubefr vf Nznmvat.\n",
	"$program \"AkjhZ zLKIJz , 23y \"" => "NxwuM mYXVWm , 23l \n",
	"$program \"\"" => "\n",
	"$program" => "\n",
);
====

rotone -p
rotone
check -t ====
%tests = (
	"$program \"abc\"" => "bcd\n",
	"$program \"Les stagiaires du staff ne sentent pas toujours tres bon.\"" => "Mft tubhjbjsft ev tubgg of tfoufou qbt upvkpvst usft cpo.\n",
	"$program \"AkjhZ zLKIJz , 23y \"" => "BlkiA aMLJKa , 23z \n",
	"$program \"\"" => "\n",
	"$program" => "\n",
);
====

search_and_replace -p
search_and_replace
check -t ====
%tests = (
	"$program \"Papache est un sabre\" \"a\" \"o\"" => "Popoche est un sobre\n",
	"$program \"zaz\" \"art\" \"zul\"" => "\n",
	"$program \"zaz\" \"r\" \"u\"" => "zaz\n",
);
====

ulstr -p
ulstr
check -t ====
%tests = (
	"$program \"L\'eSPrit nE peUt plUs pRogResSer s'Il staGne et sI peRsIsTent VAnIte et auto-justification.\"" => "l'EspRIT Ne PEuT PLuS PrOGrESsER S'iL STAgNE ET Si PErSiStENT vaNiTE ET AUTO-JUSTIFICATION.\n",
	"$program \"S'enTOuRer dE sECreT eSt uN sIGnE De mAnQuE De coNNaiSSanCe.  \"" => "s'ENtoUrER De SecREt EsT Un SigNe dE MaNqUe dE COnnAIssANcE.  \n",
	"$program \"3:21 Ba  tOut  moUn ki Ka di KE m'en Ka fe fot\"" => "3:21 bA  ToUT  MOuN KI kA DI ke M'EN kA FE FOT\n",
	"$program" => "\n",
);
====