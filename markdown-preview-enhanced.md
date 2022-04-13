# VSCode Extension : Markdown Preview Enhanced

This extension do preview and export to PDF, style sheet is adjustable.

## Style Sheet : Prefix Auto Increamental Number for Heading

Ctrl+Shift+P
MPE:Customize CSS

    ```css
    /* Please visit the URL below for more information: */
    /*   https://shd101wyy.github.io/markdown-preview-enhanced/#/customize-css */

    .markdown-preview.markdown-preview {
        // modify your style here
        // eg: background-color: blue;
        body {
        counter-reset: h2counter;
        counter-reset: h3counter;
        }
        h1 {
            counter-reset: h2counter;
        }
        h2 {counter-reset: h3counter;}
        h2:before {
            content: counter(h2counter) ".\0000a0\0000a0";
            counter-increment: h2counter;
        }
        h3:before {
            content: counter(h2counter) "." counter(h3counter) ".\0000a0\0000a0";
            counter-increment: h3counter;
        }
        h4 {font-size: medium;}
    }
    ```
  