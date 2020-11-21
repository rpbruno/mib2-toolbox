####################################################################
#
# Custom Green Engineering Menu screen
# Author:       Jille
# Version:      3.5A
# Disclaimer:   THIS SCREEN WILL VOID YOUR WARRANTY
#
####################################################################
screen   MQBCoding Main

keyValue
    value    String sys 0x00000000 0
    label    "[MQB CODING - MIB Toolbox v3.5A]"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "Warning: this screen has the potential to break your unit and void your warranty. Be careful."
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "IMPORTANT: Run this script first to install additional scripts:"
    poll     0    
    
script
   value    sys 1 0x0100 "/scripts/copy_phone_customer.sh"
   label    "Get new scripts and files from SD-card (slot1) "
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/update_toolbox.sh"
   label    "Update toolbox with a new mqbcoding.esd and scripts"
    

####################################################################
screen  Dump MQBCoding

keyValue
    value    String sys 0x00000000 0
    label    "Make sure there is an SD-card in slot 1"
    poll     0    
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_all.sh"
   label    "Dump skins, startup screens, android auto config, ringtones to SD-card"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_fec.sh"
   label    "Dump FEC container"   
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_ifs.sh"
   label    "Dump IFS-root"   
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_shadow.sh"
   label    "Dump shadow file"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_eeprom.sh"
   label    "Dump EEPROM"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_hosts.sh"
   label    "Dump hosts file"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_gem.sh"
   label    "Dump GEM.jar"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_lsdjxe.sh"
   label    "Dump LSD.jxe"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_storage.sh"
   label    "Dump storage1.raw and storage2.raw "
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/dump_persistence.sh"
   label    "Dump persistence"

####################################################################
screen  Customization MQBCoding 
####################################################################
#############################################

screen  Adaptations  Customization
#############################################
screen "CarFunctionsList_BAP" adaptations

BIOSCtrl
   value int per 28442848 408
   label "Adaptive cruise control (ACC): "
   entry	"not coded" 0
   entry "coded" 1
   
BIOSCtrl
   value int per 28442848 400
   label "Air condition (master): "
   entry	"not coded" 0
   entry	"coded" 1   
  
BIOSCtrl
   value int per 28442848 402
   label "Air condition (slave1): "
   entry	"not coded" 0
   entry	"coded" 1   
  
BIOSCtrl
   value int per 28442848 442
   label "Air condition (slave2): "
   entry	"not coded" 0
   entry	"coded" 1   
  
BIOSCtrl
   value int per 28442848 410
   label "Air suspension: "
   entry	"not coded" 0
   entry	"coded" 1   
   
BIOSCtrl
   value int per 28442848 404
   label "Auxiliary heater: "
   entry	"not coded" 0
   entry	"coded" 1   

BIOSCtrl		
	value	int per 28442848 476
	label	"BatteryCtrl: "
	entry	"not coded" 0
	entry	"coded" 1	

BIOSCtrl		
	value	int per 28442848 466
	label	"BC with Efficiency (BCmE): "
	entry	"not coded" 0
	entry	"coded" 1	
BIOSCtrl		
	value	int per 28442848 472
	label	"Brake: "
	entry	"not coded" 0
	entry	"coded" 1
BIOSCtrl
   value int per 28442848 452
   label "Braking way reduction (AWV): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 424
   label "Central lock system (ZV): "
   entry	"not coded" 0
   entry	"coded" 1     
BIOSCtrl
   value int per 28442848 436
   label "Central units master (ZEM): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 444
   label "Charisma: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 432
   label "Clock: "
   entry	"not coded" 0
   entry	"coded" 1   
   
BIOSCtrl
   value    int per 28442848 440
   label    "Compass: "
   entry	"not coded" 0
   entry	"coded" 1   

BIOSCtrl
   value int per 0 0x50201403
   label "DisplayConfig: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 0 0x5008CC03
   label "eCALL: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 0 0x5008F003
   label "EfficiencyAssist(PEA): "
   entry	"not coded" 0
   entry	"coded" 1 
BIOSCtrl
   value int per 0 0x5008DC03
   label "ENI: "
   entry	"not coded" 0
   entry	"coded" 1    
BIOSCtrl
   value int per 28442848 416
   label "Exterior light: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 406
   label "Headup display (HUD): "
   entry	"not coded" 0
   entry	"coded" 1  
BIOSCtrl
   value int per 28442848 454
   label "Hybrid: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 414
   label "Interior light: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 450
   label "Lane change assist (SWA): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 448
   label "Lane departure warning (HCA): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl		
	value	int per 28442848 470
	label	"MFL joker key: "
   entry	"not coded" 0
   entry	"coded" 1	
BIOSCtrl
   value	int per 28442848 426
   label	"Mirror: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 446
   label "Night vision: "
   entry	"not coded" 0
   entry	"coded" 1  
BIOSCtrl		
	value	int per 28442848 428
	label	"On-board computer (BCMFA): "
   entry	"not coded" 0
   entry	"coded" 1	
BIOSCtrl
   value	int per 28442848 418
   label	"Parking system (PDC/OPS): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value	int per 28442848 420
   label	"Parking system (VPS): "
   entry	"not coded" 0
   entry	"coded" 1  
BIOSCtrl
   value	int per 0 1342760963
   label	"Pedestrian Assist: "
   entry	"not coded" 0
   entry	"coded" 1  
BIOSCtrl
   value	int per 28442848 458
   label	"Rev. seat-belt tensionier (RGS): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value int per 28442848 482
   label "Range Data (RD): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value	int per 28442848 430
   label	"Seat memory (master): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value	int per 0 1342761987
   label	"Seatpneumatic: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value    int per 28442848 460
   label    "Seat configuration (slave): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value	int per 28442848 434
   label	"Service interval (SIA): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl		
	value	int per 28442848 456
	label	"Sideview camera: "
   entry	"not coded" 0
   entry	"coded" 1  

BIOSCtrl
   value int per 0 0x50201003
   label "SoundControl: "
   entry	"not coded" 0
   entry	"coded" 1   

BIOSCtrl
   value int per 0 0x50200003
   label "Spoiler: "
   entry	"not coded" 0
   entry	"coded" 1   

BIOSCtrl		
	value	int per 28442848 474
	label	"StartStopReasons: "
	entry	"not coded" 0
	entry	"coded" 1	
BIOSCtrl		
	value	int per 28442848 478
	label	"Tilt Angle Disp (TAD): "
	entry	"not coded" 0
	entry	"coded" 1
BIOSCtrl
   value	int per 28442848 480
   label	"Trailer Assistant (ARA): "
   entry	"not coded" 0
   entry	"coded" 1   									
BIOSCtrl
   value	int per 28442848 462
   label	"Traffic sign detection (TSD): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value	int per 28442848 412
   label	"Tyre pressure control (RDK): "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl
   value    int per 28442848 438
   label    "UGDO / Homelink: "
   entry	"not coded" 0
   entry	"coded" 1   
BIOSCtrl		
	value	int per 28442848 464
	label	"Weariness recognition (MKE): "
   entry	"not coded" 0
   entry	"coded" 1	
BIOSCtrl
   value	int per 28442848 422
   label	"Wiper: "
   entry	"not coded" 0
   entry	"coded" 1   

#############################################
screen "CarFunctionsList_CAN" adaptations
            
BIOSCtrl
   value    int per 0 1343769616
   label    "RVC as RVC_Low: "
   entry	"not coded" 0
   entry	"coded" 1        
   
choice
       	value           per 28442848 521
       	label           "Display OPS in Kombi"
        poll            1000   
#############################################
screen CarDeviceBusAssignment adaptations

# BAP based features:
	
BIOSCtrl
      value       int per 28442848 409
      label       "Adaptive Cruise Control (ACC):"
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 401
      label       "Air condition (master): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 403
      label       "Air condition (slave1): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 443
      label       "Air condition (slave2): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 411
      label       "Air suspension: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 405
      label       "Auxiliary heater: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 477
      label       "BatteryCtrl: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 467
      label       "BC with Efficiency (BCmE): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
		
