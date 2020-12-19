library(ggplot2)
data("txhousing")
View(txhousing)
str(txhousing)

# Convert date in actual date
txhousing$date1 = as.Date(paste(txhousing$month,txhousing$year,"01",sep = "-"),
                          format = "%m-%Y-%d")
str(txhousing)

# Remove none values
txhousing = na.omit(txhousing)

# Analyze sales with respect to month
sg = as.data.frame(aggregate(txhousing$sales, by = list(txhousing$date1),
                             function(x)sum(x)))

# Make graph
p1 = ggplot(sg,aes(x = sg$Group.1,y = sg$x))
p1+geom_line()+geom_smooth()

# Make histogram plot of sales
p2 = ggplot(txhousing,aes(x = sales))
p2+geom_histogram()
p2+geom_histogram(stat = "bin",binwidth = 30,fill = "red")
p2+geom_histogram(stat = "bin",binwidth = 30,fill = "red")+xlim(c(0,1000))

# Scatter plot
p3 = ggplot(txhousing,aes(x = listings,y = sales))
p3+geom_point()
p3+geom_point(aes(color = city))

p4 = ggplot(txhousing[txhousing$city %in% c('Austin','Dallas','Lufkin','Midland','Tyler'
                                            ,'Waco'),],aes(x = listings,y = sales))
p4+geom_point(aes(color = city))

# Give title and x/y label
p4+geom_point(aes(color = city))+ggtitle("sales v/s listing","For 6 cities only")
p4+geom_point(aes(color = city))+ggtitle("sales v/s listing","For 6 cities only")+xlab("Listing")+ylab("Sales")

# Scaling
p5 = ggplot(txhousing,aes(x = sales,y = volume))+geom_point(aes(color = month))
p5+scale_x_continuous(name = "Sales-------->")+scale_color_continuous(name = "Months",low = "red",
                                                                      high = "green")
p5+scale_x_continuous(name = "Sales-------->")+scale_color_continuous(name = "Months",low = "red",
                                                                      high = "green",
                                                                      breaks =c(1,3,5,7,9,11))

# Use of facet_wrap function
txh = txhousing[txhousing$city %in% c('Austin','Dallas','Lufkin','Midland','Tyler','Waco'),]
ggplot(txh,aes(x = sales,y = volume))+geom_line()+facet_wrap(~city,ncol = 2)

txh = txhousing[txhousing$city %in% c('Lufkin','Midland','Tyler','Waco'),]
p6 = ggplot(txh,aes(x = sales,y = volume))+geom_line()+facet_wrap(~city,ncol = 2)
p6

# Theme
p6+theme_bw()
p6+theme_light()
p6+theme_classic()
p6+theme_bw()+theme(panel.background = element_rect(fill = "pink"))
p6+theme_bw()+theme(panel.background = element_rect(fill = "pink"),strip.background = element_rect(fill = "white"))