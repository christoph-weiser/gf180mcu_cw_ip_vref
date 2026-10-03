import pandas as pd 
import itertools
import matplotlib.pyplot as plt
import spctl as spc
import os

latest = spc.helpers.latest_testresult(__file__, os.getcwd())

df = pd.read_csv(latest)


for i, p in enumerate(["trise", "tfall", "vhi", "vlo"]):
    markers = itertools.cycle(['o', 's', 'v', '^', 'D', 'h', 'x', '+', '8', 'p', '<', '>', 'd', 'H'])
    colors  = itertools.cycle(['#1f77b4', '#333333', '#a00000'])
    dfs = df[df.par == p]
    plt.figure(i)
    for v in sorted(dfs.vddh.unique()):
        marker = next(markers)
        dfsv = dfs[dfs.vddh == v] 
        for t in sorted(dfsv.temperature.unique()):
            color = next(colors)
            dfst = dfsv[dfsv.temperature == t] 
            plt.plot(dfst.corner, dfst.val, 
                     color=color, 
                     linestyle="", 
                     marker=marker, 
                     label="{} @{}, {}".format(p, v, t))
    plt.xticks(rotation=90)
    plt.legend()
plt.show()
