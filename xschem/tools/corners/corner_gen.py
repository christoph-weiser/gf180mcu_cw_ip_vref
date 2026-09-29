# Create corners

import os

with open("template.sp", "r") as ifile:
    template = ifile.read()

pdk_root_env = os.environ.get("PDK_ROOT")
version = "gf180mcuD"


modelpath = "{}/{}/libs.tech".format(pdk_root_env, version)

mos = ["typical", "ss", "ff", "fs", "sf"]
cap = ["typical", "ss", "ff"]
res = ["typical", "ss", "ff"]
dio = ["typical", "ss", "ff"]
bjt = ["typical", "ss", "ff"]
sim = ["ngspice", "xyce"]

template = template.replace(r"{PDK}", modelpath)


if not os.path.exists("ngspice"):
    os.makedirs("ngspice")

if not os.path.exists("xyce"):
    os.makedirs("xyce")

for s in sim:
    for m in mos: 
        for c in cap:
            for r in res:
                for d in dio:
                    for b in bjt:
                        current = template.replace(r"{SIMULATOR}", s)
                        current = current.replace(r"{MOS_CORNER}", m)
                        current = current.replace(r"{CAP_CORNER}", c)
                        current = current.replace(r"{RES_CORNER}", r)
                        current = current.replace(r"{DIO_CORNER}", d)
                        current = current.replace(r"{BJT_CORNER}", b)

                        m_l = m.replace("typical", "tt")

                        c_l = c.replace("ss", "min")
                        c_l = c_l.replace("ff", "max")
                        c_l = c_l.replace("typical", "nom")

                        r_l = r.replace("ss", "min")
                        r_l = r_l.replace("ff", "max")
                        r_l = r_l.replace("typical", "nom")

                        d_l = d.replace("ss", "min")
                        d_l = d_l.replace("ff", "max")
                        d_l = d_l.replace("typical", "nom")

                        b_l = b.replace("ss", "min")
                        b_l = b_l.replace("ff", "max")
                        b_l = b_l.replace("typical", "nom")

                        if (r_l == "nom" and c_l == "nom" and b_l == "nom" and d_l == "nom"):
                            name = "{}/{}.spice".format(s,m_l)
                        elif (c_l == "nom" and b_l == "nom" and d_l == "nom"):
                            name = "{}/{}_r{}.spice".format(s,m_l,r_l)
                        elif (b_l == "nom" and d_l == "nom"):
                            name = "{}/{}_r{}_c{}.spice".format(s,m_l,r_l,c_l)
                        elif (d_l == "nom"):
                            name = "{}/{}_r{}_c{}_b{}.spice".format(s,m_l,r_l,c_l,b_l)
                        else:
                            name = "{}/{}_r{}_c{}_b{}_d{}.spice".format(s,m_l,r_l,c_l,b_l,d_l)

                        with open(name, "w") as ofile:
                            ofile.write(current)
