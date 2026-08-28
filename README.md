# My Neovim Skin

Este proyecto tiene la finalidad de compartir una personalización facil y rápida para Neovim

## Algunas sugerencias

La recomendación es tener instalado como mínimo, los entornos de ejecución de python y javascript
para un uso inicial. Aunque siempre puedes instalar los interpretes/compiladores que necesites.

### Guía de uso

Para hacer uso de esta personalización, se requiere que cuentes con git y Neovim instalados y actualizado a
la versión más reciente.

Posteriormente, usa el siguiente comando para descargar el proyecto en tu carpeta preferida

```bash
git clone github.com/darkhope22/my-neovim-skin -b vimscript-settings
```
Una vez descargado, puedes copiar o mover los archivos de personalización a la carpeta ~/.config/nvim/
de tu sistema operativo, abrir el fichero init.vim y ejecutar el comando 

```lua
    :PlugInstall
```

Con esto, las configuraciones base y sus recursos serán descargados y estarán listos para usar.

> No olvides que para salir de Neovim solo debes escribir :q

Una vez instalados los modulos adicionales, es sugerido instalar los 'language server' de

    - typescript-language-server
    - bash-language-server
    - pyright

> Para hacer uso del typescript-language-server es necesario contar con typescript 5 o superior

