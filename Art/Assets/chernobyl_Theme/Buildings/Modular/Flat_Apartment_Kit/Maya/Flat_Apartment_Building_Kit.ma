//Maya ASCII 2024 scene
//Name: Flat_Apartment_Building_Kit.ma
//Last modified: Mon, Jun 24, 2024 06:32:52 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "6BEC6584-4299-3271-061A-0196107313D5";
createNode transform -s -n "persp";
	rename -uid "6F12B89E-4C8E-E9D9-813B-308EB24041EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1753.694812389838 1095.6771924455609 801.3800832684642 ;
	setAttr ".r" -type "double3" -24.938352786572594 -6418.1999999998143 3.3653047650489701e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "641C0B76-45AE-3E92-342F-C58AD9E18C5B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 10;
	setAttr ".fcp" 100000;
	setAttr ".coi" 1869.2063123869566;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 399.99995421855783 210.00044250488281 200 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C21C40F7-475A-C788-233B-CF86882EAA14";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 802.97491740795249 2276.7298470441733 183.71777443325556 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B76F1C19-46D0-A379-F336-DC8F4B5DCB71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 2071.7294045392905;
	setAttr ".ow" 909.9412502125889;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 399.99995421855783 205.00044250488281 190 ;
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
	setAttr ".t" -type "double3" 1064.8629585906747 40.062807106622429 203.40314499866707 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "57FF0412-4F2C-C643-D9DB-57932015B08B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 664.86295859067479;
	setAttr ".ow" 934.5481724827788;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 400 204.75044250488281 200 ;
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
	setAttr -s 160 ".uvst[0].uvsp[0:159]" -type "float2" 0.81195056 0.27505887
		 0.81195056 0.00097454106 0.84152907 0.00097454106 0.84152907 0.27505887 0.8766101
		 0.00097454106 0.8766101 0.27505887 0.84703153 0.27505887 0.84703153 0.00097454106
		 0.77136743 0.29675949 0.74178886 0.29675949 0.74178886 0.00097454106 0.77136743 0.00097454106
		 0.77686971 0.00097454106 0.80644828 0.00097454106 0.80644828 0.29675949 0.77686971
		 0.29675949 0.88211221 0.27505887 0.88211221 0.00097454106 0.89370358 0.00097454106
		 0.89370358 0.27505887 0.91124398 0.00097454106 0.91124398 0.27505887 0.89965278 0.27505887
		 0.89965278 0.00097454106 0.1070288 0.44664747 0.1070288 0.69943541 0.095437415 0.69943541
		 0.095437415 0.44664747 0.079706676 0.44664747 0.09129782 0.44664747 0.09129782 0.69943523
		 0.079706676 0.69943523 0.55715477 0.72073215 0.55715477 0.44664779 0.56874615 0.44664779
		 0.56874615 0.72073215 0.55301517 0.44664779 0.55301517 0.72073215 0.54142398 0.72073215
		 0.54142398 0.44664779 0.40257186 0.72272772 0.40257186 0.9755156 0.39098048 0.9755156
		 0.39098048 0.72272772 0.40852073 0.72272772 0.42011189 0.72272772 0.42011189 0.97551543
		 0.40852073 0.97551543 0.70120579 0.00097454106 0.70120579 0.42295131 0.67162728 0.42295131
		 0.67162728 0.00097454106 0.73628676 0.42295161 0.70670819 0.42295161 0.70670819 0.00097454106
		 0.73628676 0.00097454106 0.00099808117 0.00097454106 0.030576635 0.00097454106 0.030576635
		 0.44465223 0.00099808117 0.44465223 0.03627383 0.44465193 0.03627383 0.00097454106
		 0.065852389 0.00097454106 0.065852389 0.44465193 0.81584853 0.57483488 0.82743979
		 0.57483488 0.82743979 0.7858234 0.81584853 0.7858234 0.84498036 0.78582317 0.83338898
		 0.78582317 0.83338898 0.57483488 0.84498036 0.57483488 0.89760172 0.76452672 0.88601029
		 0.76452672 0.88601029 0.57483488 0.89760172 0.57483488 0.90355074 0.57483488 0.91514194
		 0.57483488 0.91514194 0.76452661 0.90355074 0.76452661 0.8509295 0.57483488 0.86252064
		 0.57483488 0.86252064 0.78582346 0.8509295 0.78582346 0.88006127 0.78582346 0.86846989
		 0.78582346 0.86846989 0.57483488 0.88006127 0.57483488 0.93268263 0.76452672 0.9210912
		 0.76452672 0.9210912 0.57483488 0.93268263 0.57483488 0.93863165 0.57483488 0.95022279
		 0.57483488 0.95022279 0.76452667 0.93863165 0.76452667 0.36713961 0.44465193 0.071354672
		 0.44465193 0.082204968 0.43380162 0.3562893 0.43380162 0.071354672 0.00097454106
		 0.082204968 0.011824845 0.36713961 0.00097454106 0.3562893 0.011824845 0.66727597
		 0.44465223 0.37149101 0.44465223 0.38234133 0.43380192 0.65642565 0.43380192 0.37149101
		 0.00097454106 0.38234133 0.011824845 0.66727597 0.00097454106 0.65642565 0.011824845
		 0.9990018 0.29875502 0.99900198 0.57283932 0.98835373 0.56219083 0.98835343 0.30940357
		 0.78801352 0.57283932 0.79866177 0.56219083 0.78801352 0.29875502 0.79866177 0.30940357
		 0.57288557 0.72073215 0.57288557 0.44664779 0.58353388 0.45729601 0.58353388 0.71008396
		 0.78387403 0.44664779 0.77322584 0.45729601 0.78387392 0.72073215 0.77322555 0.71008378
		 0.00099800399 0.97551531 0.00099800399 0.72272742 0.19068997 0.72272742 0.19068967
		 0.97551513 0.38577825 0.72272772 0.38577855 0.97551501 0.19608659 0.97551501 0.19608659
		 0.72272772 0.53728449 0.44664779 0.53728473 0.72073215 0.52663642 0.7100836 0.52663618
		 0.45729631 0.32629618 0.72073215 0.33694446 0.7100836 0.32629618 0.44664779 0.33694446
		 0.45729631 0.11116817 0.72073185 0.11116817 0.44664747 0.12181646 0.45729569 0.12181646
		 0.7100836 0.32215673 0.44664747 0.31150845 0.45729569 0.32215649 0.72073185 0.31150821
		 0.71008348 0.42606124 0.9755156 0.42606124 0.72272772 0.61575317 0.72272772 0.61575294
		 0.97551543 0.81064671 0.72272772 0.81064683 0.97551501 0.62095493 0.97551501 0.62095493
		 0.72272772;
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
		mu 0 4 0 1 2 3
		f 4 -22 19 23 -25
		mu 0 4 48 49 50 51
		f 4 -27 24 28 -30
		mu 0 4 4 5 6 7
		f 4 -17 -31 29 31
		mu 0 4 52 53 54 55
		f 4 5 -9 -1 1
		mu 0 4 8 9 10 11
		f 4 6 -10 -6 2
		mu 0 4 56 57 58 59
		f 4 7 -11 -7 3
		mu 0 4 12 13 14 15
		f 4 -12 -8 4 0
		mu 0 4 60 61 62 63
		f 4 -2 12 14 -14
		mu 0 4 96 97 98 99
		f 4 8 17 -19 -16
		mu 0 4 104 105 106 107
		f 4 -3 13 21 -21
		mu 0 4 102 96 99 103
		f 4 9 22 -24 -18
		mu 0 4 105 108 109 106
		f 4 -4 20 26 -26
		mu 0 4 100 102 103 101
		f 4 10 27 -29 -23
		mu 0 4 108 110 111 109
		f 4 -5 25 30 -13
		mu 0 4 97 100 101 98
		f 4 11 15 -32 -28
		mu 0 4 110 104 107 111
		f 4 -39 37 32 -40
		mu 0 4 64 65 66 67
		f 4 -34 34 36 -36
		mu 0 4 68 69 70 71
		f 4 42 38 -42 -37
		mu 0 4 16 17 18 19
		f 4 -44 33 40 -33
		mu 0 4 20 21 22 23
		f 4 41 45 -47 -45
		mu 0 4 112 113 114 115
		f 4 39 47 -49 -46
		mu 0 4 113 116 117 114
		f 4 -41 49 50 -48
		mu 0 4 116 118 119 117
		f 4 35 44 -52 -50
		mu 0 4 118 112 115 119
		f 4 43 53 -55 -53
		mu 0 4 120 121 122 123
		f 4 -38 55 56 -54
		mu 0 4 121 124 125 122
		f 4 -43 57 58 -56
		mu 0 4 124 126 127 125
		f 4 -35 52 59 -58
		mu 0 4 126 120 123 127
		f 4 -51 -61 54 61
		mu 0 4 24 25 26 27
		f 4 -62 -57 62 48
		mu 0 4 72 73 74 75
		f 4 -63 -59 63 46
		mu 0 4 28 29 30 31
		f 4 -64 -60 60 51
		mu 0 4 76 77 78 79
		f 4 64 -66 -67 -68
		mu 0 4 128 129 130 131
		f 4 68 69 -71 71
		mu 0 4 132 133 134 135
		f 4 -79 77 72 -80
		mu 0 4 80 81 82 83
		f 4 -74 74 76 -76
		mu 0 4 84 85 86 87
		f 4 82 78 -82 -77
		mu 0 4 32 33 34 35
		f 4 -84 73 80 -73
		mu 0 4 36 37 38 39
		f 4 81 85 -87 -85
		mu 0 4 136 137 138 139
		f 4 79 87 -89 -86
		mu 0 4 137 140 141 138
		f 4 -81 89 90 -88
		mu 0 4 140 142 143 141
		f 4 75 84 -92 -90
		mu 0 4 142 136 139 143
		f 4 83 93 -95 -93
		mu 0 4 144 145 146 147
		f 4 -78 95 96 -94
		mu 0 4 145 148 149 146
		f 4 -83 97 98 -96
		mu 0 4 148 150 151 149
		f 4 -75 92 99 -98
		mu 0 4 150 144 147 151
		f 4 -91 -101 94 101
		mu 0 4 40 41 42 43
		f 4 -102 -97 102 88
		mu 0 4 88 89 90 91
		f 4 -103 -99 103 86
		mu 0 4 44 45 46 47
		f 4 -104 -100 100 91
		mu 0 4 92 93 94 95
		f 4 104 -106 -107 -108
		mu 0 4 152 153 154 155
		f 4 108 109 -111 111
		mu 0 4 156 157 158 159;
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
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.89882869 0.00099800411
		 0.91785169 0.00099800411 0.91785169 0.99900204 0.89882869 0.99900204 0.92344856 0.00099800411
		 0.94247144 0.00099800411 0.94247144 0.99900204 0.92344856 0.99900204 0.9480682 0.44455546
		 0.9480682 0.00099811971 0.9670912 0.00099811971 0.9670912 0.44455546 0.9517253 0.89005238
		 0.9517253 0.44649497 0.97074825 0.44649497 0.97074825 0.89005238 0.00096977863 0.00099800411
		 0.44452715 0.00099800411 0.44452715 0.99900204 0.00096977863 0.99900204 0.44999388
		 0.00099811971 0.89355129 0.00099811971 0.89355129 0.99900192 0.44999388 0.99900192;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0 0 2.14434814 100 0 2.14434814 0 225 2.14434814
		 100 225 2.14434814 0 225 -2.14434814 100 225 -2.14434814 0 0 -2.14434814 100 0 -2.14434814;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 16 17 18 19
		f 4 1 7 -3 -7
		mu 0 4 8 9 10 11
		f 4 2 9 -4 -9
		mu 0 4 20 21 22 23
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 0 1 2 3
		f 4 10 4 6 8
		mu 0 4 4 5 6 7;
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
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.92926574 0.00069792889
		 0.94256592 0.00069792889 0.94256592 0.69846487 0.92926574 0.69846487 0.94807804 0.00069792889
		 0.9613781 0.00069792889 0.9613781 0.69846487 0.94807804 0.69846487 0.96688992 0.45904875
		 0.96688992 0.00069776713 0.9801901 0.00069776713 0.9801901 0.45904875 0.98570192
		 0.4590489 0.98570192 0.00069792889 0.9990021 0.00069792889 0.9990021 0.4590489 0.00099800411
		 0.00069792889 0.45934898 0.00069792889 0.45934898 0.69846487 0.00099800411 0.69846487
		 0.46523646 0.00069776713 0.92358744 0.00069776713 0.92358744 0.69846457 0.46523646
		 0.69846457;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0 0 2.14434814 147.79855347 0 2.14434814
		 0 225 2.14434814 147.79855347 225 2.14434814 0 225 -2.14434814 147.79855347 225 -2.14434814
		 0 0 -2.14434814 147.79855347 0 -2.14434814;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 16 17 18 19
		f 4 1 7 -3 -7
		mu 0 4 8 9 10 11
		f 4 2 9 -4 -9
		mu 0 4 20 21 22 23
		f 4 3 11 -1 -11
		mu 0 4 12 13 14 15
		f 4 -12 -10 -8 -6
		mu 0 4 0 1 2 3
		f 4 10 4 6 8
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallA";
	rename -uid "D2A233DA-41AD-1C55-502B-19AE8846BD1A";
