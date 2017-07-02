function fish_greeting
	set Greeting_From_Cow (fortune -s)
	cowsay -f tux $Greeting_From_Cow
	end
funcsave fish_greeting
