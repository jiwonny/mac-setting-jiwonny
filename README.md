## git conifg
```bash
$ git config --global user.email {email}
$ git config --global user.name "jiwonny"
$ git config --global --add url."git@github.com:".insteadOf "https://github.com/"
```

### git config with ssh-key
```bash
$ ssh-keygen -t rsa -C "email"
# 아래 내용 복사
$ cat ~/.ssh/id_ras.pub 
```
위에서 복사한 key를 github ssh key에 등록한다

## terminal
```bash
# basic
$ brew install coreutils curl
```

### terminal 꾸미기
```bash
# oh my zsh
$ cd documents
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
$ brew install zsh-syntax-highlighting
$ brew install zsh-autosuggestions
```

```bash
# .zshrc 수정
ZSH_THEME="af-magic"

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```



## aws
brew install --cask aws-vault
