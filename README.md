# bmp-image-with-HSI-and-RGB
1. Building a Matlab code that will
   - "Write" and "read" non compressed, 8-bit .bmp files per color.
   - Read, from an 8-bit image, its color palette and create a new image that shows all the colors of the palette. This means that we will create a new image with a size of 256x256 where each row **i** will contain the color of the respective position i in the palette. 
2. Building a Matlab code that reads 8-bit color images and converts them in grayscale images. 
3. In HSI color model, create 256 colors in the way below
   - Define k = scalar number such as **S = (1 - k)/10** and **I = 0.5** and taking 256 different values for H, **0 <= H <= 360**.
   - After that, we convert these colors in the RGB model and with the new palette we have created, we build a new image showing the colors that we have made.
4. Repeat for **S = (0.1 + k)/10**.
5. Repeat for **H = 60 + 10 * k**, **I = 0.5** and taking 256 different values for S, **0 <= S <= 1**.
