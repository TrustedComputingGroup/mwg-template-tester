# TCG Template Tester

This repository contains sample text, prototype Typst templates, and a script
to build sample PDFs based on each of the templates.

This repository is Apache 2.0 licensed. It contains OFL licensed fonts for
testing. The license and copyright for each font can be found in the
[LICENSE](/LICENSE) file.

## How To See The Results

Visit the "Actions" tab and download the "samples" zip file. It will contain
a PDF for each template in the `templates` directory.

## How To Contribute

Send a PR adding your new template to the [templates](/templates) directory.

During development, replace the `#import` statemtent on
[tcgipsum.typ](/tcgipsum.typ) to point to your in-development template.

If you use any new fonts, please ensure that you have the right to redistribute
them, and add them to the [fonts](/fonts) directory. Append the license to
[LICENSE](/LICENSE).