createNode mesh -n "SM_Flat_Apartment_WallAShape" -p "SM_Flat_Apartment_WallA";
	rename -uid "B2DA3ED3-45F8-BE49-781E-21870C68D2C1";
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
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.00092683895 0.00099800411
		 0.49900213 0.00099800411 0.49900213 0.4990733 0.00092683895 0.4990733 0.42969042
		 0.50092661 0.92776573 0.50092661 0.92776573 0.99900192 0.42969042 0.99900192;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10;
	setAttr -s 8 ".vt[0:7]"  0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10
		 400 400 -10 0 0 -10 400 0 -10;
	setAttr -s 8 ".ed[0:7]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 4 6 0
		 5 7 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 7 -4 -7
		mu 0 4 4 5 6 7;
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
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[1]" "f[3]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.375 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.00094893906 0.66759914
		 0.31578171 0.66759914 0.31578171 0.99900204 0.00094893906 0.99900204 0.65127403 0.99900204
		 0.3198711 0.99900204 0.3198711 0.66759914 0.65127403 0.66759914 0.00094893906 0.00099800411
		 0.33235189 0.00099800411 0.33235189 0.33240095 0.00094893906 0.33240095 0.63505507
		 0.33429846 0.94988799 0.33429846 0.94988799 0.66570145 0.63505507 0.66570145;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0 0 0 400 0 0 0 400 0 400 400 0 20 400 -20
		 400 400 -20 20 0 -20 400 0 -20 20 0 -400 20 400 -400 0 400 -400 0 0 -400;
	setAttr -s 14 ".ed[0:13]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 4 6 0
		 5 7 0 6 8 0 4 9 0 2 10 0 0 11 0 8 9 0 10 11 0;
	setAttr -s 4 -ch 16 ".fc[0:3]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 8 9 10 11
		f 4 2 7 -4 -7
		mu 0 4 12 13 14 15
		f 4 8 12 -10 6
		mu 0 4 0 1 2 3
		f 4 10 13 -12 4
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallC";
	rename -uid "9A588B76-432C-9238-A399-098DDC615F49";
