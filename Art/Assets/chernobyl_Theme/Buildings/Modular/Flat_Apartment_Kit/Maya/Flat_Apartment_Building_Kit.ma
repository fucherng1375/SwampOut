//Maya ASCII 2024 scene
//Name: Residential_Building_Kit.ma
//Last modified: Sun, Jun 23, 2024 11:15:13 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "0107AEE5-4786-0976-7C24-C8ABC8CFF196";
createNode transform -s -n "persp";
	rename -uid "6F12B89E-4C8E-E9D9-813B-308EB24041EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -946.9931962802026 1185.0540187536612 1109.2949724426958 ;
	setAttr ".r" -type "double3" -32.738352788084264 -5810.1999999958407 2.4843825079869499e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "641C0B76-45AE-3E92-342F-C58AD9E18C5B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 10;
	setAttr ".fcp" 100000;
	setAttr ".coi" 1763.2254132942869;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 50.000030517578125 300 -50 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C21C40F7-475A-C788-233B-CF86882EAA14";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.44713281683085171 2228.3758788192426 -3.0146507284009196 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B76F1C19-46D0-A379-F336-DC8F4B5DCB71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1928.3758788192424;
	setAttr ".ow" 69.430972480473486;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 1373.308349609375 300 -750.19342041015625 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E43A952A-4E09-9559-4585-1EBBC1CF6C2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 140.93651978288761 102.22534973169221 1835.1168587510645 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C020EFDA-4911-F680-BB4A-0C9851467A0E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 3174.3433934508362;
	setAttr ".ow" 836.84679266927981;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 295.47246661360555 400 -1339.2265346997717 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "810920AB-45A0-A31F-2245-7BB7E0016947";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "57FF0412-4F2C-C643-D9DB-57932015B08B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "FlatApartmentOutframe";
	rename -uid "3F837472-46E3-485C-BEA5-30B97F547D82";
	setAttr ".v" no;
createNode mesh -n "FlatApartmentOutframeShape" -p "FlatApartmentOutframe";
	rename -uid "525627CA-4820-B980-4CFD-48AFF2E85B21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.375 0 0.625 0 0.375
		 0.0625 0.625 0.0625 0.375 0.6875 0.625 0.6875 0.375 0.75 0.625 0.75 0.875 0 0.875
		 0.0625 0.125 0 0.125 0.0625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -2700 0 1350 2700 0 1350 -2700 400 1350 2700 400 1350
		 -2700 400 -1350 2700 400 -1350 -2700 0 -1350 2700 0 -1350;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 1 4 5 1 6 7 0 0 2 0 1 3 0 4 6 0
		 5 7 0 6 0 0 7 1 0 5 3 1 4 2 1;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 2 7 -4 -7
		mu 0 4 4 5 7 6
		f 4 -10 -8 10 -6
		mu 0 4 1 8 9 3
		f 4 8 4 -12 6
		mu 0 4 10 0 2 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WindowA";
	rename -uid "BC40A26E-4EBC-2679-83FA-73A1BA2E9A7F";
createNode mesh -n "SM_Flat_Apartment_WindowAShape" -p "SM_Flat_Apartment_WindowA";
	rename -uid "26D10922-44DE-2A44-659E-FD99B3B53D3E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:51]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 72 ".uvst[0].uvsp[0:71]" -type "float2" 0 0.5 0 1 0.75 1
		 0.75 0.5 0 0.5 0 1 0.75 1 0.75 0.5 0 1 0 0.5 0 0.5 0 1 0.75 1 0.75 1 0.75 0.5 0.75
		 0.5 0 1 0 0.5 0 0.5 0 1 0.75 1 0.75 1 0.75 0.5 0.75 0.5 0.37500018 0.5 0.37500018
		 0.5 0 0.5 0 0.5 0 1 0 1 0.37499979 1 0.37499979 1 0.37500018 0.5 0.37499979 1 0 0.5
		 0 1 0 0.5 0 1 0.37500018 0.5 0.37499979 1 0 1 0 0.5 0.37500018 0.5 0.37499979 1 0.37499979
		 1 0.37500018 0.5 0 0.5 0 1 0.37500018 0.5 0.37500018 0.5 0 0.5 0 0.5 0 1 0 1 0.37499979
		 1 0.37499979 1 0.37500018 0.5 0.37499979 1 0 0.5 0 1 0 0.5 0 1 0.37500018 0.5 0.37499979
		 1 0 1 0 0.5 0.37500018 0.5 0.37499979 1 0.37499979 1 0.37500018 0.5 0 0.5 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 64 ".pt[0:63]" -type "float3"  0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 -2.2737368e-13 0;
	setAttr -s 64 ".vt[0:63]"  -75 99.99997711 5 -75 200 5 75 200 5 75 99.99997711 5
		 -75 99.99996948 -4.99999762 -75 200 -4.99999762 75 200 -4.99999762 75 99.99996948 -4.99999762
		 -71.3316803 103.66829681 4.99999762 -71.3316803 196.3316803 5 -71.3316803 103.66828918 -5
		 -71.3316803 196.3316803 -4.99999762 71.3316803 196.3316803 5 71.3316803 196.3316803 -4.99999762
		 71.3316803 103.66829681 4.99999762 71.3316803 103.66828918 -5 -3.0517578e-05 103.66829681 1.95939147
		 -3.0517578e-05 196.3316803 1.95939243 -3.0517578e-05 103.66828918 -1.95939243 -3.0517578e-05 196.3316803 -1.95939147
		 71.33161163 196.33166504 1.95939243 71.33161163 196.33166504 -1.95939136 71.33168793 103.66828918 1.95939136
		 71.33168793 103.66828918 -1.95939243 67.73161316 192.73165894 -1.95939136 67.73168182 107.26828766 -1.95939243
		 3.59996796 107.26828766 -1.95939243 3.59996796 192.73167419 -1.95939147 3.59996796 192.73167419 1.95939243
		 3.59996796 107.26829529 1.95939147 67.73168182 107.26828766 1.95939136 67.73161316 192.73165894 1.95939243
		 3.59996796 192.73167419 0.30686873 3.59996796 107.26829529 0.30686778 67.73168182 107.26828766 0.30686778
		 67.73161316 192.73165894 0.30686873 67.73161316 192.73165894 -0.30686784 67.73168182 107.26828766 -0.30686891
		 3.59996796 107.26828766 -0.30686891 3.59996796 192.73167419 -0.30686796 -71.3316803 103.66829681 1.95939147
		 -71.3316803 196.3316803 1.95939243 -71.3316803 103.66828918 -1.95939243 -71.3316803 196.3316803 -1.95939147
		 -3.6239624e-05 196.33166504 1.95939243 -3.6239624e-05 196.33166504 -1.95939136 3.6239624e-05 103.66828918 1.95939136
		 3.6239624e-05 103.66828918 -1.95939243 -3.60003304 192.73165894 -1.95939136 -3.59996605 107.26828766 -1.95939243
		 -67.73168182 107.26828766 -1.95939243 -67.73168182 192.73167419 -1.95939147 -67.73168182 192.73167419 1.95939243
		 -67.73168182 107.26829529 1.95939147 -3.59996629 107.26828766 1.95939136 -3.60003304 192.73165894 1.95939243
		 -67.73168182 192.73167419 0.30686873 -67.73168182 107.26829529 0.30686778 -3.59996629 107.26828766 0.30686778
		 -3.60003304 192.73165894 0.30686873 -3.60003304 192.73165894 -0.30686784 -3.59996605 107.26828766 -0.30686891
		 -67.73168182 107.26828766 -0.30686891 -67.73168182 192.73167419 -0.30686796;
	setAttr -s 112 ".ed[0:111]"  0 4 0 0 1 0 1 2 0 2 3 0 3 0 0 1 5 0 2 6 0
		 3 7 0 4 5 0 5 6 0 6 7 0 7 4 0 0 8 1 1 9 1 8 9 0 4 10 1 8 10 0 5 11 1 10 11 0 9 11 0
		 2 12 1 9 12 0 6 13 1 11 13 0 12 13 0 3 14 1 12 14 0 7 15 1 13 15 0 14 15 0 14 8 0
		 15 10 0 16 18 0 17 19 0 17 20 0 19 21 0 20 21 0 22 16 0 22 23 0 23 18 0 19 18 0 21 23 0
		 20 22 0 17 16 0 21 24 1 23 25 1 24 25 0 18 26 1 25 26 0 19 27 1 27 26 0 27 24 0 17 28 1
		 16 29 1 28 29 0 22 30 1 30 29 0 20 31 1 31 30 0 28 31 0 28 27 0 29 26 0 30 25 0 31 24 0
		 32 33 0 34 33 0 35 34 0 32 35 0 36 37 0 37 38 0 39 38 0 39 36 0 40 42 0 41 43 0 41 44 0
		 43 45 0 44 45 0 46 40 0 46 47 0 47 42 0 43 42 0 45 47 0 44 46 0 41 40 0 45 48 1 47 49 1
		 48 49 0 42 50 1 49 50 0 43 51 1 51 50 0 51 48 0 41 52 1 40 53 1 52 53 0 46 54 1 54 53 0
		 44 55 1 55 54 0 52 55 0 52 51 0 53 50 0 54 49 0 55 48 0 56 57 0 58 57 0 59 58 0 56 59 0
		 60 61 0 61 62 0 63 62 0 63 60 0;
	setAttr -s 52 -ch 208 ".fc[0:51]" -type "polyFaces" 
		f 4 -15 16 18 -20
		mu 0 4 16 17 18 19
		f 4 -22 19 23 -25
		mu 0 4 20 16 19 21
		f 4 -27 24 28 -30
		mu 0 4 22 20 21 23
		f 4 -17 -31 29 31
		mu 0 4 18 17 22 23
		f 4 5 -9 -1 1
		mu 0 4 8 11 10 9
		f 4 6 -10 -6 2
		mu 0 4 12 13 11 8
		f 4 7 -11 -7 3
		mu 0 4 14 15 13 12
		f 4 -12 -8 4 0
		mu 0 4 10 15 14 9
		f 4 -2 12 14 -14
		mu 0 4 1 0 17 16
		f 4 8 17 -19 -16
		mu 0 4 4 5 19 18
		f 4 -3 13 21 -21
		mu 0 4 2 1 16 20
		f 4 9 22 -24 -18
		mu 0 4 5 6 21 19
		f 4 -4 20 26 -26
		mu 0 4 3 2 20 22
		f 4 10 27 -29 -23
		mu 0 4 6 7 23 21
		f 4 -5 25 30 -13
		mu 0 4 0 3 22 17
		f 4 11 15 -32 -28
		mu 0 4 7 4 18 23
		f 4 -39 37 32 -40
		mu 0 4 24 25 26 27
		f 4 -34 34 36 -36
		mu 0 4 28 29 30 31
		f 4 42 38 -42 -37
		mu 0 4 30 25 24 31
		f 4 -44 33 40 -33
		mu 0 4 26 29 28 27
		f 4 41 45 -47 -45
		mu 0 4 31 24 32 33
		f 4 39 47 -49 -46
		mu 0 4 24 27 34 32
		f 4 -41 49 50 -48
		mu 0 4 27 28 35 34
		f 4 35 44 -52 -50
		mu 0 4 28 31 33 35
		f 4 43 53 -55 -53
		mu 0 4 29 26 36 37
		f 4 -38 55 56 -54
		mu 0 4 26 25 38 36
		f 4 -43 57 58 -56
		mu 0 4 25 30 39 38
		f 4 -35 52 59 -58
		mu 0 4 30 29 37 39
		f 4 -51 -61 54 61
		mu 0 4 34 35 37 36
		f 4 -62 -57 62 48
		mu 0 4 34 36 38 32
		f 4 -63 -59 63 46
		mu 0 4 32 38 39 33
		f 4 -64 -60 60 51
		mu 0 4 33 39 37 35
		f 4 64 -66 -67 -68
		mu 0 4 40 41 42 43
		f 4 68 69 -71 71
		mu 0 4 44 45 46 47
		f 4 -79 77 72 -80
		mu 0 4 48 49 50 51
		f 4 -74 74 76 -76
		mu 0 4 52 53 54 55
		f 4 82 78 -82 -77
		mu 0 4 54 49 48 55
		f 4 -84 73 80 -73
		mu 0 4 50 53 52 51
		f 4 81 85 -87 -85
		mu 0 4 55 48 56 57
		f 4 79 87 -89 -86
		mu 0 4 48 51 58 56
		f 4 -81 89 90 -88
		mu 0 4 51 52 59 58
		f 4 75 84 -92 -90
		mu 0 4 52 55 57 59
		f 4 83 93 -95 -93
		mu 0 4 53 50 60 61
		f 4 -78 95 96 -94
		mu 0 4 50 49 62 60
		f 4 -83 97 98 -96
		mu 0 4 49 54 63 62
		f 4 -75 92 99 -98
		mu 0 4 54 53 61 63
		f 4 -91 -101 94 101
		mu 0 4 58 59 61 60
		f 4 -102 -97 102 88
		mu 0 4 58 60 62 56
		f 4 -103 -99 103 86
		mu 0 4 56 62 63 57
		f 4 -104 -100 100 91
		mu 0 4 57 63 61 59
		f 4 104 -106 -107 -108
		mu 0 4 64 65 66 67
		f 4 108 109 -111 111
		mu 0 4 68 69 70 71;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_DoorA";
	rename -uid "2DE3EF49-4C8B-452A-3B1E-C9AA63D88430";
