# imgToR5G6B5

Simple script to convert an image in any format to an uncompressed, embedded system friendly, 16bit (R5G6B5).

It can be used to [Converting Images to Flash Memory Icons/images for TFT (without SD Card)](https://www.instructables.com/Converting-Images-to-Flash-Memory-Iconsimages-for-/), without the need for the Windows-specific tools.

## Dependencies

Only dependency is `imagemagick`. It should work in Linux, macOS, and Windows Subsystem for Linux (WSL).

## Usage

```
./imgToR5G6B5.sh [<size>] <input> [<output>]
```

The arguments under `[]` are optional.

- `[<size>]` the represents dimensions of the box withtin which the image must fit, as per ImageMagick's `convert -resize` documentation. The default value is `80x80`.

- `<input>` the path for the input image.

- `[<output>]` the path for the output text file with the hexadecimal values of the image. Default value is `./out.bin`

Example usage:
```
./imgToR5G6B5.sh 60x60 ~/Documents/Images/logo.jpg /tmp/logo.bin
```

It is worthwhile to notice that the script also outputs the size of the resulting image.