createNode mesh -n "SM_Flat_Apartment_WallCShape" -p "SM_Flat_Apartment_WallC";
	rename -uid "36A175C0-493C-B8D1-F51A-AD8CB84DC060";
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
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.476798165589571 0.50000002176966518 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.49900213 0.00099800411
		 0.49900213 0.4990733 0.92776573 0.50092661 0.92776573 0.99900192 0.025830604 0.00099800411
		 0.025830604 0.4990733 0.45459419 0.50092661 0.45459419 0.99900192;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10;
	setAttr -s 8 ".vt[0:7]"  0 0 10 380 0 10 0 400 10 380 400 10 0 400 -10
		 380 400 -10 0 0 -10 380 0 -10;
	setAttr -s 8 ".ed[0:7]"  0 2 0 1 3 0 4 6 0 5 7 0 0 1 0 2 3 0 4 5 0
		 6 7 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -1 4 1 -6
		mu 0 4 5 4 0 1
		f 4 -3 6 3 -8
		mu 0 4 7 6 2 3;
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
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31567141 0.78109449
		 0.31567141 0.50092769 0.34057519 0.50092769 0.34057519 0.78109449 0.31182295 0.50092769
		 0.31182295 0.78109449 0.28691924 0.78109449 0.28691924 0.50092769 0.258167 0.6254462
		 0.258167 0.50092763 0.28307074 0.50092763 0.28307074 0.6254462 0.0009278272 0.49907231
		 0.0009278272 0.00099800411 0.18770568 0.00099800411 0.18770568 0.2811648 0.31222427
		 0.2811648 0.49900213 0.49907231 0.31222427 0.00099800411 0.49900213 0.00099800411
		 0.61745846 0.71883523 0.61745846 0.99900198 0.43068057 0.99900198 0.43068057 0.50092763
		 0.92875493 0.50092763 0.74197704 0.71883523 0.92875493 0.99900198 0.74197704 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 
		-10 0 0 -10 0 0 -10;
	setAttr -s 16 ".vt[0:15]"  0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10
		 400 400 -10 0 0 -10 400 0 -10 150 0 10 150 225 10 150 225 -10 150 0 -10 250 225 10
		 250 0 10 250 0 -10 250 225 -10;
	setAttr -s 24 ".ed[0:23]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 -3 0 9 -19
		mu 0 4 12 13 14 15
		f 4 10 -2 -4 19
		mu 0 4 20 21 22 23
		f 4 15 13 5 20
		mu 0 4 16 18 19 17
		f 4 21 -9 -20 7
		mu 0 4 24 25 20 23
		f 4 4 -15 17 -22
		mu 0 4 24 26 27 25
		f 4 -21 -7 18 -13
		mu 0 4 16 17 12 15
		f 4 -10 -12 -11 -23
		mu 0 4 0 1 2 3
		f 4 -16 23 -18 -17
		mu 0 4 4 5 6 7
		f 4 8 -24 12 22
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
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
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31567141 0.78109449
		 0.31567141 0.50092769 0.34057519 0.50092769 0.34057519 0.78109449 0.31182295 0.50092769
		 0.31182295 0.78109449 0.28691924 0.78109449 0.28691924 0.50092769 0.258167 0.6254462
		 0.258167 0.50092763 0.28307074 0.50092769 0.28307074 0.6254462 0.0009278272 0.49907231
		 0.0009278272 0.00099800411 0.033428129 0.00099800411 0.033428129 0.2811648 0.15794663
		 0.2811648 0.49900213 0.49907231 0.15794669 0.00099800411 0.49900213 0.00099800411
		 0.46318087 0.71883523 0.46318087 0.99900198 0.43068057 0.99900198 0.43068057 0.50092763
		 0.92875493 0.50092763 0.58769941 0.71883523 0.92875493 0.99900198 0.58769941 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 
		-10 0 0 -10 0 0 -10;
	setAttr -s 16 ".vt[0:15]"  0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10
		 400 400 -10 0 0 -10 400 0 -10 26.10073853 0 10 26.10073853 225 10 26.10073853 225 -10
		 26.10073853 0 -10 126.1007309 225 10 126.10073853 0 10 126.10073853 0 -10 126.10073853 225 -10;
	setAttr -s 24 ".ed[0:23]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 -3 0 9 -19
		mu 0 4 12 13 14 15
		f 4 10 -2 -4 19
		mu 0 4 20 21 22 23
		f 4 15 13 5 20
		mu 0 4 16 18 19 17
		f 4 21 -9 -20 7
		mu 0 4 24 25 20 23
		f 4 4 -15 17 -22
		mu 0 4 24 26 27 25
		f 4 -21 -7 18 -13
		mu 0 4 16 17 12 15
		f 4 -10 -12 -11 -23
		mu 0 4 0 1 2 3
		f 4 -16 23 -18 -17
		mu 0 4 4 5 6 7
		f 4 8 -24 12 22
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
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
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.5 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31567156 0.78109443
		 0.31567156 0.50092763 0.34057528 0.50092763 0.34057528 0.78109443 0.31182298 0.50092763
		 0.31182298 0.78109443 0.28691924 0.78109443 0.28691924 0.50092763 0.2830708 0.50092769
		 0.2830708 0.62544626 0.25816703 0.62544626 0.25816703 0.50092769 0.49900213 0.00099800399
		 0.49900213 0.49907231 0.46650189 0.49907231 0.46650189 0.21890558 0.34198332 0.21890558
		 0.0009278272 0.00099800399 0.34198332 0.49907231 0.0009278272 0.49907231 0.89625472
		 0.78109443 0.89625472 0.50092763 0.92875493 0.50092763 0.92875493 0.99900198 0.43068057
		 0.99900198 0.77173615 0.78109443 0.43068057 0.50092763 0.77173615 0.50092763;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 
		-10 0 0 -10 0 0 -10;
	setAttr -s 16 ".vt[0:15]"  400 0 -10 0 0 -10 400 400 -10 0 400 -10 400 400 10
		 0 400 10 400 0 10 0 0 10 373.89929199 0 -10 373.89929199 225 -10 373.89929199 225 10
		 373.89929199 0 10 273.89929199 225 -10 273.89929199 0 -10 273.89929199 0 10 273.89929199 225 10;
	setAttr -s 24 ".ed[0:23]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 -3 0 9 -19
		mu 0 4 12 13 14 15
		f 4 10 -2 -4 19
		mu 0 4 20 21 22 23
		f 4 15 13 5 20
		mu 0 4 16 18 19 17
		f 4 21 -9 -20 7
		mu 0 4 24 25 20 23
		f 4 4 -15 17 -22
		mu 0 4 24 26 27 25
		f 4 -21 -7 18 -13
		mu 0 4 16 17 12 15
		f 4 -10 -12 -11 -23
		mu 0 4 0 1 2 3
		f 4 -16 23 -18 -17
		mu 0 4 4 5 6 7
		f 4 8 -24 12 22
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
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
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.53125 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0.31598058 0.78109467
		 0.31598058 0.50092798 0.34088436 0.50092798 0.34088436 0.78109467 0.31213078 0.50092798
		 0.31213078 0.78109467 0.28722706 0.78109467 0.28722706 0.50092798 0.25847352 0.68496454
		 0.25847352 0.50092798 0.28337726 0.50092798 0.28337726 0.68496454 0.00092814059 0.49907199
		 0.00092814059 0.00099800411 0.15794691 0.00099800411 0.15794691 0.28116462 0.34198341
		 0.28116462 0.49900213 0.49907199 0.34198341 0.00099800411 0.49900213 0.00099800411
		 0.58801347 0.71883535 0.58801347 0.99900186 0.43099472 0.99900186 0.43099472 0.50092787
		 0.92906868 0.50092787 0.77204996 0.71883535 0.92906868 0.99900186 0.77204996 0.99900186;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 
		-10 0 0 -10 0 0 -10;
	setAttr -s 16 ".vt[0:15]"  0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10
		 400 400 -10 0 0 -10 400 0 -10 126.10073853 0 10 126.10073853 225 10 126.10073853 225 -10
		 126.10073853 0 -10 273.89929199 225 10 273.89929199 0 10 273.89929199 0 -10 273.89929199 225 -10;
	setAttr -s 24 ".ed[0:23]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 -3 0 9 -19
		mu 0 4 12 13 14 15
		f 4 10 -2 -4 19
		mu 0 4 20 21 22 23
		f 4 15 13 5 20
		mu 0 4 16 18 19 17
		f 4 21 -9 -20 7
		mu 0 4 24 25 20 23
		f 4 4 -15 17 -22
		mu 0 4 24 26 27 25
		f 4 -21 -7 18 -13
		mu 0 4 16 17 12 15
		f 4 -10 -12 -11 -23
		mu 0 4 0 1 2 3
		f 4 -16 23 -18 -17
		mu 0 4 4 5 6 7
		f 4 8 -24 12 22
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallWindowA";
	rename -uid "C63D25C3-4863-C0BD-EEBB-AB8A5CEE8332";
createNode mesh -n "SM_Flat_Apartment_WallWindowAShape" -p "SM_Flat_Apartment_WallWindowA";
	rename -uid "2742C2C5-424C-3A18-A787-1FA8839AF353";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[10:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8:9]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".pv" -type "double2" 0.52419646084308624 0.50000002980232239 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.37158218 0.50093001
		 0.37158218 0.62544805 0.34667856 0.62544805 0.34667856 0.50093001 0.31791702 0.62544805
		 0.31791702 0.50093001 0.34282067 0.50093001 0.34282067 0.62544805 0.4042016 0.68770719
		 0.4042016 0.50093001 0.42910525 0.50093001 0.42910525 0.68770719 0.40034372 0.50093001
		 0.40034372 0.68770713 0.37544006 0.68770713 0.37544006 0.50093001 0.45978224 0.25003403
		 0.27300516 0.25003403 0.11735762 0.00099800411 0.6154297 0.00099800411 0.27300516
		 0.37455207 0.11735762 0.49907011 0.45978224 0.37455207 0.6154297 0.49907011 0.58861065
		 0.74996603 0.77538776 0.74996603 0.93103522 0.9990021 0.43296316 0.9990021 0.77538776
		 0.62544805 0.93103522 0.50093001 0.58861065 0.62544805 0.43296316 0.50093001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".pt[0:15]" -type "float3"  0 0 -10 0 0 -10 0 0 -10 0 
		0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 -10 0 0 
		-10 0 0 -10 0 0 -10;
	setAttr -s 16 ".vt[0:15]"  125 200 10 275 200 10 125 99.99997711 10
		 275 99.99997711 10 125 99.99997711 -10 275 99.99997711 -10 275 200 -10 125 200 -10
		 0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10 400 400 -10 0 0 -10 400 0 -10;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 3 1 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 5 6 0 0 7 0 7 6 0 4 7 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 12 14 0
		 13 15 0 7 12 0 6 13 0 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0 3 9 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 3 5 -7 -5
		mu 0 4 8 9 10 11
		f 4 2 7 -9 -6
		mu 0 4 0 1 2 3
		f 4 -1 9 10 -8
		mu 0 4 12 13 14 15
		f 4 -2 4 11 -10
		mu 0 4 4 5 6 7
		f 4 -11 20 14 -22
		mu 0 4 16 17 18 19
		f 4 0 22 -14 -24
		mu 0 4 24 25 26 27
		f 4 6 24 -16 -26
		mu 0 4 20 22 23 21
		f 4 -4 26 12 -28
		mu 0 4 28 30 31 29
		f 4 8 21 19 -25
		mu 0 4 22 16 19 23
		f 4 -3 27 17 -23
		mu 0 4 25 28 29 26
		f 4 -12 25 -19 -21
		mu 0 4 17 20 21 18
		f 4 1 23 -17 -27
		mu 0 4 30 24 27 31;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallWindowB";
	rename -uid "4E8077BD-4FD4-9181-0F9D-76A9B4018FB2";