createNode mesh -n "SM_Flat_Apartment_DoorAShape" -p "SM_Flat_Apartment_DoorA";
	rename -uid "07AC9C04-44DE-746B-FEA9-25B7941E36C8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0.5 1.6443481 99.5 0.5 
		1.6443481 0.5 224.5 1.6443481 99.5 224.5 1.6443481 0.5 224.5 -1.6443481 99.5 224.5 
		-1.6443481 0.5 0.5 -1.6443481 99.5 0.5 -1.6443481;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_DoorB";
	rename -uid "83AFFCDE-4961-10E7-671A-27960D605A41";
createNode mesh -n "SM_Flat_Apartment_DoorBShape" -p "SM_Flat_Apartment_DoorB";
	rename -uid "1E7047B9-4B6B-6271-AE11-1BB90DBB69C5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.5 0.5 1.6443481 147.29855 
		0.5 1.6443481 0.5 224.5 1.6443481 147.29855 224.5 1.6443481 0.5 224.5 -1.6443481 
		147.29855 224.5 -1.6443481 0.5 0.5 -1.6443481 147.29855 0.5 -1.6443481;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallA";
	rename -uid "D2A233DA-41AD-1C55-502B-19AE8846BD1A";
	setAttr ".t" -type "double3" 0 0 -10 ;
createNode mesh -n "SM_Flat_Apartment_WallAShape" -p "SM_Flat_Apartment_WallA";
	rename -uid "B2DA3ED3-45F8-BE49-781E-21870C68D2C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  200 0 0 200 0 0 200 0 0 200 
		0 0 200 0 0 200 0 0 200 0 0 200 0 0;
	setAttr -s 8 ".vt[0:7]"  -200 0 10 200 0 10 -200 400 10 200 400 10
		 -200 400 -10 200 400 -10 -200 0 -10 200 0 -10;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallB";
	rename -uid "54AAA9F7-4E5E-FDCD-AA23-868DD8E67B73";
	setAttr ".rp" -type "double3" 200 200 -200 ;
	setAttr ".sp" -type "double3" 200 200 -200 ;
createNode mesh -n "SM_Flat_Apartment_WallBShape" -p "SM_Flat_Apartment_WallB";
	rename -uid "04E7A9AA-430C-9A9B-1C5E-E5809B9FF313";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[2]" "f[7]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[3]" "f[8]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "f[4]" "f[9]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[1]" "f[6]";
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.375 0 0.625 0 0.625 0.25 0.375 0.25 0.625 0.5 0.375 0.5 0.625 0.75 0.375
		 0.75 0.625 1 0.375 1 0.875 0 0.875 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0 0 0 400 0 0 0 400 0 400 400 0 20 400 -20
		 400 400 -20 20 0 -20 400 0 -20 20 0 -400 20 400 -400 0 400 -400 0 0 -400;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 4 9 0 2 10 0 0 11 0 8 9 0 9 10 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 12 16 -14 8
		mu 0 4 12 13 14 15
		f 4 13 17 -15 6
		mu 0 4 15 14 16 17
		f 4 14 18 -16 4
		mu 0 4 17 16 18 19
		f 4 15 19 -13 10
		mu 0 4 19 18 20 21
		f 4 -20 -19 -18 -17
		mu 0 4 13 22 23 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallDoorA";
	rename -uid "BCE73CD8-4D42-0393-7383-868CAC7DCE1F";
