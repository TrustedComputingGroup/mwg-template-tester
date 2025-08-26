# tcg-document

This is a Typst template for TCG documents, including specifications, reference, and guidance documents.

## Usage

You can use this template in the Typst web app by clicking "Start from template" on the dashboard and searching for `tcg-document-template`.

Alternatively, you can use the CLI to kick this project off using the command:

```
typst init @preview/tcg-document
```

Typst will create a new directory with all the files needed to get you started.

## Configuration

This template exports the `tcg-document` function with the following named arguments:

- `title`: The document's title as content.
- ...

The function also accepts a single, positional argument for the body of the document.

The template will initialize your package with a sample call to the `tcg-document` function in a show rule.
If you want to change an existing project to use this template, you can add a show rule like this at the top of your file:

```typ
#import "@preview/tcg-document-template:0.1.7": tcg-doc

#show: tcg-doc.with(
  title: [...],
  ...,
)

// content goes below.
```