createNode mesh -n "SM_Flat_Apartment_WallWindowBShape" -p "SM_Flat_Apartment_WallWindowB";
	rename -uid "B3E146EB-4D88-5311-B861-3F9627E18B74";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[10:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8:9]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".pv" -type "double2" 0.4605986857204698 0.50000002176966518 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 32 ".uvst[0].uvsp[0:31]" -type "float2" 0.36094704 0.50091922
		 0.36094704 0.62543994 0.33604291 0.62543994 0.33604291 0.50091922 0.30732551 0.62543994
		 0.30732551 0.50091922 0.33222961 0.50091922 0.33222961 0.62543994 0.39347786 0.68770027
		 0.39347786 0.50091922 0.41838196 0.50091922 0.41838196 0.68770027 0.38966456 0.50091928
		 0.38966456 0.68770033 0.3647604 0.68770033 0.3647604 0.50091928 0.49078399 0.25003937
		 0.30400294 0.25003937 0.00091935869 0.00099800411 0.49900207 0.00099800411 0.30400294
		 0.37456006 0.00091935869 0.49908075 0.49078399 0.37456006 0.49900207 0.49908075 0.72527885
		 0.7499606 0.9120599 0.7499606 0.92027801 0.99900204 0.42219529 0.99900204 0.9120599
		 0.62543988 0.92027801 0.50091922 0.72527885 0.62543988 0.42219529 0.50091922;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  243.40020752 200 0 393.40020752 200 0 243.40020752 99.99997711 0
		 393.40020752 99.99997711 0 243.40020752 99.99997711 -20 393.40020752 99.99997711 -20
		 393.40020752 200 -20 243.40020752 200 -20 0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20
		 400 400 -20 0 0 -20 400 0 -20;
	setAttr -s 28 ".ed[0:27]"  0 1 0 2 0 0 3 1 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 5 6 0 0 7 0 7 6 0 4 7 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 12 14 0
		 13 15 0 7 12 0 6 13 0 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0 3 9 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 3 5 -7 -5
		mu 0 4 8 9 10 11
		f 4 2 7 -9 -6
		mu 0 4 0 1 2 3
		f 4 -1 9 10 -8
		mu 0 4 12 13 14 15
		f 4 -2 4 11 -10
		mu 0 4 4 5 6 7
		f 4 -11 20 14 -22
		mu 0 4 16 17 18 19
		f 4 0 22 -14 -24
		mu 0 4 24 25 26 27
		f 4 6 24 -16 -26
		mu 0 4 20 22 23 21
		f 4 -4 26 12 -28
		mu 0 4 28 30 31 29
		f 4 8 21 19 -25
		mu 0 4 22 16 19 23
		f 4 -3 27 17 -23
		mu 0 4 25 28 29 26
		f 4 -12 25 -19 -21
		mu 0 4 17 20 21 18
		f 4 1 23 -17 -27
		mu 0 4 30 24 27 31;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.00099800399 0.00090224174
		 0.90323943 0.00090224174 0.90323943 0.9031437 0.00099800399 0.9031437 0.90877765
		 0.90314394 0.90877765 0.00090247701 0.99900204 0.00090247701 0.99900204 0.90314394;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  0 0 0 100 0 0 0 10 0 100 10 0 100 10 -100
		 0 10 -100;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 3 4 0 5 4 0 2 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 3 4 -6 -7
		mu 0 4 0 1 2 3
		f 4 0 2 -4 -2
		mu 0 4 4 5 6 7;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.99900204 0.00094518595
		 0.99900204 0.94613105 0.053816181 0.94613105 0.053816181 0.00094518595 0.048257396
		 0.00094518595 0.048257396 0.94613105 0.00099800411 0.94613105 0.00099800411 0.00094518595;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  0 0 7.6293945e-06 0 10 7.6293945e-06 200 0 7.6293945e-06
		 200 10 7.6293945e-06 200 10 -200 0 10 -200;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 3 0 0 2 0 2 3 0 3 4 0 5 4 0 1 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 4 5 6 7
		f 4 4 -6 -7 1
		mu 0 4 0 1 2 3;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.96995479 0.00096895697
		 0.96995479 0.96992576 0.00099800411 0.96992576 0.00099800411 0.00096895697 0.99900204
		 0.00096908334 0.99900204 0.96992588 0.97477806 0.96992588 0.97477806 0.00096908334;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  400 10 -400 400 0 0 400 10 0 0 10 -400 0 0 0
		 0 10 0;
	setAttr -s 7 ".ed[0:6]"  2 0 0 4 1 0 1 2 0 3 0 0 4 5 0 5 2 0 5 3 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 -4 -7 5
		mu 0 4 0 1 2 3
		f 4 -6 -5 1 2
		mu 0 4 4 5 6 7;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.9975667 0.99900198
		 0.00099657022 0.99900198 0.00099657022 0.00099800399 0.9975667 0.00099800399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  380 10 -379.45397949 0 10 -379.45397949 0 10 0
		 380 10 0;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 3 2 -1
		mu 0 4 0 1 2 3;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.00094810373 0.99900198
		 0.00094810373 0.00099800399 0.9490518 0.00099800399 0.9490518 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  400 10 -400 0 10 -400 400 10 -20 0 10 -20;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 0 0 3 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -4 1 -1 -3
		mu 0 4 0 1 2 3;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.00099800399 0.00090224174
		 0.90323943 0.00090224174 0.90323943 0.9031437 0.00099800399 0.9031437 0.90877765
		 0.90314394 0.90877765 0.00090247701 0.99900204 0.00090247701 0.99900204 0.90314394;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  0 0 0 100 0 0 0 10 0 100 10 0 100 10 -100
		 0 10 -100;
	setAttr -s 7 ".ed[0:6]"  0 1 0 0 2 0 1 3 0 2 3 0 3 4 0 5 4 0 2 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 3 4 -6 -7
		mu 0 4 0 1 2 3
		f 4 0 2 -4 -2
		mu 0 4 4 5 6 7;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.99900204 0.00094518595
		 0.99900204 0.94613105 0.053816181 0.94613105 0.053816181 0.00094518595 0.048257396
		 0.00094518595 0.048257396 0.94613105 0.00099800411 0.94613105 0.00099800411 0.00094518595;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  0 0 7.6293945e-06 0 10 7.6293945e-06 200 0 7.6293945e-06
		 200 10 7.6293945e-06 200 10 -200 0 10 -200;
	setAttr -s 7 ".ed[0:6]"  0 1 0 1 3 0 0 2 0 2 3 0 3 4 0 5 4 0 1 5 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 4 5 6 7
		f 4 4 -6 -7 1
		mu 0 4 0 1 2 3;
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
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.96995479 0.00096895697
		 0.96995479 0.96992576 0.00099800411 0.96992576 0.00099800411 0.00096895697 0.99900204
		 0.00096908334 0.99900204 0.96992588 0.97477806 0.96992588 0.97477806 0.00096908334;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".vt[0:5]"  400 10 -400 400 0 0 400 10 0 0 10 -400 0 0 0
		 0 10 0;
	setAttr -s 7 ".ed[0:6]"  2 0 0 4 1 0 1 2 0 3 0 0 4 5 0 5 2 0 5 3 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 -4 -7 5
		mu 0 4 0 1 2 3
		f 4 -6 -5 1 2
		mu 0 4 4 5 6 7;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.00094810373 0.99900198
		 0.00094810373 0.00099800399 0.9490518 0.00099800399 0.9490518 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  400 10 -400 0 10 -400 400 10 -20 0 10 -20;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 0 0 3 1 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -4 1 -1 -3
		mu 0 4 0 1 2 3;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.9975667 0.99900198
		 0.00099657022 0.99900198 0.00099657022 0.00099800399 0.9975667 0.00099800399;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  380 10 -379.45397949 0 10 -379.45397949 0 10 0
		 380 10 0;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 3 0 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 -2 3 2 -1
		mu 0 4 0 1 2 3;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.00099800399 0.99900198
		 0.00099800399 0.00099800399 0.99900198 0.00099800399 0.99900198 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  3.0517578e-05 300 0 100.000030517578 300 0
		 3.0517578e-05 300 -100 100.000030517578 300 -100;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 1 2 3;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.00099800399 0.00099800399
		 0.99900198 0.00099800399 0.99900198 0.99900198 0.00099800399 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  200 300 0 0 300 -200 0 300 0 200 300 -200;
	setAttr -s 4 ".ed[0:3]"  0 3 0 2 1 0 2 0 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 3 -1 -3 1
		mu 0 4 0 1 2 3;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0.00099800399 0.99900198
		 0.00099800399 0.00099800399 0.99900198 0.00099800399 0.99900198 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  400 300 -400 0 300 -400 0 300 0 400 300 0;
	setAttr -s 4 ".ed[0:3]"  1 0 0 2 1 0 2 3 0 3 0 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 1 0 -4 -3
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_StairsMiddle";
	rename -uid "031E8B2F-4E8E-327C-9F0A-E0A682B303CE";