BIOSCtrl
      value       int per 28442848 473
      label       "Brake: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
		
BIOSCtrl
      value       int per 28442848 453
      label       "Braking way reduction (AWV): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 425
      label       "Central lock system (ZV): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 445
      label       "Charisma: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 433
      label       "Clock: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x502014FC
      label       "DisplayConfig: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x5008CCFC 
      label       "eCALL: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x5008F0FC 
      label       "EfficiencyAssist(PEA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x5008DCFC 
      label       "ENI: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
		
	BIOSCtrl
      value       int per 28442848 417 
      label       "Exterior light: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
     value       int per 28442848 407
     label       "Headup display (HUD): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
     value       int per 28442848 455
     label       "Hybrid: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 415
      label       "Interior light: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 451
      label       "Lane change assist (SWA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
	
BIOSCtrl
      value       int per 28442848 449
      label       "Lane departure warning (HCA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 427
      label       "Mirror: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
     value       int per 28442848 447
     label       "Nightvision: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 429
      label       "On-board Computer (BCMFA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
		
BIOSCtrl
      value       int per 28442848 419
      label       "Parking system (PDC/OPS): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 421
      label       "Parking system (VPS): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 1342761212
      label       "Pedestrian Assist: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 459
      label       "Rev. seat-belt tensionier (RGS): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 483
      label       "Range Data (RD): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 431
      label       "Seat memory master: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 1342762236
      label       "Seatpneumatic: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 435
      label       "Service interval (SIA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x502010FC
      label       "SoundControl: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 0 0x502000FC
      label       "Spoiler: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 475
      label       "StartStopReasons: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 479
      label       "Tilt Angle Disp (TAD): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 481
      label       "Trailer Assistant (ARA): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63


BIOSCtrl
      value       int per 28442848 463
      label       "Traffic sign detection (TSD): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 413
      label       "Tyre pressure control (RDK): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 439
      label       "UGDO / Homelink:"
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 437
      label       "Unit master (ZEM): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 465
      label       "Weariness recognition (MKE): "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63

BIOSCtrl
      value       int per 28442848 423
      label       "Wiper: "
	entry			"CAN Comfort" 0
	entry			"CAN Antrieb" 1
	entry			"CAN Infotainment" 2
	entry			"CAN Extended" 3
	entry			"CAN Fahrwerk" 4
	entry			"CAN Hybrid" 31
	entry			"CAN MIB" 32
	entry			"CAN Kombi/Dashbrd" 33			
	entry			"Flexray" 5
	entry			"Clamp15" 6	
	entry			"CLST1 TUEREN" 7
	entry			"CLST2 ANHAENGER" 8
	entry			"CLST3 NIGHTVISION" 9
	entry			"CLST4 SITZ" 10
	entry			"CLST5 KLAPPEN" 11
	entry			"CLST6 INFOTAINMENT" 12
	entry			"CLST7 SUB_INFOTAIN" 13
	entry			"CLST8 ANZEIGE" 14
	entry			"CLST9 LADEN" 15		
	entry			"not available" 63
#######################################################
screen CarMenuOperation adaptations
# the values are from 0 to 31 because there are 5 bits information that can be coded

button
      value             per 0 1 ""
      label             "Flush persistence cache to FFS"

slider
   value    per 28442848 200
   label    "Adaptive cruise control (ACC): "
   limits	absolute 0 31
slider
   value    per 28442848 208
   label    "Air condition: "
   limits	absolute 0 31
slider
   value    per 28442848 221
   label    "Air suspension: "
   limits	absolute 0 31
slider
   value    per 28442848 231
   label    "Attention ident: "
   limits	absolute 0 31
slider
   value    per 28442848 243
   label    "Auxiliary clima: "
   limits	absolute 0 31
slider
   value    per 28442848 209
   label    "Auxiliary heater: "
   limits	absolute 0 31
slider
   value    per 28442848 236
   label    "BC with Efficiency (BCmE): "  
   limits	absolute 0 31
slider
   value    per 28442848 238
   label    "Brake: " 
   limits	absolute 0 31
slider
   value    per 28442848 203
   label    "Braking way reduction (AWV): "
   limits	absolute 0 31
slider
   value    per 28442848 215
   label    "Central lock system (ZV): "
   limits	absolute 0 31
slider
   value    per 28442848 223
   label    "Central units master (ZEM): "
   limits	absolute 0 31
slider
   value    per 28442848 217
   label    "Charisma: "
   limits	absolute 0 31
slider
   value    per 28442848 220
   label    "Clock: "
   limits	absolute 0 31
slider
   value    per 28442848 216
   label    "Compass: "
   limits	absolute 0 31
slider
   value    per 28442848 234
   label    "DrivingSchool/Fahrschulmodus: "
   limits	absolute 0 31
slider
   value    per 28442848 247
   label    "eCALL: "
   limits	absolute 0 31 
slider
   value    per 28442848 251
   label    "Eco Rating (ThinkBlue): "
   limits	absolute 0 31   
slider
   value    per 28442848 252
   label    "Efficiency Assist(PEA): "
   limits	absolute 0 31     
slider
   value    per 28442848 248
   label    "ENI: "
   limits	absolute 0 31   
slider
   value    per 28442848 206
   label    "Exterior light: "
   limits	absolute 0 31
slider
   value    per 28442848 222
   label    "Headup display: "
   limits	absolute 0 31
slider
   value    per 28442848 224
   label    "Hybrid: "
   limits	absolute 0 31
slider
   value    per 28442848 201
   label    "Interior light: "
   limits	absolute 0 31
slider
   value    per 28442848 205
   label    "Lane change assist (SWA): "
   limits	absolute 0 31
slider
   value    per 28442848 204
   label    "Lane departure warning (HCA): "
   limits	absolute 0 31
slider
   value    per 28442848 229
   label    "MFL joker key: "
   limits	absolute 0 31
slider
   value    per 28442848 233
   label    "Mirror: "  
   limits	absolute 0 31
slider
   value    per 28442848 226
   label    "Night vision: "
   limits	absolute 0 31
slider
   value    per 28442848 218
   label    "Oil level gauge: "
   limits	absolute 0 31
slider
   value    per 28442848 210
   label    "On-board computer (BCMFA): "
   limits	absolute 0 31
slider
   value    per 28442848 202
   label    "Parking system: "
   limits	absolute 0 31
slider
   value    per 28442848 244
   label    "Pedestrian Assist: "
   limits	absolute 0 31
slider
   value    per 28442848 232
   label    "Programmed key (Ang. Schl.): "
   limits	absolute 0 31
slider
   value    per 28442848 228
   label    "Rev. seat-belt tensionier (RGS): "
   limits	absolute 0 31
slider
   value    per 28442848 250
   label    "SCR (adBlue): "
   limits	absolute 0 31
slider
   value    per 28442848 214
   label    "Seat memory: "
   limits	absolute 0 31
slider
   value    per 28442848 245
   label    "Seatpneumatic: "
   limits	absolute 0 31
slider
   value    per 28442848 213
   label    "Service interval (SIA) : "
   limits	absolute 0 31
slider
   value    per 28442848 227
   label    "Sideview camera: "
   limits	absolute 0 31
slider
   value    per 28442848 249
   label    "Sport HMI: " 
   limits	absolute 0 31
slider
   value    per 28442848 239
   label    "StartStopReasons: " 
   limits	absolute 0 31
slider
   value    per 28442848 241
   label    "Tilt Angle Display (TAD): "
   limits	absolute 0 31
slider
   value    per 28442848 230
   label    "Traffic sign detection (TSD): "
   limits	absolute 0 31
slider
   value    per 28442848 242
   label    "Trailer Assist (ARA): "
   limits	absolute 0 31
slider
   value    per 28442848 211
   label    "Tyre pressure control (RDK): "
   limits	absolute 0 31
slider
   value    per 28442848 225
   label    "Univ. garage door opener: "
   limits	absolute 0 31
slider
   value    per 28442848 237
   label    "User Eco Rating: "
   limits	absolute 0 31
