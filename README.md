# CVLab Server

```
                         ,--,                                                                                                  
                      ,---.'|                                                                                                  
  ,----..             |   | :                                  .--.--.       ,---,.,-.----.                  ,---,.,-.----.    
 /   /   \       ,---.:   : |                ,---,            /  /    '.   ,'  .' |\    /  \        ,---.  ,'  .' |\    /  \   
|   :     :     /__./||   ' :              ,---.'|           |  :  /`. / ,---.'   |;   :    \      /__./|,---.'   |;   :    \  
.   |  ;. /,---.;  ; |;   ; '              |   | :           ;  |  |--`  |   |   .'|   | .\ : ,---.;  ; ||   |   .'|   | .\ :  
.   ; /--`/___/ \  | |'   | |__   ,--.--.  :   : :           |  :  ;_    :   :  |-,.   : |: |/___/ \  | |:   :  |-,.   : |: |  
;   | ;   \   ;  \ ' ||   | :.'| /       \ :     |,-.         \  \    `. :   |  ;/||   |  \ :\   ;  \ ' |:   |  ;/||   |  \ :  
|   : |    \   \  \: |'   :    ;.--.  .-. ||   : '  |          `----.   \|   :   .'|   : .  / \   \  \: ||   :   .'|   : .  /  
.   | '___  ;   \  ' .|   |  ./  \__\/: . .|   |  / :          __ \  \  ||   |  |-,;   | |  \  ;   \  ' .|   |  |-,;   | |  \  
'   ; : .'|  \   \   ';   : ;    ," .--.; |'   : |: |         /  /`--'  /'   :  ;/||   | ;\  \  \   \   ''   :  ;/||   | ;\  \ 
'   | '/  :   \   `  ;|   ,/    /  /  ,.  ||   | '/ :        '--'.     / |   |    \:   ' | \.'   \   `  ;|   |    \:   ' | \.' 
|   :    /     :   \ |'---'    ;  :   .'   \   :    |          `--'---'  |   :   .':   : :-'      :   \ ||   :   .':   : :-'   
 \   \ .'       '---"          |  ,     .-./    \  /                     |   | ,'  |   |.'         '---" |   | ,'  |   |.'     
  `---`                         `--`---'   `-'----'                      `----'    `---'                 `----'    `---'       
                                                                                                                               
```

Default setting for cvlab server.

This script do these things.

1. Change apt mirror to kakao. (default ubuntu mirror is too slow)
2. Update welcome message
3. Install packages `wget`, `curl` and `tmux`
4. Install **locale** for en_US
5. Install **CUDA** and latest **Graphic driver**
6. Install **Python** (Miniconda) and change pip mirror to kakao
7. Install extra utility, `tmux`, `neovim` and `spacevim`


## Installation

```
sudo apt install git -y && git clone https://github.com/hyu-cvlab/settings.git && cd settings && ./install.sh
```

[Reference settings](https://github.com/maybes/settings)

