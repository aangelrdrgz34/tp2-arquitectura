## -----------------------------------------------------------------------------
## Fichier de contraintes XDC pour Basys 3 - Projet ALU avec UART
## -----------------------------------------------------------------------------

## Horloge système (100 MHz sur broche W5)
set_property PACKAGE_PIN W5 [get_ports clk]                            
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## Bouton de Reset (Bouton central - btnC)
set_property PACKAGE_PIN U18 [get_ports rst]                         
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## -----------------------------------------------------------------------------
## LEDs pour le Résultat de l'ALU et les Flags (Basys 3 : LD0 à LD15)
## -----------------------------------------------------------------------------
# Résultat binaire de l'ALU (LD0 à LD7)
set_property PACKAGE_PIN U16 [get_ports {leds[0]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}]
set_property PACKAGE_PIN E19 [get_ports {leds[1]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}]
set_property PACKAGE_PIN U19 [get_ports {leds[2]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}]
set_property PACKAGE_PIN V19 [get_ports {leds[3]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}]
set_property PACKAGE_PIN W18 [get_ports {leds[4]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[4]}]
set_property PACKAGE_PIN U15 [get_ports {leds[5]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[5]}]
set_property PACKAGE_PIN U14 [get_ports {leds[6]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[6]}]
set_property PACKAGE_PIN V14 [get_ports {leds[7]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[7]}]

# LEDs intermédiaires éteintes (LD8 à LD12)
set_property PACKAGE_PIN V13 [get_ports {leds[8]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[8]}]
set_property PACKAGE_PIN V3  [get_ports {leds[9]}]          
set_property IOSTANDARD LVCMOS33 [get_ports {leds[9]}]
set_property PACKAGE_PIN W3  [get_ports {leds[10]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[10]}]
set_property PACKAGE_PIN U3  [get_ports {leds[11]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[11]}]
set_property PACKAGE_PIN P3  [get_ports {leds[12]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[12]}]

# Flags tout à gauche (LD13 à LD15)
set_property PACKAGE_PIN N3  [get_ports {leds[13]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[13]}]
set_property PACKAGE_PIN P1  [get_ports {leds[14]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[14]}]
set_property PACKAGE_PIN L1  [get_ports {leds[15]}]         
set_property IOSTANDARD LVCMOS33 [get_ports {leds[15]}]

## -----------------------------------------------------------------------------
## Port Série (UART) - Câble USB
## -----------------------------------------------------------------------------
## Broche de Réception (RX)
set_property PACKAGE_PIN B18 [get_ports rx]                     
set_property IOSTANDARD LVCMOS33 [get_ports rx]

## Broche de Transmission (TX)
set_property PACKAGE_PIN A18 [get_ports tx]                     
set_property IOSTANDARD LVCMOS33 [get_ports tx]