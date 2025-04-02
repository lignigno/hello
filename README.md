<br>

<h1 align="center">HELLO</h1>

<br>

### ***INSTALL***

---

> Install on devise

``` bash
cd /Users/Shared && \
git clone https://github.com/lignigno/hello.git && \
cp -rf hello/PrintSuperText.sh ./ && \
rm -rf hello
```

> Install for zsh

``` bash
echo "/Users/Shared/PrintSuperText.sh nikname 255 0 128" >> ~/.zshrc
```

> Install for bash

``` bash
echo "/Users/Shared/PrintSuperText.sh nikname 255 0 128" >> ~/.bashrc
```

### ***HOW IT USE***

---

> params (all optional):
>   - nikname
>   - color:
>       - red (0-255)
>       - green (0-255)
>       - blue (0-255)

``` bash
./PrintSuperText.sh lignigno 0 255 255
```