createNode mesh -n "SM_Flat_Apartment_StairsMiddleShape" -p "SM_Flat_Apartment_StairsMiddle";
	rename -uid "5D69D873-44AF-B7C8-3311-D398BCE875B3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:112]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 3 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "front";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "e[4]" "e[231]";
	setAttr ".gtag[1].gtagnm" -type "string" "right";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "e[5]" "e[232]";
	setAttr ".gtag[2].gtagnm" -type "string" "rim";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "e[4:5]" "e[231:232]";
	setAttr ".pv" -type "double2" 0.41744519025087357 0.77307826280593872 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 416 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.60895175 0.80762792 0.60895175
		 0.85241324 0.61063117 0.80762792 0.61063117 0.85241324 0.18359829 0.42868268 0.28748676
		 0.42868268 0.28748676 0.63139182 0.18359829 0.63139182 0.71840191 0.81576771 0.71840191
		 0.71441311 0.72600347 0.71441311 0.72600347 0.81576771 0.73964608 0.71441317 0.73964608
		 0.81576771 0.73204446 0.81576771 0.73204446 0.71441317 0.74568701 0.81576771 0.74568701
		 0.71441317 0.75328863 0.71441317 0.75328863 0.81576771 0.76693124 0.71441317 0.76693124
		 0.81576771 0.75932962 0.81576771 0.75932962 0.71441317 0.77297217 0.81576771 0.77297217
		 0.71441317 0.78057373 0.71441317 0.78057373 0.81576771 0.79421633 0.71441317 0.79421633
		 0.81576771 0.78661478 0.81576771 0.78661478 0.71441317 0.80025721 0.85341352 0.80025721
		 0.75205898 0.80785882 0.75205898 0.80785882 0.85341352 0.82150143 0.75205898 0.82150143
		 0.85341352 0.81389982 0.85341352 0.81389982 0.75205898 0.82754236 0.85341352 0.82754236
		 0.75205898 0.83514392 0.75205898 0.83514392 0.85341352 0.84878653 0.75205898 0.84878653
		 0.85341352 0.84118491 0.85341352 0.84118491 0.75205898 0.85482752 0.85341352 0.85482752
		 0.75205898 0.8624292 0.75205898 0.8624292 0.85341352 0.87607169 0.75205898 0.87607169
		 0.85341352 0.86847013 0.85341352 0.86847013 0.75205898 0.88211268 0.85341352 0.88211268
		 0.75205898 0.88718039 0.75205898 0.88718039 0.85341352 0.89185739 0.89525068 0.89185739
		 0.79389602 0.89945894 0.79389602 0.89945894 0.89525068 0.76619154 0.91911811 0.76619154
		 0.81776345 0.7737931 0.81776345 0.7737931 0.91911799 0.17185709 0.42868268 0.17185709
		 0.53003728 0.16425547 0.53003728 0.16425547 0.42868268 0.17945871 0.63139188 0.16425537
		 0.63139188 0.17945871 0.53003728 0.75445044 0.91911811 0.75445044 0.81776345 0.762052
		 0.81776345 0.762052 0.91911811 0.7503109 0.81776345 0.7503109 0.91911811 0.74270928
		 0.91911811 0.74270928 0.81776345 0.73096818 0.91911811 0.73096818 0.81776345 0.73856974
		 0.81776345 0.73856974 0.91911811 0.72682863 0.81776345 0.72682863 0.91911811 0.71922702
		 0.91911811 0.71922702 0.81776345 0.70748591 0.91911811 0.70748591 0.81776345 0.71508747
		 0.81776345 0.71508747 0.91911811 0.70334637 0.81776345 0.70334637 0.91911811 0.69574481
		 0.91911811 0.69574481 0.81776345 0.68400365 0.91911811 0.68400365 0.81776345 0.69160521
		 0.81776345 0.69160521 0.91911811 0.67986411 0.80762792 0.67986411 0.90898257 0.67226255
		 0.90898257 0.67226255 0.80762792 0.66052139 0.90898257 0.66052139 0.80762792 0.66812295
		 0.80762792 0.66812295 0.90898257 0.65638185 0.80762792 0.65638185 0.90898257 0.64878029
		 0.90898257 0.64878029 0.80762792 0.084615409 0.63338763 0.084615409 0.83609676 0.00099802949
		 0.83609676 0.00099802949 0.63338763 0.20038517 0.63338757 0.20038517 0.83609718 0.1902497
		 0.83609718 0.1902497 0.63717395 0.1902497 0.63338757 0.088895082 0.63718832 0.088895082
		 0.63338757 0.49433592 0.6415273 0.2916263 0.6415273 0.2916263 0.41854721 0.49433592
		 0.41854721 0.20583133 0.84623259 0.20583133 0.64352298 0.21596681 0.64352298 0.21596681
		 0.79048711 0.21596687 0.84623218 0.31732139 0.79048711 0.31732142 0.84623241 0.61477071
		 0.90898257 0.61477071 0.80762792 0.61857158 0.80762792 0.61857158 0.90898257 0.35005271
		 0.64352304 0.37097123 0.64352304 0.37097123 0.74487752 0.35005271 0.74487752 0.37538892
		 0.64352304 0.39630738 0.64352304 0.39630738 0.74487752 0.37538892 0.74487752 0.4007251
		 0.64352304 0.42133012 0.64352304 0.42133012 0.74487752 0.4007251 0.74487752 0.42606133
		 0.64352304 0.44697979 0.64352304 0.44697979 0.74487752 0.42606133 0.74487752 0.45139745
		 0.64352304 0.47231603 0.64352304 0.47231603 0.74487752 0.45139745 0.74487752 0.47673365
		 0.68271154 0.49765214 0.68271154 0.49765214 0.78406608 0.47673365 0.78406608 0.50206977
		 0.68271154 0.52298832 0.68271154 0.52298832 0.78406608 0.50206977 0.78406608 0.52740604
		 0.68271154 0.55947113 0.68271154 0.55947113 0.78406614 0.52740604 0.78406608 0.58535439
		 0.78406608 0.56443584 0.78406608 0.56443584 0.68271154 0.58535439 0.68271154 0.58977205
		 0.70427763 0.61069059 0.70427763 0.61069059 0.80563217 0.58977205 0.80563217 0.6363402
		 0.80563217 0.61510825 0.80563217 0.61510825 0.70427763 0.6363402 0.70427763 0.64239335
		 0.70427763 0.6633119 0.70427763 0.6633119 0.80563217 0.64239335 0.80563217 0.6677295
		 0.70427763 0.68864805 0.70427763 0.68864805 0.80563217 0.6677295 0.80563217 0.6930657
		 0.71441317 0.71398425 0.71441317 0.71398425 0.81576771 0.6930657 0.81576771 0.92641854
		 0.89525068 0.90549999 0.89525068 0.90549999 0.79389602 0.92641854 0.79389602 0.95175475
		 0.89525068 0.9308362 0.89525068 0.9308362 0.79389602 0.95175475 0.79389602 0.9774043
		 0.89525068 0.95617229 0.89525068 0.95617229 0.79389602 0.9774043 0.79389602 0.9990021
		 0.99860102 0.97808367 0.99860102 0.97808367 0.89724642 0.9990021 0.89724642 0.97394413
		 0.99860102 0.95302552 0.99860102 0.95302552 0.89724642 0.97394413 0.89724642 0.9488861
		 0.99860102 0.92796761 0.99860102 0.92796761 0.89724642 0.9488861 0.89724642 0.92382807
		 0.99860102 0.90290958 0.99860102 0.90290958 0.89724642 0.92382807 0.89724642 0.89877003
		 0.99860102 0.87785155 0.99860102 0.87785155 0.89724642 0.89877003 0.89724642 0.873712
		 0.95676392 0.8527934 0.95676392 0.8527934 0.85540926 0.873712 0.85540926 0.84865379
		 0.95676392 0.82804883 0.95676392 0.82804883 0.85540926 0.84865379 0.85540926 0.82390922
		 0.95676392 0.80299079 0.95676392 0.80299079 0.85540926 0.82390922 0.85540926 0.79885119
		 0.95676392 0.7779327 0.95676392 0.7779327 0.85540926 0.79885119 0.85540926 0.57028264
		 0.064764269 0.67163724 0.064764269 0.67163724 0.29486784 0.57028264 0.29486787 0.57028264
		 0.00099760341;
	setAttr ".uvst[0].uvsp[250:415]" 0.67163724 0.00099760341 0.77299184 0.40641594
		 0.57028264 0.40641597 0.67163724 0.25303081 0.77299184 0.25303081 0.16011582 0.63139188
		 0.02764922 0.63139188 0.1391973 0.53003728 0.16011582 0.53003728 0.02764922 0.42868268
		 0.13919728 0.42868268 0.49847549 0.6807158 0.49847549 0.55489129 0.59983003 0.55489129
		 0.59983003 0.6807158 0.49847549 0.41854715 0.59983003 0.41854715 0.62271112 0.90898257
		 0.62271112 0.80762792 0.64464068 0.80762792 0.64464068 0.90898257 0.79561538 0.67058039
		 0.80321693 0.67058039 0.80321693 0.69149888 0.79561538 0.69149888 0.69679463 0.46139529
		 0.69679463 0.44047678 0.69172692 0.44047678 0.69172668 0.40841168 0.74747193 0.40841168
		 0.74747193 0.54475582 0.78801382 0.69149888 0.78041226 0.69149888 0.78041226 0.67058039
		 0.77281058 0.67058039 0.77281058 0.64966184 0.76520902 0.64966184 0.76520902 0.62874335
		 0.75760746 0.62874335 0.75760746 0.60782492 0.75000578 0.60782492 0.75000578 0.58690631
		 0.74240422 0.58690631 0.74240422 0.56598777 0.73480266 0.56598777 0.73480266 0.54475582
		 0.7272011 0.54475582 0.7272011 0.52415085 0.71959943 0.52415085 0.71959943 0.5032323
		 0.71199787 0.5032323 0.71199787 0.48231381 0.70439631 0.48231381 0.70439631 0.46139523
		 0.78801382 0.71241742 0.79561538 0.71241742 0.68758714 0.70228189 0.60396963 0.47217834
		 0.60777038 0.43034124 0.60777038 0.43034124 0.61157119 0.43034124 0.61157119 0.45125976
		 0.61917281 0.45125976 0.61917281 0.47217834 0.62677443 0.47217834 0.62677443 0.4930968
		 0.63437599 0.4930968 0.63437599 0.51401538 0.64197755 0.51401538 0.64197755 0.53462034
		 0.64957917 0.53462034 0.64957917 0.55585235 0.65718079 0.55585235 0.65718079 0.57677084
		 0.66478235 0.57677084 0.66478235 0.59768939 0.67238396 0.59768939 0.67238396 0.61860788
		 0.67998558 0.61860788 0.67998558 0.63952643 0.68758714 0.63952643 0.68758714 0.66044486
		 0.60396963 0.40841168 0.60777038 0.40841168 0.89511365 0.79190028 0.98379898 0.6594336
		 0.99140054 0.6594336 0.99140054 0.68035215 0.97619724 0.63851511 0.98379898 0.63851511
		 0.9990021 0.68035215 0.9990021 0.79190028 0.96859568 0.61759669 0.97619724 0.61759657
		 0.96099412 0.59667814 0.96859568 0.59667814 0.95339251 0.57575965 0.96099412 0.57575953
		 0.94579095 0.5548411 0.95339251 0.5548411 0.93818939 0.53392255 0.94579095 0.53392255
		 0.93058783 0.5126906 0.93818939 0.5126906 0.92298609 0.49208558 0.93058783 0.49208558
		 0.91538447 0.47116703 0.92298609 0.47116703 0.90778291 0.45024857 0.91538447 0.45024857
		 0.90018135 0.42933005 0.90778291 0.42932999 0.89511365 0.40841153 0.90018135 0.40841153
		 0.77881891 0.022926994 0.97392666 0.00099761609 0.78642052 0.043845508 0.77881891
		 0.043845508 0.79402214 0.064764075 0.78642052 0.064764075 0.8016237 0.085682541 0.79402214
		 0.085682541 0.80922526 0.1066011 0.8016237 0.1066011 0.81682688 0.12720612 0.80922526
		 0.12720612 0.8244285 0.14843808 0.81682688 0.14843808 0.83203012 0.1693566 0.8244285
		 0.1693566 0.83963168 0.19027512 0.83203012 0.19027512 0.8472333 0.21119364 0.83963168
		 0.21119364 0.85483491 0.23211214 0.8472333 0.23211214 0.86243653 0.2530306 0.85483491
		 0.25303066 0.87003815 0.27394912 0.86243653 0.27394912 0.87003815 0.40641579 0.97392702
		 0.40641579 0.356693 0.011133101 0.20972919 0.13734175 0.20972919 0.00099762878 0.35669342
		 0.00099762878 0.25787264 0.26316634 0.273076 0.26316634 0.27307588 0.41655147 0.35669321
		 0.41655147 0.89097399 0.63851511 0.89097399 0.75006324 0.8073566 0.75006324 0.80735648
		 0.40841153 0.56445593 0.00099762878 0.56445593 0.41655141 0.36174634 0.41655141 0.36174634
		 0.00099762878 0.20370761 0.42668694 0.00099800411 0.42668694 0.00099800411 0.00099761609
		 0.20370761 0.00099761609 0.34469718 0.64352298 0.34469718 0.84244621 0.32276762 0.64733815
		 0.32276762 0.6435374;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 149 ".vt[0:148]"  799.99957275 410 0 820 410 399.99993896 2.9731866e-05 410 399.99993896
		 2.9731866e-05 410 0 2.9731866e-05 205 400 2.9731866e-05 205 0 220.11454773 205 400
		 220.11454773 175 0 220.11457825 175 200 220.11457825 205 199.99996948 715.44903564 400 399.99993896
		 756.72692871 400 399.99993896 550.95611572 340 399.99993896 591.61541748 340 399.99993896
		 302.67034912 250 399.99993896 343.94824219 250 399.99993896 385.22607422 280 399.99993896
		 426.50396729 280 399.99993896 467.78179932 310 399.99993896 509.059692383 310 399.99993896
		 632.89331055 370 399.99993896 674.17120361 370 399.99993896 220.11457825 220 399.99993896
		 261.39245605 220 399.99993896 756.72692871 400 200 715.44903564 400 200 591.61541748 340 200
		 550.95611572 340 200 343.94824219 250 200 302.67034912 250 200 426.50396729 280 200
		 385.22607422 280 200 509.059692383 310 200 467.78179932 310 200 674.17120361 370 200
		 632.89331055 370 200 261.39245605 220 200 220.11457825 220 200 715.44909668 385 200
		 674.17120361 385 200 591.61541748 355 399.99993896 632.89331055 355 399.99993896
		 756.72692871 410 399.99993896 550.95611572 325 200 509.059692383 325 200 343.94818115 265 399.99993896
		 385.22607422 265 399.99993896 261.39245605 235 399.99993896 302.67034912 235 399.99993896
		 509.059692383 325 399.99993896 550.95611572 325 399.99993896 385.22607422 265 200
		 343.94818115 265 200 632.89331055 355 200 591.61541748 355 200 820 300 200.000061035156
		 820 410.00042724609 199.99993896 756.72692871 410 200 426.50390625 295 399.99993896
		 467.78179932 295 399.99993896 674.17120361 385 399.99993896 715.44909668 385 399.99993896
		 302.67034912 175 200 302.67034912 235 200 261.39245605 235 200 467.78179932 295 200
		 426.50390625 295 200 302.67034912 205 200 632.89331055 70.000007629395 0 591.61541748 70.000007629395 0
		 467.78182983 130 0 426.50396729 130 0 674.17120361 10 0 715.44909668 40.000003814697 0
		 674.17120361 40.000003814697 0 550.95611572 99.99999237 0 509.059692383 99.99999237 0
		 385.22607422 160 0 343.94821167 160 0 302.67034912 190 0 261.39245605 190 0 261.39245605 190 200
		 302.67034912 190 200 343.94821167 160 200 385.22607422 160 200 426.50396729 130 200
		 467.78182983 130 200 509.059692383 99.99999237 200 550.95611572 99.99999237 200 591.61541748 70.000007629395 200
		 632.89331055 70.000007629395 200 674.17120361 10 200 674.17120361 40.000003814697 200
		 715.44909668 40.000003814697 200 674.17120361 54.99999619 0 632.89331055 54.99999619 0
		 591.61541748 85 0 550.95611572 85 0 509.059692383 115 0 467.78179932 115 0 756.72698975 20.014198303 0
		 756.72698975 24.99999428 0 715.44909668 24.99999428 0 426.50396729 145 0 385.22607422 145 0
		 343.94821167 175 0 302.6703186 175 0 261.39245605 205 0 261.39245605 205 199.99996948
		 343.94821167 175 200 385.22607422 145 200 426.50396729 145 200 467.78179932 115 200
		 509.059692383 115 200 550.95611572 85 200 591.61541748 85 200 632.89331055 54.99999619 200
		 674.17120361 54.99999619 200 756.72698975 20.014198303 200 715.44909668 24.99999428 200
		 756.72698975 24.99999428 200 550.95617676 299.99996948 200 2.9731866e-05 410.00088500977 0
		 550.95617676 300 400 302.67034912 205 400 800 10.00083446503 400 302.67034912 174.99975586 400
		 2.9731866e-05 175 400 1.2404043e-05 175 0 -9.1562884e-05 10.00034618378 400 674.17120361 10 0
		 1.2404043e-05 10.00034618378 0 800 410.00088500977 -20 800 10 -20 800 410.00088500977 0
		 800 9.99999809 0 -20 410.00088500977 -20 -20 10 -20 -20 410.00085449219 420 -20 10 420
		 820 410.00085449219 420 820 10 420 820 10 400 820 300 400 800 19.9858017 0 800 20.014198303 200
		 756.72698975 17.49999619 0 756.72698975 17.49999619 200 800 9.99999619 200;
	setAttr -s 265 ".ed";
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
		 78 83 0 79 82 0 80 81 0 95 94 0 97 96 0 99 98 0 100 146 0 102 101 0 104 103 0 106 105 0
		 5 107 0 9 108 0 62 109 0 110 111 0 112 113 0 114 115 0 116 117 0 118 147 0 119 120 0
		 107 108 0 105 109 0 106 62 0 103 111 0 104 110 0 98 113 0 99 112 0 96 115 0 97 114 0
		 94 117 0 95 116 0 100 118 0 101 120 0 102 119 0 80 107 0 81 108 0 82 62 0 79 106 0
		 78 105 0 83 109 0 84 110 0 77 104 0 71 103 0 85 111 0 86 112 0 70 99 0 76 98 0 87 113 0
		 88 114 0;
	setAttr ".ed[166:264]" 75 97 0 69 96 0 89 115 0 90 116 0 68 95 0 74 94 0 92 117 0
		 93 119 0 73 102 0 67 108 0 36 108 0 37 9 0 91 8 0 72 7 0 5 9 0 6 9 0 10 2 1 12 2 1
		 14 2 1 16 2 1 18 2 1 20 2 1 22 2 1 40 2 1 45 2 1 47 2 1 49 2 1 58 2 1 60 2 1 42 2 0
		 121 67 0 5 122 0 122 0 0 0 101 0 0 73 1 0 94 1 0 68 1 0 96 1 0 75 1 0 98 1 0 70 1
		 0 103 1 0 77 1 0 105 1 0 79 1 0 107 1 0 5 1 121 123 0 143 123 0 67 124 0 123 124 0
		 123 125 0 124 126 0 125 126 1 62 126 0 8 127 0 126 127 0 7 128 0 127 128 0 127 129 0
		 125 129 0 7 130 0 128 131 0 130 131 0 129 131 0 136 132 0 132 133 0 132 134 0 133 135 0
		 134 144 0 133 137 0 136 137 0 136 138 0 137 139 0 138 139 0 138 140 0 139 141 0 140 141 0
		 140 1 0 141 142 0 143 142 0 140 143 1 125 142 0 143 55 0 1 143 1 100 144 0 118 145 0
		 144 145 0 146 101 0 147 120 0 146 147 1 145 148 0 144 135 0 135 148 0 72 135 0 91 148 0
		 134 101 0 144 146 0 133 144 1;
	setAttr -s 113 -ch 498 ".fc[0:112]" -type "polyFaces" 
		f 4 -2 -1 2 3
		mu 0 4 4 5 6 7
		f 4 -8 22 14 -22
		mu 0 4 141 142 143 144
		f 4 -13 24 19 -24
		mu 0 4 145 146 147 148
		f 4 -9 26 15 -26
		mu 0 4 149 150 151 152
		f 4 -12 28 18 -28
		mu 0 4 153 154 155 156
		f 4 -11 30 17 -30
		mu 0 4 157 158 159 160
		f 4 -10 32 16 -32
		mu 0 4 161 162 163 164
		f 4 -14 34 20 -34
		mu 0 4 165 166 167 168
		f 4 -38 51 44 -51
		mu 0 4 169 170 171 172
		f 4 35 53 -47 -53
		mu 0 4 173 174 175 176
		f 4 -37 55 43 -55
		mu 0 4 177 178 179 180
		f 4 38 57 -42 -57
		mu 0 4 181 182 183 184
		f 4 -46 59 49 -59
		mu 0 4 185 186 187 188
		f 4 -40 61 42 -61
		mu 0 4 189 190 191 192
		f 4 -41 63 48 -63
		mu 0 4 193 194 195 196
		f 4 -35 65 62 -67
		mu 0 4 8 9 10 11
		f 4 31 67 -64 -69
		mu 0 4 12 13 14 15
		f 4 -33 69 60 -71
		mu 0 4 16 17 18 19
		f 4 29 71 -62 -73
		mu 0 4 20 21 22 23
		f 4 -31 73 58 -75
		mu 0 4 24 25 26 27
		f 4 27 75 -60 -77
		mu 0 4 28 29 30 31
		f 4 -29 77 -58 -79
		mu 0 4 32 33 34 35
		f 4 25 79 56 -81
		mu 0 4 36 37 38 39
		f 4 -27 81 54 -83
		mu 0 4 40 41 42 43
		f 4 23 83 -56 -85
		mu 0 4 44 45 46 47
		f 4 -25 85 -54 -87
		mu 0 4 48 49 50 51
		f 4 21 87 52 -89
		mu 0 4 52 53 54 55
		f 4 -23 89 50 -91
		mu 0 4 56 57 58 59
		f 4 -6 93 33 -95
		mu 0 4 60 61 62 63
		f 4 -98 109 107 -109
		mu 0 4 197 198 199 200
		f 4 -96 112 105 -112
		mu 0 4 201 202 203 204
		f 4 -99 114 104 -114
		mu 0 4 205 206 207 208
		f 4 -97 116 103 -116
		mu 0 4 209 210 211 212
		f 4 -100 118 102 -118
		mu 0 4 213 214 215 216
		f 4 -101 120 101 -120
		mu 0 4 217 218 219 220
		f 4 -128 139 130 -139
		mu 0 4 221 222 223 224
		f 4 -127 141 131 -141
		mu 0 4 225 226 227 228
		f 4 -124 143 132 -143
		mu 0 4 229 230 231 232
		f 4 -123 145 133 -145
		mu 0 4 233 234 235 236
		f 4 -122 147 134 -147
		mu 0 4 237 238 239 240
		f 4 124 256 -136 -149
		mu 0 4 0 2 3 1
		f 4 -126 150 136 -150
		mu 0 4 241 242 243 244
		f 4 -121 151 137 -153
		mu 0 4 64 65 66 67
		f 4 119 153 -140 -155
		mu 0 4 68 69 70 71
		f 4 -119 155 138 -157
		mu 0 4 75 76 77 78
		f 4 117 157 -142 -159
		mu 0 4 79 80 81 82
		f 4 -117 159 140 -161
		mu 0 4 83 84 85 86
		f 4 115 161 -144 -163
		mu 0 4 87 88 89 90
		f 4 -115 163 142 -165
		mu 0 4 91 92 93 94
		f 4 113 165 -146 -167
		mu 0 4 95 96 97 98
		f 4 -113 167 144 -169
		mu 0 4 99 100 101 102
		f 4 111 169 -148 -171
		mu 0 4 103 104 105 106
		f 4 -110 171 146 -173
		mu 0 4 107 108 109 110
		f 4 108 173 -151 -175
		mu 0 4 111 112 113 114
		f 4 92 -102 152 -176
		mu 0 4 271 272 273 274
		f 4 -21 176 -130 -178
		mu 0 4 304 281 274 305
		f 31 -15 90 -45 91 64 196 175 -177 66 -49 -68 -17 70 -43 -72 -18 74 -50 -76 -19 78 -39
		 -80 -16 82 -44 -84 -20 86 -36 -88
		mu 0 31 275 276 277 278 279 280 271 274 281 282 283 284 285 286 287 288 289 290 291 292
		 293 294 295 296 297 298 299 300 301 302 303
		f 4 110 178 6 -180
		mu 0 4 245 246 247 248
		f 26 -179 106 135 255 -137 -174 -108 172 -135 -170 -106 168 -134 -166 -105 164 -133
		 -162 -104 160 -132 -158 -103 156 -131 47
		mu 0 26 306 307 308 309 310 311 312 313 314 315 316 317 318 319 320 321 322 323 324 325
		 326 327 328 329 330 331
		f 4 -129 180 129 -138
		mu 0 4 255 256 257 258
		f 4 4 181 -181 -4
		mu 0 4 259 260 257 256
		f 4 -192 -66 13 188
		mu 0 4 334 335 336 337
		f 4 -185 68 40 191
		mu 0 4 334 338 339 335
		f 4 -191 -70 9 184
		mu 0 4 334 342 343 338
		f 4 -186 72 39 190
		mu 0 4 334 344 345 342
		f 4 -194 -74 10 185
		mu 0 4 334 346 347 344
		f 4 -187 76 45 193
		mu 0 4 334 348 349 346
		f 4 -193 -78 11 186
		mu 0 4 334 350 351 348
		f 4 -184 80 41 192
		mu 0 4 334 352 353 350
		f 4 -190 -82 8 183
		mu 0 4 334 354 355 352
		f 4 -188 84 36 189
		mu 0 4 334 356 357 354
		f 4 -195 -86 12 187
		mu 0 4 334 358 359 356
		f 4 -183 88 46 194
		mu 0 4 334 360 361 358
		f 4 -196 -90 7 182
		mu 0 4 334 362 363 360
		f 4 -189 -94 -5 -3
		mu 0 4 334 337 340 341
		f 4 -200 200 174 125
		mu 0 4 364 365 366 367
		f 4 -201 201 -172 97
		mu 0 4 366 365 368 369
		f 4 -202 202 170 121
		mu 0 4 368 365 370 371
		f 4 -203 203 -168 95
		mu 0 4 370 365 372 373
		f 4 -205 205 -164 98
		mu 0 4 374 365 376 377
		f 4 -206 206 162 123
		mu 0 4 376 365 378 379
		f 4 -207 207 -160 96
		mu 0 4 378 365 380 381
		f 4 -208 208 158 126
		mu 0 4 380 365 382 383
		f 4 -209 209 -156 99
		mu 0 4 382 365 384 385
		f 4 -210 210 154 127
		mu 0 4 384 365 386 387
		f 4 -211 211 -152 100
		mu 0 4 386 365 388 389
		f 3 -212 212 128
		mu 0 3 388 365 390
		f 4 -204 204 166 122
		mu 0 4 372 365 374 375
		f 3 -213 -199 -198
		mu 0 3 390 365 391
		f 4 -197 213 216 -216
		mu 0 4 261 262 263 264
		f 4 -218 -215 246 -249
		mu 0 4 392 393 394 395
		f 4 -217 217 219 -219
		mu 0 4 396 393 392 397
		f 4 -48 220 222 -222
		mu 0 4 247 253 254 251
		f 5 218 -221 -154 -93 215
		mu 0 5 72 73 70 69 74
		f 4 -7 221 224 -224
		mu 0 4 248 247 251 252
		f 4 -223 -220 226 -226
		mu 0 4 398 397 392 399
		f 4 223 228 -230 -228
		mu 0 4 400 401 402 403
		f 4 -225 225 230 -229
		mu 0 4 115 116 117 118
		f 3 264 258 -235
		mu 0 3 119 122 123
		f 4 236 -238 231 232
		mu 0 4 404 405 406 407
		f 4 237 239 -241 -239
		mu 0 4 126 127 128 129
		f 4 240 242 -244 -242
		mu 0 4 408 409 410 411
		f 4 243 245 -247 -248
		mu 0 4 130 131 132 133
		f 4 -250 214 -214 -65
		mu 0 4 265 266 263 262
		f 4 249 -92 -52 250
		mu 0 4 133 135 136 134
		f 3 -251 -245 247
		mu 0 3 133 134 130
		f 4 148 252 -254 -252
		mu 0 4 267 268 269 270
		f 4 -111 260 259 -262
		mu 0 4 246 245 249 250
		f 4 -257 254 149 -256
		mu 0 4 137 138 139 140
		f 4 261 -258 -253 -107
		mu 0 4 307 332 333 308
		f 4 253 257 -260 -259
		mu 0 4 122 124 125 123
		f 4 -236 262 -255 -264
		mu 0 4 412 413 414 415
		f 4 -233 233 235 -265
		mu 0 4 119 120 121 122;
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
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 2.4950183e-05 0.99900198
		 2.4950183e-05 0.00099800399 0.024975101 0.00099800399 0.024975101 0.99900198;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  0 -10 0 400 -10 0 0 0 0 400 0 0;
	setAttr -s 4 ".ed[0:3]"  0 1 0 2 3 0 0 2 0 1 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 3 -2 -3
		mu 0 4 0 1 2 3;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_WallA1";
	rename -uid "1F6C9EFE-49E8-DFE4-2FBE-78A93ADBFC8A";
