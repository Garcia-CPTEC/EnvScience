# ==============================================================================
# WMO's forecasting range definitions
# José Roberto M. Garcia (garcia.cptec@gmail.com)
# Nov, 2016
# ==============================================================================

plot(0:10,0:10, type='n', axes=F, xlab = NA, ylab = NA)
gradient.rect(0,1,10,5, col=smoothColors('green', 100, 'orange', 100, 'red', alpha=200), border=NA, gradient="x")
lines(x=c(10, 0, 0, 10), y=c(1, 1, 5, 5), lwd=5)
mtext("DEFINITIONS OF METEOROLOGICAL FORECASTING RANGES (WMO)", side=3, line = -2, cex=2, font=2)
mtext("Forecasting horizon", side=1, line=1, cex=1.5)
text(-1, -2  , "Source: WMO No. 485 - Manual on the Global Data Processing and Forecasting System, Vol.1, 2012.", side=1, line=1, cex=0.8, pos=4)
text(-1, -2.5, "Author: José Roberto M. Garcia (garcia.cptec@gmail.com), Nov 2016", side=1, line=1, cex=0.8, pos=4)
text(-1, -3  , "R source code: ", side=1, line=1, cex=0.8, pos=4)

col.text <- 'blue'
hs <- c(2, 12, seq(24,360, 24), 480, 600, 720)
ds <- c('', '', 1:15, 20, 25, 30)
x.pos <- seq(.1, (.4*length(ds)), .4)
m1 <- par("usr")[1]
text(m1, 0.7, labels = 'hours', xpd=T, col=col.text, pos = 4)
text(x.pos, y = 0.7, labels = hs)
text(9.5, y = 0.5, labels = '2 years', cex=1.2)
text(m1, 0.2, labels = 'days', xpd=T, col=col.text, pos = 4)
text(x.pos, y = 0.2, labels = ds)

lines(x=c(x.pos[1], x.pos[1]), c(1, 5.4), lwd=4, col=col.text, lty=2)
#lines(x=c(m1, x.pos[1]), c(5.4, 5.4), lwd=4, col=col.text, lty=2)
text(m1, 5.7, "Nowcasting", col=col.text, pos = 4)

lines(x=c(x.pos[2], x.pos[2]), c(1, 6.4), lwd=4, col=col.text, lty=2)
#lines(x=c(m1, x.pos[2]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text(m1, 6.7, "Very short-range", col=col.text, pos = 4)

lines(x=c(x.pos[5], x.pos[5]), c(1, 6.4), lwd=4, col=col.text, lty=2)
#lines(x=c(x.pos[2], x.pos[5]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text((x.pos[5]+x.pos[2])/2, 6.7, "Short-range", col=col.text, pos=1, cex=1.2)

lines(x=c(x.pos[12], x.pos[12]), c(1, 6.4), lwd=4, col=col.text, lty=2)
#lines(x=c(x.pos[2], x.pos[5]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text((x.pos[12]+x.pos[5])/2, 6.7, "Medium-range", col=col.text, pos=1, cex=1.2)

lines(x=c(x.pos[20], x.pos[20]), c(1, 6.4), lwd=4, col=col.text, lty=2)
#lines(x=c(x.pos[2], x.pos[5]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text((x.pos[20]+x.pos[12])/2, 6.7, "Extended-range", col=col.text, pos=1, cex=1.2)

lines(x=c(9.5,9.5), c(1, 6.4), lwd=4, col=col.text, lty=2)
#lines(x=c(x.pos[2], x.pos[5]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text((9.5+x.pos[20])/2, 6.7, "Long-range", col=col.text, pos=1, cex=1.2)

lines(x=c(9.6,10), c(3, 3), lwd=2, col=col.text, lty=3)
text(9.5, 6.6, "Climate", col=col.text, pos=4, cex=1.2)
text(9.5, 6.0, "Forecasting", col=col.text, pos=4, cex=1.2)

col.cl <- 'magenta'
lines(x=c(x.pos[20], x.pos[20]), c(6.4, 8), lwd=4, col=col.cl, lty=2)
#lines(x=c(x.pos[2], x.pos[5]), c(6.4, 6.4), lwd=4, col=col.text, lty=2)
text((10+x.pos[20])/2, 7, "Climate (some countries)", col=col.cl, pos=3, cex=1.2)
lines(x=c(9.8,10), c(7.4, 7.4), col=col.cl, lty=3)

#pie(rep(1, 8), col=1:8)