slider
   value    per 28442848 219
   label    "Vehicle ident (VIN): "
   limits	absolute 0 31
slider
   value    per 28442848 235
   label    "Weariness recognition (MKE): "  
   limits	absolute 0 31
slider
   value    per 28442848 207
   label    "Window: "
   limits	absolute 0 31
slider
   value    per 28442848 212
   label    "Wiper: "
   limits	absolute 0 31
slider
   value    per 28442848 240
   label    "Battery Control: "
   limits	absolute 0 31

###################################################
screen "HMI_FunctionBlockingTable" adaptations

    bitselect
        value per 0x0 0xC0020091
        label "TUNER_0"
        range 0.0 0.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_1"
        range 0.1 0.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_2"
        range 0.2 0.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_3"
        range 0.3 0.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_4"
        range 0.4 0.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_5"
        range 0.5 0.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_6"
        range 0.6 0.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_7"
        range 0.7 0.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_8"
        range 1.0 1.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_9"
        range 1.1 1.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_10"
        range 1.2 1.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_11"
        range 1.3 1.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_12"
        range 1.4 1.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_13"
        range 1.5 1.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_14"
        range 1.6 1.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "TUNER_15"
        range 1.7 1.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_0"
        range 2.0 2.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_1"
        range 2.1 2.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_2"
        range 2.2 2.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_3"
        range 2.3 2.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_4"
        range 2.4 2.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_5"
        range 2.5 2.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_6"
        range 2.6 2.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_7"
        range 2.7 2.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_8"
        range 3.0 3.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_9"
        range 3.1 3.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_10"
        range 3.2 3.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_11"
        range 3.3 3.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_12"
        range 3.4 3.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_13"
        range 3.5 3.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_14"
        range 3.6 3.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_15"
        range 3.7 3.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_16"
        range 4.0 4.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_17"
        range 4.1 4.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_18"
        range 4.2 4.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_19"
        range 4.3 4.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_20"
        range 4.4 4.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_21"
        range 4.5 4.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_22"
        range 4.6 4.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MEDIA_23"
        range 4.7 4.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_0"
        range 5.0 5.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_1"
        range 5.1 5.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_2"
        range 5.2 5.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_3"
        range 5.3 5.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_4"
        range 5.4 5.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_5"
        range 5.5 5.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_6"
        range 5.6 5.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_7"
        range 5.7 5.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_8"
        range 6.0 6.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_9"
        range 6.1 6.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_10"
        range 6.2 6.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_11"
        range 6.3 6.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_12"
        range 6.4 6.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_13"
        range 6.5 6.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_14"
        range 6.6 6.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "PHONE_15"
        range 6.7 6.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_0"
        range 7.0 7.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_1"
        range 7.1 7.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_2"
        range 7.2 7.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_3"
        range 7.3 7.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_4"
        range 7.4 7.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_5"
        range 7.5 7.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_6"
        range 7.6 7.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_7"
        range 7.7 7.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_8"
        range 8.0 8.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_9"
        range 8.1 8.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_10"
        range 8.2 8.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_11"
        range 8.3 8.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_12"
        range 8.4 8.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_13"
        range 8.5 8.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_14"
        range 8.6 8.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_15"
        range 8.7 8.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_16"
        range 9.0 9.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_17"
        range 9.1 9.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_18"
        range 9.2 9.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_19"
        range 9.3 9.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_20"
        range 9.4 9.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_21"
        range 9.5 9.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_22"
        range 9.6 9.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_23"
        range 9.7 9.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_24"
        range 10.0 10.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_25"
        range 10.1 10.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_26"
        range 10.2 10.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_27"
        range 10.3 10.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_28"
        range 10.4 10.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_29"
        range 10.5 10.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_30"
        range 10.6 10.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_31"
        range 10.7 10.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_32"
        range 11.0 11.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_33"
        range 11.1 11.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_34"
        range 11.2 11.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_35"
        range 11.3 11.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_36"
        range 11.4 11.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_37"
        range 11.5 11.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_38"
        range 11.6 11.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "NAV_39"
        range 11.7 11.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_0"
        range 12.0 12.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_1"
        range 12.1 12.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_2"
        range 12.2 12.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_3"
        range 12.3 12.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_4"
        range 12.4 12.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "CAR_5"
        range 12.5 12.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_6"
        range 12.6 12.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_7"
        range 12.7 12.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_8"
        range 13.0 13.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_9"
        range 13.1 13.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_10"
        range 13.2 13.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_11"
        range 13.3 13.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_12"
        range 13.4 13.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_13"
        range 13.5 13.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_14"
        range 13.6 13.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_15"
        range 13.7 13.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_16"
        range 14.0 14.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_17"
        range 14.1 14.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_18"
        range 14.2 14.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_19"
        range 14.3 14.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_20"
        range 14.4 14.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_21"
        range 14.5 14.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_22"
        range 14.6 14.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "Car_23"
        range 14.7 14.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_0"
        range 15.0 15.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_1"
        range 15.1 15.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_2"
        range 15.2 15.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_3"
        range 15.3 15.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_4"
        range 15.4 15.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_5"
        range 15.5 15.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_6"
        range 15.6 15.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_7"
        range 15.7 15.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_8"
        range 16.0 16.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_9"
        range 16.1 16.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_10"
        range 16.2 16.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_11"
        range 16.3 16.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_12"
        range 16.4 16.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_13"
        range 16.5 16.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_14"
        range 16.6 16.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_15"
        range 16.7 16.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_16"
        range 17.0 17.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_17"
        range 17.1 17.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_18"
        range 17.2 17.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_19"
        range 17.3 17.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_20"
        range 17.4 17.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_21"
        range 17.5 17.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_22"
        range 17.6 17.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_23"
        range 17.7 17.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_24"
        range 18.0 18.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_25"
        range 18.1 18.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_26"
        range 18.2 18.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_27"
        range 18.3 18.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_28"
        range 18.4 18.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_29"
        range 18.5 18.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_30"
        range 18.6 18.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_31"
        range 18.7 18.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_32"
        range 19.0 19.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_33"
        range 19.1 19.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_34"
        range 19.2 19.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_35"
        range 19.3 19.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_36"
        range 19.4 19.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_37"
        range 19.5 19.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_38"
        range 19.6 19.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_39"
        range 19.7 19.7
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_40"
        range 20.0 20.0
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_41"
        range 20.1 20.1
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_42"
        range 20.2 20.2
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_43"
        range 20.3 20.3
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_44"
        range 20.4 20.4
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_45"
        range 20.5 20.5
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_46"
        range 20.6 20.6
        entry "not blocked" 0
        entry "blocked" 1
    bitselect
        value per 0x0 0xC0020091
        label "MISC_47"
        range 20.7 20.7
        entry "not blocked" 0
        entry "blocked" 1                   
#######################################################
screen RccAdaptations adaptations

keyValue
    value    String sys 0x00000000 0
    label    "Various RCC-specific adaptations. "
    poll     0  

button
      value             per 0x01b200e0 530 "FF"
      label             "Reset SDARS Prescript Activation to Defaults (0xFF)"

slider
    value       per 28442848 501
	 label       "Testmode video"
	 limits		absolute 0 256
    poll        1000

choice
    value       per 28442848 502
    label       "optical wakeup off/on"
	poll	     1000

BIOSCtrl
    value       int per 28442848 503
    label       "summertime algo."
    entry	    "none" 0
	  entry	    "manual" 1
	  entry	    "MESZ" 2
    entry	    "USA" 3
    entry	    "NavDB/automatic" 4
	poll        1000

BIOSCtrl
    value       int per 28442848 504
    label       "Multimedia Data"
    entry	    "rip off imp off" 0
	entry	    "rip off imp on" 1
	entry	    "rip on imp off" 2
    entry	    "rip on imp on" 3
	poll        1000

BIOSCtrl
    value       int per 28442848 505
    label       "Emergency call priv."
    entry	    "off" 0
	entry	    "on" 1
	entry	    "user defined" 255
	poll        1000
    
