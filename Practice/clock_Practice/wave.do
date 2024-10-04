view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue U -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns sim:/clockpractice/clk 
WaveCollapseAll -1
wave clipboard restore
