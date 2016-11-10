# ==============================================================================
# WMO's forecasting range definitions
# José Roberto M. Garcia (garcia.cptec@gmail.com)
# Nov, 2016
# ==============================================================================

setwd('~/ProjDocs/Science/R/Src/Meteo/')
png(filename='WMO-FctRangeDefinitions.png', width=1200, heigh=300)

par(mar=c(1,1,1,1), xpd=T, oma=c(0,0,0,0))
plot(0:10,0:10, type='n', axes=F, xlab = NA, ylab = NA, ylim=c(0,4))
#plot(0:10,0:10, type='n', xlab = NA, ylab = NA, ylim=c(0,4))
#box()
m1 <- par("usr")[1]
y1 <-0.7; y2 <- y1+2
gradient.rect(0,y1,10,y2, col=smoothColors('green', 100, 'orange', 100, 'red', alpha=200), border=NA, gradient="x")
lines(x=c(10, 0, 0, 10), y=c(y1, y1, y2, y2), lwd=5)
#mtext("DEFINITIONS OF METEOROLOGICAL FORECASTING RANGES (WMO)", side=3, line = -2, cex=2, font=2)
mtext("Forecasting horizon", side=1, line=-.2, cex=1.5, font=2)
#text(-.5, -2, labels = "Source: WMO No. 485 - Manual on the Global Data Processing and Forecasting System, Vol.1, 2012.", cex=0.8, pos=4, xpd=T)
#text(7.4, -2.2, labels = "Author: José Roberto M. Garcia (garcia.cptec@gmail.com), Nov 2016", cex=0.8, pos=4, xpd=T)
#text(-.5, -2.5, labels = "R source code: https://github.com/Garcia-CPTEC/EnvScience/blob/master/WMO-ForecastingRangeDefinitions.R", cex=0.8, pos=4, xpd=T)

col.text <- 'blue'
hs <- c(2, 12, seq(24,360, 24), 480, 600, 720)
ds <- c('', '', 1:15, 20, 25, 30)
x.pos <- seq(.1, (.4*length(ds)), .4)
text(m1, y1-0.18, labels = 'hours', xpd=T, col=col.text, pos = 4)
text(x.pos, y = y1-0.18, labels = hs)
text(m1, y1-.4, labels = 'days', xpd=T, col=col.text, pos = 4)
text(x.pos, y = y1-.4, labels = ds)
text(9.5, y = y1-0.3, labels = '2 years', cex=1.2)

cex.lab1 <- 1.2
cex.lab2 <- 1.5

lines(x=c(x.pos[1], x.pos[1]), c(y1, y2+.2), lwd=2, col=col.text, lty=2)
text(m1-.16, y2+.4, "Nowcasting", col=col.text, pos = 4, cex=cex.lab1)

lines(x=c(x.pos[2], x.pos[2]), c(y1, y2+.9), lwd=2, col=col.text, lty=2)
text(m1-.16, y2+1.1, "Very short-range", col=col.text, pos = 4, cex=cex.lab1)

lines(x=c(x.pos[5], x.pos[5]), c(y1, y2+.7), lwd=2, col=col.text, lty=2)
text((x.pos[5]+x.pos[2])/2, y2+.7, "Short-range", col=col.text, pos=1, cex=cex.lab2)

lines(x=c(x.pos[12], x.pos[12]), c(y1, y2+.7), lwd=2, col=col.text, lty=2)
text((x.pos[12]+x.pos[5])/2, y2+.7, "Medium-range", col=col.text, pos=1, cex=cex.lab2)

lines(x=c(x.pos[20], x.pos[20]), c(y1, y2+.7), lwd=2, col=col.text, lty=2)
text((x.pos[20]+x.pos[12])/2, y2+.7, "Extended-range", col=col.text, pos=1, cex=cex.lab2)

lines(x=c(9.5,9.5), c(y1, y2+.7), lwd=2, col=col.text, lty=2)
text((9.5+x.pos[20])/2, y2+.7, "Long-range", col=col.text, pos=1, cex=cex.lab2)

#lines(x=c(9.6,10), c((y1+y2)/2, (y1+y2)/2), lwd=2, col=col.text, lty=3)
text(9.5, y2+.6, "Climate", col=col.text, pos=4, cex=cex.lab2)
text(9.5, y2+.3, "Forecasting", col=col.text, pos=4, cex=cex.lab2)

col.cl <- 'magenta'
lines(x=c(x.pos[20], x.pos[20]), c(y2+.7, y2+1.4), lwd=2, col=col.cl, lty=2)
text((10+x.pos[20])/2, y2+.9, "Climate (some countries)", col=col.cl, pos=3, cex=cex.lab2)
#lines(x=c(9.8,10), c(7.8, 7.8), col=col.cl, lty=3)

dev.off()

