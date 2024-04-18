# PhoenixMod

## What is PhoenixMod?
Imagine EliteMod, but no crazy stuff, and it will be supported by me as long as I am around.
If you don't know what EliteMod is/was: Basically, long after CoH's support has been officially stopped,
a player named 12ocky started fixing all the bugs and game breaking issues. What begun as a humble project however, 
has crept up in scope so much that there was a very big difference to normal CoH1 in terms of balance.
Eventually, with the downward trend of interest in EliteMod and CoH1 in general, devleopment stopped in September 2016.
Scope creep is still a threat for PhoenixMod and I will try my best to mitigate it. In terms of activity of CoH1, 
I think CoH1 is as dead as it gets. Especially since CoH3 released and is being actively supported (yet).
The CoH1 ladder is becoming completely irrelevant due to the game being riddled by cheaters and bug abusers.
So why not start something new? Something that may rise from the ashes of CoH1.

## What changes are planned / is there a development roadmap?
Here is the project board where the work for the mod is being organized:
https://trello.com/b/lxvh5AI0/phoenixmod
Check the "General Information" card on there for more details.

## Will there be tournaments on this mod?
Yes, and you can fund them here:

[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/M4M8X1O2A)


## How to install (including GridKeys instructions at the end). 

0. Uninstall any skin/sound packs, because they have caused many problems until now. There is a long term fix planned.


### Downloading the correct file

1. Click on releases and select the LATEST available version.

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/9ae5df69-ed13-4bb8-9d13-8f8a058fe081)


2. Scroll down to "Assets" and download the EXE file. This is just .7z archive. You can double check this by renaming the file to .7z

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/fb483517-985e-4ce1-86da-06b1d98daf17)


---


### Finding your main CoH directory

3. Find your main CoH directory ("Company of Heroes Relaunch") by going to the Steam Library, right clicking on CoH, and selecting "properties"

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/c48f9951-46ba-47a3-bedd-8a1fde19860a)

4. After selecting "properties", a new window will open, where you click on "installed files" and then onto "browse". Now, a new window opens. This is the main directory of your CoH installation.

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/9b74b189-2370-4ef6-8466-cc76a4b92b46)

5. Put the EXE file into this directory directly and double click it. Confirm by selecting "Extract". If Windows asks you to replace things now, it means you have had a previous installation of PhoenixMod. In this case, to be safe, stop and delete all PhoenixMod files (except the EXE) from your CoH main folder, and repeat this step.

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/e9e1dfa7-e09a-45c0-91a9-0fbdec1078cf)


---


6. Find your RelicCoH.exe in your main CoH directory, right click on it, and select "send to desktop"

![grafik](https://user-images.githubusercontent.com/12478713/160441611-e84c3e7d-2100-4a3d-9f23-d4a707afbe14.png)


---


7. Find the new shortcut on your desktop, right click -> "properties". A new window opens.<br>
In this new window, go to "Target" (or "Ziel" in German) and add<br>
-mod phoenixmod -dev<br>
with a space after the quotes.

   
![grafik](https://user-images.githubusercontent.com/12478713/200003634-db392825-e72f-402d-b698-f9e3541d6952.png)


---


8. Done! Now you can start the game with the mod by using the new shortcut on your desktop


Each time there is a new version, you need to delete the files you have copied from the ZIP files to the CoH directory and repeat only steps 1-5















---


# GridKeys
You can use gridkeys in the following manner:

1. If you don't already have the WW2Data_KeyDefaults.sga in your "Company of Heroes Relaunch\WW2\Archives" directory,
   download it from [here](https://github.com/Nubb3r/PhoenixMod/files/8417378/WW2Data_KeyDefaults.zip) (or [here](https://github.com/Nubb3r/PhoenixMod/files/8417617/WW2Data_KeyDefaults_de.zip) for german keyboard layout) and put it there:
   
![grafik](https://user-images.githubusercontent.com/12478713/161741018-b3a25ffc-bee1-4249-95a4-ffb77d7e0509.png)

   
2. Go into the PhoenixMod.module in the main CoH directory and delete the semicolon in line 46. You will have to do this each time you redownload/update the Mod

![grafik](https://user-images.githubusercontent.com/12478713/161740515-9f49f85c-1be4-4557-9af0-c0668b81d48c.png)