slider
    value       per 28442848 506
	label        "nr. of retries emergency call"
	limits		absolute 0 256
    poll        1000

slider
    value       per 28442848 507
	label       "basic vol. speech"
	limits		absolute 0 128
    poll        1000

slider
    value       per 28442848 508
	label       "basic vol. phone"
	limits		absolute 0 128
    poll        1000
    
slider
    value       per 28442848 509
	label       "micro sensitivity"
	limits		absolute 0 21
    poll        1000

choice
    value       per 28442848 510
    label       "Telefon off/on"
	poll	    1000
        
choice
    value       per 28442848 511
    label       "Tel. dataservices off/on"
	poll	    1000
        
choice
    value       per 28442848 512
    label       "BT off/on"
	poll	    1000
        
choice
    value       per 28442848 513
    label       "BT Sniff off/on"
	poll	    1000
        
choice
    value       per 28442848 514
    label       "WLAN off/on"
	poll	    1000

slider
    value       per 28442848 515
	label       "Regionalcodes DVD"
	limits		absolute 0 8
    poll        1000

slider
    value       per 28442848 516
	label       "Regionalcodes Blueray"
	limits		absolute 0 3
    poll        1000

slider
    value       per 28442848 517
	label       "R. Codes DVD Counter"
	limits		absolute 0 5
    poll        1000
    
slider
    value       per 28442848 518
	label       "R. Codes Blueray Counter"
	limits		absolute 0 5
    poll       1000
    
slider
    value       per 28442848 520
	label       "Set PayTMC (coarse)"
	limits		absolute 0 65535 200
    poll        1000

slider
    value       per 28442848 531
	label       "Set PayTMC (fine)"
	limits		absolute 0 65535
    poll        1000

choice
    value       per 28442848 522
    label       "RVC Video off(FBAS)/on(LVDS)"
	poll	    1000
	
BIOSCtrl
    value       int per 28442848 523
    label       "PSD protocol version"
    entry       "PSD_1.5" 0
    entry       "PSD_1.4" 1
    poll        1000

slider 
   value       per 28442848 524
	label       "AM Q-Level offset"
	limits		absolute -31 31
   poll        1000

slider 
   value       per 28442848 525
	label       "FM Q-Level offset"
	limits		absolute -31 31
   poll        1000

slider 
   value       per 28442848 526
	label       "HF stereo low thresh.(dBuV)"
	limits		absolute 20 60
   poll        1000

slider 
   value       per 28442848 527
	label       "NF max stereo chan. sep.(dB)"
	limits		absolute 0 60
   poll        1000

slider 
   value       per 28442848 528
	label       "Mono/stereo hyst.(msec)"
	limits		absolute 0 20000 100
   poll        1000

choice
    value       per 28442848 529
    label       "TV Tuner Availability"
	  poll	    1000
      
#############################################
screen  VariantInfo  adaptations

keyValue
    value    String sys 0x00000000 0
    label    "This screen is meant to display and/or change variant info. "
    poll     0  
    
keyValue
    value    String sys 0x00000000 0
    label    "It can render your unit useless if you dont know what you're doing."
    poll     0  

 
keyValue
    value   String per 0x286f058c 12
    label   "Variant Info"
    
keyValue
    value   String per 0x286f058c 13
    label   "Diagnosis Variant"
    
    
BIOSCtrl
			value	int per 0x286f058c 3
            label	"Main Unit"
             entry	"Front MU" 1
             entry	"Rear MU" 2	
             entry	"ExBox MU" 3
             entry	"Front MU MIB2" 4
             entry	"Rear MU MIB2" 5	

BIOSCtrl		
	value	int per 0x286f058c 14
	label	"Keypanel Type"
	entry	"DEFAULT_TYPE" 0
   entry	"MIBCAN_MIB1" 1             

BIOSCtrl				
			value	int per 0x286f058c 4
			label	"Type"
                entry	"High" 1
                entry	"Entry" 2	
                entry	"Standard" 3
                entry	"Premium" 4	 
    
BIOSCtrl		
	value	int per 0x286f058c 11
	label	"Topology"
    entry	"MQB" 1
    entry	"MQBTT" 2	
    entry	"MLB" 3
    entry	"MLBEVO" 4	
    entry	"MLBPO" 5
    entry       "MSS" 6
 
   
 BIOSCtrl       
    value   int per 0x286f058c 9
    label   "Region"
    entry   "Europe/ROW" 1
    entry   "Europe" 2  
    entry   "NAR" 3
    entry   "ROW" 4 
    entry   "China" 5
    entry   "Japan" 6   
    entry   "Korea" 7
    entry   "Asia" 8
    entry   "Taiwan" 9
   
  BIOSCtrl      
    value   int per 0x286f058c 10
    label   "Brand"
    entry   "Volkswagen" 1
    entry   "Audi" 2    
    entry   "Skoda" 3
    entry   "Seat" 4    
    entry   "Porsche" 5
    entry   "Bentley" 6 
    entry   "Lamborghini" 7
  
choice
    value   per 0x286f058c 5
    label   "Feature Tel"

choice
    value   per 0x286f058c 6
    label   "Feature Navi"
   
choice
    value   per 0x286f058c 7
    label   "Feature DAB"
    
choice
    value   per 0x286f058c 8
    label   "Feature Sirius"
 
choice
    value   per 0x286f058c 17
    label   "Feature LTE"  

choice
    value   per 0x286f058c 18
    label   "Feature 2D Nav"   

choice
    value   per 0x286f058c 19
    label   "Feature MMI Radio"   

 keyValue
    value    String sys 0x00000000 0
    label    "----"
    poll     0

choice
    value           per 0x286f058c 15
    label           "ICAN Msg Activation"


choice
    value           per 0x286f058c 16
    label           "MIBCAN Msg Activation"
    




 


####################################################################
screen Advanced Customization

keyValue
    value   String per 30 1966083
    label   "MU Version"

keyValue
    value   String per 30 1966084
    label   "Train Info"
    
keyValue
    value    String sys 0x00000000 0
    label    "WARNING: This screen WILL void your warranty"
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "And it can and will seriously ruin your day if you don't know what you're doing."
    poll     0    
    
keyValue
    value    String sys 0x00000000 0
    label    "Be sure to only flash if you're sure you're flashing the right file."
    poll     0    
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/copy_fec.sh"
   label    "Import FecContainer.fec from sda0/Advanced/FEC"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/copy_gem.sh"
   label    "Import GEM.jar from sda0/Advanced/GEM"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_lsdjxe.sh"
   label    "Import LSD.jxe"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/privacy_shadow.sh"
   label    "Import shadow file"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/import_hosts.sh"
   label    "Import hosts file"
  
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/flash_ifs.sh"
   label    "Flash ifsroot.ifs from sda0/Advanced/IFS"
   
####################################################################
screen  AndroidAuto Customization
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "This script will patch your gal.json file to allow third party apps."
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "Make sure you have an SD-card in slot 1 or 2 to allow a backup to be made."
    poll     0    

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/patch_gal.sh"
   label    "Install Android Auto custom applications patch."
   
   

####################################################################
screen  Coding Customization

keyValue
    value    String sys 0x00000000 0
    label    "This screen allows you to change the long coding of module 5F."
    poll     0    
    
keyValue
    value    String sys 0x00000000 0
    label    "Use at your own risk, no backups are made!"
    poll     0    
	
keyValue
    value    String sys 0x00000000 0
    label    "Reboot after setting the coding by pressing the button:"
    poll     0    
	
script
   value    sys 1 0x0100 "/scripts/performePersReset.sh"
   label    "Reboot unit"

#####   byte 0  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 0]---------------"
    poll     0 
    
BIOSCtrl
        value       int per 0 0x5018000F
        label       "Brand"
        entry	    "no Brand" 0
        entry	    "Audi" 1
        entry	    "VW" 2
        entry	    "Skoda" 3
        entry	    "Seat" 4
        entry	    "Bentley" 5
        entry	    "VW-NFZ" 6
        entry	    "Porsche" 7
        poll	    1000    