createNode mesh -n "SM_Flat_Apartment_WallA1Shape" -p "SM_Flat_Apartment_WallA1";
	rename -uid "D55FF07E-4CA3-2A10-BEBD-88BCD848B6BD";
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
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 0;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.00092683895 0.00099800411
		 0.49900213 0.00099800411 0.49900213 0.4990733 0.00092683895 0.4990733 0.42969042
		 0.50092661 0.92776573 0.50092661 0.92776573 0.99900192 0.42969042 0.99900192;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  0 0 10 400 0 10 0 400 10 400 400 10 0 400 -10
		 400 400 -10 0 0 -10 400 0 -10;
	setAttr -s 8 ".ed[0:7]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 4 6 0
		 5 7 0;
	setAttr -s 2 -ch 8 ".fc[0:1]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 2 3
		f 4 2 7 -4 -7
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane1";
	rename -uid "2F9EC655-440A-511C-8415-B0B3B25A3241";
	setAttr ".t" -type "double3" 850.78358789948481 0 213.17439398884554 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "755EB22E-487A-3F41-2C53-1E90A253E0A4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "E950A36B-4B1F-8AB0-33D3-F2AECD5E7293";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B5641B0F-44FC-84BB-E9D9-818A83FD4D2F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EF6748C7-4E8B-DE8F-E99D-B1A9E5768813";
