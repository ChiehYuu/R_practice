#if statement
weathers <- c('晴天', '多雲', '小雨', '大雨', '暴風雨')
weather <- sample(weathers, size = 1)
if (weather == '晴天') {
  sprintf('天氣是%s，出門跑步', weather)
} else if (weather == '小雨') {
  sprintf('天氣是%s，去健身房', weather)
} else {
  sprintf('天氣是%s，當個沙發馬鈴薯', weather)
}

#for loop
for (i in 1:12) {
  print(month.name[i])
}

for (name in month.name) {
  print(name)
}

#while loop
i <- 1
while (i < 13) {
  print(month.name[i])
  i <- i+1
}

#dice trick
dice <- 1:6
rolling_history <- c() #空向量
while (length(unique(rolling_history)) < 6){
  dice_roll <- sample(dice, size = 1)
  rolling_history <- c(rolling_history, dice_roll)
}
sprintf('總共投擲 %s 次', length(rolling_history))
rolling_history

#break statement
for (i in month.name) {
  if (i == 'May') {
    break
  } else {
    print(i)
  }
}

#next statement
for (i in month.name) {
  if (i == 'May') {
    next
  } else {
    print(i)
  }
}

#exam
week <- c('Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday')

for (i in week) {
  print(i)
}

day <- 0
while (day < 7) {
  print(week[day])
  day = day +1
}

for (i in week) {
  if (i == 'Sunday') {
    print(i)
  } else if (i == 'Saturday') {
    print(i)
  } else {
    next
  }
}

hundred <- 1:100
for (i in hundred) {
  if (i %% 15 == 0) {
    print('fizz buzz')
  } else if ( i %% 5 == 0) {
    print('buzz')
  } else if (i %% 3 == 0) {
    print('fizz')
  }
}