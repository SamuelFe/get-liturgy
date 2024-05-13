# Como utilizar
Basta rodar o `exec_get_texts.bat` e ele colocará as referências das leituras e salmos nos arquivos de texto.

Ele pega as leituras do próximo domingo por padrão. Para colocar uma data específica basta descomentar a linha em `src/get_texts.ps1`, colocando lá a data no formato "dd-MM" (como "12-05").
```bash
# descomente a linha seguinte se você quer selecionar uma data específica
#$date = "13-05"
```

# Por que fiz isso?
Estou utilizando nas transmissões das Missas na minha comunidade. Eu adiciono uma fonte de texto no [OBS Studio](https://obsproject.com/) e configuro para ler o texto a partir de um arquivo.

A princípio eu queria apenas conseguir o texto do salmo automaticamente, mas vejo que será muito útil para já deixar as referências de todas as leituras.

Para deixar mais automático (que foi o princípio de tudo) vou colocar o script para [rodar junto com a inicialização do computador](https://support.microsoft.com/pt-br/windows/adicionar-aplicativos-%C3%A0-p%C3%A1gina-inicializa%C3%A7%C3%A3o-em-configura%C3%A7%C3%B5es-3d219555-bc76-449d-ab89-0d2dd6307164#bkmk_addapp). Para isso, apenas foi necessário criar um 'Atalho' para o `exec_get_texts.bat` e colocá-lo na seguinte pasta: `%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`.

> :warning: **Aviso**: se colocar o script para iniciar junto com o sistema, não abra os arquivos de texto antes que a janela preta do script apareça e saia, indicando que o script terminou de rodar. Se fizer, vai falhar. Claro que é sempre possível executar o script manualmente com um click duplo em cima do arquivo `.bat`.

Observação: eu tentei fazer o script iniciar quando o OBS era executado mas isso é mais complicado e não deu certo de primeira.

# Informações
Utiliza a API https://github.com/Dancrf/liturgia-diaria.
