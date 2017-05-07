library(lubridate)
library(dplyr)
library(shiny)
library(plotly)
library(shinydashboard)

number_of_inci <- list()
number_of_arson <- list()
bar <- list()
pie <- list()

#creating all plots in advance, becuase data is too large and can't be made this dynaload("final/final_data_2006.Rda")

##########################################################################################
#2006
##########################################################################################
load("final/final_data_2006.Rda")

d <- final_data_2006
rm(final_data_2006)

number_of_inci[[1]] <- nrow(d)
number_of_arson[[1]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[1]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie") %>%
  layout(title="Pie chart of statewise incidents in 2006",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[1]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2006)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2007
##########################################################################################
load("final/final_data_2007.Rda")
d <- final_data_2007
rm(final_data_2007)

number_of_inci[[2]] <- nrow(d)
number_of_arson[[2]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[2]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2007",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[2]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2007)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2008
##########################################################################################
load("final/final_data_2008.Rda")
d <- final_data_2008
rm(final_data_2008)

number_of_inci[[3]] <- nrow(d)
number_of_arson[[3]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[3]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2008",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[3]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2008)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2009
##########################################################################################
load("final/final_data_2009.Rda")
d <- final_data_2009
rm(final_data_2009)

number_of_inci[[4]] <- nrow(d)
number_of_arson[[4]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[4]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2009",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[4]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2009)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2010
##########################################################################################
load("final/final_data_2010.Rda")
d <- final_data_2010
rm(final_data_2010)

number_of_inci[[5]] <- nrow(d)
number_of_arson[[5]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[5]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2010",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[5]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2010)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2011
##########################################################################################
load("final/final_data_2011.Rda")
d <- final_data_2011
rm(final_data_2011)

number_of_inci[[6]] <- nrow(d)
number_of_arson[[6]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[6]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2011",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[6]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2011)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2012
##########################################################################################
load("final/final_data_2012.Rda")
d <- final_data_2012
rm(final_data_2012)

number_of_inci[[7]] <- nrow(d)
number_of_arson[[7]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[7]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2012",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[7]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2012)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2013
##########################################################################################
load("final/final_data_2013.Rda")
d <- final_data_2013
rm(final_data_2013)

number_of_inci[[8]] <- nrow(d)
number_of_arson[[8]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[8]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2013",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[8]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2013)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2014
##########################################################################################
load("final/final_data_2014.Rda")
d <- final_data_2014
rm(final_data_2014)

number_of_inci[[9]] <- nrow(d)
number_of_arson[[9]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[9]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2014",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[9]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2014)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))

##########################################################################################
#2015
##########################################################################################
load("final/final_data_2015.Rda")
d <- final_data_2015
rm(final_data_2015)

number_of_inci[[10]] <- nrow(d)
number_of_arson[[10]] <- summary(d$Arson)[3]
d_t <- d %>%
  group_by(STATE) %>%
  summarise(total_inci = n())

d_t <- d_t[order(-d_t$total_inci),]

#select only top 10 states
d_t <- d_t[1:10,]
pie[[10]] <- plot_ly(data = d_t, labels = ~STATE,values = ~total_inci, type = "pie")%>%
  layout(title="Pie chart of statewise incidents in 2015",
         xaxis=list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
         yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

d_t <- d[,3:4]
d_t$INC_DATE <- month(d_t$INC_DATE)

d_t <- d_t %>%
  group_by(INC_DATE) %>%
  summarise(total_inci = n())

bar[[10]] <- plot_ly(data = d_t, x = ~INC_DATE,y = ~total_inci, type = "bar") %>%
  layout(title="Bar plot of number of incidents by month (2015)",
         xaxis=list(title="Month",showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE),
         yaxis = list(title="Total incidents", showgrid = FALSE, zeroline = FALSE, showticklabels = TRUE))


##########################################################################################
#UI part
##########################################################################################
ui = dashboardPage(
  skin='green',
  dashboardHeader(
    title="Arson shiny",
    titleWidth = 230
  ),
  dashboardSidebar(
    
    fluidRow(
      width=250,
      title="Data",
      selectInput("Year", "Select year",
                  list("2006" = 1,"2007"=2,"2008"=3,"2009"=4,"2010"=5,"2011"=6,"2012"=7,"2013"=8,"2014"=9,"2015"=10))
    )

  ),
  dashboardBody(
    verbatimTextOutput("txt_1"),
    plotlyOutput("plot_2"),
    plotlyOutput("plot_1")
  )
)

##########################################################################################
#server part
##########################################################################################
server= function(input,output){
  
  display_text <- reactive({
    y_ref <- c(2006:2015)
    cat(paste("There were",number_of_inci[[as.numeric(input$Year)]]),"incidents in", y_ref[as.numeric(input$Year)],"and",number_of_arson[[as.numeric(input$Year)]],"were reported Arson. It is",as.numeric(number_of_arson[[as.numeric(input$Year)]])/as.numeric(number_of_inci[[as.numeric(input$Year)]])*100,"% of total incidents.")
  })
  
  output$txt_1 <- renderPrint({
  display_text()
  })

  plot_graph_1 <- reactive({
    bar[[as.numeric(input$Year)]]
  })
  
  output$plot_1 <- renderPlotly({
    plot_graph_1()
  })
  
  plot_graph_2 <- reactive({
    pie[[as.numeric(input$Year)]]
  })
  
  output$plot_2 <- renderPlotly({
    plot_graph_2()
  })
  

}

shinyApp(ui=ui, server=server)