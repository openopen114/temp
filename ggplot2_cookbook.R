library(ggplot2)
#http://www.cookbook-r.com/Graphs/

################
##### bar  #####
################
df <- data.frame(time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
                 total_bill = c(14.89, 17.23))

plot1<- ggplot(data=df, aes(x=time, y=total_bill)) 
plot1 + geom_bar(stat="identity")#with y



plot6 <- ggplot(data=df, aes(x=time, y=total_bill, fill=time)) 
plot6 +  geom_bar(colour="#62b594", fill="#86208a",width=.5, stat="identity") + 
         guides(fill=FALSE) + 
         xlab("Time of day") + ylab("Total bill") +
         ggtitle("Average bill for 2 people")
#d494c2  hex colour http://www.colorhexa.com/

df2 <- data.frame(time = factor(c("Lunch","Dinner","Lunch","Dinner","Lunch")))
plot2 <- ggplot(data=df2, aes(x=time))
plot2 + geom_bar(stat="bin")


####################
##### line plot ####
####################

ggplot(data=df, aes(x=time, y=total_bill, group=1)) + 
    geom_line(colour="red", linetype="dotted", size=1.5) + 
    geom_point(colour="red", size=4, shape=21, fill="white")
#more linetype&shapeh ->  www.cookbook-r.com/Graphs/Shapes_and_line_types/



##################################
####Graphs with more variables####
##################################
df1 <- data.frame(sex = factor(c("Female","Female","Male","Male")),
                  time = factor(c("Lunch","Dinner","Lunch","Dinner"), levels=c("Lunch","Dinner")),
                  total_bill = c(13.53, 16.81, 16.24, 17.42))

#df[df$time=="Lunch",]



#########################################
#Plotting means and error bars (ggplot2)#
#########################################

#grepl http://www.endmemo.com/program/R/grepl.php


#http://attach.dataguru.cn/attachments/forum/201203/05/191606cyevvfcsxv0vy1gr.jpg