createNode displayLayerManager -n "layerManager";
	rename -uid "32AB1406-4956-7E63-05D5-6C8EFF4CEED4";
createNode displayLayer -n "defaultLayer";
	rename -uid "C741B547-41D8-3A88-C3F2-698283648D3A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6E16C312-4B95-7301-CB90-2594ABF1F4CF";
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
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C815020C-4361-73C3-0906-A4B096AAC107";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n"
		+ "            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1252\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 20 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6F2C04CB-4FD7-A8FA-98C2-56A862E03B58";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 174 -ast 0 -aet 174 ";
	setAttr ".st" 6;
createNode groupId -n "groupId54";
	rename -uid "49F0B52E-4C5A-DCC0-11E2-9FBD86F040B6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId55";
	rename -uid "797FE2FE-4A9D-DFB1-94D2-50BAABC8137F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId56";
	rename -uid "9D79A3CD-470D-7F4F-26AE-2FA7E460FA0B";
	setAttr ".ihi" 0;
createNode groupId -n "groupId57";
	rename -uid "547F0E4D-4954-0B58-EBEA-46BAB1CCDDC3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId58";
	rename -uid "6C90383C-4BF6-0F96-7918-A4848D6633BF";
	setAttr ".ihi" 0;
createNode groupId -n "groupId59";
	rename -uid "C5BF22C4-443C-146F-0ED9-DC91F8B78B8D";
	setAttr ".ihi" 0;