#####   byte 1  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 1]---------------"
    poll     0
    
slider
    value       per 0 0x5018040F
	label       "Car Class"
	limits		absolute 0 9
    poll        1000
    
slider
	value       per 0 0x501804F0
	label       "Car Generation"
	limits		absolute 0 9
	poll        1000

#####   byte 2  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 2]---------------"
    poll     0    
slider
	value       per 0 0x5018080F
	label       "Car Derivate"
	limits		absolute 0 9
	poll        1000

slider
	value       per 0 0x501808F0
	label       "Car Derivate Supplement "
	limits		absolute 0 9
	poll        1000

#####   byte 3  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 3]---------------"
    poll     0   
    
	BIOSCtrl
        value       int per 0 0x50180CFF
        label       "Country Navigation"
        entry	    "None" 0
        entry	    "EU" 1
        entry	    "NAR" 2
        entry	    "MSA" 3
        entry	    "Korea" 4
        entry	    "China" 5
        entry	    "Japan" 6
        entry	    "AsiaPacific" 7
        entry	    "Australia" 8
        entry	    "South Africa" 9
        entry	    "NEAST" 10
        entry	    "NMAfrica" 11
        entry	    "MEAST" 12
        entry	    "CentralAsia" 13
        entry	    "India" 14
        entry	    "Israel" 15
        entry	    "Taiwan" 16
        entry	    "MSA 2 (Chile)" 17
        entry	    "China 2" 18
        entry	    "China 3" 19
        poll        1000
        
######   byte 4  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 4]---------------"
    poll     0
    
choice
value per 0 0x50181001
label "Channel 1 HT"
poll        1000	
    
choice
value per 0 0x50181002
label "Channel 1 TT"
poll        1000	
    
choice
value per 0 0x50181004
label "Channel 2 HT"
poll        1000	
    
choice
value per 0 0x50181008
label "Channel 2 TT"
poll        1000	
    
choice
value per 0 0x50181010
label "Channel 3 HT"
poll        1000	
    
choice
value per 0 0x50181020
label "Channel 3 TT"
poll        1000	
    
choice
value per 0 0x50181040
label "Channel 4 HT"
poll        1000	
    
choice
value per 0 0x50181080
label "Channel 4 TT"
poll        1000	
    

######   byte 5  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 5]---------------"
    poll     0
    
choice
value per 0 0x50181401 
label "Channel 5 HT"
poll        1000	
    
choice
value per 0 0x50181402
label "Channel 5 TT"
poll        1000	
    
choice
value per 0 0x50181404
label "Channel 6 HT"
poll        1000	
    
choice
value per 0 0x50181408
label "Channel 6 TT"
poll        1000	
    
choice
value per 0 0x50181410
label "Channel 7 HT"
poll        1000	
    
choice
value per 0 0x50181420
label "Channel 7 TT"
poll        1000	
    
choice
value per 0 0x50181440
label "Channel 8 HT"
poll        1000	
    
choice
value per 0 0x50181480
label "Channel 8 TT"

######   byte 6  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 6]---------------"
    poll     0
    
choice
value per 0 0x50181801  
label "Channel 9 HT"
poll        1000	
    
choice
value per 0 0x50181802
label "Channel 9 TT" 
poll        1000	
    
choice
value per 0 0x50181804
label "Channel 10 HT" 
poll        1000	
    
choice
value per 0 0x50181808
label "Channel 10 TT"
poll        1000	
    
choice
value per 0 0x50181810
label "Channel 11 HT" 
poll        1000	
    
choice
value per 0 0x50181820
label "Channel 11 TT"
poll        1000	
    
choice
value per 0 0x50181840
label "Channel 12 HT"
poll        1000	
    
choice
value per 0 0x50181880
label "Channel 12 TT"     
poll        1000	
######   byte 7  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 7]---------------"
    poll     0
   
choice
value per 0 0x50181c01
label "Channel 13 HT"
poll        1000	
    
choice
value per 0 0x50181c02
label "Channel 13 TT"
poll        1000	
    
choice
value per 0 0x50181c04
label "Channel 14 HT"
poll        1000	
    
choice
value per 0 0x50181c08
label "Channel 14 TT"
poll        1000	
    
choice
value per 0 0x50181c10
label "Channel 15 HT"
poll        1000	
    
choice
value per 0 0x50181c20
label "Channel 15 TT"
poll        1000	
    
choice
value per 0 0x50181c40
label "Channel 16 HT"
poll        1000	
    
choice
value per 0 0x50181c80
label "Channel 16 TT"        
poll        1000	
    
######   byte 8  #####

keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 8]---------------"
    poll     0

choice
    value    per 0 0x50182001
    label   "Microphone 1"
    poll        1000	
    
choice
    value    per 0 0x50182002
    label   "Microphone 2"
	poll        1000	

choice
    value    per 0 0x50182004
    label "Headphones Output 1"
	poll        1000	
    
choice    
    value    per 0 0x50182008
    label "Headphones Output 2"
	poll        1000	
    
choice    
    value    per 0 0x50182010
    label "AUX IN"
	poll        1000	
    
choice    
    value    per 0 0x50182020
    label "AMI/MDI interface"
	poll        1000	
    
choice    
    value    per 0 0x50182040
    label "VDA-NF IN (TEL IN)"
	poll        1000	
    
choice    
    value    per 0 0x50182080
    label "Wake Up Over ECL" 
	poll        1000	
    
######   byte 9  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 9]---------------"
    poll     0      
    
BIOSCtrl
        value       int per 0 0x5018240F
        label       "Bandsettings FM"
        entry	    "no setting" 0
	entry	    "EU (RdW)" 1
	entry	    "NAR" 2
	entry	    "JP" 3
	entry	    "KOR" 4
	entry	    "China" 5
	poll	    1000

BIOSCtrl
        value       int per 0 0x501824F0
        label       "Bandsettings AM"
        entry	    "no setting" 0
	entry	    "EU (RdW)" 1
	entry	    "NAR" 2
	entry	    "JP" 3
	entry	    "EU" 4
	entry	    "AUS" 5
	poll	    1000    


######   byte 10  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 10]--------------"
    poll     0

BIOSCtrl
    value       int per 0 0x5018280F
    label       "Bandsettings DAB Band 1"
    entry	    "OFF" 0
	entry	    "EU Band III -N" 1
	entry	    "EU Band III" 2
	entry	    "CANADA L-Band" 3
	entry	    "KOREA Band III" 4
	entry	    "CHINA Band III" 5
	entry	    "Download Table 1" 6
	entry	    "NEW ZEALAND Band III" 7
	poll	    1000

BIOSCtrl
    value       int per 0 0x501828F0
    label       "Bandsettings DAB Band 2"
    entry	    "OFF" 0
	entry	    "L-Band" 1
	entry	    "Download Table 2" 2
	poll	    1000
 
######   byte 11  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 11]--------------"
    poll     0

BIOSCtrl
    value       int per 0 1343761663
    label       "Amplifier"
    entry	    "no assign" 0
	entry	    "intern" 1
	entry	    "external MOST" 2
	entry	    "reserved" 3		
    entry	    "external BAP" 4
    entry	    "internal Individual" 5
    entry	    "external BOOSTER" 6
	entry	    "external BAP with presets" 7
	poll        1000    
    
######   byte 12  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 12]--------------"
    poll     0    
    
    
choice    
    value    per 0 0x50183001
    label "FM Antenna" 
	poll        1000	
    
BIOSCtrl
    value       int per 0 0x5018300E
    label       "HD FM Antenna Mode"
    entry	    "AM FM ANT" 0
	entry	    "Switching" 1
	entry	    "FM ANT" 2
	entry	    "MRC" 3		
    entry	    "Testmode" 4	
	poll        1000  
    
######   byte 13  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 13]--------------"
    poll     0       
    
choice
        value       per 0 0x50183401
        label       "RDS"
        poll       1000					

BIOSCtrl
        value       int per 0 0x50183402
        label       "AF"
        entry	    "persistent" 0
        entry	    "temporary" 1
        poll        1000	
        
