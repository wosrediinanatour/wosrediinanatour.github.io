---
layout: post
lang: en
title: Picture slideshow with subtitles over Whatsapp
---
# Picture slideshow with subtitles over Whatsapp

There are several problems, if you want to make a picture slideshow, which shall be transmitted through Whatsapp:

-   You need a Whatsapp compatible video format.
-   Pictures may have different formats / resolutions.
-   Smart-phone displays have wide screens.
-   Whatsapp\'s upper bound of a video\'s file size is 16MB.
-   How to make subtitles?

In what follows, you will find my quick and dirty solution. Note that you need Linux with GNU parallel, ImageMagick, and ffmpeg installed.

> find . -type f \| parallel \"convert {} -resize 1280x720 -auto-orient -background \'rgb(0,0,0)\' -gravity center -extent 1280x720 {/.}\_1.jpg\"

This command line finds all pictures in current directory (and subdirectories) and converts them to a 16:9 format (1280x720) with black margins, if necessary. No files are replaced, but rather new files are generated that end with *\_1.jpg*.

> ffmpeg -framerate 0.5 -pattern_type glob -i \'\*\_1.jpg\' -vf subtitles=subtitles.srt -c:v libx264 -c:a aac -r 30 -pix_fmt yuv420p out.mp4

Ffmpeg makes a video out.mp4, which shows each picture for two seconds (30 FPS) and uses File subtitle.srt for subtitles. This file shall have following pattern:

> 1\
> 00:00:00,00 \--\> 00:00:04,00\
> Happy birthday..
>
> 2\
> 00:00:04,00 \--\> 00:00:06,00\
> \...to you!

References:

-   Resized images with padding: <https://stackoverflow.com/a/29075245>
-   Edit images with GNU Parallel and ImageMagick: <https://fedoramagazine.org/edit-images-parallel-imagemagick/>
-   SRT subtitles: <https://www.matroska.org/technical/subtitles.html>.

