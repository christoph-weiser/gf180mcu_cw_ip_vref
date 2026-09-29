*general
.inc {PDK}/{SIMULATOR}/design.spice

* standard mosfets
.lib {PDK}/{SIMULATOR}/sm141064.spice {MOS_CORNER}

* Other devices
.lib {PDK}/{SIMULATOR}/sm141064.spice res_{RES_CORNER}
.lib {PDK}/{SIMULATOR}/sm141064.spice mimcap_{CAP_CORNER}
.lib {PDK}/{SIMULATOR}/sm141064.spice bjt_{BJT_CORNER}
.lib {PDK}/{SIMULATOR}/sm141064.spice diode_{DIO_CORNER}