choice
        value       per 0 0x50183404
        label       "HD radio coding"
        poll       1000		
 
choice
        value       per 0 0x50183408
        label       "Radiotext+"
        poll	    1000

choice
        value       per 0 0x50183410
        label       "PI ignore"
        poll	    1000    
    
    
BIOSCtrl
        value       int per 0 0x50183460
        label       "BWS"
        entry       "no BWS" 0
        entry	    "restricted" 1
        entry	    "unrestricted" 2
        entry       "rest/unrest" 3
        poll        1000	    
    
choice
        value       per 0 0x50183480
        label       "DAB alarm"
        poll	    1000


######   byte 14  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 14]--------------"
    poll     0           
 
choice
        value       per 0 0x50183801
        label       "FM PTY31 off/on"
	poll	    1000

choice
        value       per 0 0x50183802
        label       "AM sperre off/on"
	poll	    1000
    
choice
        value       per 0 0x50183804
        label       "HD radio coding AM"
	poll	    1000    
    
choice
        value       per 0 0x50183808
        label       "Multiple entry switch"
	poll	    1000  
    
choice
        value       per 0 0x50183810
        label       "RDS deactivation"
	poll	    1000  

choice
        value       per 0 0x50183820
        label       "AF deactivation"
	poll	    1000  


######   byte 15  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 15]--------------"
    poll     0  

choice
       	value           per 0 0x50183C01
       	label           "Baseplate"
        poll            1000

choice
       	value           per 0 0x50183C02
       	label           "Ant. Baseplate"
        poll            1000

choice
       	value           per 0 0x50183C04
       	label           "Force Cradle"
        poll            1000

choice
       	value           per 0 0x50183C08
       	label           "Handy in Cradle"
        poll            1000

choice
       	value           per 0 0x50183C10
       	label           "Telefon Modul"
        poll            1000
        
    choice
        value        per 0 0x50183C20
        label        "Wireless Charger"      
        poll	    1000


######   byte 16  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 16]--------------"
    poll     0  


choice
       	value           per 0 0x50184001
       	label           "BT available"
        poll            1000

choice
       	value           per 0 0x50184002
       	label           "BT Multimedia"
        poll            1000

choice
       	value           per 0 0x50184004
       	label           "BT phone"
        poll            1000

choice
       	value           per 0 0x50184008
       	label           "BT audio"
        poll            1000

BIOSCtrl
        value       int per 0 0x50184030
        label       "BT visibility"
        entry       "off" 0
        entry	    "auto" 1
        entry	    "on" 2
        entry       "limited" 3
	poll        1000

choice
       	value           per 0 0x50184040
       	label           "BT headphones"
        poll            1000	
    
choice
       	value           per 0 0x50184080
       	label           "legal RVC"
        poll            1000	   


######   byte 17  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 17]--------------"
    poll     0  


BIOSCtrl
        value	    int per 0 0x501844FF
        label 	    "Skin"
        entry	    "no Skin" 0
        entry	    "Skin 1" 1
        entry	    "Skin 2" 2
        entry	    "Skin 3" 3
        entry	    "Skin 4" 4
        entry	    "Skin 5" 5
        poll	    1000
 
 ######   byte 18  #####

 keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 18]--------------"
    poll     0  
    
    
    slider
    value       per 0 0x501848ff
	label       "Screenings"
	limits		absolute 0 255
    poll        1000   
    
    
 
 ######   byte 19  #####

 keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 19]--------------"
    poll     0  

BIOSCtrl
       	value           int per 0 0x50184C01
       	label           "Boardbook"
       	entry		"not displayed" 0
	entry		"displayed" 1
        poll            1000

BIOSCtrl
       	value           int per 0 0x50184C02
       	label           "Suspension arm"
       	entry		"links" 0
	entry		"rechts" 1
        poll            1000

BIOSCtrl
       	value           int per 0 0x50184C0C
       	label           "Kombi Track"
       	entry		"n/a" 0
	entry		"long" 1
        entry           "short" 2
        entry           "reserved" 3
        poll            1000

BIOSCtrl
       	value           int per 0 0x50184C10
       	label           "RVC"
       	entry		"not active" 0
	entry		"active" 1
        poll            1000

BIOSCtrl
       	value           int per 0 0x50184C20
       	label           "MOST"
       	entry		"off" 0
	entry		"on" 1
        poll            1000

BIOSCtrl
       	value           int per 0 0x50184CC0
       	label           "USB"
       	entry		"off" 0
	entry		"charge" 1
	entry		"full" 2
	entry		"ipod" 3
        poll            1000        
 
 ######   byte 20  #####

 keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 20]--------------"
    poll     0   

    choice
        value        per 0 0x50185001
        label        "Display 1"
        poll        1000 

    choice
        value        per 0 0x50185002
        label        "Display 2"
        poll        1000 

    choice
        value        per 0 0x50185004
        label        "Display 3"
        poll        1000 

    choice
        value        per 0 0x50185008
        label        "Display 4"
        poll        1000         
 
    choice
        value        per 0 0x50185010
        label        "Dashboard Audio Slide"
        poll        1000 

    choice
        value        per 0 0x50185020
        label        "Dashboard Phone Slide"
        poll        1000 

    choice
        value        per 0 0x50185040
        label        "Dashboard Nav Slide"
        poll        1000 

 
BIOSCtrl
        value    int per 0 0x50185080
        label    "Dashboard Communication"
        entry    "BAP" 0
        entry    "DDP" 1
        poll     1000 
        
        
 ######   byte 21  #####

 keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 21]--------------"
    poll     0           

 choice
        value per 0 0x50185401
        label "VIWI"
                poll     1000 

 choice
        value per 0 0x50185410
        label "Scrolling"  
                poll     1000 


 choice
        value per 0 0x50185420
        label "Messaging via MAP"    
                poll     1000 


choice
        value per 0 0x50185440
        label "Pagewise scrolling" 
                poll     1000 


choice
        value per 0 0x50185480
        label "GPS Antenna Availability"  
                poll     1000 
   
 
######   byte 22  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 22]--------------"
    poll     0

choice    
        value           per 0 0x50185801 
        label           "Dashboard Graphic Variant" 
        poll             1000  
            
choice              
        value           per 0 0x50185802 
        label           "Dashboard Text Replace"
        poll            1000  
choice
       	value           per 0 0x50185804
       	label           "SDS"
        poll            1000    
        
choice
       	value           per 0 0x50185808
       	label           "OnlineFunctions"
        poll            1000        

choice
    value per 0 0x50185810
    label "Touch Screen Remote"
    poll            1000        

choice 
    value per 0 0x50185820 
    label "Keypad Rear Keys"
    poll            1000        


######   byte 23  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 23]--------------"
    poll     0 

choice 
    value per 0 0x50185c01    
    label "Speller"
    poll            1000    
    
choice 
    value per 0 0x50185c02 
    label "Initial Disclaimer"
    poll            1000    
    
choice 
    value per 0 0x50185c04     
    label "Legal Disclaimer"
    poll            1000    
    
choice 
    value per 0 0x50185c08  
    label "Display Turnout Speed"    
    poll            1000       
    
######   byte 24  #####
keyValue
    value    String sys 0x00000000 0
    label    "---------------[byte 24]--------------"
    poll     0

choice 
    value per 0 0x50186001	
    label "Emergency Call"
        poll            1000        

choice     
    value per 0 0x50186002	
    label "SDS"
        poll            1000        

choice     
    value per 0 0x50186004	
    label "Navigation"
        poll            1000        

choice     
    value per 0 0x50186008	
    label "WLAN"
        poll            1000        

choice    
    value per 0 0x50186010	
    label "Import media"
        poll            1000        

choice     
    value per 0 0x50186020	
    label "Ripping"
        poll            1000        

choice     
    value per 0 0x50186040	
    label "VZA"
        poll            1000        

choice     
    value per 0 0x50186080	
    label "PSD"
    poll            1000        
    



####################################################################  

screen  privacy  MQBCoding

