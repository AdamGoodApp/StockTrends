# Get quantmod
if (!require("quantmod")) {
    install.packages("quantmod")
    library(quantmod)
}

# Get me my beloved pipe operator!
if (!require("magrittr")) {
    install.packages("magrittr")
    library(magrittr)
}


start <- as.Date("2010-01-01")
end <- as.Date("2017-03-27")

# Let's get Apple stock data; Apple's ticker symbol is AAPL. We use the
# quantmod function getSymbols, and pass a string as a first argument to
# identify the desired ticker symbol, pass 'yahoo' to src for Yahoo!
# Finance, and from and to specify date ranges

# The default behavior for getSymbols is to load data directly into the
# global environment, with the object being named after the loaded ticker
# symbol. This feature may become deprecated in the future, but we exploit
# it now.

getSymbols(c("AAPL", "MSFT", "GOOG", "BA"), src = "yahoo", from = start, to = end)

candleChart(BA, up.col = "black", dn.col = "red", theme = "white", subset = "2016-01-04/")
addSMA(n = c(20, 50, 200))
