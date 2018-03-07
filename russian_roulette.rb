def win money
	if money == 0
		`say Don't waste my time`
		sleep(2)
		lose(false)
	else
		 `say Congratulations you won $"#{money}" dollars, now get out.`
	end
end

def lose idiot
	`say 3`
	sleep 0.33
	`say 2`
	sleep 0.33
	`say 1`
	sleep 4
	puts "Bang!"
`say "BANG"`
	puts'
                      :::!~!!!!!:.
                  .xUHWH!! !!?M88WHX:.
                .X*#M@$!!  !X!M$$$$$$WWx:.
               :!!!!!!?H! :!$!$$$$$$$$$$8X:
              !!~  ~:~!! :~!$!#$$$$$$$$$$8X:
             :!~::!H!<   ~.U$X!?R$$$$$$$$MM!
             ~!~!!!!~~ .:XW$$$U!!?$$$$$$RMM!
               !:~~~ .:!M"T#$$$$WX??#MRRMMM!
               ~?WuxiW*`   `"#$$$$8!!!!??!!!
             :X- M$$$$       `"T#$T~!8$WUXU~
            :%`  ~#$$$m:        ~!~ ?$$$$$$
          :!`.-   ~T$$$$8xx.  .xWW- ~""##*"
.....   -~~:<` !    ~?T#$$@@W@*?$$      /`
W$@@M!!! .!~~ !!     .:XUW$W!~ `"~:    :
#"~~`.:x%`!!  !H:   !WM$$$$Ti.: .!WUn+!`
:::~:!!`:X~ .: ?H.!u "$$$B$$$!W:U!T$$M~
.~~   :X@!.-~   ?@WTWo("*$$$W$TH$! `
Wi.~!X$?!-~    : ?$$$B$Wu("**$RM!
$R@i.~~ !     :   ~$$$$$B$$en:``
?MXT@Wx.~    :     ~"##*$$$$M~
    '
    puts "YOU DIED!"
    `say you died`

    if idiot == true
    	puts `say Congratulations, you won the Darwin Award`
    end
end

def play
	money = 0
	reply = ""
	position = rand(0..5)
	iterator = 0

	`say Welcome to..`
	puts '
 _   _  ____    __    ____     _____  ____    ____  ____    __    ____  
( )_( )( ___)  /__\  (  _ \   (  _  )(  _ \  (  _ \( ___)  /__\  (  _ \ 
 ) _ (  )__)  /(__)\  )(_) )   )(_)(  )   /   )(_) ))__)  /(__)\  )(_) )
(_) (_)(____)(__)(__)(____/   (_____)(_)\_)  (____/(____)(__)(__)(____/ 
	'
	`say head or dead`
	puts 'Are you sure you would like to play? (y/n)'
	`say Would you like to play?`
	`say type y for yes n for no`
	reply = gets.chomp!
	win(money) if reply == 'n'

	loop do
		if position == iterator
			if iterator == 5
				lose true
			else
				lose false
			end
			break
		else
			case iterator
			when 0
				money += 10_000
			when 1
				money += 90_000
			when 2
				money += 900_000			
			when 3
				money += 9_000_000		
			when 4
				money += 990_000_000
			end
			`say 3`
			sleep 0.33
			`say 2`
			sleep 0.33
			`say 1`
			sleep 4
			p `say "click"`
			puts "So far you have earned $#{money}"
			`say So far you have earned $"#{money}"`
			puts "Would you like to play again? (y/n)"
			`say Would you like to play again?`
			reply = gets.chomp!
			break if reply == 'n'
		end
		iterator += 1
	end
	win money if reply == 'n'
end

play