keyValue
    value    String sys 0x00000000 0
    label    "This screen allows you to clean specific information from your unit."
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "Note: there is no undelete."
    poll     0

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/privacy_cleanhistory.sh"
   label    "Clean software version update history"    

script
   value    sys 1 0x0100 "/scripts/archiveCorefiles.sh"
   label    "Archive core dumps and logs"
   
script
   value    sys 1 0x0100 "/scripts/deleteCorefiles.sh"
   label    "Delete core dumps and logs"
   
script
   value    sys 1 0x0100 "/scripts/deleteBrowserCache.sh"
   label    "Delete browser cache"
   
script
   value    sys 1 0x0100 "/scripts/Persistence_Delete.sh"
   label    "Delete persistence"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/privacy_shadow.sh"
   label    "Replace shadow file with shadow.txt from the Advanced/Shadowfile/ folder on the SD-card"    
   
button
    value    per 1304 52 "execute_factory_settings"
    label    "Smartphone integration factory settings"
   
   
button
      value             per 9 6 "00"
      label             "Reset Datasets to Factory Defaults (FFS)"
      
button
      value             per 9 7 "00"
      label             "Reset Adaptations to Factory Defaults (FFS)"
      
button
      value             per 9 8 "00"
      label             "Reset Identifications to Factory Defaults (FFS)"

####################################################################   
screen  Display Customization

script
   value    sys 1 0x0100 "/scripts/activateDisplayManagerSplitscreen.sh"
   label    "Splitscreen mode on (makes the screen pretty hard to read! "


script
   value    sys 1 0x0100 "/scripts/deactivateDisplayManagerSplitscreen.sh"
   label    "Splitscreen mode off "
     
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/info_displaymanager.sh"
   label    "Show displaymanager info"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/set_VIM.sh"
   label    "Force set Video in Motion" 

script
   value    sys 1 0x0100 "/scripts/performePersReset.sh"
   label    "Reboot unit"

####################################################################   
screen   GreenMenu Customization
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "Instructions: Put new .esd files into the GreenMenu folder on your SD-card."
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "If you added any new scripts in your custom green menu screen,"
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "make sure you install them with the Get new scripts and files function."
    poll     0   

keyValue
    value    String sys 0x00000000 0
    label    "In your ESD-files, point to scripts at /eso/bin/PhoneCustomer/default/"
    poll     0   
       
keyValue
    value    String sys 0x00000000 0
    label    ""
    poll     0   
        
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_esd.sh"
   label    "Install green-menu screen files"   
   
#################################################################### 
screen Navigation Customization
####################################################################

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/import_mapstyles.sh"
   label    "Install mapstyles from SD (will copy all files from /navigation/app/resources/)"   

choice
	value per 0x01c500e6 17
	label "cluster_frames_debug"
	poll 0
    
choice
	value per 0x01c500e6 20
	label "set_calibration_to_car_default"
	poll 0
    
choice
	value per 0x01c500e6 57
	label "show frame rate"
	poll 0
    
choice
	value per 0x01c500e6 58
	label "crosshair movement usage"
	poll 0
     
	
choice
	value per 0x01c500e6 271
	label "RESET NAVIGATION"
	poll 0

choice
	value per 0x01c500e6 300
	label "acoustic speed warning"
	poll 0
    
choice
	value per 0x01c500e6 310
	label "traffic patterns"
	poll 0
	
choice
	value per 0x01c500e6 350
	label "Use GPS time as fallback"
	poll 0
	
choice
	value per 0x01c500e6 360
	label "additional map cursor"
	poll 0
    

####################################################################   
screen  Skin Customization 
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "This screen can be used to replace skin-graphics of the MIB."
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Skin images.mcf-files and ambienceColorMap.res go into the Skinfiles folder on SD-card in slot 1"
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Reboot after installing a new skin or ambienceColorMap."
    poll     0      
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin0.sh"
   label    "Install new graphics for Skin0 from /Skinfiles/Skin0/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin1.sh"
   label    "Install new graphics for Skin1 from /Skinfiles/Skin1/ on SD"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin1_ambient.sh"
   label    "Install new ambient colors for Skin1 from /Skinfiles/Skin1/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin2.sh"
   label    "Install new graphics for Skin2 from /Skinfiles/Skin2/ on SD"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin2_ambient.sh"
   label    "Install new ambient colors for Skin2 from /Skinfiles/Skin2/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin3.sh"
   label    "Install new graphics for Skin3 from /Skinfiles/Skin3/ on SD"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin3_ambient.sh"
   label    "Install new ambient colors for Skin3 from /Skinfiles/Skin3/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin4.sh"
   label    "Install new graphics for Skin4 from /Skinfiles/Skin4/ on SD"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin4_ambient.sh"
   label    "Install new ambient colors for Skin4 from /Skinfiles/Skin4/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin5.sh"
   label    "Install new graphics for Skin5 from /Skinfiles/Skin5/ on SD"   

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin5_ambient.sh"
   label    "Install new ambient colors for Skin5 from /Skinfiles/Skin5/ on SD"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin6.sh"
   label    "Install new graphics for Skin5 from /Skinfiles/Skin5/ on SD"   

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_skin6_ambient.sh"
   label    "Install new ambient colors for Skin5 from /Skinfiles/Skin5/ on SD"
     

 
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/recovery_skins.sh"
   label    "Recovery script to recover all skins and ambienceColorMaps from backup"   
   
script
	value sys 1 0x0100 "/scripts/performePersReset.sh"
	label "Reboot"
	
####################################################################   
screen  Sounds Customization 
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "This screen can be used to replace ringtones and sounds of the MIB."
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Wav-files go into the Ringtones-folder on SD-card in slot 1"
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Reboot after installing new files."
    poll     0      

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_ringtones.sh"
   label    "Install new ringtones from /Ringtones/ on SD"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_systemsounds.sh"
   label    "Install new system sounds from /Systemsounds/ on SD"
####################################################################
screen  Startup Customization 
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "This screen can be used to replace startup-graphics of the MIB."
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Startup-screen canim-files go into the Splashscreen folder on SD-card in slot 1"
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "Use the filenames of the dump as a guideline. If you don't use the right filename, it will fail."
    poll     0    
    
keyValue
    value    String sys 0x00000000 0
    label    "After installing a new startup screen, change coding of module 5F, byte 18."
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "Set the value to a different screening, reboot, and set it back to the original value."
    poll     0    
    
keyValue
    value    String sys 0x00000000 0
    label    "This will force the system to re-read the startup-screen files."
    poll     0   
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_canim.sh"
   label    "Install startup screens (also makes a backup)"
   
keyValue
    value    String sys 0x00000000 0
    label    ""
    poll     0  

keyValue
    value    String sys 0x00000000 0
    label    "Use the following if you don't have the tools to change coding"
    poll     0  
    
keyValue
    value    String sys 0x00000000 0
    label    "Put your custom splash.canim in the Splashscreen folder on SD-card"
    poll     0  

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_forcedcanim.sh"
   label    "Force replacing of start menu. No coding needed."  

####################################################################   
screen  Updates Customization
    
choice
        value           per 30 1966081
        label           "User Defined / Custom SWDL"
        
choice
        value           per 30 1966082
        label           "Ignore Region and Variant"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/set_skipMostPopup.sh"
   label    "Set flag to skip the MOST popup error during SWDL."

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/unset_skipMostPopup.sh"
   label    "Remove skipMostPopup flag"

keyValue
    value    String sys 0x00000000 0
    label    "DON'T TRIGGER EMERGENCY UNLESS YOU'RE 100% SURE"
    poll     0

button
      value             per 30 1966085 ""
      label             "Trigger Emergency Update"


####################################################################
screen  Various Customization 
####################################################################
keyValue
    value    String sys 0x00000000 0
    label    "Various tweaks:"
    poll     0  


