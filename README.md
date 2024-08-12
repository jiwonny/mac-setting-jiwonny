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

### 기타
```bash
$ brew install gh
$ gh auth login

# 확인을 위해
$ gh auth token
```

## terminal
```bash
# basic
$ brew install coreutils curl wget
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
```bash
$ brew install --cask aws-vault
```
`~/.aws/config` 에 profile을 추가한다


## golang
```bash
# install asdf
$ brew install asdf
$ echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc
```

```bash
# install golang with asdf
$ asdf plugin add golang https://github.com/asdf-community/asdf-golang.git
$ asdf install golang latest
$ asdf global golang latest

# install golangci-lint
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.59.1
```

```bash
# .zshrc 수정
export GOROOT="$(asdf where golang)/go/"
export GOPATH="$(asdf where golang)/packages"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOPATH/bin/golangci-lint"
```

## direnv
```bash
$ asdf plugin-add direnv
$ asdf direnv setup --shell bash --version latest
$ asdf global direnv latest
```

```
$ touch .envrc 

# .zshrc 에 아래 항목 추가
eval "$(direnv hook zsh)"
```

## node
```bash
# nvm 설치
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
```
위에 설치하면 zshrc 알아서 수정되더라.