createNode mesh -n "SM_Flat_Apartment_WallDoorAShape" -p "SM_Flat_Apartment_WallDoorA";
	rename -uid "64693B8C-49DE-8F2A-363C-4F8BD7FBE328";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[6:7]" "f[9:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[4]" "f[8:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.46875 0.5 0.46875 0.125 0.46875 0.625 0.46875 0.75 0.53125 0.125 0.53125
		 0.5 0.53125 0.75 0.53125 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  200 200 -15 200 200 -15 200 
		200 -15 200 200 -15 200 200 15 200 200 15 200 200 15 200 200 15 200 200 -15 200 225 
		-15 200 225 15 200 200 15 200 225 -15 200 200 -15 200 200 15 200 225 15;
	setAttr -s 16 ".vt[0:15]"  -200 -200 25 200 -200 25 -200 200 25 200 200 25
		 -200 200 -25 200 200 -25 -200 -200 -25 200 -200 -25 -50 -200 25 -50 0 25 -50 0 -25
		 -50 -200 -25 49.99999237 0 25 50 -200 25 50 -200 -25 50 0 -25;
	setAttr -s 28 ".ed[0:27]"  0 8 0 6 11 0 0 2 0 2 4 0 3 5 0 4 6 0 6 0 0
		 7 1 0 5 7 0 1 3 0 2 3 0 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0
		 13 14 0 14 15 0 2 9 1 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 0 13 -23
		mu 0 4 2 0 12 13
		f 4 14 -2 -6 23
		mu 0 4 14 15 6 4
		f 4 -8 -9 -5 -10
		mu 0 4 1 8 9 3
		f 4 6 2 3 5
		mu 0 4 10 0 2 11
		f 4 19 17 9 24
		mu 0 4 16 17 1 3
		f 4 4 -12 -4 10
		mu 0 4 3 5 4 2
		f 4 25 -13 -24 11
		mu 0 4 5 19 14 4
		f 4 8 -19 21 -26
		mu 0 4 5 7 18 19
		f 4 -25 -11 22 -17
		mu 0 4 16 3 2 13
		f 4 -14 -16 -15 -27
		mu 0 4 13 12 15 14
		f 4 -20 27 -22 -21
		mu 0 4 17 16 19 18
		f 4 12 -28 16 26
		mu 0 4 14 19 16 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		12 0 
		17 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallDoorB";
	rename -uid "CCF5208D-489B-BF2D-A04D-E095F0B978EC";
createNode mesh -n "SM_Flat_Apartment_WallDoorBShape" -p "SM_Flat_Apartment_WallDoorB";
	rename -uid "03F69A74-4067-3A5F-42B4-60B51BCBF79A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[6:7]" "f[9:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[4]" "f[8:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.46875 0.5 0.46875 0.125 0.46875 0.625 0.46875 0.75 0.53125 0.125 0.53125
		 0.5 0.53125 0.75 0.53125 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  200 200 -15 200 200 -15 200 
		200 -15 200 200 -15 200 200 15 200 200 15 200 200 15 200 200 15 76.100739 200 -15 
		76.100739 225 -15 76.100739 225 15 76.100739 200 15 76.100739 225 -15 76.100739 200 
		-15 76.100739 200 15 76.100739 225 15;
	setAttr -s 16 ".vt[0:15]"  -200 -200 25 200 -200 25 -200 200 25 200 200 25
		 -200 200 -25 200 200 -25 -200 -200 -25 200 -200 -25 -50 -200 25 -50 0 25 -50 0 -25
		 -50 -200 -25 49.99999237 0 25 50 -200 25 50 -200 -25 50 0 -25;
	setAttr -s 28 ".ed[0:27]"  0 8 0 6 11 0 0 2 0 2 4 0 3 5 0 4 6 0 6 0 0
		 7 1 0 5 7 0 1 3 0 2 3 0 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0
		 13 14 0 14 15 0 2 9 1 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 0 13 -23
		mu 0 4 2 0 12 13
		f 4 14 -2 -6 23
		mu 0 4 14 15 6 4
		f 4 -8 -9 -5 -10
		mu 0 4 1 8 9 3
		f 4 6 2 3 5
		mu 0 4 10 0 2 11
		f 4 19 17 9 24
		mu 0 4 16 17 1 3
		f 4 4 -12 -4 10
		mu 0 4 3 5 4 2
		f 4 25 -13 -24 11
		mu 0 4 5 19 14 4
		f 4 8 -19 21 -26
		mu 0 4 5 7 18 19
		f 4 -25 -11 22 -17
		mu 0 4 16 3 2 13
		f 4 -14 -16 -15 -27
		mu 0 4 13 12 15 14
		f 4 -20 27 -22 -21
		mu 0 4 17 16 19 18
		f 4 12 -28 16 26
		mu 0 4 14 19 16 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		12 0 
		17 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallDoorC";
	rename -uid "8FB2A496-4C78-A4FA-C584-6EB09863B3E9";
createNode mesh -n "SM_Flat_Apartment_WallDoorCShape" -p "SM_Flat_Apartment_WallDoorC";
	rename -uid "C1D45A66-4DB4-B424-2F88-11B01B32C917";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[6:7]" "f[9:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[4]" "f[8:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".pv" -type "double2" 0.5 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.46875 0.5 0.46875 0.125 0.46875 0.625 0.46875 0.75 0.53125 0.125 0.53125
		 0.5 0.53125 0.75 0.53125 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  600 200 -35 -200 200 -35 
		600 200 -35 -200 200 -35 600 200 35 -200 200 35 600 200 35 -200 200 35 423.89929 
		200 -35 423.89929 225 -35 423.89929 225 35 423.89929 200 35 223.89929 225 -35 223.89929 
		200 -35 223.89929 200 35 223.89929 225 35;
	setAttr -s 16 ".vt[0:15]"  -200 -200 25 200 -200 25 -200 200 25 200 200 25
		 -200 200 -25 200 200 -25 -200 -200 -25 200 -200 -25 -50 -200 25 -50 0 25 -50 0 -25
		 -50 -200 -25 49.99999237 0 25 50 -200 25 50 -200 -25 50 0 -25;
	setAttr -s 28 ".ed[0:27]"  0 8 0 6 11 0 0 2 0 2 4 0 3 5 0 4 6 0 6 0 0
		 7 1 0 5 7 0 1 3 0 2 3 0 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0
		 13 14 0 14 15 0 2 9 1 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 0 13 -23
		mu 0 4 2 0 12 13
		f 4 14 -2 -6 23
		mu 0 4 14 15 6 4
		f 4 -8 -9 -5 -10
		mu 0 4 1 8 9 3
		f 4 6 2 3 5
		mu 0 4 10 0 2 11
		f 4 19 17 9 24
		mu 0 4 16 17 1 3
		f 4 4 -12 -4 10
		mu 0 4 3 5 4 2
		f 4 25 -13 -24 11
		mu 0 4 5 19 14 4
		f 4 8 -19 21 -26
		mu 0 4 5 7 18 19
		f 4 -25 -11 22 -17
		mu 0 4 16 3 2 13
		f 4 -14 -16 -15 -27
		mu 0 4 13 12 15 14
		f 4 -20 27 -22 -21
		mu 0 4 17 16 19 18
		f 4 12 -28 16 26
		mu 0 4 14 19 16 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		12 0 
		17 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallDoorD";
	rename -uid "8B2A5859-4F78-8610-5CFA-5C98B5196DC4";
createNode mesh -n "SM_Flat_Apartment_WallDoorDShape" -p "SM_Flat_Apartment_WallDoorD";
	rename -uid "CB6E351B-471C-9799-A886-D48E653F8E4C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[6:7]" "f[9:11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[4]" "f[8:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".pv" -type "double2" 0.53125 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.875 0 0.875 0.25 0.125
		 0 0.125 0.25 0.46875 0.5 0.46875 0.125 0.46875 0.625 0.46875 0.75 0.53125 0.125 0.53125
		 0.5 0.53125 0.75 0.53125 0.625;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  200 200 -15 200 200 -15 200 
		200 -15 200 200 -15 200 200 15 200 200 15 200 200 15 200 200 15 176.10074 200 -15 
		176.10074 225 -15 176.10074 225 15 176.10074 200 15 223.89929 225 -15 223.89929 200 
		-15 223.89929 200 15 223.89929 225 15;
	setAttr -s 16 ".vt[0:15]"  -200 -200 25 200 -200 25 -200 200 25 200 200 25
		 -200 200 -25 200 200 -25 -200 -200 -25 200 -200 -25 -50 -200 25 -50 0 25 -50 0 -25
		 -50 -200 -25 49.99999237 0 25 50 -200 25 50 -200 -25 50 0 -25;
	setAttr -s 28 ".ed[0:27]"  0 8 0 6 11 0 0 2 0 2 4 0 3 5 0 4 6 0 6 0 0
		 7 1 0 5 7 0 1 3 0 2 3 0 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0
		 13 14 0 14 15 0 2 9 1 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 -3 0 13 -23
		mu 0 4 2 0 12 13
		f 4 14 -2 -6 23
		mu 0 4 14 15 6 4
		f 4 -8 -9 -5 -10
		mu 0 4 1 8 9 3
		f 4 6 2 3 5
		mu 0 4 10 0 2 11
		f 4 19 17 9 24
		mu 0 4 16 17 1 3
		f 4 4 -12 -4 10
		mu 0 4 3 5 4 2
		f 4 25 -13 -24 11
		mu 0 4 5 19 14 4
		f 4 8 -19 21 -26
		mu 0 4 5 7 18 19
		f 4 -25 -11 22 -17
		mu 0 4 16 3 2 13
		f 4 -14 -16 -15 -27
		mu 0 4 13 12 15 14
		f 4 -20 27 -22 -21
		mu 0 4 17 16 19 18
		f 4 12 -28 16 26
		mu 0 4 14 19 16 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		12 0 
		17 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallWindowA";
	rename -uid "C63D25C3-4863-C0BD-EEBB-AB8A5CEE8332";
createNode mesh -n "SM_Flat_Apartment_WallWindowAShape" -p "SM_Flat_Apartment_WallWindowA";
	rename -uid "2742C2C5-424C-3A18-A787-1FA8839AF353";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:15]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[5]" "f[10:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[7]" "f[14:15]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "f[6]" "f[12:13]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 2 "f[4]" "f[8:9]";
	setAttr ".pv" -type "double2" 0.375 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0 1 0.75 1 0 0.5
		 0.75 0.5 0 0.5 0.75 0.5 0.75 1 0 1 0.375 0.25 0.625 0.25 0.75 0.375 0.25 0.375 0.25
		 0.375 0.75 0.375 0.625 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  200 0 0 200 0 0 200 0 0 200 
		0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 
		0 200 0 0 200 0 0;
	setAttr -s 16 ".vt[0:15]"  -75 200 10 75 200 10 -75 99.99997711 10 75 99.99997711 10
		 -75 99.99997711 -10 75 99.99997711 -10 75 200 -10 -75 200 -10 -200 0 10 200 0 10
		 -200 400 10 200 400 10 -200 400 -10 200 400 -10 -200 0 -10 200 0 -10;
	setAttr -s 32 ".ed[0:31]"  0 1 0 2 0 0 3 1 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 5 6 0 0 7 0 7 6 0 4 7 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 10 12 0
		 11 13 0 12 14 0 13 15 0 14 8 0 15 9 0 7 12 0 6 13 0 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0
		 3 9 0;
	setAttr -s 16 -ch 64 ".fc[0:15]" -type "polyFaces" 
		f 4 3 5 -7 -5
		mu 0 4 2 3 5 4
		f 4 2 7 -9 -6
		mu 0 4 3 1 6 5
		f 4 -1 9 10 -8
		mu 0 4 1 0 7 6
		f 4 -2 4 11 -10
		mu 0 4 0 2 4 7
		f 4 13 19 -15 -19
		mu 0 4 8 9 10 11
		f 4 15 23 -13 -23
		mu 0 4 12 13 14 15
		f 4 -24 -22 -20 -18
		mu 0 4 14 13 10 9
		f 4 22 16 18 20
		mu 0 4 12 15 8 11
		f 4 -11 24 14 -26
		mu 0 4 6 7 11 10
		f 4 0 26 -14 -28
		mu 0 4 0 1 9 8
		f 4 6 28 -16 -30
		mu 0 4 4 5 13 12
		f 4 -4 30 12 -32
		mu 0 4 3 2 15 14
		f 4 8 25 21 -29
		mu 0 4 5 6 10 13
		f 4 -3 31 17 -27
		mu 0 4 1 3 14 9
		f 4 -12 29 -21 -25
		mu 0 4 7 4 12 11
		f 4 1 27 -17 -31
		mu 0 4 2 0 8 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 6 
		10 0 
		11 0 
		12 0 
		13 0 
		14 0 
		15 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallWindowB";
	rename -uid "56E1504A-47DA-2ACE-674B-929AADAAFC05";
createNode mesh -n "SM_Flat_Apartment_WallWindowBShape" -p "SM_Flat_Apartment_WallWindowB";
	rename -uid "3BB01571-4DEC-C9B2-1EB1-CC915754CF63";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "e[0]" "e[26]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "f[1]" "f[5:6]" "f[9]" "f[13]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[2]" "f[7:8]" "f[11]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0:1]" "e[26]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[0]" "f[3:4]" "f[10]" "f[12]";
	setAttr ".pv" -type "double2" 0 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0.25 0.625
		 0.25 0.75 0.375 0.25 0.375 0.25 0.375 0.75 0.375 0.625 0.5 0.375 0.5 0.75 1 0 1 0
		 1 0.75 1 0 0.5 0.75 0.5 0.75 0.5 0 0.5 0.375 1 0.375 1 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  200 0 0 200 0 0 200 0 0 200 
		0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 
		0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0 200 0 0;
	setAttr -s 20 ".vt[0:19]"  125 200 10 200 200 10 125 99.99997711 10
		 200 99.99997711 10 125 99.99997711 -10 200 99.99997711 -10 200 200 -10 125 200 -10
		 -200 0 10 200 0 10 -200 400 10 200 400 10 -200 400 -10 200 400 -10 -200 0 -10 200 0 -10
		 200 200 10 200 200 -10 200 99.99997711 10 200 99.99997711 -10;
	setAttr -s 34 ".ed[0:33]"  0 16 0 2 0 0 2 18 0 4 19 0 7 17 0 4 7 0 8 9 0
		 10 11 0 12 13 0 14 15 0 8 10 0 10 12 0 11 13 0 12 14 0 14 8 0 15 9 0 7 12 0 6 13 0
		 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0 3 9 0 0 7 0 2 4 0 16 1 0 17 6 0 16 17 0 18 3 0
		 19 5 0 18 19 0 6 1 0 5 3 0;
	setAttr -s 14 -ch 60 ".fc[0:13]" -type "polyFaces" 
		f 4 7 12 -9 -12
		mu 0 4 0 1 2 3
		f 4 9 15 -7 -15
		mu 0 4 4 5 6 7
		f 4 14 10 11 13
		mu 0 4 4 7 0 3
		f 5 -28 -5 16 8 -18
		mu 0 5 8 17 9 3 2
		f 5 0 26 18 -8 -20
		mu 0 5 10 16 11 1 0
		f 5 3 30 20 -10 -22
		mu 0 5 12 19 13 5 4
		f 5 -30 -3 22 6 -24
		mu 0 5 14 18 15 7 6
		f 4 -6 21 -14 -17
		mu 0 4 9 12 4 3
		f 4 1 19 -11 -23
		mu 0 4 15 10 0 7
		f 4 2 31 -4 -26
		mu 0 4 15 18 19 12
		f 4 -29 -1 24 4
		mu 0 4 17 16 10 9
		f 4 -2 25 5 -25
		mu 0 4 10 15 12 9
		f 4 17 -13 -19 -33
		mu 0 4 8 2 1 11
		f 4 -21 33 23 -16
		mu 0 4 5 13 14 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallWindowC";
	rename -uid "16E62064-48AC-8A92-DBA1-C0A2F4DD945D";
createNode mesh -n "SM_Flat_Apartment_WallWindowCShape" -p "SM_Flat_Apartment_WallWindowC";
	rename -uid "7DE73F22-403B-CA77-5D77-C4A3636E51EB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "e[0]" "e[26]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 4 "f[1]" "f[5:6]" "f[9]" "f[13]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[2]" "f[7:8]" "f[11]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0:1]" "e[26]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 4 "f[0]" "f[3:4]" "f[10]" "f[12]";
	setAttr ".pv" -type "double2" 0 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0.25 0.625
		 0.25 0.75 0.375 0.25 0.375 0.25 0.375 0.75 0.375 0.625 0.5 0.375 0.5 0.75 1 0 1 0
		 1 0.75 1 0 0.5 0.75 0.5 0.75 0.5 0 0.5 0.375 1 0.375 1 0.375 0.5 0.375 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -50 0 -20 -200 0 -20 -50 
		0 -20 -200 0 -20 -50 0 20 -200 0 20 -200 0 20 -50 0 20 600 0 -20 -200 0 -20 600 0 
		-20 -200 0 -20 600 0 20 -200 0 20 600 0 20 -200 0 20 -200 0 -20 -200 0 20 -200 0 
		-20 -200 0 20;
	setAttr -s 20 ".vt[0:19]"  125 200 10 200 200 10 125 99.99997711 10
		 200 99.99997711 10 125 99.99997711 -10 200 99.99997711 -10 200 200 -10 125 200 -10
		 -200 0 10 200 0 10 -200 400 10 200 400 10 -200 400 -10 200 400 -10 -200 0 -10 200 0 -10
		 200 200 10 200 200 -10 200 99.99997711 10 200 99.99997711 -10;
	setAttr -s 34 ".ed[0:33]"  0 16 0 2 0 0 2 18 0 4 19 0 7 17 0 4 7 0 8 9 0
		 10 11 0 12 13 0 14 15 0 8 10 0 10 12 0 11 13 0 12 14 0 14 8 0 15 9 0 7 12 0 6 13 0
		 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0 3 9 0 0 7 0 2 4 0 16 1 0 17 6 0 16 17 0 18 3 0
		 19 5 0 18 19 0 6 1 0 5 3 0;
	setAttr -s 14 -ch 60 ".fc[0:13]" -type "polyFaces" 
		f 4 7 12 -9 -12
		mu 0 4 0 1 2 3
		f 4 9 15 -7 -15
		mu 0 4 4 5 6 7
		f 4 14 10 11 13
		mu 0 4 4 7 0 3
		f 5 -28 -5 16 8 -18
		mu 0 5 8 17 9 3 2
		f 5 0 26 18 -8 -20
		mu 0 5 10 16 11 1 0
		f 5 3 30 20 -10 -22
		mu 0 5 12 19 13 5 4
		f 5 -30 -3 22 6 -24
		mu 0 5 14 18 15 7 6
		f 4 -6 21 -14 -17
		mu 0 4 9 12 4 3
		f 4 1 19 -11 -23
		mu 0 4 15 10 0 7
		f 4 2 31 -4 -26
		mu 0 4 15 18 19 12
		f 4 -29 -1 24 4
		mu 0 4 17 16 10 9
		f 4 -2 25 5 -25
		mu 0 4 10 15 12 9
		f 4 17 -13 -19 -33
		mu 0 4 8 2 1 11
		f 4 -21 33 23 -16
		mu 0 4 5 13 14 6;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorConcrete100x100";
	rename -uid "38A4E731-4B70-32A7-1D10-D9BC2CBF8A9E";
createNode mesh -n "SM_Flat_Apartment_FloorConcrete100x100Shape" -p "SM_Flat_Apartment_FloorConcrete100x100";
	rename -uid "BAB843E5-4176-C550-E5D4-50941590FE95";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 0 1 0 1
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  50 0 -50 50 0 -50 50 0 -50 
		50 0 -50 50 0 -50 50 0 -50;
	setAttr -s 6 ".vt[0:5]"  -50 0 50 50 0 50 -50 10 50 50 10 50 50 10 -50
		 -50 10 -50;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 3 4 0 5 4 0 2 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 3 4 -6 -7
		mu 0 4 2 3 4 5
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorConcrete200x200";
	rename -uid "4E97674E-4999-ED92-49E1-A4956E7D1965";
createNode mesh -n "SM_Flat_Apartment_FloorConcrete200x200Shape" -p "SM_Flat_Apartment_FloorConcrete200x200";
	rename -uid "91915B89-4CB7-AC4A-742F-4095EAFEC103";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 0 0 1 0 1 0 1
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  -104.8385 0 -46.124756 -104.8385 
		0 -46.124756 -104.8385 0 -46.124756 -104.8385 0 -46.124756 -104.8385 0 -46.124756 
		-104.8385 0 -46.124756;
	setAttr -s 6 ".vt[0:5]"  104.83850098 0 46.12476349 104.83850098 10 46.12476349
		 304.83850098 0 46.12476349 304.83850098 10 46.12476349 304.83850098 10 -153.87524414
		 104.83850098 10 -153.87524414;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 3 0 0 2 0 2 3 0 3 4 0 5 4 0 1 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 2 1 0 3
		f 4 4 -6 -7 1
		mu 0 4 2 4 5 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorConcrete400x400";
	rename -uid "169BC955-4A1A-4B85-99CE-07B307F7259B";
createNode mesh -n "SM_Flat_Apartment_FloorConcrete400x400Shape" -p "SM_Flat_Apartment_FloorConcrete400x400";
	rename -uid "54FA9CB5-4CBE-2097-8369-CE998B7CACD6";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "rim";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 1 1 1 0 1 0 0 1 0
		 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  200 0 -200 200 0 -200 200 
		0 -200 200 0 -200 200 0 -200 200 0 -200;
	setAttr -s 6 ".vt[0:5]"  200 10 -200 200 0 200 200 10 200 -200 10 -200
		 -200 0 200 -200 10 200;
	setAttr -s 7 ".ed[0:6]"  2 0 0 4 1 0 1 2 0 3 0 0 4 5 0 5 2 0 5 3 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 -4 -7 5
		mu 0 4 1 0 3 4
		f 4 -6 -5 1 2
		mu 0 4 1 4 5 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorConcrete390x390";
	rename -uid "5EB02BA7-4914-F69A-5A81-46BC377D8934";
createNode mesh -n "SM_Flat_Apartment_FloorConcrete390x390Shape" -p "SM_Flat_Apartment_FloorConcrete390x390";
	rename -uid "F348B9B3-44EA-2AC1-5D79-9BA556881CCE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0]" "e[2]";
	setAttr ".pv" -type "double2" 0.062266699969768524 0.52568249963223934 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 1 0.0622667 1 0.0622667
		 0.051364999 1 0.051364999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  180 0 -179.45399 175.09332 
		0 -179.45399 175.09332 0 -179.45399 180 0 -179.45399;
	setAttr -s 4 ".vt[0:3]"  200 10 -200 -175.093322754 10 -200 -175.093322754 10 179.45399475
		 199.99998474 10 179.45399475;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 3 2 -1
		mu 0 4 1 2 3 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorConcrete400x390";
	rename -uid "4706880C-4933-4A67-0E8A-5782EF6C619A";
createNode mesh -n "SM_Flat_Apartment_FloorConcrete400x390Shape" -p "SM_Flat_Apartment_FloorConcrete400x390";
	rename -uid "8DF9696E-4436-3B22-4775-4A8BAC7562D0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "rim";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 1 0 1 1 0.050000001
		 0 0.050000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  400 10 -400 0 10 -400 400 10 -20 0 10 -20;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 0 0 3 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -4 1 -1 -3
		mu 0 4 3 2 0 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorTiles100x100";
	rename -uid "CFDC1603-4A1D-2A94-BE0E-9BB18DA13F15";
createNode mesh -n "SM_Flat_Apartment_FloorTiles100x100Shape" -p "SM_Flat_Apartment_FloorTiles100x100";
	rename -uid "3FE292DE-466E-D079-1112-CD9B498BC0AD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 1 0 0 0 1 0 1
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  50 0 -50 50 0 -50 50 0 -50 
		50 0 -50 50 0 -50 50 0 -50;
	setAttr -s 6 ".vt[0:5]"  -50 0 50 50 0 50 -50 10 50 50 10 50 50 10 -50
		 -50 10 -50;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 3 4 0 5 4 0 2 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 3 4 -6 -7
		mu 0 4 2 3 4 5
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorTiles200x200";
	rename -uid "023FB2E4-4311-185A-200E-988225472C5D";
createNode mesh -n "SM_Flat_Apartment_FloorTiles200x200Shape" -p "SM_Flat_Apartment_FloorTiles200x200";
	rename -uid "77940CD2-4C79-184E-D7E1-7B81CEE2839B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 0 0 0 0 1 0 1 0 1
		 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  -104.8385 0 -46.124756 -104.8385 
		0 -46.124756 -104.8385 0 -46.124756 -104.8385 0 -46.124756 -104.8385 0 -46.124756 
		-104.8385 0 -46.124756;
	setAttr -s 6 ".vt[0:5]"  104.83850098 0 46.12476349 104.83850098 10 46.12476349
		 304.83850098 0 46.12476349 304.83850098 10 46.12476349 304.83850098 10 -153.87524414
		 104.83850098 10 -153.87524414;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 3 0 0 2 0 2 3 0 3 4 0 5 4 0 1 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 2 1 0 3
		f 4 4 -6 -7 1
		mu 0 4 2 4 5 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorTiles400x400";
	rename -uid "902F2B10-4E44-EFED-7D97-638A58F112FF";
createNode mesh -n "SM_Flat_Apartment_FloorTiles400x400Shape" -p "SM_Flat_Apartment_FloorTiles400x400";
	rename -uid "DE9A4ED9-457B-CC9D-E228-26BB5489D6F1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "rim";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 6 ".uvst[0].uvsp[0:5]" -type "float2" 1 1 1 0 1 0 0 1 0
		 0 0 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt[0:5]" -type "float3"  200 0 -200 200 0 -200 200 
		0 -200 200 0 -200 200 0 -200 200 0 -200;
	setAttr -s 6 ".vt[0:5]"  200 10 -200 200 0 200 200 10 200 -200 10 -200
		 -200 0 200 -200 10 200;
	setAttr -s 7 ".ed[0:6]"  2 0 0 4 1 0 1 2 0 3 0 0 4 5 0 5 2 0 5 3 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 -4 -7 5
		mu 0 4 1 0 3 4
		f 4 -6 -5 1 2
		mu 0 4 1 4 5 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorTiles400x390";
	rename -uid "BECE4996-4CCF-1E83-2092-F497CA5D8EE3";
createNode mesh -n "SM_Flat_Apartment_FloorTiles400x390Shape" -p "SM_Flat_Apartment_FloorTiles400x390";
	rename -uid "9A191715-4323-0F6F-26DA-F38E83FBFDD1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 2 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "rim";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 1 0 1 1 0.050000001
		 0 0.050000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  400 10 -400 0 10 -400 400 10 -20 0 10 -20;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 0 0 3 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -4 1 -1 -3
		mu 0 4 3 2 0 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_FloorTiles390x390";
	rename -uid "9FC92627-48B7-A882-AE19-2C95C6A0CEDA";
createNode mesh -n "SM_Flat_Apartment_FloorTiles390x390Shape" -p "SM_Flat_Apartment_FloorTiles390x390";
	rename -uid "2ED42AEA-4BC4-E814-45C5-0A8E126B9F32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 2 "e[0]" "e[2]";
	setAttr ".pv" -type "double2" 0.062266699969768524 0.52568249963223934 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 1 0.0622667 1 0.0622667
		 0.051364999 1 0.051364999;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  180 0 -179.45399 175.09332 
		0 -179.45399 175.09332 0 -179.45399 180 0 -179.45399;
	setAttr -s 4 ".vt[0:3]"  200 10 -200 -175.093322754 10 -200 -175.093322754 10 179.45399475
		 199.99998474 10 179.45399475;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 3 2 -1
		mu 0 4 1 2 3 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_Roof100x100";
	rename -uid "13BD8AE5-4C94-201B-3A17-D2AF6AE5AC56";
createNode mesh -n "SM_Flat_Apartment_Roof100x100Shape" -p "SM_Flat_Apartment_Roof100x100";
	rename -uid "58F05F8E-410F-F85E-6189-8A93D3ED020B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  50.000031 300 -50 50.000031 
		300 -50 50.000031 300 -50 50.000031 300 -50;
	setAttr -s 4 ".vt[0:3]"  -50 0 50 50 0 50 -50 0 -50 50 0 -50;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_Roof200x200";
	rename -uid "E72D0E84-463A-5F14-D283-F4A856D601F6";
createNode mesh -n "SM_Flat_Apartment_Roof200x200Shape" -p "SM_Flat_Apartment_Roof200x200";
	rename -uid "B40834C9-4921-6353-E2B8-DFAC4E50ABC3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 0 0 1 0 0 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  100 0 -100 100 0 -100 100 
		0 -100 100 0 -100;
	setAttr -s 4 ".vt[0:3]"  100 300 100 -100 300 -100 -100 300 100 100 300 -100;
	setAttr -s 4 ".ed[0:3]"  0 3 0 2 1 0 2 0 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -1 -3 1
		mu 0 4 1 3 0 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_Roof400x400";
	rename -uid "7E8B6E02-459C-03B4-6222-74AF258B40F4";
createNode mesh -n "SM_Flat_Apartment_Roof400x400Shape" -p "SM_Flat_Apartment_Roof400x400";
	rename -uid "E54E1DE3-45EC-43AA-38D0-04B32700DF04";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "e[1]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[3]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:3]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 1 1 0 1 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  200 0 -200 200 0 -200 200 
		0 -200 200 0 -200;
	setAttr -s 4 ".vt[0:3]"  200 300 -200 -200 300 -200 -200 300 200 200 300 200;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 2 3 0 3 0 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -4 -3
		mu 0 4 2 1 0 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_StairsMiddle";
	rename -uid "372C24B5-44A8-2DB3-67D9-7BA50105916A";
createNode mesh -n "SM_Flat_Apartment_StairsMiddleShape" -p "SM_Flat_Apartment_StairsMiddle";
	rename -uid "D374D238-42A2-8E58-F6F2-4C81F4C0E977";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:100]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[4]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[4:5]";
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 251 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.57893968 0.74419063 0 0 0
		 1 1 1 0 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1
		 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1
		 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0.30000001 1
		 0.11698201 0.85073596 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001
		 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001
		 1 0 1 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.16208012
		 0 0.031825501 0 0.30000001 0 0.30000001 1 0 0 0.30000001 0 0.30000001 0 0 0 0 0 0.30000001
		 0 0 0 0.30000001 0 0 0 0.30000001 0 0.14443591 0.11619214 0.30000001 0 0 0 0 0 0.30000001
		 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001
		 0 0 0 0.30000001 0 0 0 -0.587892 0 0.17883314 0 0.06414447 0.19411203 1.000000119209
		 -4.2851713e-09 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0.99833649 14.3695116 0
		 0 3.99833274 16.6386776 0 0 6.99830246 18.90785599 0 0 9.99832344 21.17700577 0 0
		 12.99829578 23.44619942 0 0 15.99831295 25.71533394 0 0 18.99831009 27.98450089 0
		 0 21.9982872 30.25371361 0 0 24.99830055 32.52282715 0 0 27.99829674 34.79199219
		 0 0 30.99829292 37.061161041 0 0 33.99826431 39.33047867 0 0 -3.82832813 19.35191154
		 0 0 -2.0016453266 12.10034847 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.14388549 1.000001549721 -3.0140637e-07
		 0.99999994 1.14388549 0.94827753 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1.00000166893
		 2.32000232 0 0 1 0 1.99807572 3.17751789 0 1 0 0 1 0 1 1 -2.66625261 0.99999982 0
		 0 1 0 1 1 0 0 0 1 0 0 1 0 1.88663578 0.99999988 0 1 0 0 1 0 2.64313889 0.99999315
		 0 1 0 0 1 0 1 1 -2.062819481 1.000002622604 0 0 1 0 1 1;
	setAttr ".uvst[0].uvsp[250]" 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 134 ".vt[0:133]"  799.99957275 410 0 799.99957275 410 399.99993896
		 2.9731866e-05 410 399.99993896 2.9731866e-05 410 0 2.9731866e-05 205 400 2.9731866e-05 205 0
		 220.11454773 205 400 220.11454773 175 0 220.11457825 175 200 220.11457825 205 199.99996948
		 715.44903564 400 399.99993896 756.72692871 400 399.99993896 550.95611572 340 399.99993896
		 591.61541748 340 399.99993896 302.67034912 250 399.99993896 343.94824219 250 399.99993896
		 385.22607422 280 399.99993896 426.50396729 280 399.99993896 467.78179932 310 399.99993896
		 509.059692383 310 399.99993896 632.89331055 370 399.99993896 674.17120361 370 399.99993896
		 220.11457825 220 399.99993896 261.39245605 220 399.99993896 756.72692871 400 200
		 715.44903564 400 200 591.61541748 340 200 550.95611572 340 200 343.94824219 250 200
		 302.67034912 250 200 426.50396729 280 200 385.22607422 280 200 509.059692383 310 200
		 467.78179932 310 200 674.17120361 370 200 632.89331055 370 200 261.39245605 220 200
		 220.11457825 220 200 715.44909668 385 200 674.17120361 385 200 591.61541748 355 399.99993896
		 632.89331055 355 399.99993896 756.72692871 410 399.99993896 550.95611572 325 200
		 509.059692383 325 200 343.94818115 265 399.99993896 385.22607422 265 399.99993896
		 261.39245605 235 399.99993896 302.67034912 235 399.99993896 509.059692383 325 399.99993896
		 550.95611572 325 399.99993896 385.22607422 265 200 343.94818115 265 200 632.89331055 355 200
		 591.61541748 355 200 799.99957275 300 200 799.99957275 410 200 756.72692871 410 200
		 426.50390625 295 399.99993896 467.78179932 295 399.99993896 674.17120361 385 399.99993896
		 715.44909668 385 399.99993896 302.67034912 175 200 302.67034912 235 200 261.39245605 235 200
		 467.78179932 295 200 426.50390625 295 200 302.67034912 205 200 632.89331055 70.000007629395 0
		 591.61541748 70.000007629395 0 467.78182983 130 0 426.50396729 130 0 674.17120361 10 0
		 715.44909668 40.000003814697 0 674.17120361 40.000003814697 0 550.95611572 99.99999237 0
		 509.059692383 99.99999237 0 385.22607422 160 0 343.94821167 160 0 302.67034912 190 0
		 261.39245605 190 0 261.39245605 190 200 302.67034912 190 200 343.94821167 160 200
		 385.22607422 160 200 426.50396729 130 200 467.78182983 130 200 509.059692383 99.99999237 200
		 550.95611572 99.99999237 200 591.61541748 70.000007629395 200 632.89331055 70.000007629395 200
		 674.17120361 10 200 674.17120361 40.000003814697 200 715.44909668 40.000003814697 200
		 674.17120361 54.99999619 0 632.89331055 54.99999619 0 591.61541748 85 0 550.95611572 85 0
		 509.059692383 115 0 467.78179932 115 0 756.72698975 10 0 756.72698975 24.99999428 0
		 715.44909668 24.99999428 0 426.50396729 145 0 385.22607422 145 0 343.94821167 175 0
		 302.6703186 175 0 261.39245605 205 0 261.39245605 205 199.99996948 343.94821167 175 200
		 385.22607422 145 200 426.50396729 145 200 467.78179932 115 200 509.059692383 115 200
		 550.95611572 85 200 591.61541748 85 200 632.89331055 54.99999619 200 674.17120361 54.99999619 200
		 756.72698975 10 200 715.44909668 24.99999428 200 756.72698975 24.99999428 200 550.95611572 300 200
		 2.9731866e-05 410.00088500977 0 799.99957275 10 0 799.99957275 300 400 550.95611572 300 400
		 302.67034912 205 400 800 10.00083446503 400 302.67034912 174.99975586 400 2.9731866e-05 175 400
		 1.2404043e-05 175 0 -9.1562884e-05 10.00034618378 400 674.17120361 10 0 1.2404043e-05 10.00034618378 0;
	setAttr -s 236 ".ed";
	setAttr ".ed[0:165]"  2 3 0 3 5 0 2 4 0 4 5 0 4 6 0 6 9 0 8 7 0 11 10 0 13 12 0
		 15 14 0 17 16 0 19 18 0 21 20 0 23 22 0 24 25 0 26 27 0 28 29 0 30 31 0 32 33 0 34 35 0
		 36 37 0 10 25 0 11 24 0 20 35 0 21 34 0 12 27 0 13 26 0 18 33 0 19 32 0 16 31 0 17 30 0
		 14 29 0 15 28 0 22 37 0 23 36 0 38 39 0 41 40 0 1 42 0 43 44 0 46 45 0 48 47 0 50 49 0
		 51 52 0 53 54 0 56 57 0 59 58 0 61 60 0 62 8 0 63 64 0 65 66 0 42 57 0 1 56 0 38 61 0
		 39 60 0 40 54 0 41 53 0 43 50 0 44 49 0 58 66 0 59 65 0 45 52 0 46 51 0 47 64 0 48 63 0
		 55 121 0 23 47 0 36 64 0 29 63 0 14 48 0 15 45 0 28 52 0 31 51 0 16 46 0 17 58 0
		 30 66 0 33 65 0 18 59 0 19 49 0 32 44 0 27 43 0 12 50 0 13 40 0 26 54 0 35 53 0 20 41 0
		 21 60 0 34 39 0 25 38 0 10 61 0 11 42 0 24 57 0 56 55 0 67 82 0 6 22 0 9 37 0 69 68 0
		 71 70 0 74 73 0 76 75 0 78 77 0 80 79 0 81 82 0 83 84 0 85 86 0 87 88 0 89 90 0 91 118 0
		 92 93 0 73 93 0 74 92 0 72 91 0 68 90 0 69 89 0 75 88 0 76 87 0 70 86 0 71 85 0 77 84 0
		 78 83 0 79 82 0 80 81 0 95 94 0 97 96 0 99 98 0 100 101 0 102 101 0 104 103 0 106 105 0
		 5 107 0 9 108 0 62 109 0 110 111 0 112 113 0 114 115 0 116 117 0 118 120 0 119 120 0
		 107 108 0 105 109 0 106 62 0 103 111 0 104 110 0 98 113 0 99 112 0 96 115 0 97 114 0
		 94 117 0 95 116 0 100 118 0 101 120 0 102 119 0 80 107 0 81 108 0 82 62 0 79 106 0
		 78 105 0 83 109 0 84 110 0 77 104 0 71 103 0 85 111 0 86 112 0 70 99 0 76 98 0 87 113 0
		 88 114 0;
	setAttr ".ed[166:235]" 75 97 0 69 96 0 89 115 0 90 116 0 68 95 0 74 94 0 92 117 0
		 93 119 0 73 102 0 67 108 0 36 108 0 37 9 0 91 8 0 72 7 0 5 9 0 6 9 0 10 2 1 12 2 1
		 14 2 1 16 2 1 18 2 1 20 2 1 22 2 1 40 2 1 45 2 1 47 2 1 49 2 1 58 2 1 60 2 1 42 2 0
		 121 67 0 5 122 0 122 0 0 0 123 0 100 123 0 101 123 1 0 101 1 0 73 1 0 94 1 0 68 1
		 0 96 1 0 75 1 0 98 1 0 70 1 0 103 1 0 77 1 0 105 1 0 79 1 0 107 1 0 5 1 55 124 0
		 121 125 0 124 125 0 67 126 0 125 126 0 124 127 0 125 127 0 126 128 0 127 128 1 62 128 0
		 8 129 0 128 129 0 7 130 0 129 130 0 129 131 0 127 131 0 7 132 0 130 133 0 132 133 0
		 131 133 0;
	setAttr -s 101 -ch 448 ".fc[0:100]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 4 2 1 3
		f 4 -8 22 14 -22
		mu 0 4 33 34 35 36
		f 4 -13 24 19 -24
		mu 0 4 37 38 39 40
		f 4 -9 26 15 -26
		mu 0 4 41 42 43 44
		f 4 -12 28 18 -28
		mu 0 4 45 46 47 48
		f 4 -11 30 17 -30
		mu 0 4 49 50 51 52
		f 4 -10 32 16 -32
		mu 0 4 53 54 55 56
		f 4 -14 34 20 -34
		mu 0 4 57 58 59 60
		f 4 -38 51 44 -51
		mu 0 4 61 62 63 64
		f 4 35 53 -47 -53
		mu 0 4 65 66 67 68
		f 4 -37 55 43 -55
		mu 0 4 69 70 71 72
		f 4 38 57 -42 -57
		mu 0 4 73 74 75 76
		f 4 -46 59 49 -59
		mu 0 4 77 78 79 80
		f 4 -40 61 42 -61
		mu 0 4 81 82 83 84
		f 4 -41 63 48 -63
		mu 0 4 85 86 87 88
		f 4 -35 65 62 -67
		mu 0 4 59 58 85 88
		f 4 31 67 -64 -69
		mu 0 4 53 56 87 86
		f 4 -33 69 60 -71
		mu 0 4 55 54 81 84
		f 4 29 71 -62 -73
		mu 0 4 49 52 83 82
		f 4 -31 73 58 -75
		mu 0 4 51 50 77 80
		f 4 27 75 -60 -77
		mu 0 4 45 48 79 78
		f 4 -29 77 -58 -79
		mu 0 4 47 46 75 74
		f 4 25 79 56 -81
		mu 0 4 41 44 73 76
		f 4 -27 81 54 -83
		mu 0 4 43 42 69 72
		f 4 23 83 -56 -85
		mu 0 4 37 40 71 70
		f 4 -25 85 -54 -87
		mu 0 4 39 38 67 66
		f 4 21 87 52 -89
		mu 0 4 33 36 65 68
		f 4 -23 89 50 -91
		mu 0 4 35 34 61 64
		f 4 -6 93 33 -95
		mu 0 4 91 92 57 60
		f 4 -98 109 107 -109
		mu 0 4 28 27 93 94
		f 4 -96 112 105 -112
		mu 0 4 24 23 97 98
		f 4 -99 114 104 -114
		mu 0 4 20 19 99 100
		f 4 -97 116 103 -116
		mu 0 4 16 15 101 102
		f 4 -100 118 102 -118
		mu 0 4 12 11 103 104
		f 4 -101 120 101 -120
		mu 0 4 8 7 105 89
		f 4 -128 139 130 -139
		mu 0 4 10 9 106 107
		f 4 -127 141 131 -141
		mu 0 4 14 13 108 109
		f 4 -124 143 132 -143
		mu 0 4 18 17 110 111
		f 4 -123 145 133 -145
		mu 0 4 22 21 112 113
		f 4 -122 147 134 -147
		mu 0 4 26 25 114 115
		f 4 124 149 -136 -149
		mu 0 4 31 30 116 95
		f 4 -126 150 136 -150
		mu 0 4 30 29 117 116
		f 4 -121 151 137 -153
		mu 0 4 105 7 6 118
		f 4 119 153 -140 -155
		mu 0 4 8 89 106 9
		f 4 -119 155 138 -157
		mu 0 4 103 11 10 107
		f 4 117 157 -142 -159
		mu 0 4 12 104 108 13
		f 4 -117 159 140 -161
		mu 0 4 101 15 14 109
		f 4 115 161 -144 -163
		mu 0 4 16 102 110 17
		f 4 -115 163 142 -165
		mu 0 4 99 19 18 111
		f 4 113 165 -146 -167
		mu 0 4 20 100 112 21
		f 4 -113 167 144 -169
		mu 0 4 97 23 22 113
		f 4 111 169 -148 -171
		mu 0 4 24 98 114 25
		f 4 -110 171 146 -173
		mu 0 4 93 27 26 115
		f 4 108 173 -151 -175
		mu 0 4 28 94 117 29
		f 4 92 -102 152 -176
		mu 0 4 90 89 105 118
		f 4 -21 176 -130 -178
		mu 0 4 60 59 118 119
		f 31 -15 90 -45 91 64 196 175 -177 66 -49 -68 -17 70 -43 -72 -18 74 -50 -76 -19 78 -39
		 -80 -16 82 -44 -84 -20 86 -36 -88
		mu 0 31 36 35 64 63 120 121 90 118 59 88 87 56 55 84 83 52 51 80 79 48 47 74 73 44 43 72
		 71 40 39 66 65
		f 4 110 178 6 -180
		mu 0 4 32 96 122 123
		f 25 -179 106 135 -137 -174 -108 172 -135 -170 -106 168 -134 -166 -105 164 -133 -162
		 -104 160 -132 -158 -103 156 -131 47
		mu 0 25 122 96 95 116 117 94 93 115 114 98 97 113 112 100 99 111 110 102 101 109 108 104
		 103 107 106
		f 4 -129 180 129 -138
		mu 0 4 6 5 119 118
		f 4 4 181 -181 -4
		mu 0 4 124 125 119 5
		f 4 -192 -66 13 188
		mu 0 4 155 154 140 141
		f 4 -185 68 40 191
		mu 0 4 157 156 146 147
		f 4 -191 -70 9 184
		mu 0 4 159 158 132 133
		f 4 -186 72 39 190
		mu 0 4 161 160 144 145
		f 4 -194 -74 10 185
		mu 0 4 163 162 134 135
		f 4 -187 76 45 193
		mu 0 4 165 164 150 151
		f 4 -193 -78 11 186
		mu 0 4 167 166 136 137
		f 4 -184 80 41 192
		mu 0 4 169 168 148 149
		f 4 -190 -82 8 183
		mu 0 4 171 170 130 131
		f 4 -188 84 36 189
		mu 0 4 173 172 142 143
		f 4 -195 -86 12 187
		mu 0 4 175 174 138 139
		f 4 -183 88 46 194
		mu 0 4 177 176 152 153
		f 4 -196 -90 7 182
		mu 0 4 179 178 128 129
		f 4 -189 -94 -5 -3
		mu 0 4 181 180 126 127
		f 3 201 -200 202
		mu 0 3 210 209 0
		f 3 -202 -125 200
		mu 0 3 209 210 208
		f 4 -203 203 174 125
		mu 0 4 210 0 207 191
		f 4 -204 204 -172 97
		mu 0 4 207 0 206 184
		f 4 -205 205 170 121
		mu 0 4 206 0 205 188
		f 4 -206 206 -168 95
		mu 0 4 205 0 204 182
		f 4 -208 208 -164 98
		mu 0 4 203 0 202 185
		f 4 -209 209 162 123
		mu 0 4 202 0 201 190
		f 4 -210 210 -160 96
		mu 0 4 201 0 200 183
		f 4 -211 211 158 126
		mu 0 4 200 0 199 192
		f 4 -212 212 -156 99
		mu 0 4 199 0 198 186
		f 4 -213 213 154 127
		mu 0 4 198 0 197 193
		f 4 -214 214 -152 100
		mu 0 4 197 0 196 187
		f 3 -215 215 128
		mu 0 3 196 0 194
		f 4 -207 207 166 122
		mu 0 4 204 0 203 189
		f 3 -216 -199 -198
		mu 0 3 194 0 195
		f 4 -65 216 218 -218
		mu 0 4 211 212 213 214
		f 4 -197 217 220 -220
		mu 0 4 215 216 217 218
		f 3 -219 221 -223
		mu 0 3 219 220 221
		f 4 -221 222 224 -224
		mu 0 4 222 223 224 225
		f 4 -48 225 227 -227
		mu 0 4 226 227 228 229
		f 5 223 -226 -154 -93 219
		mu 0 5 232 234 233 230 231
		f 4 -7 226 229 -229
		mu 0 4 235 236 237 238
		f 4 -228 -225 231 -231
		mu 0 4 239 240 241 242
		f 4 228 233 -235 -233
		mu 0 4 243 244 245 246
		f 4 -230 230 235 -234
		mu 0 4 247 248 249 250;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_StairsLowerSide";
	rename -uid "D2F24A2D-4593-F410-7554-83A1FE3C3B4C";
createNode mesh -n "SM_Flat_Apartment_StairsLowerSideShape" -p "SM_Flat_Apartment_StairsLowerSide";
	rename -uid "9E5637F7-4912-7B96-AD31-B2AD0D0E2B58";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[4]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[4:5]";
	setAttr ".pv" -type "double2" -0.53140974044799805 0.50000131130218506 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 217 ".uvst[0].uvsp[0:216]" -type "float2" 0 0 0 1 1 1 0 1 0
		 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001
		 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001
		 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0.30000001 1 0.11698201 0.85073596
		 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1
		 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001
		 1 0 1 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001 1 0 1 0 0 0.30000001
		 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001
		 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.16208012 0 0.031825501
		 0 0.30000001 0 0.30000001 1 0 0 0.30000001 0 0.30000001 0 0 0 0 0 0.30000001 0 0
		 0 0.30000001 0 0 0 0.30000001 0 0.14443591 0.11619214 0.30000001 0 0 0 0 0 0.30000001
		 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001
		 0 0 0 0.30000001 0 0 0 -0.587892 0 0.17883314 0 0.06414447 0.19411203 1.000000119209
		 -4.2851713e-09 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
		 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 0.99833649 14.3695116 0
		 0 3.99833274 16.6386776 0 0 6.99830246 18.90785599 0 0 9.99832344 21.17700577 0 0
		 12.99829578 23.44619942 0 0 15.99831295 25.71533394 0 0 18.99831009 27.98450089 0
		 0 21.9982872 30.25371361 0 0 24.99830055 32.52282715 0 0 27.99829674 34.79199219
		 0 0 30.99829292 37.061161041 0 0 33.99826431 39.33047867 0 0 -3.82832813 19.35191154
		 0 0 -2.0016453266 12.10034847 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1.00000166893
		 2.32000232 0 0 1 0 1.99807572 3.17751789 0 1 0 0 1 0 1 1 -2.66625261 0.99999982 0
		 0 1 0 1 1 0 0 0 1 0 0 1 0 1.88663578 0.99999988 0 1 0 0 1 0 2.64313889 0.99999315
		 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 130 ".vt[0:129]"  799.99957275 410 400 2.9731866e-05 410 400
		 2.9731866e-05 410 0 2.9731866e-05 205 400 2.9731866e-05 205 0 220.11454773 205 400
		 220.11454773 175 0 220.11457825 175 199.99998474 220.11457825 205 199.99998474 715.44903564 400 400
		 756.72692871 400 400 550.95611572 340 400 591.61541748 340 400 302.67034912 250 400
		 343.94824219 250 400 385.22607422 280 400 426.50396729 280 400 467.78179932 310 400
		 509.059692383 310 400 632.89331055 370 400 674.17120361 370 400 220.11457825 220 400
		 261.39245605 220 400 756.72692871 400 199.99998474 715.44903564 400 199.99998474
		 591.61541748 340 199.99998474 550.95611572 340 199.99998474 343.94824219 250 199.99998474
		 302.67034912 250 199.99998474 426.50396729 280 199.99998474 385.22607422 280 199.99998474
		 509.059692383 310 199.99998474 467.78179932 310 199.99998474 674.17120361 370 199.99998474
		 632.89331055 370 199.99998474 261.39245605 220 199.99998474 220.11457825 220 199.99998474
		 715.44909668 385 199.99998474 674.17120361 385 199.99998474 591.61541748 355 400
		 632.89331055 355 400 756.72692871 410 400 550.95611572 325 199.99998474 509.059692383 325 199.99998474
		 343.94818115 265 400 385.22607422 265 400 261.39245605 235 400 302.67034912 235 400
		 509.059692383 325 400 550.95611572 325 400 385.22607422 265 199.99998474 343.94818115 265 199.99998474
		 632.89331055 355 199.99998474 591.61541748 355 199.99998474 799.99957275 300 199.99998474
		 799.99957275 410 199.99998474 756.72692871 410 199.99998474 426.50390625 295 400
		 467.78179932 295 400 674.17120361 385 400 715.44909668 385 400 302.67034912 175 199.99998474
		 302.67034912 235 199.99998474 261.39245605 235 199.99998474 467.78179932 295 199.99998474
		 426.50390625 295 199.99998474 302.67034912 205 199.99998474 632.89331055 70.000007629395 0
		 591.61541748 70.000007629395 0 467.78182983 130 0 426.50396729 130 0 674.17120361 10 0
		 715.44909668 40.000003814697 0 674.17120361 40.000003814697 0 550.95611572 99.99999237 0
		 509.059692383 99.99999237 0 385.22607422 160 0 343.94821167 160 0 302.67034912 190 0
		 261.39245605 190 0 261.39245605 190 199.99998474 302.67034912 190 199.99998474 343.94821167 160 199.99998474
		 385.22607422 160 199.99998474 426.50396729 130 199.99998474 467.78182983 130 199.99998474
		 509.059692383 99.99999237 199.99998474 550.95611572 99.99999237 199.99998474 591.61541748 70.000007629395 199.99998474
		 632.89331055 70.000007629395 199.99998474 674.17120361 10 199.99998474 674.17120361 40.000003814697 199.99998474
		 715.44909668 40.000003814697 199.99998474 674.17120361 54.99999619 0 632.89331055 54.99999619 0
		 591.61541748 85 0 550.95611572 85 0 509.059692383 115 0 467.78179932 115 0 756.72698975 10 0
		 756.72698975 24.99999428 0 715.44909668 24.99999428 0 426.50396729 145 0 385.22607422 145 0
		 343.94821167 175 0 302.6703186 175 0 261.39245605 205 0 261.39245605 205 199.99998474
		 343.94821167 175 199.99998474 385.22607422 145 199.99998474 426.50396729 145 199.99998474
		 467.78179932 115 199.99998474 509.059692383 115 199.99998474 550.95611572 85 199.99998474
		 591.61541748 85 199.99998474 632.89331055 54.99999619 199.99998474 674.17120361 54.99999619 199.99998474
		 756.72698975 10 199.99998474 715.44909668 24.99999428 199.99998474 756.72698975 24.99999428 199.99998474
		 550.95611572 300 199.99998474 799.99957275 300 400 550.95611572 300 400 302.67034912 205 400
		 800 10.00083446503 400 302.67034912 174.99975586 400 2.9731866e-05 175 400 1.2404043e-05 175 0
		 -9.1562884e-05 10.00034618378 400 1.2404043e-05 10.00034618378 0;
	setAttr -s 215 ".ed";
	setAttr ".ed[0:165]"  1 2 0 2 4 0 1 3 0 3 4 0 3 5 0 5 8 0 7 6 0 10 9 0 12 11 0
		 14 13 0 16 15 0 18 17 0 20 19 0 22 21 0 23 24 0 25 26 0 27 28 0 29 30 0 31 32 0 33 34 0
		 35 36 0 9 24 0 10 23 0 19 34 0 20 33 0 11 26 0 12 25 0 17 32 0 18 31 0 15 30 0 16 29 0
		 13 28 0 14 27 0 21 36 0 22 35 0 37 38 0 40 39 0 0 41 0 42 43 0 45 44 0 47 46 0 49 48 0
		 50 51 0 52 53 0 55 56 0 58 57 0 60 59 0 61 7 0 62 63 0 64 65 0 41 56 0 0 55 0 37 60 0
		 38 59 0 39 53 0 40 52 0 42 49 0 43 48 0 57 65 0 58 64 0 44 51 0 45 50 0 46 63 0 47 62 0
		 54 120 0 22 46 0 35 63 0 28 62 0 13 47 0 14 44 0 27 51 0 30 50 0 15 45 0 16 57 0
		 29 65 0 32 64 0 17 58 0 18 48 0 31 43 0 26 42 0 11 49 0 12 39 0 25 53 0 34 52 0 19 40 0
		 20 59 0 33 38 0 24 37 0 9 60 0 10 41 0 23 56 0 55 54 0 66 81 0 5 21 0 8 36 0 68 67 0
		 70 69 0 73 72 0 75 74 0 77 76 0 79 78 0 80 81 0 82 83 0 84 85 0 86 87 0 88 89 0 90 117 0
		 91 92 0 72 92 0 73 91 0 71 90 0 67 89 0 68 88 0 74 87 0 75 86 0 69 85 0 70 84 0 76 83 0
		 77 82 0 78 81 0 79 80 0 94 93 0 96 95 0 98 97 0 99 100 0 101 100 0 103 102 0 105 104 0
		 4 106 0 8 107 0 61 108 0 109 110 0 111 112 0 113 114 0 115 116 0 117 119 0 118 119 0
		 106 107 0 104 108 0 105 61 0 102 110 0 103 109 0 97 112 0 98 111 0 95 114 0 96 113 0
		 93 116 0 94 115 0 99 117 0 100 119 0 101 118 0 79 106 0 80 107 0 81 61 0 78 105 0
		 77 104 0 82 108 0 83 109 0 76 103 0 70 102 0 84 110 0 85 111 0 69 98 0 75 97 0 86 112 0
		 87 113 0;
	setAttr ".ed[166:214]" 74 96 0 68 95 0 88 114 0 89 115 0 67 94 0 73 93 0 91 116 0
		 92 118 0 72 101 0 66 107 0 35 107 0 36 8 0 90 7 0 71 6 0 4 8 0 5 8 0 9 1 1 11 1 1
		 13 1 1 15 1 1 17 1 1 19 1 1 21 1 1 39 1 1 44 1 1 46 1 1 48 1 1 57 1 1 59 1 1 41 1 0
		 120 66 0 54 121 0 120 122 0 121 122 0 66 123 0 122 123 0 121 124 0 122 124 0 123 125 0
		 124 125 1 61 125 0 7 126 0 125 126 0 6 127 0 126 127 0 126 128 0 124 128 0 127 129 0
		 128 129 0;
	setAttr -s 84 -ch 384 ".fc[0:83]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 3 1 0 2
		f 4 -8 22 14 -22
		mu 0 4 32 33 34 35
		f 4 -13 24 19 -24
		mu 0 4 36 37 38 39
		f 4 -9 26 15 -26
		mu 0 4 40 41 42 43
		f 4 -12 28 18 -28
		mu 0 4 44 45 46 47
		f 4 -11 30 17 -30
		mu 0 4 48 49 50 51
		f 4 -10 32 16 -32
		mu 0 4 52 53 54 55
		f 4 -14 34 20 -34
		mu 0 4 56 57 58 59
		f 4 -38 51 44 -51
		mu 0 4 60 61 62 63
		f 4 35 53 -47 -53
		mu 0 4 64 65 66 67
		f 4 -37 55 43 -55
		mu 0 4 68 69 70 71
		f 4 38 57 -42 -57
		mu 0 4 72 73 74 75
		f 4 -46 59 49 -59
		mu 0 4 76 77 78 79
		f 4 -40 61 42 -61
		mu 0 4 80 81 82 83
		f 4 -41 63 48 -63
		mu 0 4 84 85 86 87
		f 4 -35 65 62 -67
		mu 0 4 58 57 84 87
		f 4 31 67 -64 -69
		mu 0 4 52 55 86 85
		f 4 -33 69 60 -71
		mu 0 4 54 53 80 83
		f 4 29 71 -62 -73
		mu 0 4 48 51 82 81
		f 4 -31 73 58 -75
		mu 0 4 50 49 76 79
		f 4 27 75 -60 -77
		mu 0 4 44 47 78 77
		f 4 -29 77 -58 -79
		mu 0 4 46 45 74 73
		f 4 25 79 56 -81
		mu 0 4 40 43 72 75
		f 4 -27 81 54 -83
		mu 0 4 42 41 68 71
		f 4 23 83 -56 -85
		mu 0 4 36 39 70 69
		f 4 -25 85 -54 -87
		mu 0 4 38 37 66 65
		f 4 21 87 52 -89
		mu 0 4 32 35 64 67
		f 4 -23 89 50 -91
		mu 0 4 34 33 60 63
		f 4 -6 93 33 -95
		mu 0 4 90 91 56 59
		f 4 -98 109 107 -109
		mu 0 4 27 26 92 93
		f 4 -96 112 105 -112
		mu 0 4 23 22 96 97
		f 4 -99 114 104 -114
		mu 0 4 19 18 98 99
		f 4 -97 116 103 -116
		mu 0 4 15 14 100 101
		f 4 -100 118 102 -118
		mu 0 4 11 10 102 103
		f 4 -101 120 101 -120
		mu 0 4 7 6 104 88
		f 4 -128 139 130 -139
		mu 0 4 9 8 105 106
		f 4 -127 141 131 -141
		mu 0 4 13 12 107 108
		f 4 -124 143 132 -143
		mu 0 4 17 16 109 110
		f 4 -123 145 133 -145
		mu 0 4 21 20 111 112
		f 4 -122 147 134 -147
		mu 0 4 25 24 113 114
		f 4 124 149 -136 -149
		mu 0 4 30 29 115 94
		f 4 -126 150 136 -150
		mu 0 4 29 28 116 115
		f 4 -121 151 137 -153
		mu 0 4 104 6 5 117
		f 4 119 153 -140 -155
		mu 0 4 7 88 105 8
		f 4 -119 155 138 -157
		mu 0 4 102 10 9 106
		f 4 117 157 -142 -159
		mu 0 4 11 103 107 12
		f 4 -117 159 140 -161
		mu 0 4 100 14 13 108
		f 4 115 161 -144 -163
		mu 0 4 15 101 109 16
		f 4 -115 163 142 -165
		mu 0 4 98 18 17 110
		f 4 113 165 -146 -167
		mu 0 4 19 99 111 20
		f 4 -113 167 144 -169
		mu 0 4 96 22 21 112
		f 4 111 169 -148 -171
		mu 0 4 23 97 113 24
		f 4 -110 171 146 -173
		mu 0 4 92 26 25 114
		f 4 108 173 -151 -175
		mu 0 4 27 93 116 28
		f 4 92 -102 152 -176
		mu 0 4 89 88 104 117
		f 4 -21 176 -130 -178
		mu 0 4 59 58 117 118
		f 31 -15 90 -45 91 64 196 175 -177 66 -49 -68 -17 70 -43 -72 -18 74 -50 -76 -19 78 -39
		 -80 -16 82 -44 -84 -20 86 -36 -88
		mu 0 31 35 34 63 62 119 120 89 117 58 87 86 55 54 83 82 51 50 79 78 47 46 73 72 43 42 71
		 70 39 38 65 64
		f 4 110 178 6 -180
		mu 0 4 31 95 121 122
		f 25 -179 106 135 -137 -174 -108 172 -135 -170 -106 168 -134 -166 -105 164 -133 -162
		 -104 160 -132 -158 -103 156 -131 47
		mu 0 25 121 95 94 115 116 93 92 114 113 97 96 112 111 99 98 110 109 101 100 108 107 103
		 102 106 105
		f 4 -129 180 129 -138
		mu 0 4 5 4 118 117
		f 4 4 181 -181 -4
		mu 0 4 123 124 118 4
		f 4 -192 -66 13 188
		mu 0 4 154 153 139 140
		f 4 -185 68 40 191
		mu 0 4 156 155 145 146
		f 4 -191 -70 9 184
		mu 0 4 158 157 131 132
		f 4 -186 72 39 190
		mu 0 4 160 159 143 144
		f 4 -194 -74 10 185
		mu 0 4 162 161 133 134
		f 4 -187 76 45 193
		mu 0 4 164 163 149 150
		f 4 -193 -78 11 186
		mu 0 4 166 165 135 136
		f 4 -184 80 41 192
		mu 0 4 168 167 147 148
		f 4 -190 -82 8 183
		mu 0 4 170 169 129 130
		f 4 -188 84 36 189
		mu 0 4 172 171 141 142
		f 4 -195 -86 12 187
		mu 0 4 174 173 137 138
		f 4 -183 88 46 194
		mu 0 4 176 175 151 152
		f 4 -196 -90 7 182
		mu 0 4 178 177 127 128
		f 4 -189 -94 -5 -3
		mu 0 4 180 179 125 126
		f 4 -65 197 199 -199
		mu 0 4 181 182 183 184
		f 4 -197 198 201 -201
		mu 0 4 185 186 187 188
		f 3 -200 202 -204
		mu 0 3 189 190 191
		f 4 -202 203 205 -205
		mu 0 4 192 193 194 195
		f 4 -48 206 208 -208
		mu 0 4 196 197 198 199
		f 5 204 -207 -154 -93 200
		mu 0 5 202 204 203 200 201
		f 4 -7 207 210 -210
		mu 0 4 205 206 207 208
		f 4 -209 -206 212 -212
		mu 0 4 209 210 211 212
		f 4 -211 211 214 -214
		mu 0 4 213 214 215 216;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_StairsUpperSide";
	rename -uid "675DC46F-49D2-F86D-2BA3-1A8AB692F070";
createNode mesh -n "SM_Flat_Apartment_StairsUpperSideShape" -p "SM_Flat_Apartment_StairsUpperSide";
	rename -uid "1AF2C0D6-4B83-1379-C243-10AE04617748";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:83]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[4]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "e[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[4:5]";
	setAttr ".pv" -type "double2" 15.084968090057373 19.665239334106445 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 184 ".uvst[0].uvsp[0:183]" -type "float2" 0.57893968 0.74419063
		 0 0 0 1 1 1 0 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001
		 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001
		 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0 1 0.30000001 1 0.30000001
		 1 0.11698201 0.85073596 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001
		 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001
		 1 0 1 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001 1 0 1 0.30000001 1 0 1 0 0 0.30000001
		 0 0.30000001 1 0 1 0 0 0.30000001 0 0.30000001 1 0 1 0 0 0.30000001 0 0.16208012
		 0 0.031825501 0 0.30000001 0 0.30000001 1 0 0 0.30000001 0 0.30000001 0 0 0 0 0 0.30000001
		 0 0 0 0.30000001 0 0 0 0.30000001 0 0.14443591 0.11619214 0.30000001 0 0 0 0 0 0.30000001
		 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0 0 0.30000001 0 0.30000001
		 0 0 0 0.30000001 0 0 0 -0.587892 0 0.17883314 0 0.06414447 0.19411203 1.000000119209
		 -4.2851713e-09 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1.14388549 1.000001549721 -3.0140637e-07
		 0.99999994 1.14388549 0.94827753 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 -2.66625261
		 0.99999982 0 0 1 0 1 1 0 0 0 1 0 0 1 0 1.88663578 0.99999988 0 1 0 0 1 0 1 1 -2.062819481
		 1.000002622604 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 133 ".vt[0:132]"  799.99957275 410 0 799.99957275 410 399.99993896
		 2.9731866e-05 410 399.99993896 2.9731866e-05 410 0 2.9731866e-05 205 400 2.9731866e-05 205 0
		 220.11454773 205 400 220.11454773 175 0 220.11457825 175 200 220.11457825 205 199.99996948
		 715.44903564 400 399.99993896 756.72692871 400 399.99993896 550.95611572 340 399.99993896
		 591.61541748 340 399.99993896 302.67034912 250 399.99993896 343.94824219 250 399.99993896
		 385.22607422 280 399.99993896 426.50396729 280 399.99993896 467.78179932 310 399.99993896
		 509.059692383 310 399.99993896 632.89331055 370 399.99993896 674.17120361 370 399.99993896
		 220.11457825 220 399.99993896 261.39245605 220 399.99993896 756.72692871 400 200
		 715.44903564 400 200 591.61541748 340 200 550.95611572 340 200 343.94824219 250 200
		 302.67034912 250 200 426.50396729 280 200 385.22607422 280 200 509.059692383 310 200
		 467.78179932 310 200 674.17120361 370 200 632.89331055 370 200 261.39245605 220 200
		 220.11457825 220 200 715.44909668 385 200 674.17120361 385 200 591.61541748 355 399.99993896
		 632.89331055 355 399.99993896 756.72692871 410 399.99993896 550.95611572 325 200
		 509.059692383 325 200 343.94818115 265 399.99993896 385.22607422 265 399.99993896
		 261.39245605 235 399.99993896 302.67034912 235 399.99993896 509.059692383 325 399.99993896
		 550.95611572 325 399.99993896 385.22607422 265 200 343.94818115 265 200 632.89331055 355 200
		 591.61541748 355 200 799.99957275 300 200 799.99957275 410 200 756.72692871 410 200
		 426.50390625 295 399.99993896 467.78179932 295 399.99993896 674.17120361 385 399.99993896
		 715.44909668 385 399.99993896 302.67034912 175 200 302.67034912 235 200 261.39245605 235 200
		 467.78179932 295 200 426.50390625 295 200 302.67034912 205 200 632.89331055 70.000007629395 0
		 591.61541748 70.000007629395 0 467.78182983 130 0 426.50396729 130 0 674.17120361 10 0
		 715.44909668 40.000003814697 0 674.17120361 40.000003814697 0 550.95611572 99.99999237 0
		 509.059692383 99.99999237 0 385.22607422 160 0 343.94821167 160 0 302.67034912 190 0
		 261.39245605 190 0 261.39245605 190 200 302.67034912 190 200 343.94821167 160 200
		 385.22607422 160 200 426.50396729 130 200 467.78182983 130 200 509.059692383 99.99999237 200
		 550.95611572 99.99999237 200 591.61541748 70.000007629395 200 632.89331055 70.000007629395 200
		 674.17120361 10 200 674.17120361 40.000003814697 200 715.44909668 40.000003814697 200
		 674.17120361 54.99999619 0 632.89331055 54.99999619 0 591.61541748 85 0 550.95611572 85 0
		 509.059692383 115 0 467.78179932 115 0 756.72698975 10 0 756.72698975 24.99999428 0
		 715.44909668 24.99999428 0 426.50396729 145 0 385.22607422 145 0 343.94821167 175 0
		 302.6703186 175 0 261.39245605 205 0 261.39245605 205 199.99996948 343.94821167 175 200
		 385.22607422 145 200 426.50396729 145 200 467.78179932 115 200 509.059692383 115 200
		 550.95611572 85 200 591.61541748 85 200 632.89331055 54.99999619 200 674.17120361 54.99999619 200
		 756.72698975 10 200 715.44909668 24.99999428 200 756.72698975 24.99999428 200 550.95611572 300 200
		 2.9731866e-05 410.00088500977 0 799.99957275 10 0 799.99957275 300 400 550.95611572 300 400
		 302.67034912 205 400 302.67034912 174.99975586 400 2.9731866e-05 175 400 1.2404043e-05 175 0
		 -9.1562884e-05 10.00034618378 400 674.17120361 10 0 1.2404043e-05 10.00034618378 0;
	setAttr -s 218 ".ed";
	setAttr ".ed[0:165]"  2 3 0 3 5 0 2 4 0 4 5 0 4 6 0 6 9 0 8 7 0 11 10 0 13 12 0
		 15 14 0 17 16 0 19 18 0 21 20 0 23 22 0 24 25 0 26 27 0 28 29 0 30 31 0 32 33 0 34 35 0
		 36 37 0 10 25 0 11 24 0 20 35 0 21 34 0 12 27 0 13 26 0 18 33 0 19 32 0 16 31 0 17 30 0
		 14 29 0 15 28 0 22 37 0 23 36 0 38 39 0 41 40 0 1 42 0 43 44 0 46 45 0 48 47 0 50 49 0
		 51 52 0 53 54 0 56 57 0 59 58 0 61 60 0 62 8 0 63 64 0 65 66 0 42 57 0 1 56 0 38 61 0
		 39 60 0 40 54 0 41 53 0 43 50 0 44 49 0 58 66 0 59 65 0 45 52 0 46 51 0 47 64 0 48 63 0
		 55 121 0 23 47 0 36 64 0 29 63 0 14 48 0 15 45 0 28 52 0 31 51 0 16 46 0 17 58 0
		 30 66 0 33 65 0 18 59 0 19 49 0 32 44 0 27 43 0 12 50 0 13 40 0 26 54 0 35 53 0 20 41 0
		 21 60 0 34 39 0 25 38 0 10 61 0 11 42 0 24 57 0 56 55 0 67 82 0 6 22 0 9 37 0 69 68 0
		 71 70 0 74 73 0 76 75 0 78 77 0 80 79 0 81 82 0 83 84 0 85 86 0 87 88 0 89 90 0 91 118 0
		 92 93 0 73 93 0 74 92 0 72 91 0 68 90 0 69 89 0 75 88 0 76 87 0 70 86 0 71 85 0 77 84 0
		 78 83 0 79 82 0 80 81 0 95 94 0 97 96 0 99 98 0 100 101 0 102 101 0 104 103 0 106 105 0
		 5 107 0 9 108 0 62 109 0 110 111 0 112 113 0 114 115 0 116 117 0 118 120 0 119 120 0
		 107 108 0 105 109 0 106 62 0 103 111 0 104 110 0 98 113 0 99 112 0 96 115 0 97 114 0
		 94 117 0 95 116 0 100 118 0 101 120 0 102 119 0 80 107 0 81 108 0 82 62 0 79 106 0
		 78 105 0 83 109 0 84 110 0 77 104 0 71 103 0 85 111 0 86 112 0 70 99 0 76 98 0 87 113 0
		 88 114 0;
	setAttr ".ed[166:217]" 75 97 0 69 96 0 89 115 0 90 116 0 68 95 0 74 94 0 92 117 0
		 93 119 0 73 102 0 67 108 0 36 108 0 37 9 0 91 8 0 72 7 0 5 9 0 6 9 0 121 67 0 5 122 0
		 122 0 0 0 123 0 100 123 0 101 123 1 0 101 1 0 73 1 0 94 1 0 68 1 0 96 1 0 75 1 0 98 1
		 0 70 1 0 103 1 0 77 1 0 105 1 0 79 1 0 107 1 0 5 1 55 124 0 121 125 0 124 125 0 67 126 0
		 125 126 0 126 127 0 62 127 0 8 128 0 127 128 0 7 129 0 128 129 0 128 130 0 7 131 0
		 129 132 0 131 132 0 130 132 0;
	setAttr -s 84 -ch 381 ".fc[0:83]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 4 2 1 3
		f 4 -8 22 14 -22
		mu 0 4 33 34 35 36
		f 4 -13 24 19 -24
		mu 0 4 37 38 39 40
		f 4 -9 26 15 -26
		mu 0 4 41 42 43 44
		f 4 -12 28 18 -28
		mu 0 4 45 46 47 48
		f 4 -11 30 17 -30
		mu 0 4 49 50 51 52
		f 4 -10 32 16 -32
		mu 0 4 53 54 55 56
		f 4 -14 34 20 -34
		mu 0 4 57 58 59 60
		f 4 -38 51 44 -51
		mu 0 4 61 62 63 64
		f 4 35 53 -47 -53
		mu 0 4 65 66 67 68
		f 4 -37 55 43 -55
		mu 0 4 69 70 71 72
		f 4 38 57 -42 -57
		mu 0 4 73 74 75 76
		f 4 -46 59 49 -59
		mu 0 4 77 78 79 80
		f 4 -40 61 42 -61
		mu 0 4 81 82 83 84
		f 4 -41 63 48 -63
		mu 0 4 85 86 87 88
		f 4 -35 65 62 -67
		mu 0 4 59 58 85 88
		f 4 31 67 -64 -69
		mu 0 4 53 56 87 86
		f 4 -33 69 60 -71
		mu 0 4 55 54 81 84
		f 4 29 71 -62 -73
		mu 0 4 49 52 83 82
		f 4 -31 73 58 -75
		mu 0 4 51 50 77 80
		f 4 27 75 -60 -77
		mu 0 4 45 48 79 78
		f 4 -29 77 -58 -79
		mu 0 4 47 46 75 74
		f 4 25 79 56 -81
		mu 0 4 41 44 73 76
		f 4 -27 81 54 -83
		mu 0 4 43 42 69 72
		f 4 23 83 -56 -85
		mu 0 4 37 40 71 70
		f 4 -25 85 -54 -87
		mu 0 4 39 38 67 66
		f 4 21 87 52 -89
		mu 0 4 33 36 65 68
		f 4 -23 89 50 -91
		mu 0 4 35 34 61 64
		f 4 -6 93 33 -95
		mu 0 4 91 92 57 60
		f 4 -98 109 107 -109
		mu 0 4 28 27 93 94
		f 4 -96 112 105 -112
		mu 0 4 24 23 97 98
		f 4 -99 114 104 -114
		mu 0 4 20 19 99 100
		f 4 -97 116 103 -116
		mu 0 4 16 15 101 102
		f 4 -100 118 102 -118
		mu 0 4 12 11 103 104
		f 4 -101 120 101 -120
		mu 0 4 8 7 105 89
		f 4 -128 139 130 -139
		mu 0 4 10 9 106 107
		f 4 -127 141 131 -141
		mu 0 4 14 13 108 109
		f 4 -124 143 132 -143
		mu 0 4 18 17 110 111
		f 4 -123 145 133 -145
		mu 0 4 22 21 112 113
		f 4 -122 147 134 -147
		mu 0 4 26 25 114 115
		f 4 124 149 -136 -149
		mu 0 4 31 30 116 95
		f 4 -126 150 136 -150
		mu 0 4 30 29 117 116
		f 4 -121 151 137 -153
		mu 0 4 105 7 6 118
		f 4 119 153 -140 -155
		mu 0 4 8 89 106 9
		f 4 -119 155 138 -157
		mu 0 4 103 11 10 107
		f 4 117 157 -142 -159
		mu 0 4 12 104 108 13
		f 4 -117 159 140 -161
		mu 0 4 101 15 14 109
		f 4 115 161 -144 -163
		mu 0 4 16 102 110 17
		f 4 -115 163 142 -165
		mu 0 4 99 19 18 111
		f 4 113 165 -146 -167
		mu 0 4 20 100 112 21
		f 4 -113 167 144 -169
		mu 0 4 97 23 22 113
		f 4 111 169 -148 -171
		mu 0 4 24 98 114 25
		f 4 -110 171 146 -173
		mu 0 4 93 27 26 115
		f 4 108 173 -151 -175
		mu 0 4 28 94 117 29
		f 4 92 -102 152 -176
		mu 0 4 90 89 105 118
		f 4 -21 176 -130 -178
		mu 0 4 60 59 118 119
		f 31 -15 90 -45 91 64 182 175 -177 66 -49 -68 -17 70 -43 -72 -18 74 -50 -76 -19 78 -39
		 -80 -16 82 -44 -84 -20 86 -36 -88
		mu 0 31 36 35 64 63 120 121 90 118 59 88 87 56 55 84 83 52 51 80 79 48 47 74 73 44 43 72
		 71 40 39 66 65
		f 4 110 178 6 -180
		mu 0 4 32 96 122 123
		f 25 -179 106 135 -137 -174 -108 172 -135 -170 -106 168 -134 -166 -105 164 -133 -162
		 -104 160 -132 -158 -103 156 -131 47
		mu 0 25 122 96 95 116 117 94 93 115 114 98 97 113 112 100 99 111 110 102 101 109 108 104
		 103 107 106
		f 4 -129 180 129 -138
		mu 0 4 6 5 119 118
		f 4 4 181 -181 -4
		mu 0 4 124 125 119 5
		f 3 187 -186 188
		mu 0 3 154 153 0
		f 3 -188 -125 186
		mu 0 3 153 154 152
		f 4 -189 189 174 125
		mu 0 4 154 0 151 135
		f 4 -190 190 -172 97
		mu 0 4 151 0 150 128
		f 4 -191 191 170 121
		mu 0 4 150 0 149 132
		f 4 -192 192 -168 95
		mu 0 4 149 0 148 126
		f 4 -194 194 -164 98
		mu 0 4 147 0 146 129
		f 4 -195 195 162 123
		mu 0 4 146 0 145 134
		f 4 -196 196 -160 96
		mu 0 4 145 0 144 127
		f 4 -197 197 158 126
		mu 0 4 144 0 143 136
		f 4 -198 198 -156 99
		mu 0 4 143 0 142 130
		f 4 -199 199 154 127
		mu 0 4 142 0 141 137
		f 4 -200 200 -152 100
		mu 0 4 141 0 140 131
		f 3 -201 201 128
		mu 0 3 140 0 138
		f 4 -193 193 166 122
		mu 0 4 148 0 147 133
		f 3 -202 -185 -184
		mu 0 3 138 0 139
		f 4 -65 202 204 -204
		mu 0 4 155 156 157 158
		f 4 -183 203 206 -206
		mu 0 4 159 160 161 162
		f 4 -48 208 210 -210
		mu 0 4 163 164 165 166
		f 5 207 -209 -154 -93 205
		mu 0 5 169 171 170 167 168
		f 4 -7 209 212 -212
		mu 0 4 172 173 174 175
		f 4 211 215 -217 -215
		mu 0 4 176 177 178 179
		f 4 -213 213 217 -216
		mu 0 4 180 181 182 183;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_Concrete_Foundation";
	rename -uid "7ACDEE35-47FA-B232-B853-B7934CF7904C";
	setAttr ".t" -type "double3" 0 10 0 ;
	setAttr ".rp" -type "double3" 0 -10 0 ;
	setAttr ".sp" -type "double3" 0 -10 0 ;
createNode mesh -n "SM_Flat_Apartment_Concrete_FoundationShape" -p "SM_Flat_Apartment_Concrete_Foundation";
	rename -uid "49FD7656-44DB-1FBA-0FC8-5BA6A4DEE727";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0 -10 0 400 -10 0 0 0 0 400 0 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2F7846D0-4178-EB26-BBE0-D682027B7395";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "CB10067A-4BDA-FDF2-C5E9-2FBB349AB3FD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C06B0FA8-429B-C3D5-91FF-A387396FDF8A";
createNode displayLayerManager -n "layerManager";
	rename -uid "96F03B71-411D-63F7-38A3-9EB73115335E";
createNode displayLayer -n "defaultLayer";
	rename -uid "C741B547-41D8-3A88-C3F2-698283648D3A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "2E0F578D-4AEA-AA44-09B5-81ABE459D36B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2D29B81F-4A61-8917-0342-7099CF585392";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "B2A76296-4AC0-75CD-FD3E-2094BC5E9623";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "CDC01214-4022-55E9-6FFF-86A53E5113C3";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4CCA6940-469E-4698-78E8-4EA1FD696FA3";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "4AF79D53-4556-E779-5ABE-C0931DCA13A3";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode groupId -n "groupId1";
	rename -uid "DD7E5E6A-46AA-DEF8-2B08-7181D3EEFA9B";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C815020C-4361-73C3-0906-A4B096AAC107";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 502\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 501\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 501\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1889\n            -height 1048\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1889\\n    -height 1048\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1889\\n    -height 1048\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 20 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6F2C04CB-4FD7-A8FA-98C2-56A862E03B58";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 174 -ast 0 -aet 174 ";
	setAttr ".st" 6;
createNode groupId -n "groupId6";
	rename -uid "9086A220-42F3-2D53-E2B7-0F9F0B3C6020";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "7AABF8B2-45BD-5B5E-A272-99A44E4013D3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "AB99529B-41FA-C947-4FCA-6CBCBB7A4FF7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "D8B704F5-49A7-ACA6-CBB8-9A8A930460F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	rename -uid "020EBF3B-466C-476A-4207-0D971BA8865D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	rename -uid "1573AA44-4991-7A9F-91D3-3690A2BBB47D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "FC9F0775-4B0E-4C26-984F-7CA78CB3E814";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	rename -uid "A5E9B870-4243-A551-30D5-52A788DEF7D1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	rename -uid "6AA48935-4310-CC9C-B301-9A9BF82E4C72";
	setAttr ".ihi" 0;
createNode groupId -n "groupId27";
	rename -uid "E6129B0E-4D4E-2800-5356-29A419191374";
	setAttr ".ihi" 0;
createNode groupId -n "groupId29";
	rename -uid "CB8FEF9F-4895-1DB2-BB2D-2F978F6C437A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId30";
	rename -uid "093C9F80-418A-9F10-980B-F2A1DD6E2574";
	setAttr ".ihi" 0;
createNode groupId -n "groupId33";
	rename -uid "1A40BBAD-4EAE-98AD-61CF-3095F66697B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId34";
	rename -uid "FADF646B-4734-373C-FB72-A69F095430B2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId35";
	rename -uid "5F802EB4-45BC-7822-7DAF-08BA1C634EB1";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr -s 30 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 16 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId8.id" "SM_Flat_Apartment_WindowAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WindowAShape.iog.og[0].gco"
		;
connectAttr "groupId27.id" "SM_Flat_Apartment_WallBShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallBShape.iog.og[0].gco"
		;
connectAttr "groupId1.id" "SM_Flat_Apartment_WallWindowAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallWindowAShape.iog.og[0].gco"
		;
connectAttr "groupId6.id" "SM_Flat_Apartment_WallWindowBShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallWindowBShape.iog.og[0].gco"
		;
connectAttr "groupId7.id" "SM_Flat_Apartment_WallWindowCShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallWindowCShape.iog.og[0].gco"
		;
connectAttr "groupId9.id" "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId10.id" "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId30.id" "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0].gco"
		;
connectAttr "groupId12.id" "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId11.id" "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId29.id" "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0].gco"
		;
connectAttr "groupId13.id" "SM_Flat_Apartment_Roof200x200Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_Roof200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId14.id" "SM_Flat_Apartment_Roof400x400Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_Roof400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId35.id" "SM_Flat_Apartment_StairsMiddleShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_StairsMiddleShape.iog.og[0].gco"
		;
connectAttr "groupId34.id" "SM_Flat_Apartment_StairsLowerSideShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_StairsLowerSideShape.iog.og[0].gco"
		;
connectAttr "groupId33.id" "SM_Flat_Apartment_StairsUpperSideShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_StairsUpperSideShape.iog.og[0].gco"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FlatApartmentOutframeShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallDoorAShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_WallWindowAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_DoorAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallWindowBShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallWindowCShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallDoorBShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_WallDoorCShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_WindowAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof100x100Shape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "SM_Flat_Apartment_Roof200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallDoorDShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_DoorBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallBShape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "SM_Flat_Apartment_FloorConcrete390x390Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles390x390Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Concrete_FoundationShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_StairsUpperSideShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_StairsLowerSideShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_StairsMiddleShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId27.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId29.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId30.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId33.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId34.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId35.msg" ":initialShadingGroup.gn" -na;
// End of Residential_Building_Kit.ma