script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/import_gracenote.sh"
   label    "Import new Gracenote database" 
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/patch_googleearth.sh"
   label    "Activate 3D terrain/buildings in Carnet Google Earth"  
   
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/patch_menumode.sh"
   label    "Activate User-switchable MenuMode"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/install_rsdb.sh"
   label    "Install new Radio Station DB"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/set_nosslcheck.sh"
   label    "Disable Online service SSL checks"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/unset_nosslcheck.sh"
   label    "Re-enable online service SSL checks"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/set_DataOverDLink.sh"
   label    "Data over D-link"
   
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/set_DataOverSIM.sh"
   label    "Data over SIM"

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/util_showOnlineRouterStatus.sh"
   label    "Check online data status"
   
#############################################
screen WLAN adaptations

choice
    value           per 0x01b800e1 41
    label           "WLAN activation"
    poll            1000


# Password configuration #########################################

# Set simple password
button
    value           per 0x01b800e1 38 1
    label           "Set simple password"
    poll            0

keyValue
    value           String per 0x01b800e1 39
    label           "Current password"
    poll            1000


# Channel configuration ##########################################

slider
    value           per 0x3F57B91D 3
    label           "Channel (0 = auto)"
    limits          absolute 0 11
    poll            0


# TX power configuration ##########################################

slider
    value           per 0x3F57B91D 4
    label           "TX power level [dBm]"
    limits          absolute 0 20
    poll            0

# Enable ED-MAC feature
choice
    value           per 0x3F57B91D 5
    label           "Enable ED-MAC feature"
    poll            1000


# WLAN configuration #############################################

# Current WLAN settings table 1
table
    content         per 0x01b800e1 40
    label           "WLAN information"
    poll            2000
    maxrows         1
    orientation     vertical
    columns ( "SSID" String 25 ) ( "MAC" String 30 ) ( "IP" String 20 )

# Current WLAN settings table 2
table
    content         per 0x01b800e1 42
    label           "WLAN parameters"
    poll            2000
    maxrows         1
    orientation     vertical
    columns ( "Channel" int 5 ) ( "SSID broadcast" int 5 ) ( "NetMode" int 5 ) ( "EncryptMode" int 5 ) ( "SecurityMode" int 5 )


# WLAN devices ###################################################

# Current connection table
table
    content         per 0x01b800e1 43
    label           "Connected devices table"
    poll            2000
    maxrows         8
    orientation     horizontal
    columns ( "MAC" String 210 ) ( "IPAddr" String 180 ) ( "Name" String 300 )

 
####################################################################   
screen  "MIB_Information"  MQBCoding


keyValue
    value    String sys 0x00000000 0
    label    "Screen information:"
    poll     0

keyValue
    value   String per 0x6 0x00060002
    label   "ABT SW version number"

keyValue
    value   String per 0x6 0x00060003
    label   "ABT HW version number"

keyValue
    value   String per 0x6 0x00060004
    label   "ABT spare part number"


keyValue
    value    String sys 0x00000000 0
    label    "Temperatures:"
    poll     0
    
keyValue
        value                   int per 8765 3
        label                   "DVD temp"
        poll                    2000

keyValue
        value                   int per 8765 4
        label                   "DVD min temp"
        poll                    2000
        
keyValue
        value                   int per 8765 5
        label                   "DVD max temp"
        poll                    2000
        
keyValue
        value                   int per 6789 3
        label                   "Tegra temp"
        poll                    2000
        
keyValue
        value                   int per 6789 1
        label                   "Tegra min temp"
        poll                    2000
        
keyValue
        value                   int per 6789 2
        label                   "Tegra max temp"
        poll                    2000
        
keyValue
        value                   int per 0x01b800e1 22
        label                   "NAD temp"
        poll                    1000
        
keyValue
        value                   int per 0x01b800e1 100
        label                   "NAD min temp"
        poll                    1000
        
keyValue
        value                   int per 0x01b800e1 101
        label                   "NAD max temp"
        poll                    1000
              
        
keyValue
    value			String per 0x01c500e6 401
	label			"Gyro temperature"
	poll			1000 
    
    keyValue
    value			int per 0x4B9 102
	label			"Nav sensor temperature"
	poll			1000 
    
####################################################################
screen  password "MIB_Information"

keyValue
    value    String sys 0x00000000 0
    label    "This feature will find the root passwords for MMX and RCC"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "Update passwords.csv in the Advanced folder on your SD in slot 1"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "with your own passwords."
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    ""
    poll     0
    
script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/find_password.sh"
   label    "Find the root passwords."

	

         

####################################################################
screen   Disclaimer MQBCoding

keyValue
    value    String sys 0x00000000 0
    label    "Warning: these screens have the potential to break your unit and void your warranty. Be careful."
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "MQB Coding is not responsible for any troubles to you, your car or software."
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    poll     0
    label    "MQB Coding is always looking for cool hacks and retrofits to increase the potential of the MQB platform."
keyValue
    value    String sys 0x00000000 0
    label    "It's never our intention to harm any person, car or brand."
    poll     0 
    
keyValue
    value    String sys 0x00000000 0
    label    "If you've paid for this update, you've been scammed."
    poll     0 

keyValue
    value    String sys 0x00000000 0
    label    ""
    poll     0 

keyValue
    value    String sys 0x00000000 0
    label    "Knowledge is power, but only when shared."
    poll     0 

keyValue
    value    String sys 0x00000000 0
    label    ""
    poll     0    
    
keyValue
    value    String sys 0x00000000 0
    label    "Copyright MQB-Coding 2019"
    poll     0    

####################################################################
screen  Funstuff MQBCoding    

script
   value    sys 1 0x0100 "/eso/bin/PhoneCustomer/default/fun_timemachine.sh"
   label    "Time-machine"
   
slideshow
  label "Slideshow"
    
    
####################################################################
screen  FamousQuotes Funstuff
    
keyValue
    value    String sys 0x00000000 0
    label    "'We know it and we've patched it already', someone at VW"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "'That's impossible', someone at VW"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "'They say it's not possible, so let's do it', someone at MQB-Coding"
    poll     0             

keyValue
    value    String sys 0x00000000 0
    label    "'Sign here, and we have the right to destroy your computer', some NDA"
    poll     0    

keyValue
    value    String sys 0x00000000 0
    label    "'Let's sell some pre-production cars', someone at VW, probably"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "'MANDA HUEVOS', Meich"
    poll     0  
    
####################################################################
screen  History MQBCoding

keyValue
    value    String sys 0x00000000 0
    label    "v3.5A - Improved VIM and coding"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v3.4A - Display manager stuff"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v3.3A - Testing VIM settings"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v3.2A - Major Script overhaul"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v3.1A - Undo MIB1 merge"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v3.0A - Mapstyles and Gracenote dump and import"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.9A - Test improvement copy_files script"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.8A - Test merge with MIB1 toolbox"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.7B - Added Menu features and update script"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.6B - Added Online services SSL disable feature"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.5B - Revised menu structure"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.4B - Added a lot of adaptation screens"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.3B - Added more long coding and some experimental stuff"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.2B - Added long coding modifications"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.1B - Added persistence scanner."
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v2.0B - Dump/Import hosts file and minor fixes."
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.9B - Added storage.raw dump and ambient color maps dump/import."
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.8B - Added LSD.jxe and GEM.jar dump and import (pro features)"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.7B - Added Ringtones dump and import"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.6B - Added Privacy screen and menumode tweak"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.5B - Added Variantinfo screen"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.4B - Beta release version"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.3A - Small bugfixes, added Google Earth patch"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.2A - Added brand, version, fazit to dumps"
    poll     0

keyValue
    value    String sys 0x00000000 0
    label    "v1.1A - Improved AA patch, added forced startupscreen-replace"
    poll     0


keyValue
    value    String sys 0x00000000 0
    label    "v1.0A - Alpha test version"
    poll     0


keyValue
    value    String sys 0x00000000 0
    label    "v0.7 - Added menu for PROs"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.6 - Added universal GAL-patcher"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.5 - Splitting graphics menu into skin and startup"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.4 - Adding more structure to menus"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.3 - Testing script-import and launch"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.2 - Added Android Patch"
    poll     0
    
keyValue
    value    String sys 0x00000000 0
    label    "v0.1 - Initial version"
    poll     0