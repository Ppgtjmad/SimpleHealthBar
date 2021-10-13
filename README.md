<h1 align="center">[HG] Simple Health Bar</h1>

<p align="center"><a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-nc-nd/4.0/88x31.png"/></a><br/>This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-nc-nd/4.0/">Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License</a>.</p>
<hr>
<b>How to try it</b>

Download ZIP folder, make a folder called HG_SHB.VR, move all files from downloaded folder to HG_SHB.VR<br/>
Put HG_SHB.VR in your mission folder (the one tied to your profile)<br/>
Go in game, select <b>Virtual Reality</b> world and load the mission

<b>How to use it in your custom mission</b>

Copy <b>HG</b> folder to your mission root directory<br/>
Copy <b>initPlayerLocal.sqf</b> (or merge with yours)<br/>

Open your <b>description.ext</b> & add this at the end:

```
#include "HG\UI\HG_ControlTypes.h"

class RscTitles
{
    #include "HG\UI\Dialogs\HG_SHB.h"
};

class CfgFunctions 
{
	#include "HG\Functions\HG_Functions.h"
};
```

Note: If your already have a description.ext just copy the relevant parts

<b>Usage</b>

Go close to a friend & see the magic happening