createNode groupId -n "groupId60";
	rename -uid "CC05A690-4D37-F95D-94B3-24986A467235";
	setAttr ".ihi" 0;
createNode groupId -n "groupId61";
	rename -uid "14A6D2A6-4EEB-4810-7DB1-DC95B7A0A532";
	setAttr ".ihi" 0;
createNode groupId -n "groupId66";
	rename -uid "26B89BA1-4CB1-9850-E963-5084DB72617F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId67";
	rename -uid "CD829BEC-4C0F-6D53-F9E7-0E96BCF29CC8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId68";
	rename -uid "AA007600-433C-217F-1CA9-E395548C9263";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	rename -uid "E305BA88-4758-079D-80C6-9D95CE61CCE5";
	setAttr ".w" 10;
	setAttr ".h" 10;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode groupId -n "groupId71";
	rename -uid "97F19DB8-4362-FA6E-1D0E-459D782EAF9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId72";
	rename -uid "A33D1002-46B4-D185-9B81-248C3A0FEBAE";
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
	setAttr -s 13 ".gn";
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
connectAttr "groupId66.id" "SM_Flat_Apartment_WindowAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WindowAShape.iog.og[0].gco"
		;
connectAttr "groupId67.id" "SM_Flat_Apartment_WallBShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallBShape.iog.og[0].gco"
		;
connectAttr "groupId68.id" "SM_Flat_Apartment_WallWindowAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallWindowAShape.iog.og[0].gco"
		;
connectAttr "groupId72.id" "SM_Flat_Apartment_WallWindowBShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WallWindowBShape.iog.og[0].gco"
		;
connectAttr "groupId61.id" "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId60.id" "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId59.id" "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0].gco"
		;
connectAttr "groupId58.id" "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId57.id" "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId56.id" "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0].gco"
		;
connectAttr "groupId55.id" "SM_Flat_Apartment_Roof200x200Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_Roof200x200Shape.iog.og[0].gco"
		;
connectAttr "groupId54.id" "SM_Flat_Apartment_Roof400x400Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_Roof400x400Shape.iog.og[0].gco"
		;
connectAttr "groupId71.id" "SM_Flat_Apartment_StairsMiddleShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_StairsMiddleShape.iog.og[0].gco"
		;
connectAttr "polyPlane1.out" "pPlaneShape1.i";
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
connectAttr "SM_Flat_Apartment_DoorAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallDoorBShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_WallDoorCShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_FloorConcrete100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof100x100Shape.iog" ":initialShadingGroup.dsm" 
		-na;
connectAttr "SM_Flat_Apartment_WallDoorDShape.iog" ":initialShadingGroup.dsm" -na
		;
connectAttr "SM_Flat_Apartment_DoorBShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_FloorConcrete390x390Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles390x390Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Concrete_FoundationShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles400x390Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete400x390Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete400x400Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorConcrete200x200Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WindowAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallCShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_WallBShape.iog.og[0]" ":initialShadingGroup.dsm" 
		-na;
connectAttr "SM_Flat_Apartment_WallWindowAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallA1Shape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_StairsMiddleShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_WallWindowBShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "groupId54.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId55.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId56.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId57.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId58.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId59.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId60.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId61.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId66.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId67.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId68.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId72.msg" ":initialShadingGroup.gn" -na;
// End of Flat_Apartment_Building_Kit.ma
