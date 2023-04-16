# T-CSK OPTIMIZATION
In this repository is presented an optimization process of the Color Shift Keying based on three colors for indoor applications, considering a mobile receiver.

## Description
Color Shift Keying CSK is a modulation scheme for Visible Light Comunication. This modulation is a type of Wavelength Division Multiplexing WDM technique which uses multiple wavelengths and a color space to define a constellation of symbols. CSK modulation suffers of interchannel interference  due to the wide spectral responses of the LED and the photodetectors, and the spectral reflectance of the walls. The interchannel interference determines the minimum distance between the received symbols, and consequently the Symbol Error Rate SER of the transmission. To improve the SER of a CSK system, the constellation design is modified to maximize the minimum distance between the received symbols. However, CSK-based VLC system for indoor application also must fulfill illumination requierments such as a minimum illuminance level and a color temperature on the illuminated area. In this repository is addressed an optimization of the CSK to improve the SER, taking to account constrains for constant luminous flux and a tuneable color temperature.

## Methodology

### Analytical characterization

Using the VLC-RM Python package, the minimum distance, the illuminance and the color temperature are computed for different receiver positions.

### Formulation and solving of the optimization problem

The objective and constrain functions are formulated in terms of constellation symbols. An algorithm is proposed to get a solution for the CSK constellation.

### Analytical validation

Using the VLC-RM Python package, the solution of the constellation is validated.
