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

WARNING: Skin/sound packs cause problems, I recommend you uninstall them. There is a long term fix planned.


### Downloading the correct ZIP file

1. Click on releases and select the NEWEST available version.

![grafik](https://user-images.githubusercontent.com/12478713/199226650-6fb97bb0-e4fe-4dea-8d32-b468d543a256.png)


2. Scroll down to "Assets" and download the ZIP file with a timestamp

![grafik](https://user-images.githubusercontent.com/12478713/199998668-1a21d72d-5dc4-46d1-b616-d0b6bfb13fdc.png)


---


### Finding your main CoH directory

3. Find your main CoH directory ("Company of Heroes Relaunch") by going to the Steam Library, right clicking on CoH, and selecting "properties"

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/c48f9951-46ba-47a3-bedd-8a1fde19860a)

4. After selecting "properties", a new window will open, where you click on "installed files" and then onto "browse". Now, a new window opens. This is the main directory of your CoH installation.

![grafik](https://github.com/Nubb3r/PhoenixMod/assets/12478713/9b74b189-2370-4ef6-8466-cc76a4b92b46)

5. Unpack the content of the ZIP file into this directory directly, by selecting ALL the files from the ZIP, and dragging them over to the CoH directory.

![grafik](https://user-images.githubusercontent.com/12478713/160441247-29245530-a4fb-4f99-a89e-f7ad41d78b72.png)


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



