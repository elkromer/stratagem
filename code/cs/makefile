# CS COMPILE
NETDIRBASE=\Libs\Microsoft.NET\Framework
NETDIR2_0=$(NETDIRBASE)\v2.0.50727
NETDIR4_0=$(NETDIRBASE)\v4.0.30319

DEFAULTLIBS=/r:System.dll /r:System.Drawing.dll /r:System.Windows.Forms.dll /r:System.Xml.dll /r:System.Data.dll
DEFAULTLIBS40=$(DEFAULTLIBS) /r:System.Threading.dll /r:System.Core.dll

CSCV2_0="$(NETDIR2_0)\csc.exe" /debug- /nologo /nowarn:168,169,414,618,649,675,679,1591,1699,1570 
CSCV4_0="$(NETDIR4_0)\csc.exe" /debug- /nologo /nowarn:168,169,414,618,649,675,679,1591,1699,1701,1702,1570 /define:NET40

CSLIBV2_0=$(CSCV2_0) /target:library /noconfig $(DEFAULTLIBS)
CSLIBV4_0=$(CSCV4_0) /target:library /noconfig $(DEFAULTLIBS40)

all: lib compile
  @echo CS completed.

lib:
  $(CSLIBV4_0) Corinne.cs Person.cs Soul.cs 

compile:
  $(CSCV2_0) Program.cs

clean:
  del Corinne.dll Program.exe