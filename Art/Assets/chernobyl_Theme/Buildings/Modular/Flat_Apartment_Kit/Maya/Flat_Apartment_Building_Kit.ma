//Maya ASCII 2024 scene
//Name: Flat_Apartment_Building_Kit.ma
//Last modified: Tue, Jun 25, 2024 12:36:14 AM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202302170737-4500172811";
fileInfo "osv" "Windows 11 Pro v2009 (Build: 22631)";
fileInfo "UUID" "9BAB91B4-4B64-33DC-5EA4-F9B5C7DA521A";
createNode transform -s -n "persp";
	rename -uid "6F12B89E-4C8E-E9D9-813B-308EB24041EC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1822.7644522351331 1170.890201904373 -463.21377167358651 ;
	setAttr ".r" -type "double3" -22.538352791909894 -9104.99999999996 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "641C0B76-45AE-3E92-342F-C58AD9E18C5B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".ncp" 10;
	setAttr ".fcp" 100000;
	setAttr ".coi" 2391.4388647849482;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 810.01486021873518 830.00000064734911 199.99994089198159 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "C21C40F7-475A-C788-233B-CF86882EAA14";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 702.30226462832945 2740.2610897875538 223.85637556064404 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "B76F1C19-46D0-A379-F336-DC8F4B5DCB71";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 2740.2610897875538;
	setAttr ".ow" 1186.8835308639791;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" 0 0 -9.8495602795775312 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "E43A952A-4E09-9559-4585-1EBBC1CF6C2A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.51705323114800095 -16.164487244569727 1835.1168587510645 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "C020EFDA-4911-F680-BB4A-0C9851467A0E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 3174.3433934508362;
	setAttr ".ow" 154.05202697449613;
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
	setAttr ".ow" 643.67597810205837;
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
createNode transform -n "SM_Flat_Apartment_Concrete_Foundation";
	rename -uid "7ACDEE35-47FA-B232-B853-B7934CF7904C";
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
	setAttr -s 64 ".pt[0:63]" -type "float3"  0 -2.2737368e-13 0 0 59.687275 
		0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 
		0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 -2.2737368e-13 0 0 59.687275 
		0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 59.687275 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 
		0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 
		0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 59.687275 0 0 -2.2737368e-13 0 0 59.687275 0 0 -2.2737368e-13 
		0 0 59.687275 0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 
		0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 0 
		-2.2737368e-13 0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 
		0 0 -2.2737368e-13 0 0 59.687275 0 0 59.687275 0 0 -2.2737368e-13 0 0 -2.2737368e-13 
		0 0 59.687275 0;
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
	setAttr ".pv" -type "double2" 0.53141087293624878 0.45499008917249739 ;
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
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[132]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[133]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[134]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[135]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[144]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[145]" -type "float3" 20.029816 0 0 ;
	setAttr ".pt[148]" -type "float3" 20.029816 0 0 ;
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
createNode transform -n "SM_Flat_Apartment_InteriorWallA";
	rename -uid "08CD6D11-43BD-039D-7142-62837A42A7A7";
createNode mesh -n "SM_Flat_Apartment_InteriorWallAShape" -p "SM_Flat_Apartment_InteriorWallA";
	rename -uid "0876F40D-4990-A15F-99F0-DFA5F10496E5";
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
createNode transform -n "SM_Flat_Apartment_InteriorWallB";
	rename -uid "6BB081A0-4C60-0F4D-1FA6-83A06D1F9151";
createNode mesh -n "SM_Flat_Apartment_InteriorWallBShape" -p "SM_Flat_Apartment_InteriorWallB";
	rename -uid "9AB144D0-4A3F-C567-FA5E-A88DD2778C9D";
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
createNode transform -n "SM_Flat_Apartment_InteriorWallDoorA";
	rename -uid "DCCDF574-4D1D-190D-3D4B-69B8098F104A";
createNode mesh -n "SM_Flat_Apartment_InteriorWallDoorAShape" -p "SM_Flat_Apartment_InteriorWallDoorA";
	rename -uid "70DF126D-4C22-35AB-43F1-16A8E26EE30C";
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
createNode transform -n "SM_Flat_Apartment_InteriorWallDoorB";
	rename -uid "12980652-44A6-2410-A4F0-9899919951BD";
createNode mesh -n "SM_Flat_Apartment_InteriorWallDoorBShape" -p "SM_Flat_Apartment_InteriorWallDoorB";
	rename -uid "3DE388CA-4136-A4B9-05DF-DBAF28058F9A";
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
createNode transform -n "SM_Flat_Apartment_InteriorWallDoorC";
	rename -uid "0EB4DCD0-4FB2-82AF-5369-239152E2E2FF";
createNode mesh -n "SM_Flat_Apartment_InteriorWallDoorCShape" -p "SM_Flat_Apartment_InteriorWallDoorC";
	rename -uid "C2658B4E-4546-6E6F-1A7F-F7BCC6E68E42";
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
createNode transform -n "SM_Flat_Apartment_ExteriorWallA";
	rename -uid "AAB0E50E-4624-05D4-B0A1-32B8FCC712F6";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallAShape" -p "SM_Flat_Apartment_ExteriorWallA";
	rename -uid "860924D4-456C-A6BA-83AA-1BB175DBE5D0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[6]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1
		 0.00092683895 0.00099800411 0.49900213 0.00099800411 0.49900213 0.4990733 0.00092683895
		 0.4990733 0.42969042 0.50092661 0.92776573 0.50092661 0.92776573 0.99900192 0.42969042
		 0.99900192;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".vt[0:12]"  189.66886902 289.27993774 42.46649933 112.36245728 211.97354126 42.46649933
		 189.66885376 134.66714478 42.46649933 266.97525024 211.97354126 42.46649933 189.66885376 211.97354126 197.079284668
		 0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20 400 400 -20 0 0 -20 400 0 -20;
	setAttr -s 16 ".ed[0:15]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 8 0 9 10 0 11 12 0 5 7 0 6 8 0 9 11 0 10 12 0;
	setAttr -s 7 -ch 24 ".fc[0:6]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 8 13 -10 -13
		mu 0 4 10 11 12 13
		f 4 10 15 -12 -15
		mu 0 4 14 15 16 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallB";
	rename -uid "1AD7D999-45B3-3700-22FD-FA8EF71A95D0";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallBShape" -p "SM_Flat_Apartment_ExteriorWallB";
	rename -uid "64790456-4235-7660-50B4-2BBFD2BBC46B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[6]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[5]" "f[7]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1
		 0.00094893906 0.00099800411 0.33235189 0.00099800411 0.33235189 0.33240095 0.00094893906
		 0.33240095 0.63505507 0.33429846 0.94988799 0.33429846 0.94988799 0.66570145 0.63505507
		 0.66570145 0.00094893906 0.66759914 0.31578171 0.66759914 0.31578171 0.99900204 0.00094893906
		 0.99900204 0.65127403 0.99900204 0.3198711 0.99900204 0.3198711 0.66759914 0.65127403
		 0.66759914;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".vt[0:16]"  -67.25783539 289.27993774 72.17723083 -121.91511536 211.97354126 17.50674438
		 -67.25784302 134.66714478 72.17721558 -12.60057831 211.97354126 126.84770203 -176.59880066 211.97354126 181.49176025
		 0 0 0 400 0 0 0 400 0 400 400 0 20 400 -20 400 400 -20 20 0 -20 400 0 -20 20 0 -400
		 20 400 -400 0 400 -400 0 0 -400;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 8 0 9 10 0 11 12 0 5 7 0 6 8 0 9 11 0 10 12 0 11 13 0 9 14 0 7 15 0
		 5 16 0 13 14 0 15 16 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 8 13 -10 -13
		mu 0 4 10 11 12 13
		f 4 10 15 -12 -15
		mu 0 4 14 15 16 17
		f 4 16 20 -18 14
		mu 0 4 18 19 20 21
		f 4 18 21 -20 12
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallC";
	rename -uid "777C9251-4F07-F549-E0F9-9E8906F7332A";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallCShape" -p "SM_Flat_Apartment_ExteriorWallC";
	rename -uid "A2444B13-42D7-8E1F-854D-EE97414B4869";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:8]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 2 "f[6]" "f[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[5]" "f[7]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1
		 0.00094893906 0.00099800411 0.33235189 0.00099800411 0.33235189 0.33240095 0.00094893906
		 0.33240095 0.63505507 0.33429846 0.94988799 0.33429846 0.94988799 0.66570145 0.63505507
		 0.66570145 0.00094893906 0.66759914 0.31578171 0.66759914 0.31578171 0.99900204 0.00094893906
		 0.99900204 0.65127403 0.99900204 0.3198711 0.99900204 0.3198711 0.66759914 0.65127403
		 0.66759914;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  0 0 -20 0 0 -20 0 0 -20 0 
		0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 -20 0 0 
		-20 0 0 -20 0 0 -20 0 0 -20;
	setAttr -s 17 ".vt[0:16]"  233.2013092 289.27993774 143.36767578 176.56896973 211.97354126 90.74583435
		 233.20129395 134.66714478 143.36766052 289.83361816 211.97354126 195.98950195 127.95763397 211.97354126 256.63232422
		 400 0 2.8421709e-14 0 0 -2.0564164e-14 400 400 2.8421709e-14 0 400 -2.0564164e-14
		 380 400 20 0 400 20 380 0 20 0 0 20 380 0 400 380 400 400 400 400 400 400 0 400;
	setAttr -s 22 ".ed[0:21]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 8 0 9 10 0 11 12 0 5 7 0 6 8 0 9 11 0 10 12 0 11 13 0 9 14 0 7 15 0
		 5 16 0 13 14 0 15 16 0;
	setAttr -s 9 -ch 32 ".fc[0:8]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 8 13 -10 -13
		mu 0 4 10 11 12 13
		f 4 10 15 -12 -15
		mu 0 4 14 15 16 17
		f 4 16 20 -18 14
		mu 0 4 18 19 20 21
		f 4 18 21 -20 12
		mu 0 4 22 23 24 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallD";
	rename -uid "BA1D1E86-4DD5-02EC-EDF5-09B677C24AD0";
	setAttr ".rp" -type "double3" 190 200 88.539645138923873 ;
	setAttr ".sp" -type "double3" 190 200 88.539645138923873 ;
createNode mesh -n "SM_Flat_Apartment_ExteriorWallDShape" -p "SM_Flat_Apartment_ExteriorWallD";
	rename -uid "64A9D13C-423A-EEB3-ABB4-FEA755BA9EF8";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:6]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[3:6]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.49900213 0.00099800411
		 0.49900213 0.4990733 0.92776573 0.50092661 0.92776573 0.99900192 0.025830604 0.00099800411
		 0.025830604 0.4990733 0.45459419 0.50092661 0.45459419 0.99900192 0.50000006 0 0.75
		 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".vt[0:12]"  0 0 0 380 0 0 0 400 0 380 400 0 0 400 -20
		 380 400 -20 0 0 -20 380 0 -20 175.23068237 289.27993774 42.46649933 97.92427063 211.97354126 42.46649933
		 175.23066711 134.66714478 42.46649933 252.5370636 211.97354126 42.46649933 175.23066711 211.97354126 197.079284668;
	setAttr -s 16 ".ed[0:15]"  0 2 0 1 3 0 4 6 0 5 7 0 0 1 0 2 3 0 4 5 0
		 6 7 0 8 9 0 9 10 0 10 11 0 11 8 0 8 12 0 9 12 0 10 12 0 11 12 0;
	setAttr -s 7 -ch 24 ".fc[0:6]" -type "polyFaces" 
		f 4 -1 4 1 -6
		mu 0 4 5 4 0 1
		f 4 -3 6 3 -8
		mu 0 4 7 6 2 3
		f 4 -12 -11 -10 -9
		mu 0 4 8 9 10 11
		f 3 8 13 -13
		mu 0 3 12 13 14
		f 3 9 14 -14
		mu 0 3 13 15 14
		f 3 10 15 -15
		mu 0 3 15 16 14
		f 3 11 12 -16
		mu 0 3 16 17 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallE";
	rename -uid "41640B51-48D0-F563-416E-1799615305A0";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallEShape" -p "SM_Flat_Apartment_ExteriorWallE";
	rename -uid "F30FC6C1-4398-6937-664E-84A664926404";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:7]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[6:7]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".pv" -type "double2" 0.47370447963476181 0.35983493190724403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0.73085928 0.71767783
		 0.73085928 0.0019920429 0.76664358 0.0019920429 0.76664358 0.71767783 0.78548807
		 0.72137254 0.92380571 0.85969019 0.78548807 0.99800807 0.64717036 0.85969019 0.35968682
		 0.0019920429 0.35968682 0.71767783 0.36644185 0.71767783 0.36644185 0.0019920322
		 0.36485583 0.99800795 0.36485583 0.85969031 0.64149123 0.85969031 0.36485583 0.72137254
		 0.36485583 0.85969031 0.22085896 0.72137249 0.35917664 0.72137249 0.35917664 0.99800789
		 0.54536331 0.71767783 0.54536331 0.0019920322 0.18076538 0.71767783 0.18076538 0.0019920429;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[9:12]" -type "float3"  0 31.290485 0 0 31.290485 
		0 0 31.290485 0 0 31.290485 0;
	setAttr -s 13 ".vt[0:12]"  189.66886902 289.27993774 42.46649933 112.36245728 211.97354126 42.46649933
		 189.66885376 134.66714478 42.46649933 266.97525024 211.97354126 42.46649933 189.66885376 211.97354126 197.079284668
		 0 0 0 400 0 0 0 0 -20 400 0 -20 0 100 0 400 100 0 0 100 -20 400 100 -20;
	setAttr -s 18 ".ed[0:17]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 8 0 5 9 0 6 10 0 9 10 0 11 12 0 10 12 0 9 11 0 11 7 0 12 8 0;
	setAttr -s 8 -ch 28 ".fc[0:7]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 4 5 6 7
		f 3 0 5 -5
		mu 0 3 12 13 14
		f 3 1 6 -6
		mu 0 3 13 15 14
		f 3 2 7 -7
		mu 0 3 17 18 19
		f 3 3 4 -8
		mu 0 3 16 12 14
		f 4 13 17 -10 -17
		mu 0 4 22 23 8 9
		f 4 12 14 -14 -16
		mu 0 4 0 1 2 3
		f 4 8 11 -13 -11
		mu 0 4 10 11 21 20;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallF";
	rename -uid "5DEFB59F-49C6-9731-5047-C686ADC9C2AC";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallFShape" -p "SM_Flat_Apartment_ExteriorWallF";
	rename -uid "6019E66F-41C5-31B3-CDAF-9880E2854B92";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:10]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[0]" "f[8]" "f[11]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 2 "f[1:2]" "f[9:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[4:7]";
	setAttr ".pv" -type "double2" 0.47370447963476181 0.35983493190724403 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 42 ".uvst[0].uvsp[0:41]" -type "float2" 0.82521248 0.51373976
		 0.82521248 0.99611175 0.65855235 0.99611175 0.65855235 0.51373976 0.69016713 0.50974822
		 0.69016713 0.0019882473 0.85682732 0.0019882473 0.85682732 0.50974822 0.10377791
		 0.68039984 0.10377791 0.51373976 0.12916592 0.51373976 0.12916592 0.68039984 0.0019920319
		 0.0019882687 0.50975204 0.0019882687 0.50975204 0.027376277 0.02738004 0.027376277
		 0.0019920319 0.50974822 0.02738004 0.50974822 0.83134782 0.99611187 0.83134782 0.51373976
		 0.99800801 0.51373976 0.99800801 0.99611187 0.5167104 0.50974822 0.5167104 0.0019882473
		 0.68337053 0.0019882473 0.68337053 0.50974822 0.1353012 0.68039989 0.1353012 0.51373976
		 0.16068922 0.51373976 0.16068922 0.68039989 0.24027242 0.71000522 0.16682455 0.61187243
		 0.24027251 0.51373976 0.31372079 0.61187243 0.51612163 0.6438998 0.41798887 0.71734822
		 0.41798887 0.51373976 0.31985614 0.6438998 0.41798887 0.57045192 0.52225691 0.57881975
		 0.59570479 0.51373976 0.652417 0.72571605;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".vt[0:16]"  0 0 0 400 0 0 20 0 -20 400 0 -20 0 131.29048157 0
		 400 131.29048157 0 20 131.29048157 -20 400 131.29048157 -20 -50.70008087 289.27993774 50.20030212
		 -101.9684906 211.97354126 -7.66040039 -50.70009613 134.66714478 50.20028687 0.56820297 211.97354126 108.06060791
		 -166.42108154 211.97354126 152.73699951 0 0 -400 20 0 -400 0 131.29048157 -400 20 131.29048157 -400;
	setAttr -s 27 ".ed[0:26]"  0 1 0 2 3 0 0 4 0 1 5 0 4 5 0 6 7 0 5 7 0
		 4 6 0 6 2 0 7 3 0 8 9 0 9 10 0 10 11 0 11 8 0 8 12 0 9 12 0 10 12 0 11 12 0 13 0 0
		 14 2 0 13 15 0 15 4 0 16 6 0 15 16 0 16 14 0 13 14 0 1 3 0;
	setAttr -s 13 -ch 48 ".fc[0:12]" -type "polyFaces" 
		f 4 5 9 -2 -9
		mu 0 4 18 19 20 21
		f 4 4 6 -6 -8
		mu 0 4 12 13 14 15
		f 4 0 3 -5 -3
		mu 0 4 22 23 24 25
		f 4 -14 -13 -12 -11
		mu 0 4 30 31 32 33
		f 3 10 15 -15
		mu 0 3 34 35 36
		f 3 11 16 -16
		mu 0 3 35 37 36
		f 3 12 17 -17
		mu 0 3 39 40 41
		f 3 13 14 -18
		mu 0 3 38 34 36
		f 4 22 8 -20 -25
		mu 0 4 0 1 2 3
		f 4 21 7 -23 -24
		mu 0 4 16 12 15 17
		f 4 18 2 -22 -21
		mu 0 4 4 5 6 7
		f 4 20 23 24 -26
		mu 0 4 26 27 28 29
		f 4 -4 26 -10 -7
		mu 0 4 8 9 10 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallDoorA";
	rename -uid "3C681B24-4732-0076-3ECC-7495397AFD48";
	setAttr ".rp" -type "double3" 200 200 88.539645138923873 ;
	setAttr ".sp" -type "double3" 200 200 88.539645138923873 ;
createNode mesh -n "SM_Flat_Apartment_ExteriorWallDoorAShape" -p "SM_Flat_Apartment_ExteriorWallDoorA";
	rename -uid "FD4A82B8-4A28-106C-7C82-3E951EDCC5AB";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[10:13]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.31567141 0.78109449
		 0.31567141 0.50092769 0.34057519 0.50092769 0.34057519 0.78109449 0.31182295 0.50092769
		 0.31182295 0.78109449 0.28691924 0.78109449 0.28691924 0.50092769 0.258167 0.6254462
		 0.258167 0.50092763 0.28307074 0.50092763 0.28307074 0.6254462 0.0009278272 0.49907231
		 0.0009278272 0.00099800411 0.18770568 0.00099800411 0.18770568 0.2811648 0.31222427
		 0.2811648 0.49900213 0.49907231 0.31222427 0.00099800411 0.49900213 0.00099800411
		 0.61745846 0.71883523 0.61745846 0.99900198 0.43068057 0.99900198 0.43068057 0.50092763
		 0.92875493 0.50092763 0.74197704 0.71883523 0.92875493 0.99900198 0.74197704 0.99900198
		 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625
		 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20
		 400 400 -20 0 0 -20 400 0 -20 150 0 0 150 225 0 150 225 -20 150 0 -20 250 225 0 250 0 0
		 250 0 -20 250 225 -20 199.098724365 289.27993774 42.46649933 121.79231262 211.97354126 42.46649933
		 199.098709106 134.66714478 42.46649933 276.40509033 211.97354126 42.46649933 199.098709106 211.97354126 197.079284668;
	setAttr -s 32 ".ed[0:31]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0 16 17 0 17 18 0 18 19 0 19 16 0 16 20 0 17 20 0
		 18 20 0 19 20 0;
	setAttr -s 14 -ch 52 ".fc[0:13]" -type "polyFaces" 
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
		mu 0 4 8 9 10 11
		f 4 -28 -27 -26 -25
		mu 0 4 28 29 30 31
		f 3 24 29 -29
		mu 0 3 32 33 34
		f 3 25 30 -30
		mu 0 3 33 35 34
		f 3 26 31 -31
		mu 0 3 35 36 34
		f 3 27 28 -32
		mu 0 3 36 37 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallDoorB";
	rename -uid "C948AA22-45B6-FCD6-43EE-749CDA6EEB9D";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallDoorBShape" -p "SM_Flat_Apartment_ExteriorWallDoorB";
	rename -uid "88D7C895-4DFF-F21B-88EC-6F8BA37D4C5E";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[1]" "f[3:4]" "f[6:8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[9]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[0]" "f[2]" "f[5:8]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[10:13]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.31567141 0.78109449
		 0.31567141 0.50092769 0.34057519 0.50092769 0.34057519 0.78109449 0.31182295 0.50092769
		 0.31182295 0.78109449 0.28691924 0.78109449 0.28691924 0.50092769 0.258167 0.6254462
		 0.258167 0.50092763 0.28307074 0.50092769 0.28307074 0.6254462 0.0009278272 0.49907231
		 0.0009278272 0.00099800411 0.033428129 0.00099800411 0.033428129 0.2811648 0.15794663
		 0.2811648 0.49900213 0.49907231 0.15794669 0.00099800411 0.49900213 0.00099800411
		 0.46318087 0.71883523 0.46318087 0.99900198 0.43068057 0.99900198 0.43068057 0.50092763
		 0.92875493 0.50092763 0.58769941 0.71883523 0.92875493 0.99900198 0.58769941 0.99900198
		 0.50000006 0 0.75 0.25 0.5 0.5 0.25 0.24999999 0.25 0.5 0.375 0.5 0.5 1 0.5 0.5 0.625
		 0.5 0.75 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20
		 400 400 -20 0 0 -20 400 0 -20 26.10073853 0 0 26.10073853 225 0 26.10073853 225 -20
		 26.10073853 0 -20 126.1007309 225 0 126.10073853 0 0 126.10073853 0 -20 126.10073853 225 -20
		 193.65077209 289.27993774 42.46649933 116.34436035 211.97354126 42.46649933 193.65075684 134.66714478 42.46649933
		 270.95715332 211.97354126 42.46649933 193.65075684 211.97354126 197.079284668;
	setAttr -s 32 ".ed[0:31]"  0 8 0 6 11 0 0 2 0 4 6 0 5 7 0 1 3 0 2 3 0
		 4 5 0 10 15 0 8 9 0 10 11 0 11 8 0 12 9 0 13 1 0 14 7 0 12 13 0 13 14 0 14 15 0 2 9 1
		 4 10 1 3 12 1 5 15 1 9 10 0 12 15 0 16 17 0 17 18 0 18 19 0 19 16 0 16 20 0 17 20 0
		 18 20 0 19 20 0;
	setAttr -s 14 -ch 52 ".fc[0:13]" -type "polyFaces" 
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
		mu 0 4 8 9 10 11
		f 4 -28 -27 -26 -25
		mu 0 4 28 29 30 31
		f 3 24 29 -29
		mu 0 3 32 33 34
		f 3 25 30 -30
		mu 0 3 33 35 34
		f 3 26 31 -31
		mu 0 3 35 36 34
		f 3 27 28 -32
		mu 0 3 36 37 34;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallDoorC";
	rename -uid "0D42692A-4F92-DD93-8741-2784FFD995EC";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallDoorCShape" -p "SM_Flat_Apartment_ExteriorWallDoorC";
	rename -uid "DB28AF19-4666-7BE3-B755-E18D3D4D516C";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[8:9]" "f[11:13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1
		 0.49900213 0.00099800399 0.49900213 0.49907231 0.46650189 0.49907231 0.46650189 0.21890558
		 0.89625472 0.78109443 0.89625472 0.50092763 0.92875493 0.50092763 0.92875493 0.99900198
		 0.34198332 0.21890558 0.34198332 0.49907231 0.0009278272 0.49907231 0.0009278272
		 0.00099800399 0.43068057 0.99900198 0.77173615 0.78109443 0.43068057 0.50092763 0.77173615
		 0.50092763 0.31567156 0.78109443 0.31567156 0.50092763 0.34057528 0.50092763 0.34057528
		 0.78109443 0.31182298 0.50092763 0.31182298 0.78109443 0.28691924 0.78109443 0.28691924
		 0.50092763 0.2830708 0.50092769 0.2830708 0.62544626 0.25816703 0.62544626 0.25816703
		 0.50092769;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  193.96893311 289.27993774 42.46649933 116.66252136 211.97354126 42.46649933
		 193.96891785 134.66714478 42.46649933 271.27532959 211.97354126 42.46649933 193.96891785 211.97354126 197.079284668
		 400 0 -20 0 0 -20 400 400 -20 0 400 -20 400 400 0 0 400 0 400 0 0 0 0 0 373.89929199 0 -20
		 373.89929199 225 -20 373.89929199 225 0 373.89929199 0 0 273.89929199 225 -20 273.89929199 0 -20
		 273.89929199 0 0 273.89929199 225 0;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 13 0 11 16 0 5 7 0 9 11 0 10 12 0 6 8 0 7 8 0 9 10 0 15 20 0 13 14 0 15 16 0
		 16 13 0 17 14 0 18 6 0 19 12 0 17 18 0 18 19 0 19 20 0 7 14 1 9 15 1 8 17 1 10 20 1
		 14 15 0 17 20 0;
	setAttr -s 14 -ch 52 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 -11 8 17 -27
		mu 0 4 10 11 12 13
		f 4 18 -10 -12 27
		mu 0 4 14 15 16 17
		f 4 23 21 13 28
		mu 0 4 18 19 20 21
		f 4 29 -17 -28 15
		mu 0 4 22 23 14 17
		f 4 12 -23 25 -30
		mu 0 4 22 24 25 23
		f 4 -29 -15 26 -21
		mu 0 4 18 21 10 13
		f 4 -18 -20 -19 -31
		mu 0 4 26 27 28 29
		f 4 -24 31 -26 -25
		mu 0 4 30 31 32 33
		f 4 16 -32 20 30
		mu 0 4 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallDoorD";
	rename -uid "CDDD480F-4CD8-EA3F-BC34-5F93134F49A7";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallDoorDShape" -p "SM_Flat_Apartment_ExteriorWallDoorD";
	rename -uid "AFAFECCC-4C6B-49A4-119D-4CAC2F483FF0";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:13]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 4 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 3 "f[6]" "f[8:9]" "f[11:13]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "f[5]" "f[7]" "f[10:13]";
	setAttr ".gtag[3].gtagnm" -type "string" "sides";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.50000006 0 0.25
		 0.24999999 0.5 0.5 0.75 0.25 0.25 0.5 0.375 0.5 0.5 0.5 0.625 0.5 0.75 0.5 0.5 1
		 0.00092814059 0.49907199 0.00092814059 0.00099800411 0.15794691 0.00099800411 0.15794691
		 0.28116462 0.58801347 0.71883535 0.58801347 0.99900186 0.43099472 0.99900186 0.43099472
		 0.50092787 0.34198341 0.28116462 0.34198341 0.00099800411 0.49900213 0.00099800411
		 0.49900213 0.49907199 0.92906868 0.50092787 0.77204996 0.71883535 0.92906868 0.99900186
		 0.77204996 0.99900186 0.31598058 0.78109467 0.31598058 0.50092798 0.34088436 0.50092798
		 0.34088436 0.78109467 0.31213078 0.50092798 0.31213078 0.78109467 0.28722706 0.78109467
		 0.28722706 0.50092798 0.25847352 0.68496454 0.25847352 0.50092798 0.28337726 0.50092798
		 0.28337726 0.68496454;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  202.73291016 289.27993774 42.46649933 125.42649841 211.97354126 42.46649933
		 202.7328949 134.66714478 42.46649933 280.039306641 211.97354126 42.46649933 202.7328949 211.97354126 197.079284668
		 0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20 400 400 -20 0 0 -20 400 0 -20 126.10073853 0 0
		 126.10073853 225 0 126.10073853 225 -20 126.10073853 0 -20 273.89929199 225 0 273.89929199 0 0
		 273.89929199 0 -20 273.89929199 225 -20;
	setAttr -s 32 ".ed[0:31]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 13 0 11 16 0 5 7 0 9 11 0 10 12 0 6 8 0 7 8 0 9 10 0 15 20 0 13 14 0 15 16 0
		 16 13 0 17 14 0 18 6 0 19 12 0 17 18 0 18 19 0 19 20 0 7 14 1 9 15 1 8 17 1 10 20 1
		 14 15 0 17 20 0;
	setAttr -s 14 -ch 52 ".fc[0:13]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 3 2 1
		f 3 0 5 -5
		mu 0 3 4 5 9
		f 3 1 6 -6
		mu 0 3 5 6 9
		f 3 2 7 -7
		mu 0 3 6 7 9
		f 3 3 4 -8
		mu 0 3 7 8 9
		f 4 -11 8 17 -27
		mu 0 4 10 11 12 13
		f 4 18 -10 -12 27
		mu 0 4 14 15 16 17
		f 4 23 21 13 28
		mu 0 4 18 19 20 21
		f 4 29 -17 -28 15
		mu 0 4 22 23 14 17
		f 4 12 -23 25 -30
		mu 0 4 22 24 25 23
		f 4 -29 -15 26 -21
		mu 0 4 18 21 10 13
		f 4 -18 -20 -19 -31
		mu 0 4 26 27 28 29
		f 4 -24 31 -26 -25
		mu 0 4 30 31 32 33
		f 4 16 -32 20 30
		mu 0 4 34 35 36 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallWindowA";
	rename -uid "7C984EAE-48A8-EB01-1837-10A64174B28A";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallWindowAShape" -p "SM_Flat_Apartment_ExteriorWallWindowA";
	rename -uid "5C64B1D5-4D79-AC1D-01D3-16BABB0DB199";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:16]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[0]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[6:7]" "f[12]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[10:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[8:9]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[0:2]";
	setAttr ".gtag[5].gtagnm" -type "string" "sides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[13:16]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "f[4:5]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.46079919 0.50192541
		 0.46079919 0.69997066 0.43599504 0.69997066 0.43599504 0.50192541 0.40527201 0.69997066
		 0.40527201 0.50192541 0.43007612 0.50192541 0.43007612 0.69997066 0.10552067 0.88355893
		 0.10552067 0.69752795 0.13032477 0.69752795 0.13032477 0.88355893 0.16228817 0.69752795
		 0.16228817 0.88355893 0.13748404 0.88355893 0.13748404 0.69752795 0.34297863 0.17600882
		 0.1569476 0.17600882 0.0019217582 0.0019920322 0.49800447 0.0019920322 0.1569476
		 0.37405407 0.0019217582 0.49807477 0.34297863 0.37405407 0.49800447 0.49807477 0.62174386
		 0.8239913 0.8077749 0.8239913 0.96280074 0.99800813 0.46671799 0.99800813 0.8077749
		 0.62594604 0.96280074 0.50192541 0.62174386 0.62594604 0.46671799 0.50192541 0.30347723
		 0.50192541 0.39935309 0.59780127 0.3034772 0.69367731 0.20760126 0.59780127 0.0099305948
		 0.69367719 0.0099305948 0.59780127 0.20168242 0.59780127 0.0099305948 0.50192541
		 0.0099305948 0.59780127 0.0019217877 0.69752789 0.097797669 0.69752789 0.097797669
		 0.88927972;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  125 259.68728638 0 275 259.68728638 0 125 99.99997711 0
		 275 99.99997711 0 125 99.99997711 -20 275 99.99997711 -20 275 259.68728638 -20 125 259.68728638 -20
		 0 0 0 400 0 0 0 400 0 400 400 0 0 400 -20 400 400 -20 0 0 -20 400 0 -20 192.26512146 289.27993774 42.46649933
		 114.95870972 211.97354126 42.46649933 192.2651062 134.66714478 42.46649933 269.57150269 211.97354126 42.46649933
		 192.2651062 211.97354126 197.079284668;
	setAttr -s 36 ".ed[0:35]"  0 1 0 2 0 0 3 1 0 2 3 0 2 4 0 3 5 0 4 5 0
		 1 6 0 5 6 0 0 7 0 7 6 0 4 7 0 8 9 0 10 11 0 12 13 0 14 15 0 8 10 0 9 11 0 12 14 0
		 13 15 0 7 12 0 6 13 0 1 11 0 0 10 0 5 15 0 4 14 0 2 8 0 3 9 0 16 17 0 17 18 0 18 19 0
		 19 16 0 16 20 0 17 20 0 18 20 0 19 20 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
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
		mu 0 4 30 24 27 31
		f 4 -32 -31 -30 -29
		mu 0 4 32 33 34 35
		f 3 28 33 -33
		mu 0 3 36 37 38
		f 3 29 34 -34
		mu 0 3 37 39 38
		f 3 30 35 -35
		mu 0 3 41 42 43
		f 3 31 32 -36
		mu 0 3 40 36 38;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallWindowB";
	rename -uid "211B2821-484F-12ED-6DDC-EEBE3FE5B021";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallWindowBShape" -p "SM_Flat_Apartment_ExteriorWallWindowB";
	rename -uid "BB8A742C-4F72-FD6F-5038-11BFE6E3667B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:16]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0]" "f[11:12]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[15:16]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13:14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[8:10]";
	setAttr ".gtag[5].gtagnm" -type "string" "sides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "f[9:10]";
	setAttr ".pv" -type "double2" 0.49999990250216797 0.48824507254175842 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.46079919 0.50192541
		 0.46079919 0.69997066 0.43599504 0.69997066 0.43599504 0.50192541 0.40527201 0.69997066
		 0.40527201 0.50192541 0.43007612 0.50192541 0.43007612 0.69997066 0.1055207 0.88355893
		 0.1055207 0.69752795 0.1303248 0.69752795 0.1303248 0.88355893 0.16228823 0.69752795
		 0.16228823 0.88355893 0.13748406 0.88355893 0.13748406 0.69752795 0.30347723 0.50192541
		 0.39935309 0.59780127 0.30347723 0.69367731 0.20760126 0.59780127 0.48981938 0.17600882
		 0.30378833 0.17600882 0.0019217582 0.0019920322 0.49800447 0.0019920322 0.30378833
		 0.37405407 0.0019217582 0.49807477 0.48981938 0.37405407 0.49800447 0.49807477 0.76858461
		 0.8239913 0.95461565 0.8239913 0.96280074 0.99800813 0.46671799 0.99800813 0.95461565
		 0.62594604 0.96280074 0.50192541 0.76858461 0.62594604 0.46671799 0.50192541 0.0099305948
		 0.69367719 0.0099305948 0.59780127 0.20168242 0.59780127 0.0099305948 0.50192541
		 0.0099305948 0.59780127 0.0019217877 0.69752789 0.097797669 0.69752789 0.097797669
		 0.88927972;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  201.32829285 289.27993774 42.46649933 124.021881104 211.97354126 42.46649933
		 201.32827759 134.66714478 42.46649933 278.63467407 211.97354126 42.46649933 201.32827759 211.97354126 197.079284668
		 243.40020752 259.68728638 0 393.40020752 259.68728638 0 243.40020752 99.99997711 0
		 393.40020752 99.99997711 0 243.40020752 99.99997711 -20 393.40020752 99.99997711 -20
		 393.40020752 259.68728638 -20 243.40020752 259.68728638 -20 0 0 0 400 0 0 0 400 0
		 400 400 0 0 400 -20 400 400 -20 0 0 -20 400 0 -20;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 5 0 8 6 0 7 8 0 7 9 0 8 10 0 9 10 0 6 11 0 10 11 0 5 12 0 12 11 0 9 12 0
		 13 14 0 15 16 0 17 18 0 19 20 0 13 15 0 14 16 0 17 19 0 18 20 0 12 17 0 11 18 0 6 16 0
		 5 15 0 10 20 0 9 19 0 7 13 0 8 14 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 16 17 18 19
		f 3 0 5 -5
		mu 0 3 36 37 38
		f 3 1 6 -6
		mu 0 3 37 39 38
		f 3 2 7 -7
		mu 0 3 41 42 43
		f 3 3 4 -8
		mu 0 3 40 36 38
		f 4 11 13 -15 -13
		mu 0 4 8 9 10 11
		f 4 10 15 -17 -14
		mu 0 4 0 1 2 3
		f 4 -9 17 18 -16
		mu 0 4 12 13 14 15
		f 4 -10 12 19 -18
		mu 0 4 4 5 6 7
		f 4 -19 28 22 -30
		mu 0 4 20 21 22 23
		f 4 8 30 -22 -32
		mu 0 4 28 29 30 31
		f 4 14 32 -24 -34
		mu 0 4 24 26 27 25
		f 4 -12 34 20 -36
		mu 0 4 32 34 35 33
		f 4 16 29 27 -33
		mu 0 4 26 20 23 27
		f 4 -11 35 25 -31
		mu 0 4 29 32 33 30
		f 4 -20 33 -27 -29
		mu 0 4 21 24 25 22
		f 4 9 31 -25 -35
		mu 0 4 34 28 31 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_ExteriorWallWindowC";
	rename -uid "A0CBB6F4-4EF0-BC64-CF68-BBADA9149114";
createNode mesh -n "SM_Flat_Apartment_ExteriorWallWindowCShape" -p "SM_Flat_Apartment_ExteriorWallWindowC";
	rename -uid "FB6EAF53-44C7-0C81-4E28-E6B27844A770";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:16]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 7 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[8]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 2 "f[0]" "f[11:12]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[15:16]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[13:14]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "e[8:10]";
	setAttr ".gtag[5].gtagnm" -type "string" "sides";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1:4]";
	setAttr ".gtag[6].gtagnm" -type "string" "top";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "f[9:10]";
	setAttr ".pv" -type "double2" 0.48162243864499032 0.50000005215406418 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0.43599501 0.50192541
		 0.46079913 0.50192541 0.46079913 0.69997066 0.43599501 0.69997066 0.43007609 0.69997066
		 0.40527195 0.69997066 0.40527195 0.50192541 0.43007609 0.50192541 0.10552067 0.69752795
		 0.13032477 0.69752795 0.13032477 0.88355893 0.10552067 0.88355893 0.16228817 0.88355893
		 0.13748404 0.88355893 0.13748404 0.69752795 0.16228817 0.69752795 0.3034772 0.50192541
		 0.39935309 0.59780127 0.30347723 0.69367731 0.20760126 0.59780127 0.010106855 0.17600882
		 0.0019217582 0.0019920322 0.49800447 0.0019920322 0.19613788 0.17600882 0.010106855
		 0.37405407 0.0019217582 0.49807477 0.49800447 0.49807477 0.19613788 0.37405407 0.66093409
		 0.8239913 0.96280074 0.99800813 0.46671799 0.99800813 0.47490311 0.8239913 0.66093409
		 0.62594604 0.96280074 0.50192541 0.46671799 0.50192541 0.47490311 0.62594604 0.20168239
		 0.69367719 0.009930566 0.59780127 0.20168239 0.59780127 0.20168239 0.59780127 0.20168239
		 0.50192541 0.0019217582 0.88927972 0.097797699 0.69752789 0.097797699 0.88927972;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 21 ".vt[0:20]"  198.67170715 289.27993774 42.46649933 275.9781189 211.97354126 42.46649933
		 198.67172241 134.66714478 42.46649933 121.36532593 211.97354126 42.46649933 198.67172241 211.97354126 197.079284668
		 156.59979248 259.68728638 0 6.59979248 259.68728638 0 156.59979248 99.99997711 0
		 6.59979248 99.99997711 0 156.59979248 99.99997711 -20 6.59979248 99.99997711 -20
		 6.59979248 259.68728638 -20 156.59979248 259.68728638 -20 400 0 0 0 0 0 400 400 0
		 0 400 0 400 400 -20 0 400 -20 400 0 -20 0 0 -20;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 0 0 0 4 0 1 4 0 2 4 0
		 3 4 0 5 6 0 7 5 0 8 6 0 7 8 0 7 9 0 8 10 0 9 10 0 6 11 0 10 11 0 5 12 0 12 11 0 9 12 0
		 13 14 0 15 16 0 17 18 0 19 20 0 13 15 0 14 16 0 17 19 0 18 20 0 12 17 0 11 18 0 6 16 0
		 5 15 0 10 20 0 9 19 0 7 13 0 8 14 0;
	setAttr -s 17 -ch 64 ".fc[0:16]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 16 17 18 19
		f 3 4 -6 -1
		mu 0 3 36 37 38
		f 3 5 -7 -2
		mu 0 3 38 37 40
		f 3 6 -8 -3
		mu 0 3 41 42 43
		f 3 7 -5 -4
		mu 0 3 39 37 36
		f 4 12 14 -14 -12
		mu 0 4 8 9 10 11
		f 4 13 16 -16 -11
		mu 0 4 0 1 2 3
		f 4 15 -19 -18 8
		mu 0 4 12 13 14 15
		f 4 17 -20 -13 9
		mu 0 4 4 5 6 7
		f 4 29 -23 -29 18
		mu 0 4 20 21 22 23
		f 4 31 21 -31 -9
		mu 0 4 28 29 30 31
		f 4 33 23 -33 -15
		mu 0 4 27 26 25 24
		f 4 35 -21 -35 11
		mu 0 4 35 34 33 32
		f 4 32 -28 -30 -17
		mu 0 4 24 25 21 20
		f 4 30 -26 -36 10
		mu 0 4 31 30 34 35
		f 4 28 26 -34 19
		mu 0 4 23 22 26 27
		f 4 34 24 -32 -10
		mu 0 4 32 33 29 28;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SM_Flat_Apartment_StairsCap";
	rename -uid "77BE28A8-4574-28B9-39FC-A1A5F8FE8B27";
createNode mesh -n "SM_Flat_Apartment_StairsCapShape" -p "SM_Flat_Apartment_StairsCap";
	rename -uid "A6FD67FD-4083-D17D-3BBA-32BADA56DE7B";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:724]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 11 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[487]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 27 "e[0:5]" "e[18:23]" "e[36:41]" "e[162:167]" "e[180:185]" "e[198:203]" "e[324:329]" "e[342:347]" "e[360:365]" "e[537:542]" "e[555:560]" "e[573:578]" "e[699:704]" "e[717:722]" "e[735:740]" "e[861:866]" "e[879:884]" "e[897:902]" "e[1023:1028]" "e[1041:1046]" "e[1059:1064]" "e[1185:1190]" "e[1203:1208]" "e[1221:1226]" "e[1347:1352]" "e[1365:1370]" "e[1383:1388]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 27 "vtx[0:5]" "vtx[12:17]" "vtx[24:29]" "vtx[84:89]" "vtx[96:101]" "vtx[108:113]" "vtx[168:173]" "vtx[180:185]" "vtx[192:197]" "vtx[281:286]" "vtx[293:298]" "vtx[305:310]" "vtx[365:370]" "vtx[377:382]" "vtx[389:394]" "vtx[449:454]" "vtx[461:466]" "vtx[473:478]" "vtx[533:538]" "vtx[545:550]" "vtx[557:562]" "vtx[617:622]" "vtx[629:634]" "vtx[641:646]" "vtx[701:706]" "vtx[713:718]" "vtx[725:730]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 27 "vtx[0:5]" "vtx[12:17]" "vtx[24:29]" "vtx[84:89]" "vtx[96:101]" "vtx[108:113]" "vtx[168:173]" "vtx[180:185]" "vtx[192:197]" "vtx[281:286]" "vtx[293:298]" "vtx[305:310]" "vtx[365:370]" "vtx[377:382]" "vtx[389:394]" "vtx[449:454]" "vtx[461:466]" "vtx[473:478]" "vtx[533:538]" "vtx[545:550]" "vtx[557:562]" "vtx[617:622]" "vtx[629:634]" "vtx[641:646]" "vtx[701:706]" "vtx[713:718]" "vtx[725:730]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 9 "vtx[0:35]" "vtx[84:119]" "vtx[168:203]" "vtx[281:316]" "vtx[365:400]" "vtx[449:484]" "vtx[533:568]" "vtx[617:652]" "vtx[701:736]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 27 "vtx[6:11]" "vtx[18:23]" "vtx[30:35]" "vtx[90:95]" "vtx[102:107]" "vtx[114:119]" "vtx[174:179]" "vtx[186:191]" "vtx[198:203]" "vtx[287:292]" "vtx[299:304]" "vtx[311:316]" "vtx[371:376]" "vtx[383:388]" "vtx[395:400]" "vtx[455:460]" "vtx[467:472]" "vtx[479:484]" "vtx[539:544]" "vtx[551:556]" "vtx[563:568]" "vtx[623:628]" "vtx[635:640]" "vtx[647:652]" "vtx[707:712]" "vtx[719:724]" "vtx[731:736]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 27 "vtx[6:11]" "vtx[18:23]" "vtx[30:35]" "vtx[90:95]" "vtx[102:107]" "vtx[114:119]" "vtx[174:179]" "vtx[186:191]" "vtx[198:203]" "vtx[287:292]" "vtx[299:304]" "vtx[311:316]" "vtx[371:376]" "vtx[383:388]" "vtx[395:400]" "vtx[455:460]" "vtx[467:472]" "vtx[479:484]" "vtx[539:544]" "vtx[551:556]" "vtx[563:568]" "vtx[623:628]" "vtx[635:640]" "vtx[647:652]" "vtx[707:712]" "vtx[719:724]" "vtx[731:736]";
	setAttr ".gtag[7].gtagnm" -type "string" "left";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "e[486]";
	setAttr ".gtag[8].gtagnm" -type "string" "rim";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "e[486:487]";
	setAttr ".gtag[9].gtagnm" -type "string" "sides";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 18 "f[0:23]" "f[48:53]" "f[78:101]" "f[126:131]" "f[156:179]" "f[204:209]" "f[257:280]" "f[305:310]" "f[335:358]" "f[383:388]" "f[413:436]" "f[461:466]" "f[491:514]" "f[539:544]" "f[569:592]" "f[617:622]" "f[647:670]" "f[695:700]";
	setAttr ".gtag[10].gtagnm" -type "string" "topRing";
	setAttr ".gtag[10].gtagcmp" -type "componentList" 27 "e[6:11]" "e[24:29]" "e[42:47]" "e[168:173]" "e[186:191]" "e[204:209]" "e[330:335]" "e[348:353]" "e[366:371]" "e[543:548]" "e[561:566]" "e[579:584]" "e[705:710]" "e[723:728]" "e[741:746]" "e[867:872]" "e[885:890]" "e[903:908]" "e[1029:1034]" "e[1047:1052]" "e[1065:1070]" "e[1191:1196]" "e[1209:1214]" "e[1227:1232]" "e[1353:1358]" "e[1371:1376]" "e[1389:1394]";
	setAttr ".pv" -type "double2" 0.50065365247428417 0.463841512799263 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1530 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.89493716 0.83128935 0.89393765
		 0.83128935 0.89393765 0.82439911 0.89493716 0.82439911 0.89393765 0.82260829 0.89493716
		 0.82260829 0.89343792 0.82439911 0.89343792 0.822667 0.89393765 0.82072365 0.89493716
		 0.82072365 0.89543688 0.82439911 0.89543688 0.822667 0.89393765 0.81908482 0.89493704
		 0.81908482 0.75458747 0.82432818 0.75558692 0.82432818 0.75558692 0.83121848 0.75458747
		 0.83121848 0.75608671 0.82432818 0.75608671 0.83121848 0.75558692 0.83289188 0.75458747
		 0.83289188 0.75608671 0.83295053 0.75558692 0.83430219 0.75458747 0.83430219 0.75408775
		 0.83121848 0.75408775 0.83295053 0.75558698 0.8352353 0.75458747 0.8352353 0.82526207
		 0.83206052 0.82426256 0.83206052 0.82426256 0.82517028 0.82526207 0.82517028 0.82426256
		 0.8234719 0.82526207 0.8234719 0.82426256 0.82207602 0.82526207 0.82207602 0.8257618
		 0.82340455 0.8257618 0.82517028 0.82376283 0.82340455 0.82376283 0.82517028 0.82426256
		 0.82115275 0.82526207 0.82115275 0.89642364 0.79179811 0.89742309 0.79179811 0.89742309
		 0.79868847 0.89642364 0.79868847 0.89792287 0.79179811 0.89792287 0.79868847 0.89742309
		 0.80052155 0.89642364 0.80052155 0.89792287 0.80045414 0.89742309 0.8024314 0.89642364
		 0.8024314 0.89592385 0.80045414 0.89592385 0.79868847 0.89742309 0.80404615 0.89642364
		 0.80404615 0.88719547 0.83128935 0.88619596 0.83128935 0.88619596 0.82439911 0.88719547
		 0.82439911 0.88569623 0.83128935 0.88569623 0.82439911 0.88619596 0.82260829 0.88719547
		 0.82260829 0.88569623 0.822667 0.88619596 0.82072365 0.88719547 0.82072365 0.88769525
		 0.82439911 0.88769525 0.822667 0.88619596 0.81908482 0.88719547 0.81908482 0.74684578
		 0.82432818 0.74784529 0.82432818 0.74784529 0.83121848 0.74684578 0.83121848 0.74834508
		 0.82432818 0.74834508 0.83121848 0.74784529 0.83289188 0.74684578 0.83289188 0.74834508
		 0.83295053 0.74784529 0.83430219 0.74684578 0.83430219 0.74634606 0.83121848 0.74634606
		 0.83295053 0.74784529 0.8352353 0.74684578 0.8352353 0.81752038 0.83206064 0.81652087
		 0.83206064 0.81652087 0.82517028 0.81752038 0.82517028 0.81602114 0.83206064 0.81602114
		 0.82517028 0.81652087 0.8234719 0.81752038 0.8234719 0.81602114 0.82340455 0.81652087
		 0.82207602 0.81752038 0.82207602 0.81802016 0.82340455 0.81802016 0.82517028 0.81652087
		 0.82115275 0.81752038 0.82115275 0.90554482 0.79179811 0.90654433 0.79179811 0.90654433
		 0.79868847 0.90554482 0.79868847 0.90704405 0.79179811 0.90704405 0.79868847 0.90654433
		 0.80052155 0.90554482 0.80052155 0.90704405 0.80045414 0.90654433 0.8024314 0.90554482
		 0.8024314 0.90504509 0.80045414 0.90504509 0.79868847 0.90654433 0.80404615 0.90554482
		 0.80404615 0.87945384 0.83128935 0.87845433 0.83128935 0.87845433 0.82439911 0.87945384
		 0.82439911 0.87795454 0.83128935 0.87795454 0.82439911 0.87845433 0.82260829 0.87945384
		 0.82260829 0.87795454 0.822667 0.87845433 0.82072365 0.87945384 0.82072365 0.87995356
		 0.82439911 0.87995356 0.822667 0.87845433 0.81908482 0.87945384 0.81908482 0.73910409
		 0.82434243 0.7401036 0.82434243 0.7401036 0.83123279 0.73910409 0.83123279 0.74060339
		 0.82434243 0.74060339 0.83123279 0.7401036 0.83290613 0.73910409 0.83290613 0.74060339
		 0.83296484 0.7401036 0.83431643 0.73910409 0.83431643 0.73860437 0.83123279 0.73860437
		 0.83296484 0.7401036 0.83524954 0.73910409 0.83524954 0.80977881 0.83206064 0.8087793
		 0.83206064 0.8087793 0.82517028 0.80977881 0.82517028 0.80827945 0.83206064 0.80827945
		 0.82517028 0.8087793 0.8234719 0.80977881 0.8234719 0.80827945 0.82340455 0.8087793
		 0.82207602 0.80977881 0.82207602 0.81027848 0.82340455 0.81027848 0.82517028 0.8087793
		 0.82115275 0.80977881 0.82115275 0.91466606 0.79179811 0.91566557 0.79179811 0.91566557
		 0.79868847 0.91466606 0.79868847 0.91616529 0.79179811 0.91616529 0.79868847 0.91566557
		 0.80052155 0.91466606 0.80052155 0.91616529 0.80045414 0.91566557 0.8024314 0.91466606
		 0.8024314 0.91416627 0.80045414 0.91416627 0.79868847 0.91566557 0.80404615 0.91466606
		 0.80404615 0.099246144 0.40643576 0.10878682 0.40643576 0.10878682 0.60201931 0.099246144
		 0.62110054 0.30914065 0.62110054 0.20419341 0.60201931 0.20419341 0.40643576 0.30914065
		 0.40643576 0.0018645615 0.62483656 0.21175908 0.62483656 0.21175908 0.83950132 0.0018645615
		 0.83950132 0.21913137 0.79179811 0.40994456 0.79179811 0.40994456 0.9873817 0.21913137
		 0.9873817 0.41614914 0.79179811 0.51155573 0.79179811 0.51155573 0.9873817 0.41614914
		 0.9873817 0.54426527 0.7918123 0.54426527 0.98262548 0.53472465 0.98262548 0.53472465
		 0.7918123 0.56068343 0.7918123 0.56068343 0.98262548 0.55114281 0.98262548 0.55114281
		 0.7918123 0.87171215 0.83128935 0.87071264 0.83128935 0.87071264 0.82439911 0.87171215
		 0.82439911 0.87071264 0.82260829 0.87171215 0.82260829 0.87021285 0.82439911 0.87021285
		 0.822667 0.87071264 0.82072365 0.87171215 0.82072365 0.87221187 0.82439911 0.87221187
		 0.822667 0.87071264 0.81908482 0.87171215 0.81908482 0.73136246 0.82434243 0.73236197
		 0.82434243 0.73236197 0.83123279 0.73136246 0.83123279 0.7328617 0.82434243 0.7328617
		 0.83123279 0.73236197 0.83290613 0.73136246 0.83290613 0.7328617 0.83296484 0.73236197
		 0.83431643 0.73136246 0.83431643 0.73086268 0.83123279 0.73086268 0.83296484 0.73236197
		 0.83524954 0.73136246 0.83524954 0.80203706 0.83206064 0.80103755 0.83206064 0.80103755
		 0.82517028 0.80203706 0.82517028 0.80103755 0.8234719 0.80203706 0.8234719 0.80103755
		 0.82207602 0.80203706 0.82207602 0.80253679 0.82340455 0.80253679 0.82517028 0.80053777
		 0.82340455 0.80053777 0.82517028 0.80103755 0.82115275 0.80203706 0.82115275 0.92378718
		 0.79179811;
	setAttr ".uvst[0].uvsp[250:499]" 0.92478669 0.79179811 0.92478669 0.79868847
		 0.92378718 0.79868847 0.92528641 0.79179811 0.92528641 0.79868847 0.92478669 0.80052155
		 0.92378718 0.80052155 0.92528641 0.80045414 0.92478669 0.8024314 0.92378718 0.8024314
		 0.92328745 0.80045414 0.92328745 0.79868847 0.92478669 0.80404615 0.92378718 0.80404615
		 0.86397046 0.83128935 0.86297095 0.83128935 0.86297095 0.82439911 0.86397046 0.82439911
		 0.86247122 0.83128935 0.86247122 0.82439911 0.86297095 0.82260829 0.86397046 0.82260829
		 0.86247122 0.822667 0.86297095 0.82072365 0.86397046 0.82072365 0.86447018 0.82439911
		 0.86447018 0.822667 0.86297095 0.81908482 0.86397046 0.81908482 0.72362077 0.82434243
		 0.72462028 0.82434243 0.72462028 0.83123279 0.72362077 0.83123279 0.72462028 0.83290613
		 0.72362077 0.83290613 0.72512001 0.83123279 0.72512001 0.83296484 0.72462028 0.83431643
		 0.72362077 0.83431643 0.72312105 0.83123279 0.72312105 0.83296484 0.72462028 0.83524954
		 0.72362077 0.83524954 0.79429537 0.83206052 0.79329586 0.83206052 0.79329586 0.82517028
		 0.79429537 0.82517028 0.79279613 0.83206052 0.79279613 0.82517028 0.79329586 0.8234719
		 0.79429537 0.8234719 0.79279613 0.82340455 0.79329586 0.82207602 0.79429537 0.82207602
		 0.7947951 0.82340455 0.7947951 0.82517028 0.79329586 0.82115275 0.79429537 0.82115275
		 0.93264604 0.79179811 0.93364555 0.79179811 0.93364555 0.79868847 0.93264604 0.79868847
		 0.93364555 0.80052155 0.93264604 0.80052155 0.93364555 0.8024314 0.93264604 0.8024314
		 0.93214631 0.80045414 0.93214631 0.79868847 0.93414527 0.80045414 0.93414527 0.79868847
		 0.93364555 0.80404615 0.93264604 0.80404615 0.85622877 0.83128935 0.85522926 0.83128935
		 0.85522926 0.82439911 0.85622877 0.82439911 0.85522926 0.82260829 0.85622877 0.82260829
		 0.85472953 0.82439911 0.85472953 0.822667 0.85522926 0.82072365 0.85622877 0.82072365
		 0.85672855 0.82439911 0.85672855 0.822667 0.85522926 0.81908482 0.85622877 0.81908482
		 0.71587908 0.82434243 0.71687859 0.82434243 0.71687859 0.83123279 0.71587908 0.83123279
		 0.71687859 0.83290613 0.71587908 0.83290613 0.71737832 0.83123279 0.71737832 0.83296484
		 0.71687859 0.83431643 0.71587908 0.83431643 0.71537936 0.83123279 0.71537936 0.83296484
		 0.71687859 0.83524954 0.71587908 0.83524954 0.78655368 0.83206052 0.78555417 0.83206052
		 0.78555417 0.82517028 0.78655368 0.82517028 0.78555417 0.8234719 0.78655368 0.8234719
		 0.78555417 0.82207602 0.78655368 0.82207602 0.78705341 0.82340455 0.78705341 0.82517028
		 0.78505445 0.82340455 0.78505445 0.82517028 0.78555417 0.82115275 0.78655368 0.82115275
		 0.92490435 0.80778217 0.92590386 0.80778217 0.92590386 0.81467253 0.92490435 0.81467253
		 0.92590386 0.81650561 0.92490435 0.81650561 0.92590386 0.81841546 0.92490435 0.81841546
		 0.92440462 0.81643826 0.92440462 0.81467253 0.92640364 0.81643826 0.92640364 0.81467253
		 0.92590386 0.82003021 0.92490435 0.82003021 0.84848708 0.83128935 0.84748763 0.83128935
		 0.84748763 0.82439911 0.84848708 0.82439911 0.84698784 0.83128935 0.84698784 0.82439911
		 0.84748763 0.82260829 0.84848708 0.82260829 0.84698784 0.822667 0.84748763 0.82072365
		 0.84848708 0.82072365 0.84898686 0.82439911 0.84898686 0.822667 0.84748763 0.81908482
		 0.84848708 0.81908482 0.70813739 0.82434243 0.7091369 0.82434243 0.7091369 0.83123279
		 0.70813739 0.83123279 0.70963669 0.82434243 0.70963669 0.83123279 0.7091369 0.83290613
		 0.70813739 0.83290613 0.70963669 0.83296484 0.7091369 0.83431643 0.70813739 0.83431643
		 0.70763767 0.83123279 0.70763767 0.83296484 0.7091369 0.83524954 0.70813739 0.83524954
		 0.77881199 0.83206052 0.77781248 0.83206052 0.77781248 0.82517028 0.77881199 0.82517028
		 0.77731276 0.83206052 0.77731276 0.82517028 0.77781248 0.8234719 0.77881199 0.8234719
		 0.77731276 0.82340455 0.77781248 0.82207602 0.77881199 0.82207602 0.77931178 0.82340455
		 0.77931178 0.82517028 0.77781248 0.82115275 0.77881199 0.82115275 0.9171626 0.80778217
		 0.91816211 0.80778217 0.91816211 0.81467253 0.9171626 0.81467253 0.91866195 0.80778217
		 0.91866195 0.81467253 0.91816211 0.81650561 0.9171626 0.81650561 0.91866195 0.81643826
		 0.91816211 0.81841546 0.9171626 0.81841546 0.91666293 0.81643826 0.91666293 0.81467253
		 0.91816211 0.82003021 0.9171626 0.82003021 0.84074545 0.83128935 0.83974594 0.83128935
		 0.83974594 0.82439911 0.84074545 0.82439911 0.83924615 0.83128935 0.83924615 0.82439911
		 0.83974594 0.82260829 0.84074545 0.82260829 0.83924615 0.822667 0.83974594 0.82072365
		 0.84074545 0.82072365 0.84124517 0.82439911 0.84124517 0.822667 0.83974594 0.81908482
		 0.84074545 0.81908482 0.70039576 0.82434243 0.70139521 0.82434243 0.70139521 0.83123279
		 0.70039576 0.83123279 0.701895 0.82434243 0.701895 0.83123279 0.70139521 0.83290613
		 0.70039576 0.83290613 0.701895 0.83296484 0.70139521 0.83431643 0.70039576 0.83431643
		 0.69989598 0.83123279 0.69989598 0.83296484 0.70139521 0.83524954 0.70039576 0.83524954
		 0.7710703 0.83206052 0.77007085 0.83206052 0.77007085 0.82517028 0.7710703 0.82517028
		 0.76957107 0.83206052 0.76957107 0.82517028 0.77007085 0.8234719 0.7710703 0.8234719
		 0.76957107 0.82340455 0.77007085 0.82207602 0.7710703 0.82207602 0.77157009 0.82340455
		 0.77157009 0.82517028 0.77007085 0.82115275 0.7710703 0.82115275 0.90942103 0.80778217
		 0.91042054 0.80778217 0.91042054 0.81467253 0.90942103 0.81467253 0.91092026 0.80778217
		 0.91092026 0.81467253 0.91042054 0.81650561 0.90942103 0.81650561 0.91092026 0.81643826
		 0.91042054 0.81841546 0.90942103 0.81841546 0.90892124 0.81643826 0.90892124 0.81467253
		 0.91042054 0.82003021 0.90942103 0.82003021 0.83300376 0.83128935 0.83200425 0.83128935;
	setAttr ".uvst[0].uvsp[500:749]" 0.83200425 0.82439911 0.83300376 0.82439911
		 0.83200425 0.82260829 0.83300376 0.82260829 0.83150452 0.82439911 0.83150452 0.822667
		 0.83200425 0.82072365 0.83300376 0.82072365 0.83350348 0.82439911 0.83350348 0.822667
		 0.83200425 0.81908482 0.83300376 0.81908482 0.69265407 0.82434243 0.69365358 0.82434243
		 0.69365358 0.83123279 0.69265407 0.83123279 0.69365358 0.83290613 0.69265407 0.83290613
		 0.69415331 0.83123279 0.69415331 0.83296484 0.69365358 0.83431643 0.69265407 0.83431643
		 0.69215429 0.83123279 0.69215429 0.83296484 0.69365358 0.83524954 0.69265407 0.83524954
		 0.76332867 0.83523607 0.76232916 0.83523607 0.76232916 0.82834572 0.76332867 0.82834572
		 0.76232916 0.82664734 0.76332867 0.82664734 0.76232916 0.82525146 0.76332867 0.82525146
		 0.7638284 0.82657999 0.7638284 0.82834572 0.76182938 0.82657999 0.76182938 0.82834572
		 0.76232916 0.82432818 0.76332867 0.82432818 0.90167934 0.80778217 0.90267885 0.80778217
		 0.90267885 0.81467253 0.90167934 0.81467253 0.90267885 0.81650561 0.90167934 0.81650561
		 0.90267885 0.81841546 0.90167934 0.81841546 0.90117961 0.81643826 0.90117961 0.81467253
		 0.90317857 0.81643826 0.90317857 0.81467253 0.90267885 0.82003021 0.90167934 0.82003021
		 0.6846804 0.82434243 0.68554598 0.82434243 0.68554598 0.83123279 0.6846804 0.83123279
		 0.68641162 0.82434243 0.68641162 0.83123279 0.67893773 0.83123279 0.67807215 0.83123279
		 0.67807215 0.82434243 0.67893773 0.82434243 0.57049692 0.79708397 0.5713625 0.79708397
		 0.5713625 0.81558692 0.57049692 0.81558692 0.57039082 0.79550064 0.5712378 0.79537594
		 0.57222813 0.79708397 0.57222813 0.81558692 0.57123333 0.8172459 0.57038909 0.81711292
		 0.5699051 0.79448646 0.57057518 0.79398173 0.57208478 0.79525119 0.57207757 0.817379
		 0.57055312 0.8185662 0.56990439 0.81803703 0.56898177 0.79386288 0.56930619 0.79307652
		 0.57124531 0.79347688 0.57120186 0.81909549 0.56926709 0.81939197 0.56897122 0.81859279
		 0.56758595 0.79353261 0.5676533 0.79267251 0.5696305 0.79229009 0.56956303 0.82019109
		 0.56761968 0.81974494 0.56756097 0.8188836 0.56772065 0.79181236 0.56767839 0.82060641
		 0.57937199 0.79708391 0.58023751 0.79708391 0.58023751 0.81558686 0.57937199 0.81558686
		 0.57949668 0.79537594 0.58034366 0.79550064 0.58034539 0.81711292 0.57950115 0.8172459
		 0.57850635 0.79708391 0.57850635 0.81558686 0.57864964 0.79525119 0.58015931 0.79398167
		 0.58082938 0.7944864 0.5808301 0.81803703 0.58018136 0.8185662 0.57865685 0.817379
		 0.57948911 0.79347688 0.58142829 0.79307646 0.58175266 0.79386282 0.58176321 0.81859279
		 0.58146733 0.81939197 0.57953262 0.81909549 0.58110392 0.79229003 0.58308113 0.79267251
		 0.58314848 0.79353261 0.58317351 0.8188836 0.5831148 0.81974494 0.58117145 0.82019109
		 0.58301377 0.7918123 0.58305609 0.82060629 0.67059821 0.82434243 0.67146379 0.82434243
		 0.67146379 0.83123279 0.67059821 0.83123279 0.67232943 0.82434243 0.67232943 0.83123279
		 0.66485554 0.83123279 0.66398996 0.83123279 0.66398996 0.82434243 0.66485554 0.82434243
		 0.65738171 0.82434243 0.65824729 0.82434243 0.65824729 0.83123279 0.65738171 0.83123279
		 0.65163893 0.83123279 0.65077341 0.83123279 0.65077341 0.82434243 0.65163893 0.82434243
		 0.59238774 0.79708397 0.59325337 0.79708397 0.59325337 0.81558692 0.59238774 0.81558692
		 0.59228164 0.79550064 0.59312862 0.79537594 0.59411895 0.79708397 0.59411895 0.81558692
		 0.59312415 0.8172459 0.59227985 0.81711292 0.59179586 0.79448646 0.59246606 0.79398173
		 0.5939756 0.79525119 0.59396845 0.817379 0.592444 0.8185662 0.59179521 0.81803703
		 0.59087259 0.79386288 0.59119695 0.79307652 0.59313613 0.79347688 0.59309268 0.81909549
		 0.59115791 0.81939197 0.5908621 0.81859279 0.5894767 0.79353261 0.58954406 0.79267251
		 0.59152138 0.79229009 0.59145385 0.82019109 0.58951044 0.81974494 0.58945179 0.8188836
		 0.58961147 0.79181236 0.58956921 0.82060641 0.60126281 0.79708391 0.60212839 0.79708391
		 0.60212839 0.81558686 0.60126281 0.81558686 0.60138756 0.79537594 0.60223454 0.79550064
		 0.60223627 0.81711292 0.60139197 0.8172459 0.60039723 0.79708391 0.60039723 0.81558686
		 0.60054052 0.79525119 0.60205013 0.79398167 0.60272026 0.7944864 0.60272098 0.81803703
		 0.60207224 0.8185662 0.60054773 0.817379 0.60137999 0.79347688 0.60331917 0.79307646
		 0.60364354 0.79386282 0.60365409 0.81859279 0.60335821 0.81939197 0.6014235 0.81909549
		 0.6029948 0.79229003 0.604972 0.79267251 0.60503936 0.79353261 0.60506433 0.8188836
		 0.60500568 0.81974494 0.60306233 0.82019109 0.60490465 0.7918123 0.60494697 0.82060629
		 0.6441651 0.82434243 0.64503074 0.82434243 0.64503074 0.83123279 0.6441651 0.83123279
		 0.63842237 0.83123279 0.63755685 0.83123279 0.63755685 0.82434243 0.63842237 0.82434243
		 0.6309486 0.82434243 0.63181412 0.82434243 0.63181412 0.83123279 0.6309486 0.83123279
		 0.62520581 0.83123279 0.62434024 0.83123279 0.62434024 0.82434243 0.62520581 0.82434243
		 0.62315369 0.79708391 0.62401927 0.79708391 0.62401927 0.81558686 0.62315369 0.81558686
		 0.62327844 0.79537594 0.62412542 0.79550064 0.62412709 0.81711292 0.62328285 0.8172459
		 0.62228811 0.79708391 0.62228811 0.81558686 0.6224314 0.79525119 0.623941 0.79398167
		 0.62461108 0.7944864 0.62461179 0.81803703 0.62396306 0.8185662 0.62243861 0.817379
		 0.62327087 0.79347688 0.62521005 0.79307646 0.62553442 0.79386282 0.62554497 0.81859279
		 0.62524909 0.81939197 0.62331432 0.81909549 0.62488568 0.79229003 0.62686288 0.79267251
		 0.62693024 0.79353261 0.62695521 0.8188836 0.6268965 0.81974494 0.62495315 0.82019109
		 0.62679553 0.7918123 0.62683779 0.82060629 0.61773199 0.82434243 0.61859757 0.82434243;
	setAttr ".uvst[0].uvsp[750:999]" 0.61859757 0.83123279 0.61773199 0.83123279
		 0.61198926 0.83123279 0.61112368 0.83123279 0.61112368 0.82434243 0.61198926 0.82434243
		 0.61146009 0.82060641 0.61140132 0.81974494 0.61304879 0.81939197 0.61334473 0.82019109
		 0.61134267 0.8188836 0.61275297 0.81859279 0.61433488 0.8185662 0.61498356 0.81909549
		 0.61368608 0.81803703 0.61501503 0.8172459 0.61585933 0.817379 0.61417073 0.81711292
		 0.61514425 0.81558692 0.61600977 0.81558692 0.61427855 0.81558692 0.61514425 0.79708397
		 0.61600977 0.79708397 0.61427855 0.79708397 0.61501944 0.79537594 0.61586648 0.79525119
		 0.61417252 0.79550064 0.61435694 0.79398173 0.61502701 0.79347688 0.61368674 0.79448646
		 0.61308783 0.79307652 0.61341226 0.79229009 0.61276346 0.79386288 0.61143494 0.79267251
		 0.61150235 0.79181236 0.61136758 0.79353261 0.83873868 0.40642157 0.83873868 0.39689508
		 0.93414527 0.39689508 0.93414527 0.40624315 0.93414527 0.7880621 0.74333215 0.7880621
		 0.74333215 0.40642157 0.53626317 0.7880621 0.34545001 0.7880621 0.34545001 0.40643576
		 0.53626317 0.40643576 0.65340722 0.40269971 0.44351271 0.40269971 0.45305339 0.39315903
		 0.64386654 0.39315903 0.44351271 0.0019920319 0.45305339 0.011532702 0.65340722 0.0019920319
		 0.64386654 0.011532702 0.6036498 0.82434243 0.60451537 0.82434243 0.60451537 0.83123279
		 0.6036498 0.83123279 0.60538101 0.82434243 0.60538101 0.83123279 0.59790713 0.83123279
		 0.59704155 0.83123279 0.59704155 0.82434243 0.59790713 0.82434243 0.63616943 0.79708397
		 0.63703513 0.79708397 0.63703513 0.81558692 0.63616943 0.81558692 0.63606334 0.79550064
		 0.63691032 0.79537594 0.63790065 0.79708397 0.63790065 0.81558692 0.63690591 0.8172459
		 0.63606161 0.81711292 0.63557762 0.79448646 0.63624781 0.79398173 0.63775736 0.79525119
		 0.63775021 0.817379 0.6362257 0.8185662 0.63557696 0.81803703 0.63465434 0.79386288
		 0.63497871 0.79307652 0.63691789 0.79347688 0.63687444 0.81909549 0.63493967 0.81939197
		 0.63464385 0.81859279 0.63325846 0.79353261 0.63332582 0.79267251 0.63530314 0.79229009
		 0.63523561 0.82019109 0.6332922 0.81974494 0.63323355 0.8188836 0.63339323 0.79181236
		 0.63335097 0.82060641 0.64504457 0.79708391 0.64591014 0.79708391 0.64591014 0.81558686
		 0.64504457 0.81558686 0.64516932 0.79537594 0.64601624 0.79550064 0.64601797 0.81711292
		 0.64517373 0.8172459 0.64417899 0.79708391 0.64417899 0.81558686 0.64432228 0.79525119
		 0.64583188 0.79398167 0.64650196 0.7944864 0.64650267 0.81803703 0.64585394 0.8185662
		 0.64432949 0.817379 0.64516175 0.79347688 0.64710087 0.79307646 0.64742529 0.79386282
		 0.64743584 0.81859279 0.64713997 0.81939197 0.6452052 0.81909549 0.64677656 0.79229003
		 0.64875376 0.79267251 0.64882112 0.79353261 0.64884609 0.8188836 0.64878738 0.81974494
		 0.64684403 0.82019109 0.64868641 0.7918123 0.64872867 0.82060629 0.5895676 0.82434243
		 0.59043324 0.82434243 0.59043324 0.83123279 0.5895676 0.83123279 0.59129882 0.82434243
		 0.59129882 0.83123279 0.58382493 0.83123279 0.58295935 0.83123279 0.58295935 0.82434243
		 0.58382493 0.82434243 0.57635105 0.82434243 0.57721668 0.82434243 0.57721668 0.83123279
		 0.57635105 0.83123279 0.57060832 0.83123279 0.5697428 0.83123279 0.5697428 0.82434243
		 0.57060832 0.82434243 0.56887716 0.83123279 0.56887716 0.82434243 0.66606981 0.79708391
		 0.66693544 0.79708391 0.66693544 0.81558686 0.66606981 0.81558686 0.66621315 0.79525119
		 0.66706014 0.79537594 0.66780102 0.79708391 0.66780102 0.81558686 0.66706461 0.8172459
		 0.66622037 0.817379 0.66705263 0.79347688 0.66772276 0.79398167 0.66790712 0.79550064
		 0.66790885 0.81711292 0.66774482 0.8185662 0.66709608 0.81909549 0.66866744 0.79229003
		 0.66899174 0.79307646 0.66839284 0.7944864 0.66839355 0.81803703 0.66903085 0.81939197
		 0.66873491 0.82019109 0.67057729 0.7918123 0.67064464 0.79267251 0.66931617 0.79386282
		 0.66932672 0.81859279 0.67067826 0.81974494 0.67061955 0.82060629 0.67071199 0.79353261
		 0.67073697 0.8188836 0.56226891 0.98636156 0.56313449 0.98636156 0.56313449 0.9932518
		 0.56226891 0.9932518 0.55652618 0.9932518 0.55566055 0.9932518 0.55566055 0.98636156
		 0.55652618 0.98636156 0.55479503 0.9932518 0.55479503 0.98636156 0.65524179 0.82060641
		 0.65518308 0.81974494 0.65683055 0.81939197 0.65712643 0.82019109 0.65512443 0.8188836
		 0.65653473 0.81859279 0.65811658 0.8185662 0.65876526 0.81909549 0.65746778 0.81803703
		 0.65879679 0.8172459 0.65964109 0.817379 0.65795249 0.81711292 0.65892595 0.81558692
		 0.65979153 0.81558692 0.65806031 0.81558692 0.65892595 0.79708397 0.65979153 0.79708397
		 0.65806031 0.79708397 0.6588012 0.79537594 0.65964824 0.79525119 0.65795422 0.79550064
		 0.65813863 0.79398173 0.65880877 0.79347688 0.6574685 0.79448646 0.65686953 0.79307652
		 0.65719402 0.79229009 0.65654522 0.79386288 0.65521669 0.79267251 0.65528411 0.79181236
		 0.65514934 0.79353261 0.54732114 0.98636156 0.54818666 0.98636156 0.54818666 0.9932518
		 0.54732114 0.9932518 0.5490523 0.98636156 0.5490523 0.9932518 0.54157841 0.9932518
		 0.54071277 0.9932518 0.54071277 0.98636156 0.54157841 0.98636156 0.5398472 0.9932518
		 0.5398472 0.98636156 0.67995119 0.79708397 0.68081683 0.79708397 0.68081683 0.81558692
		 0.67995119 0.81558692 0.67984509 0.79550064 0.68069208 0.79537594 0.68168241 0.79708397
		 0.68168241 0.81558692 0.68068761 0.8172459 0.67984331 0.81711292 0.67935932 0.79448646
		 0.68002951 0.79398173 0.68153912 0.79525119 0.68153191 0.817379 0.68000746 0.8185662
		 0.67935866 0.81803703 0.6784361 0.79386288 0.67876041 0.79307652 0.68069965 0.79347688
		 0.68065614 0.81909549 0.67872143 0.81939197 0.67842555 0.81859279 0.67704022 0.79353261;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.67710757 0.79267251 0.6790849 0.79229009
		 0.67901731 0.82019109 0.67707396 0.81974494 0.67701524 0.8188836 0.67717499 0.79181236
		 0.67713267 0.82060641 0.68796068 0.79708391 0.68882632 0.79708391 0.68882632 0.81558686
		 0.68796068 0.81558686 0.68810403 0.79525119 0.68895102 0.79537594 0.68969184 0.79708391
		 0.68969184 0.81558686 0.68895549 0.8172459 0.68811125 0.817379 0.68894351 0.79347688
		 0.68961364 0.79398167 0.689798 0.79550064 0.68979973 0.81711292 0.68963569 0.8185662
		 0.68898696 0.81909549 0.69055825 0.79229003 0.69088262 0.79307646 0.69028372 0.7944864
		 0.69028443 0.81803703 0.69092172 0.81939197 0.69062579 0.82019109 0.69246817 0.7918123
		 0.69253552 0.79267251 0.69120699 0.79386282 0.6912176 0.81859279 0.69256914 0.81974494
		 0.69251043 0.82060629 0.69260287 0.79353261 0.69262785 0.8188836 0.53237331 0.99111772
		 0.53323889 0.99111772 0.53323889 0.99800795 0.53237331 0.99800795 0.53410453 0.99111772
		 0.53410453 0.99800795 0.52663064 0.99800795 0.525765 0.99800795 0.525765 0.99111772
		 0.52663064 0.99111772 0.52489942 0.99800795 0.52489942 0.99111772 0.51829118 0.99111772
		 0.51915675 0.99111772 0.51915675 0.99800795 0.51829118 0.99800795 0.51254845 0.99800795
		 0.51168287 0.99800795 0.51168287 0.99111772 0.51254845 0.99111772 0.70184207 0.79708397
		 0.70270771 0.79708397 0.70270771 0.81558692 0.70184207 0.81558692 0.70173597 0.79550064
		 0.70258296 0.79537594 0.70357329 0.79708397 0.70357329 0.81558692 0.70257849 0.8172459
		 0.70173419 0.81711292 0.7012502 0.79448646 0.70192039 0.79398173 0.70342994 0.79525119
		 0.70342278 0.817379 0.70189834 0.8185662 0.70124954 0.81803703 0.70032698 0.79386288
		 0.70065129 0.79307652 0.70259047 0.79347688 0.70254701 0.81909549 0.70061225 0.81939197
		 0.70031643 0.81859279 0.6989311 0.79353261 0.69899845 0.79267251 0.70097572 0.79229009
		 0.70090818 0.82019109 0.69896477 0.81974494 0.69890612 0.8188836 0.6990658 0.79181236
		 0.69902354 0.82060641 0.7107172 0.79708391 0.71158272 0.79708391 0.71158272 0.81558686
		 0.7107172 0.81558686 0.71084189 0.79537594 0.71168888 0.79550064 0.7116906 0.81711292
		 0.71084636 0.8172459 0.70985156 0.79708391 0.70985156 0.81558686 0.70999485 0.79525119
		 0.71150452 0.79398167 0.71217459 0.7944864 0.71217531 0.81803703 0.71152657 0.8185662
		 0.71000206 0.817379 0.71083432 0.79347688 0.7127735 0.79307646 0.71309787 0.79386282
		 0.71310842 0.81859279 0.71281254 0.81939197 0.71087784 0.81909549 0.71244913 0.79229003
		 0.71442634 0.79267251 0.71449369 0.79353261 0.71451873 0.8188836 0.71446002 0.81974494
		 0.71251667 0.82019109 0.71435899 0.7918123 0.7144013 0.82060629 0.50507462 0.99111772
		 0.5059402 0.99111772 0.5059402 0.99800795 0.50507462 0.99800795 0.49933186 0.99800795
		 0.49846631 0.99800795 0.49846631 0.99111772 0.49933186 0.99111772 0.49185804 0.99111772
		 0.49272364 0.99111772 0.49272364 0.99800795 0.49185804 0.99800795 0.48611531 0.99800795
		 0.48524973 0.99800795 0.48524973 0.99111772 0.48611531 0.99111772 0.72373295 0.79708397
		 0.72459859 0.79708397 0.72459859 0.81558692 0.72373295 0.81558692 0.72362685 0.79550064
		 0.72447383 0.79537594 0.72546417 0.79708397 0.72546417 0.81558692 0.72446936 0.8172459
		 0.72362506 0.81711292 0.72314107 0.79448646 0.72381127 0.79398173 0.72532082 0.79525119
		 0.72531366 0.817379 0.72378922 0.8185662 0.72314042 0.81803703 0.7222178 0.79386288
		 0.72254217 0.79307652 0.72448134 0.79347688 0.72443789 0.81909549 0.72250313 0.81939197
		 0.72220731 0.81859279 0.72082192 0.79353261 0.72088927 0.79267251 0.72286659 0.79229009
		 0.72279906 0.82019109 0.72085565 0.81974494 0.720797 0.8188836 0.72095668 0.79181236
		 0.72091442 0.82060641 0.73260796 0.79708391 0.7334736 0.79708391 0.7334736 0.81558686
		 0.73260796 0.81558686 0.73273271 0.79537594 0.7335797 0.79550064 0.73358148 0.81711292
		 0.73273718 0.8172459 0.73174238 0.79708391 0.73174238 0.81558686 0.73188567 0.79525119
		 0.73339528 0.79398167 0.73406547 0.7944864 0.73406613 0.81803703 0.73341733 0.8185662
		 0.73189288 0.817379 0.73272514 0.79347688 0.73466438 0.79307646 0.73498869 0.79386282
		 0.73499924 0.81859279 0.73470342 0.81939197 0.73276865 0.81909549 0.73433995 0.79229003
		 0.73631722 0.79267251 0.73638457 0.79353261 0.73640954 0.8188836 0.73635089 0.81974494
		 0.73440748 0.82019109 0.73624986 0.7918123 0.73629212 0.82060629 0.47864145 0.99111772
		 0.47950706 0.99111772 0.47950706 0.99800795 0.47864145 0.99800795 0.47289872 0.99800795
		 0.47203317 0.99800795 0.47203317 0.99111772 0.47289872 0.99111772 0.46455929 0.99111772
		 0.46542484 0.99111772 0.46542484 0.99800795 0.46455929 0.99800795 0.4662905 0.99111772
		 0.4662905 0.99800795 0.45881662 0.99800795 0.45795095 0.99800795 0.45795095 0.99111772
		 0.45881662 0.99111772 0.4570854 0.99800795 0.4570854 0.99111772 0.74562377 0.79706973
		 0.74648935 0.79706973 0.74648935 0.81557268 0.74562377 0.81557268 0.74551767 0.79548651
		 0.74636465 0.79536176 0.74735498 0.79706973 0.74735498 0.81557268 0.74636018 0.81723177
		 0.74551594 0.8170988 0.74503195 0.79447228 0.74570203 0.79396749 0.74721164 0.795237
		 0.74720442 0.81736487 0.74567997 0.81855208 0.74503124 0.81802291 0.74410862 0.79384863
		 0.74443305 0.79306227 0.74637216 0.79346269 0.74632871 0.81908125 0.74439394 0.81937778
		 0.74409807 0.81857866 0.7427128 0.79351848 0.74278015 0.79265833 0.74475735 0.79227591
		 0.74468988 0.82017696 0.74274653 0.81973082 0.74268782 0.81886947 0.7428475 0.79179811
		 0.74280524 0.82059216 0.75363326 0.79706973 0.75449884 0.79706973 0.75449884 0.81557268
		 0.75363326 0.81557268 0.75377655 0.79523695 0.75462359 0.79536176 0.75536448 0.79706973;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.75536448 0.81557268 0.754628 0.81723177
		 0.7537837 0.81736475 0.75461602 0.79346269 0.75528616 0.79396749 0.75547057 0.79548645
		 0.7554723 0.8170988 0.75530821 0.81855208 0.75465953 0.81908125 0.75623077 0.79227591
		 0.75655526 0.79306227 0.75595629 0.79447228 0.75595701 0.81802279 0.75659424 0.81937772
		 0.75629836 0.82017696 0.75814068 0.79179811 0.7582081 0.79265827 0.75687957 0.79384863
		 0.75689012 0.81857866 0.75824171 0.81973082 0.758183 0.82059216 0.75827545 0.79351842
		 0.75830036 0.81886947 0.44961151 0.99111772 0.45047706 0.99111772 0.45047706 0.99800795
		 0.44961151 0.99800795 0.4513427 0.99111772 0.4513427 0.99800795 0.44386882 0.99800795
		 0.44300318 0.99800795 0.44300318 0.99111772 0.44386882 0.99111772 0.44213763 0.99800795
		 0.44213763 0.99111772 0.83025128 0.79439563 0.83125073 0.79439563 0.83125073 0.81289852
		 0.83025128 0.81289852 0.83025128 0.79281235 0.83125073 0.79281235 0.83125073 0.81442463
		 0.83025128 0.81442463 0.83025128 0.79179811 0.83125073 0.79179811 0.83125073 0.81534874
		 0.83025128 0.81534874 0.76457876 0.79540521 0.76557815 0.79540521 0.76557815 0.81390816
		 0.76457876 0.81390816 0.76457876 0.79357243 0.76557815 0.79357243 0.76557815 0.81570035
		 0.76457876 0.81570035 0.76457876 0.79179811 0.76557815 0.79179811 0.76557815 0.81741673
		 0.76457876 0.81741673 0.8375482 0.79439557 0.83854771 0.79439557 0.83854771 0.81289864
		 0.8375482 0.81289864 0.8375482 0.79281235 0.83854771 0.79281235 0.83854771 0.81442463
		 0.8375482 0.81442463 0.8375482 0.79179811 0.83854771 0.79179811 0.83854771 0.81534874
		 0.8375482 0.81534874 0.77187562 0.79540521 0.77287513 0.79540521 0.77287513 0.81390816
		 0.77187562 0.81390816 0.77187562 0.79357243 0.77287513 0.79357243 0.77287513 0.81570035
		 0.77187562 0.81570035 0.77187562 0.79179811 0.77287513 0.79179811 0.77287513 0.81741673
		 0.77187562 0.81741673 0.84484518 0.79439557 0.84584469 0.79439557 0.84584469 0.81289864
		 0.84484518 0.81289864 0.84484518 0.79281235 0.84584469 0.79281235 0.84584469 0.81442463
		 0.84484518 0.81442463 0.84484518 0.79179811 0.84584469 0.79179811 0.84584469 0.81534874
		 0.84484518 0.81534874 0.7791726 0.79540521 0.78017211 0.79540521 0.78017211 0.81390816
		 0.7791726 0.81390816 0.7791726 0.79357243 0.78017211 0.79357243 0.78017211 0.81570035
		 0.7791726 0.81570035 0.7791726 0.79179811 0.78017211 0.79179811 0.78017211 0.81741673
		 0.7791726 0.81741673 0.85618061 0.0019920319 0.85618061 0.39315903 0.66059709 0.39315903
		 0.66059709 0.011340101 0.66059709 0.0019920319 0.21652934 0.0019920319 0.21652934
		 0.40269971 0.0018645615 0.40269971 0.0018645615 0.0019920319 0.43744463 0.0019920319
		 0.43744463 0.40269968 0.22277984 0.40269968 0.22277984 0.0019920319 0.5420059 0.78807628
		 0.5420059 0.40643576 0.73758942 0.40643576 0.73758942 0.78807628 0.51830649 0.79179811
		 0.52783298 0.79179811 0.52783298 0.9873817 0.51830649 0.9873817 0.33016667 0.78806204
		 0.33016667 0.4064357 0.33970731 0.4064357 0.33970731 0.78806204 0.32442397 0.4064357
		 0.32442397 0.78806204 0.31488335 0.78806204 0.31488335 0.4064357 0.8521421 0.79439557
		 0.85314161 0.79439557 0.85314161 0.81289864 0.8521421 0.81289864 0.8521421 0.79281235
		 0.85314161 0.79281235 0.85314161 0.81442463 0.8521421 0.81442463 0.8521421 0.79179811
		 0.85314161 0.79179811 0.85314161 0.81534874 0.8521421 0.81534874 0.78646958 0.79540521
		 0.78746909 0.79540521 0.78746909 0.81390816 0.78646958 0.81390816 0.78646958 0.79357243
		 0.78746909 0.79357243 0.78746909 0.81570035 0.78646958 0.81570035 0.78646958 0.79179811
		 0.78746909 0.79179811 0.78746909 0.81741673 0.78646958 0.81741673 0.85943907 0.79439557
		 0.86043859 0.79439557 0.86043859 0.81289864 0.85943907 0.81289864 0.85943907 0.79281235
		 0.86043859 0.79281235 0.86043859 0.81442463 0.85943907 0.81442463 0.85943907 0.79179811
		 0.86043859 0.79179811 0.86043859 0.81534874 0.85943907 0.81534874 0.7937665 0.79540521
		 0.79476601 0.79540521 0.79476601 0.81390816 0.7937665 0.81390816 0.7937665 0.79357243
		 0.79476601 0.79357243 0.79476601 0.81570035 0.7937665 0.81570035 0.7937665 0.79179811
		 0.79476601 0.79179811 0.79476601 0.81741673 0.7937665 0.81741673 0.86673605 0.79439569
		 0.86773551 0.79439569 0.86773551 0.81289852 0.86673605 0.81289852 0.86673605 0.79281235
		 0.86773551 0.79281235 0.86773551 0.81442463 0.86673605 0.81442463 0.86673605 0.79179811
		 0.86773551 0.79179811 0.86773551 0.81534874 0.86673605 0.81534874 0.80106348 0.79540521
		 0.80206293 0.79540521 0.80206293 0.81390816 0.80106348 0.81390816 0.80106348 0.79357243
		 0.80206293 0.79357243 0.80206293 0.81570035 0.80106348 0.81570035 0.80106348 0.79179811
		 0.80206293 0.79179811 0.80206293 0.81741673 0.80106348 0.81741673 0.87403297 0.79439557
		 0.87503248 0.79439557 0.87503248 0.81289864 0.87403297 0.81289864 0.87403297 0.79281235
		 0.87503248 0.79281235 0.87503248 0.81442463 0.87403297 0.81442463 0.87403297 0.79179811
		 0.87503248 0.79179811 0.87503248 0.81534874 0.87403297 0.81534874 0.80836046 0.79540521
		 0.80935997 0.79540521 0.80935997 0.81390816 0.80836046 0.81390816 0.80836046 0.79357243
		 0.80935997 0.79357243 0.80935997 0.81570035 0.80836046 0.81570035 0.80836046 0.79179811
		 0.80935997 0.79179811 0.80935997 0.81741673 0.80836046 0.81741673 0.88132995 0.79439569
		 0.88232946 0.79439569 0.88232946 0.81289852 0.88132995 0.81289852 0.88132995 0.79281235
		 0.88232946 0.79281235 0.88232946 0.81442463 0.88132995 0.81442463 0.88132995 0.79179811
		 0.88232946 0.79179811 0.88232946 0.81534874 0.88132995 0.81534874 0.81565732 0.79540521
		 0.81665683 0.79540521 0.81665683 0.81390816 0.81565732 0.81390816 0.81565732 0.79357243
		 0.81665683 0.79357243;
	setAttr ".uvst[0].uvsp[1500:1529]" 0.81665683 0.81570035 0.81565732 0.81570035
		 0.81565732 0.79179811 0.81665683 0.79179811 0.81665683 0.81741673 0.81565732 0.81741673
		 0.88862693 0.79439569 0.88962638 0.79439569 0.88962638 0.81289852 0.88862693 0.81289852
		 0.88862693 0.79281235 0.88962638 0.79281235 0.88962638 0.81442463 0.88862693 0.81442463
		 0.88862693 0.79179811 0.88962638 0.79179811 0.88962638 0.81534874 0.88862693 0.81534874
		 0.8229543 0.79540521 0.82395381 0.79540521 0.82395381 0.81390816 0.8229543 0.81390816
		 0.8229543 0.79357243 0.82395381 0.79357243 0.82395381 0.81570035 0.8229543 0.81570035
		 0.8229543 0.79179811 0.82395381 0.79179811 0.82395381 0.81741673 0.8229543 0.81741673;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 264 ".pt";
	setAttr ".pt[533]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[534]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[535]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[536]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[537]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[538]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[539]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[540]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[541]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[542]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[543]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[544]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[545]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[546]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[547]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[548]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[549]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[550]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[551]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[552]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[553]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[554]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[555]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[556]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[557]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[558]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[559]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[560]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[561]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[562]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[563]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[564]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[565]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[566]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[567]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[568]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[569]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[570]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[571]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[572]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[573]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[574]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[575]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[576]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[577]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[578]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[579]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[580]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[581]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[582]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[583]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[584]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[585]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[586]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[587]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[588]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[589]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[590]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[591]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[592]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[593]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[594]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[595]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[596]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[597]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[598]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[599]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[600]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[601]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[602]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[603]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[604]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[605]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[606]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[607]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[608]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[609]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[610]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[611]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[612]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[613]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[614]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[615]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[616]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[617]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[618]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[619]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[620]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[621]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[622]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[623]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[624]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[625]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[626]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[627]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[628]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[629]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[630]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[631]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[632]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[633]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[634]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[635]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[636]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[637]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[638]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[639]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[640]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[641]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[642]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[643]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[644]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[645]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[646]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[647]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[648]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[649]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[650]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[651]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[652]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[653]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[654]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[655]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[656]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[657]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[658]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[659]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[660]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[661]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[662]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[663]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[664]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[665]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[666]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[667]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[668]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[669]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[670]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[671]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[672]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[673]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[674]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[675]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[676]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[677]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[678]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[679]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[680]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[681]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[682]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[683]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[684]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[685]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[686]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[687]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[688]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[689]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[690]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[691]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[692]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[693]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[694]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[695]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[696]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[697]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[698]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[699]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[700]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[701]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[702]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[703]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[704]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[705]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[706]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[707]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[708]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[709]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[710]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[711]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[712]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[713]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[714]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[715]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[716]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[717]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[718]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[719]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[720]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[721]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[722]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[723]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[724]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[725]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[726]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[727]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[728]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[729]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[730]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[731]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[732]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[733]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[734]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[735]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[736]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[737]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[738]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[739]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[740]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[741]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[742]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[743]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[744]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[745]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[746]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[747]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[748]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[749]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[750]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[751]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[752]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[753]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[754]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[755]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[756]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[757]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[758]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[759]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[760]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[761]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[762]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[763]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[764]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[765]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[766]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[767]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[768]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[769]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[770]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[771]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[772]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[773]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[774]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[775]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[776]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[777]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[778]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[779]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[780]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[781]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[782]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[783]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".pt[784]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr -s 785 ".vt";
	setAttr ".vt[0:165]"  33.8740387 407.27493286 417.47320557 33.8740387 405.1796875 417.47320557
		 35.68856812 404.13208008 417.47320557 37.50309753 405.1796875 417.47320557 37.50309753 407.27490234 417.47320557
		 35.68856812 408.32254028 417.47320557 33.8740387 407.27493286 431.91729736 33.8740387 405.1796875 431.91729736
		 35.68856812 404.13208008 431.91729736 37.50309753 405.1796875 431.91729736 37.50309753 407.27490234 431.91729736
		 35.68856812 408.32254028 431.91729736 83.3105011 407.27493286 441.57977295 83.3105011 405.1796875 441.57977295
		 83.3105011 404.13208008 443.39434814 83.3105011 405.1796875 445.2088623 83.3105011 407.27490234 445.2088623
		 83.3105011 408.32254028 443.39434814 44.52286148 407.27493286 441.57977295 44.52286148 405.1796875 441.57977295
		 44.52286148 404.13208008 443.39434814 44.52286148 405.1796875 445.2088623 44.52286148 407.27490234 445.2088623
		 44.52286148 408.32254028 443.39434814 90.88410187 407.27493286 417.47320557 90.88410187 405.1796875 417.47320557
		 92.69863129 404.13208008 417.47320557 94.51316071 405.1796875 417.47320557 94.51316071 407.27490234 417.47320557
		 92.69863129 408.32254028 417.47320557 90.88410187 407.27493286 431.91729736 90.88410187 405.1796875 431.91729736
		 92.69863129 404.13208008 431.91729736 94.51316071 405.1796875 431.91729736 94.51316071 407.27490234 431.91729736
		 92.69863129 408.32254028 431.91729736 34.00059509277 405.1796875 435.67132568 35.80630493 404.13208008 435.54821777
		 37.61201096 405.1796875 435.4251709 37.61201096 407.27490234 435.4251709 35.80630493 408.32254028 435.54821777
		 34.00059509277 407.27493286 435.67132568 34.87106323 405.1796875 439.62207031 36.54636383 404.13208008 439.0017700195
		 38.22167206 405.1796875 438.38153076 38.22167206 407.27490234 438.38153076 36.54636383 408.32254028 439.0017700195
		 34.87106323 407.27493286 439.62207031 37.16788483 405.1796875 443.057556152 38.27725983 404.13208008 441.69763184
		 39.38663483 405.1796875 440.33764648 39.38663483 407.27493286 440.33764648 38.27725983 408.32254028 441.69763184
		 37.16788483 407.27490234 443.057556152 40.76609421 405.1796875 444.89337158 41.044994354 404.13208008 443.12353516
		 41.32388687 405.1796875 441.35369873 41.32388687 407.27493286 441.35369873 41.044994354 408.32254028 443.12353516
		 40.76609421 407.27490234 444.89337158 86.62947845 405.1796875 441.35736084 86.62947845 407.27493286 441.35736084
		 86.89096069 408.32254028 443.13287354 87.15244293 407.27490234 444.90844727 87.15244293 405.1796875 444.90844727
		 86.89096069 404.13208008 443.13287354 88.75551605 405.1796875 440.33911133 88.75551605 407.27493286 440.33911133
		 89.8137207 408.32254028 441.74389648 90.87192535 407.27490234 443.14868164 90.87192535 405.1796875 443.14868164
		 89.8137207 404.13208008 441.74389648 90.062828064 405.1796875 438.40362549 90.062828064 407.27493286 438.40362549
		 91.71130371 408.32254028 439.083618164 93.35977173 407.27490234 439.76361084 93.35977173 405.1796875 439.76361084
		 91.71130371 404.13208008 439.083618164 90.75507355 405.1796875 435.47753906 90.75507355 407.27493286 435.47753906
		 92.55818176 408.32254028 435.61871338 94.36128998 407.27490234 435.75994873 94.36128998 405.1796875 435.75994873
		 92.55818176 404.13208008 435.61871338 33.8740387 232.43331909 417.47320557 33.8740387 230.33807373 417.47320557
		 35.68856812 229.29045105 417.47320557 37.50309753 230.33805847 417.47320557 37.50309753 232.43330383 417.47320557
		 35.68856812 233.48092651 417.47320557 33.8740387 232.43331909 431.91729736 33.8740387 230.33807373 431.91729736
		 35.68856812 229.29045105 431.91729736 37.50309753 230.33805847 431.91729736 37.50309753 232.43330383 431.91729736
		 35.68856812 233.48092651 431.91729736 83.3105011 232.43331909 441.57977295 83.3105011 230.33807373 441.57977295
		 83.3105011 229.29045105 443.39434814 83.3105011 230.33805847 445.2088623 83.3105011 232.43330383 445.2088623
		 83.3105011 233.48092651 443.39434814 44.52286148 232.43331909 441.57977295 44.52286148 230.33807373 441.57977295
		 44.52286148 229.29045105 443.39434814 44.52286148 230.33805847 445.2088623 44.52286148 232.43330383 445.2088623
		 44.52286148 233.48092651 443.39434814 90.88410187 232.43331909 417.47320557 90.88410187 230.33807373 417.47320557
		 92.69863129 229.29045105 417.47320557 94.51316071 230.33805847 417.47320557 94.51316071 232.43330383 417.47320557
		 92.69863129 233.48092651 417.47320557 90.88410187 232.43331909 431.91729736 90.88410187 230.33807373 431.91729736
		 92.69863129 229.29045105 431.91729736 94.51316071 230.33805847 431.91729736 94.51316071 232.43330383 431.91729736
		 92.69863129 233.48092651 431.91729736 34.00059509277 230.33807373 435.67132568 35.80630493 229.29045105 435.54821777
		 37.61201096 230.33805847 435.4251709 37.61201096 232.43330383 435.4251709 35.80630493 233.48092651 435.54821777
		 34.00059509277 232.43331909 435.67132568 34.87106323 230.33807373 439.62207031 36.54636383 229.29045105 439.0017700195
		 38.22167206 230.33805847 438.38153076 38.22167206 232.43330383 438.38153076 36.54636383 233.48092651 439.0017700195
		 34.87106323 232.43331909 439.62207031 37.16788483 230.33805847 443.057556152 38.27725983 229.29045105 441.69763184
		 39.38663483 230.33807373 440.33764648 39.38663483 232.43331909 440.33764648 38.27725983 233.48092651 441.69763184
		 37.16788483 232.43330383 443.057556152 40.76609421 230.33805847 444.89337158 41.044994354 229.29045105 443.12353516
		 41.32388687 230.33807373 441.35369873 41.32388687 232.43331909 441.35369873 41.044994354 233.48092651 443.12353516
		 40.76609421 232.43330383 444.89337158 86.62947845 230.33807373 441.35736084 86.62947845 232.43331909 441.35736084
		 86.89096069 233.48092651 443.13287354 87.15244293 232.43330383 444.90844727 87.15244293 230.33805847 444.90844727
		 86.89096069 229.29045105 443.13287354 88.75551605 230.33807373 440.33911133 88.75551605 232.43331909 440.33911133
		 89.8137207 233.48092651 441.74389648 90.87192535 232.43330383 443.14868164 90.87192535 230.33805847 443.14868164
		 89.8137207 229.29045105 441.74389648 90.062828064 230.33807373 438.40362549 90.062828064 232.43331909 438.40362549
		 91.71130371 233.48092651 439.083618164 93.35977173 232.43330383 439.76361084 93.35977173 230.33805847 439.76361084
		 91.71130371 229.29045105 439.083618164 90.75507355 230.33807373 435.47753906 90.75507355 232.43331909 435.47753906
		 92.55818176 233.48092651 435.61871338 94.36128998 232.43330383 435.75994873;
	setAttr ".vt[166:331]" 94.36128998 230.33805847 435.75994873 92.55818176 229.29045105 435.61871338
		 33.8740387 277.76345825 417.47320557 33.8740387 275.66821289 417.47320557 35.68856812 274.62057495 417.47320557
		 37.50309753 275.66818237 417.47320557 37.50309753 277.76342773 417.47320557 35.68856812 278.81106567 417.47320557
		 33.8740387 277.76345825 431.91729736 33.8740387 275.66821289 431.91729736 35.68856812 274.62057495 431.91729736
		 37.50309753 275.66818237 431.91729736 37.50309753 277.76342773 431.91729736 35.68856812 278.81106567 431.91729736
		 83.3105011 277.76345825 441.57977295 83.3105011 275.66821289 441.57977295 83.3105011 274.62057495 443.39434814
		 83.3105011 275.66818237 445.2088623 83.3105011 277.76342773 445.2088623 83.3105011 278.81106567 443.39434814
		 44.52286148 277.76345825 441.57977295 44.52286148 275.66821289 441.57977295 44.52286148 274.62057495 443.39434814
		 44.52286148 275.66818237 445.2088623 44.52286148 277.76342773 445.2088623 44.52286148 278.81106567 443.39434814
		 90.88410187 277.76345825 417.47320557 90.88410187 275.66821289 417.47320557 92.69863129 274.62057495 417.47320557
		 94.51316071 275.66818237 417.47320557 94.51316071 277.76342773 417.47320557 92.69863129 278.81106567 417.47320557
		 90.88410187 277.76345825 431.91729736 90.88410187 275.66821289 431.91729736 92.69863129 274.62057495 431.91729736
		 94.51316071 275.66818237 431.91729736 94.51316071 277.76342773 431.91729736 92.69863129 278.81106567 431.91729736
		 34.00059509277 275.66821289 435.67132568 35.80630493 274.62057495 435.54821777 37.61201096 275.66818237 435.4251709
		 37.61201096 277.76342773 435.4251709 35.80630493 278.81106567 435.54821777 34.00059509277 277.76345825 435.67132568
		 34.87106323 275.66821289 439.62207031 36.54636383 274.62057495 439.0017700195 38.22167206 275.66818237 438.38153076
		 38.22167206 277.76342773 438.38153076 36.54636383 278.81106567 439.0017700195 34.87106323 277.76345825 439.62207031
		 37.16788483 275.66818237 443.057556152 38.27725983 274.62057495 441.69763184 39.38663483 275.66821289 440.33764648
		 39.38663483 277.76345825 440.33764648 38.27725983 278.81106567 441.69763184 37.16788483 277.76342773 443.057556152
		 40.76609421 275.66818237 444.89337158 41.044994354 274.62057495 443.12353516 41.32388687 275.66821289 441.35369873
		 41.32388687 277.76345825 441.35369873 41.044994354 278.81106567 443.12353516 40.76609421 277.76342773 444.89337158
		 86.62947845 275.66821289 441.35736084 86.62947845 277.76345825 441.35736084 86.89096069 278.81106567 443.13287354
		 87.15244293 277.76342773 444.90844727 87.15244293 275.66818237 444.90844727 86.89096069 274.62057495 443.13287354
		 88.75551605 275.66821289 440.33911133 88.75551605 277.76345825 440.33911133 89.8137207 278.81106567 441.74389648
		 90.87192535 277.76342773 443.14868164 90.87192535 275.66818237 443.14868164 89.8137207 274.62057495 441.74389648
		 90.062828064 275.66821289 438.40362549 90.062828064 277.76345825 438.40362549 91.71130371 278.81106567 439.083618164
		 93.35977173 277.76342773 439.76361084 93.35977173 275.66818237 439.76361084 91.71130371 274.62057495 439.083618164
		 90.75507355 275.66821289 435.47753906 90.75507355 277.76345825 435.47753906 92.55818176 278.81106567 435.61871338
		 94.36128998 277.76342773 435.75994873 94.36128998 275.66818237 435.75994873 92.55818176 274.62057495 435.61871338
		 -20.000003814697 0 420 -20.000003814697 0 -20.000003814697 820 0 -20.000003814697
		 -3.8146973e-06 0 400 800.029724121 0 -3.8146973e-06 -3.8146973e-06 0 -3.8146973e-06
		 820 0 420 820 0 400 800.029724121 0 199.99993896 820 0 199.99993896 -3.8146973e-06 410 400
		 820 410 400 -20.000003814697 449.99996948 420 820 449.99996948 420 -20.000003814697 449.99996948 -20.000003814697
		 820 449.99996948 -20.000003814697 -3.8146973e-06 410 -3.8146973e-06 800.029724121 410 -3.8146973e-06
		 800.029724121 410 199.99993896 820 410 199.99993896 800.40380859 410 400 -3.8146973e-06 449.99996948 400
		 -3.8146973e-06 449.99996948 -3.8146973e-06 800 449.99996948 400 800 449.99996948 -3.8146973e-06
		 -3.8146973e-06 430 400 -3.8146973e-06 430 -3.8146973e-06 800 430 400 800 430 -3.8146973e-06
		 33.8740387 361.9447937 417.47320557 33.8740387 359.84954834 417.47320557 35.68856812 358.80194092 417.47320557
		 37.50309753 359.84954834 417.47320557 37.50309753 361.94476318 417.47320557 35.68856812 362.99240112 417.47320557
		 33.8740387 361.9447937 431.91729736 33.8740387 359.84954834 431.91729736 35.68856812 358.80194092 431.91729736
		 37.50309753 359.84954834 431.91729736 37.50309753 361.94476318 431.91729736 35.68856812 362.99240112 431.91729736
		 83.3105011 361.9447937 441.57977295 83.3105011 359.84954834 441.57977295 83.3105011 358.80194092 443.39434814
		 83.3105011 359.84954834 445.2088623 83.3105011 361.94476318 445.2088623 83.3105011 362.99240112 443.39434814
		 44.52286148 361.9447937 441.57977295 44.52286148 359.84954834 441.57977295 44.52286148 358.80194092 443.39434814
		 44.52286148 359.84954834 445.2088623 44.52286148 361.94476318 445.2088623 44.52286148 362.99240112 443.39434814
		 90.88410187 361.9447937 417.47320557 90.88410187 359.84954834 417.47320557 92.69863129 358.80194092 417.47320557
		 94.51316071 359.84954834 417.47320557 94.51316071 361.94476318 417.47320557 92.69863129 362.99240112 417.47320557
		 90.88410187 361.9447937 431.91729736 90.88410187 359.84954834 431.91729736 92.69863129 358.80194092 431.91729736
		 94.51316071 359.84954834 431.91729736 94.51316071 361.94476318 431.91729736 92.69863129 362.99240112 431.91729736
		 34.00059509277 359.84954834 435.67132568 35.80630493 358.80194092 435.54821777 37.61201096 359.84954834 435.4251709
		 37.61201096 361.94476318 435.4251709 35.80630493 362.99240112 435.54821777 34.00059509277 361.9447937 435.67132568
		 34.87106323 359.84954834 439.62207031 36.54636383 358.80194092 439.0017700195 38.22167206 359.84954834 438.38153076
		 38.22167206 361.94476318 438.38153076 36.54636383 362.99240112 439.0017700195 34.87106323 361.9447937 439.62207031
		 37.16788483 359.84954834 443.057556152 38.27725983 358.80194092 441.69763184 39.38663483 359.84954834 440.33764648;
	setAttr ".vt[332:497]" 39.38663483 361.9447937 440.33764648 38.27725983 362.99240112 441.69763184
		 37.16788483 361.94476318 443.057556152 40.76609421 359.84954834 444.89337158 41.044994354 358.80194092 443.12353516
		 41.32388687 359.84954834 441.35369873 41.32388687 361.9447937 441.35369873 41.044994354 362.99240112 443.12353516
		 40.76609421 361.94476318 444.89337158 86.62947845 359.84954834 441.35736084 86.62947845 361.9447937 441.35736084
		 86.89096069 362.99240112 443.13287354 87.15244293 361.94476318 444.90844727 87.15244293 359.84954834 444.90844727
		 86.89096069 358.80194092 443.13287354 88.75551605 359.84954834 440.33911133 88.75551605 361.9447937 440.33911133
		 89.8137207 362.99240112 441.74389648 90.87192535 361.94476318 443.14868164 90.87192535 359.84954834 443.14868164
		 89.8137207 358.80194092 441.74389648 90.062828064 359.84954834 438.40362549 90.062828064 361.9447937 438.40362549
		 91.71130371 362.99240112 439.083618164 93.35977173 361.94476318 439.76361084 93.35977173 359.84954834 439.76361084
		 91.71130371 358.80194092 439.083618164 90.75507355 359.84954834 435.47753906 90.75507355 361.9447937 435.47753906
		 92.55818176 362.99240112 435.61871338 94.36128998 361.94476318 435.75994873 94.36128998 359.84954834 435.75994873
		 92.55818176 358.80194092 435.61871338 33.8740387 318.1663208 417.47320557 33.8740387 316.071105957 417.47320557
		 35.68856812 315.023468018 417.47320557 37.50309753 316.071075439 417.47320557 37.50309753 318.1663208 417.47320557
		 35.68856812 319.21392822 417.47320557 33.8740387 318.1663208 431.91729736 33.8740387 316.071105957 431.91729736
		 35.68856812 315.023468018 431.91729736 37.50309753 316.071075439 431.91729736 37.50309753 318.1663208 431.91729736
		 35.68856812 319.21392822 431.91729736 83.3105011 318.1663208 441.57977295 83.3105011 316.071105957 441.57977295
		 83.3105011 315.023468018 443.39434814 83.3105011 316.071075439 445.2088623 83.3105011 318.1663208 445.2088623
		 83.3105011 319.21392822 443.39434814 44.52286148 318.1663208 441.57977295 44.52286148 316.071105957 441.57977295
		 44.52286148 315.023468018 443.39434814 44.52286148 316.071075439 445.2088623 44.52286148 318.1663208 445.2088623
		 44.52286148 319.21392822 443.39434814 90.88410187 318.1663208 417.47320557 90.88410187 316.071105957 417.47320557
		 92.69863129 315.023468018 417.47320557 94.51316071 316.071075439 417.47320557 94.51316071 318.1663208 417.47320557
		 92.69863129 319.21392822 417.47320557 90.88410187 318.1663208 431.91729736 90.88410187 316.071105957 431.91729736
		 92.69863129 315.023468018 431.91729736 94.51316071 316.071075439 431.91729736 94.51316071 318.1663208 431.91729736
		 92.69863129 319.21392822 431.91729736 34.00059509277 316.071105957 435.67132568 35.80630493 315.023468018 435.54821777
		 37.61201096 316.071075439 435.4251709 37.61201096 318.1663208 435.4251709 35.80630493 319.21392822 435.54821777
		 34.00059509277 318.1663208 435.67132568 34.87106323 316.071105957 439.62207031 36.54636383 315.023468018 439.0017700195
		 38.22167206 316.071075439 438.38153076 38.22167206 318.1663208 438.38153076 36.54636383 319.21392822 439.0017700195
		 34.87106323 318.1663208 439.62207031 37.16788483 316.071075439 443.057556152 38.27725983 315.023468018 441.69763184
		 39.38663483 316.071105957 440.33764648 39.38663483 318.1663208 440.33764648 38.27725983 319.21392822 441.69763184
		 37.16788483 318.1663208 443.057556152 40.76609421 316.071075439 444.89337158 41.044994354 315.023468018 443.12353516
		 41.32388687 316.071105957 441.35369873 41.32388687 318.1663208 441.35369873 41.044994354 319.21392822 443.12353516
		 40.76609421 318.1663208 444.89337158 86.62947845 316.071105957 441.35736084 86.62947845 318.1663208 441.35736084
		 86.89096069 319.21392822 443.13287354 87.15244293 318.1663208 444.90844727 87.15244293 316.071075439 444.90844727
		 86.89096069 315.023468018 443.13287354 88.75551605 316.071105957 440.33911133 88.75551605 318.1663208 440.33911133
		 89.8137207 319.21392822 441.74389648 90.87192535 318.1663208 443.14868164 90.87192535 316.071075439 443.14868164
		 89.8137207 315.023468018 441.74389648 90.062828064 316.071105957 438.40362549 90.062828064 318.1663208 438.40362549
		 91.71130371 319.21392822 439.083618164 93.35977173 318.1663208 439.76361084 93.35977173 316.071075439 439.76361084
		 91.71130371 315.023468018 439.083618164 90.75507355 316.071105957 435.47753906 90.75507355 318.1663208 435.47753906
		 92.55818176 319.21392822 435.61871338 94.36128998 318.1663208 435.75994873 94.36128998 316.071075439 435.75994873
		 92.55818176 315.023468018 435.61871338 33.8740387 188.65484619 417.47320557 33.8740387 186.55960083 417.47320557
		 35.68856812 185.51199341 417.47320557 37.50309753 186.55960083 417.47320557 37.50309753 188.65484619 417.47320557
		 35.68856812 189.70245361 417.47320557 33.8740387 188.65484619 431.91729736 33.8740387 186.55960083 431.91729736
		 35.68856812 185.51199341 431.91729736 37.50309753 186.55960083 431.91729736 37.50309753 188.65484619 431.91729736
		 35.68856812 189.70245361 431.91729736 83.3105011 188.65484619 441.57977295 83.3105011 186.55960083 441.57977295
		 83.3105011 185.51199341 443.39434814 83.3105011 186.55960083 445.2088623 83.3105011 188.65484619 445.2088623
		 83.3105011 189.70245361 443.39434814 44.52286148 188.65484619 441.57977295 44.52286148 186.55960083 441.57977295
		 44.52286148 185.51199341 443.39434814 44.52286148 186.55960083 445.2088623 44.52286148 188.65484619 445.2088623
		 44.52286148 189.70245361 443.39434814 90.88410187 188.65484619 417.47320557 90.88410187 186.55960083 417.47320557
		 92.69863129 185.51199341 417.47320557 94.51316071 186.55960083 417.47320557 94.51316071 188.65484619 417.47320557
		 92.69863129 189.70245361 417.47320557 90.88410187 188.65484619 431.91729736 90.88410187 186.55960083 431.91729736
		 92.69863129 185.51199341 431.91729736 94.51316071 186.55960083 431.91729736 94.51316071 188.65484619 431.91729736
		 92.69863129 189.70245361 431.91729736 34.00059509277 186.55960083 435.67132568 35.80630493 185.51199341 435.54821777
		 37.61201096 186.55960083 435.4251709 37.61201096 188.65484619 435.4251709 35.80630493 189.70245361 435.54821777
		 34.00059509277 188.65484619 435.67132568 34.87106323 186.55960083 439.62207031 36.54636383 185.51199341 439.0017700195
		 38.22167206 186.55960083 438.38153076 38.22167206 188.65484619 438.38153076 36.54636383 189.70245361 439.0017700195
		 34.87106323 188.65484619 439.62207031 37.16788483 186.55960083 443.057556152;
	setAttr ".vt[498:663]" 38.27725983 185.51199341 441.69763184 39.38663483 186.55960083 440.33764648
		 39.38663483 188.65484619 440.33764648 38.27725983 189.70245361 441.69763184 37.16788483 188.65484619 443.057556152
		 40.76609421 186.55960083 444.89337158 41.044994354 185.51199341 443.12353516 41.32388687 186.55960083 441.35369873
		 41.32388687 188.65484619 441.35369873 41.044994354 189.70245361 443.12353516 40.76609421 188.65484619 444.89337158
		 86.62947845 186.55960083 441.35736084 86.62947845 188.65484619 441.35736084 86.89096069 189.70245361 443.13287354
		 87.15244293 188.65484619 444.90844727 87.15244293 186.55960083 444.90844727 86.89096069 185.51199341 443.13287354
		 88.75551605 186.55960083 440.33911133 88.75551605 188.65484619 440.33911133 89.8137207 189.70245361 441.74389648
		 90.87192535 188.65484619 443.14868164 90.87192535 186.55960083 443.14868164 89.8137207 185.51199341 441.74389648
		 90.062828064 186.55960083 438.40362549 90.062828064 188.65484619 438.40362549 91.71130371 189.70245361 439.083618164
		 93.35977173 188.65484619 439.76361084 93.35977173 186.55960083 439.76361084 91.71130371 185.51199341 439.083618164
		 90.75507355 186.55960083 435.47753906 90.75507355 188.65484619 435.47753906 92.55818176 189.70245361 435.61871338
		 94.36128998 188.65484619 435.75994873 94.36128998 186.55960083 435.75994873 92.55818176 185.51199341 435.61871338
		 33.8740387 104.83583069 417.47320557 33.8740387 102.74058533 417.47320557 35.68856812 101.69296265 417.47320557
		 37.50309753 102.74057007 417.47320557 37.50309753 104.83581543 417.47320557 35.68856812 105.88343811 417.47320557
		 33.8740387 104.83583069 431.91729736 33.8740387 102.74058533 431.91729736 35.68856812 101.69296265 431.91729736
		 37.50309753 102.74057007 431.91729736 37.50309753 104.83581543 431.91729736 35.68856812 105.88343811 431.91729736
		 83.3105011 104.83583069 441.57977295 83.3105011 102.74058533 441.57977295 83.3105011 101.69296265 443.39434814
		 83.3105011 102.74057007 445.2088623 83.3105011 104.83581543 445.2088623 83.3105011 105.88343811 443.39434814
		 44.52286148 104.83583069 441.57977295 44.52286148 102.74058533 441.57977295 44.52286148 101.69296265 443.39434814
		 44.52286148 102.74057007 445.2088623 44.52286148 104.83581543 445.2088623 44.52286148 105.88343811 443.39434814
		 90.88410187 104.83583069 417.47320557 90.88410187 102.74058533 417.47320557 92.69863129 101.69296265 417.47320557
		 94.51316071 102.74057007 417.47320557 94.51316071 104.83581543 417.47320557 92.69863129 105.88343811 417.47320557
		 90.88410187 104.83583069 431.91729736 90.88410187 102.74058533 431.91729736 92.69863129 101.69296265 431.91729736
		 94.51316071 102.74057007 431.91729736 94.51316071 104.83581543 431.91729736 92.69863129 105.88343811 431.91729736
		 34.00059509277 102.74058533 435.67132568 35.80630493 101.69296265 435.54821777 37.61201096 102.74057007 435.4251709
		 37.61201096 104.83581543 435.4251709 35.80630493 105.88343811 435.54821777 34.00059509277 104.83583069 435.67132568
		 34.87106323 102.74058533 439.62207031 36.54636383 101.69296265 439.0017700195 38.22167206 102.74057007 438.38153076
		 38.22167206 104.83581543 438.38153076 36.54636383 105.88343811 439.0017700195 34.87106323 104.83583069 439.62207031
		 37.16788483 102.74057007 443.057556152 38.27725983 101.69296265 441.69763184 39.38663483 102.74058533 440.33764648
		 39.38663483 104.83583069 440.33764648 38.27725983 105.88343811 441.69763184 37.16788483 104.83581543 443.057556152
		 40.76609421 102.74057007 444.89337158 41.044994354 101.69296265 443.12353516 41.32388687 102.74058533 441.35369873
		 41.32388687 104.83583069 441.35369873 41.044994354 105.88343811 443.12353516 40.76609421 104.83581543 444.89337158
		 86.62947845 102.74058533 441.35736084 86.62947845 104.83583069 441.35736084 86.89096069 105.88343811 443.13287354
		 87.15244293 104.83581543 444.90844727 87.15244293 102.74057007 444.90844727 86.89096069 101.69296265 443.13287354
		 88.75551605 102.74058533 440.33911133 88.75551605 104.83583069 440.33911133 89.8137207 105.88343811 441.74389648
		 90.87192535 104.83581543 443.14868164 90.87192535 102.74057007 443.14868164 89.8137207 101.69296265 441.74389648
		 90.062828064 102.74058533 438.40362549 90.062828064 104.83583069 438.40362549 91.71130371 105.88343811 439.083618164
		 93.35977173 104.83581543 439.76361084 93.35977173 102.74057007 439.76361084 91.71130371 101.69296265 439.083618164
		 90.75507355 102.74058533 435.47753906 90.75507355 104.83583069 435.47753906 92.55818176 105.88343811 435.61871338
		 94.36128998 104.83581543 435.75994873 94.36128998 102.74057007 435.75994873 92.55818176 101.69296265 435.61871338
		 33.8740387 61.057373047 417.47320557 33.8740387 58.96212769 417.47320557 35.68856812 57.914505 417.47320557
		 37.50309753 58.96211243 417.47320557 37.50309753 61.057357788 417.47320557 35.68856812 62.10498047 417.47320557
		 33.8740387 61.057373047 431.91729736 33.8740387 58.96212769 431.91729736 35.68856812 57.914505 431.91729736
		 37.50309753 58.96211243 431.91729736 37.50309753 61.057357788 431.91729736 35.68856812 62.10498047 431.91729736
		 83.3105011 61.057373047 441.57977295 83.3105011 58.96212769 441.57977295 83.3105011 57.914505 443.39434814
		 83.3105011 58.96211243 445.2088623 83.3105011 61.057357788 445.2088623 83.3105011 62.10498047 443.39434814
		 44.52286148 61.057373047 441.57977295 44.52286148 58.96212769 441.57977295 44.52286148 57.914505 443.39434814
		 44.52286148 58.96211243 445.2088623 44.52286148 61.057357788 445.2088623 44.52286148 62.10498047 443.39434814
		 90.88410187 61.057373047 417.47320557 90.88410187 58.96212769 417.47320557 92.69863129 57.914505 417.47320557
		 94.51316071 58.96211243 417.47320557 94.51316071 61.057357788 417.47320557 92.69863129 62.10498047 417.47320557
		 90.88410187 61.057373047 431.91729736 90.88410187 58.96212769 431.91729736 92.69863129 57.914505 431.91729736
		 94.51316071 58.96211243 431.91729736 94.51316071 61.057357788 431.91729736 92.69863129 62.10498047 431.91729736
		 34.00059509277 58.96212769 435.67132568 35.80630493 57.914505 435.54821777 37.61201096 58.96211243 435.4251709
		 37.61201096 61.057357788 435.4251709 35.80630493 62.10498047 435.54821777 34.00059509277 61.057373047 435.67132568
		 34.87106323 58.96212769 439.62207031 36.54636383 57.914505 439.0017700195 38.22167206 58.96211243 438.38153076
		 38.22167206 61.057357788 438.38153076 36.54636383 62.10498047 439.0017700195;
	setAttr ".vt[664:784]" 34.87106323 61.057373047 439.62207031 37.16788483 58.96211243 443.057556152
		 38.27725983 57.914505 441.69763184 39.38663483 58.96212769 440.33764648 39.38663483 61.057373047 440.33764648
		 38.27725983 62.10498047 441.69763184 37.16788483 61.057357788 443.057556152 40.76609421 58.96211243 444.89337158
		 41.044994354 57.914505 443.12353516 41.32388687 58.96212769 441.35369873 41.32388687 61.057373047 441.35369873
		 41.044994354 62.10498047 443.12353516 40.76609421 61.057357788 444.89337158 86.62947845 58.96212769 441.35736084
		 86.62947845 61.057373047 441.35736084 86.89096069 62.10498047 443.13287354 87.15244293 61.057357788 444.90844727
		 87.15244293 58.96211243 444.90844727 86.89096069 57.914505 443.13287354 88.75551605 58.96212769 440.33911133
		 88.75551605 61.057373047 440.33911133 89.8137207 62.10498047 441.74389648 90.87192535 61.057357788 443.14868164
		 90.87192535 58.96211243 443.14868164 89.8137207 57.914505 441.74389648 90.062828064 58.96212769 438.40362549
		 90.062828064 61.057373047 438.40362549 91.71130371 62.10498047 439.083618164 93.35977173 61.057357788 439.76361084
		 93.35977173 58.96211243 439.76361084 91.71130371 57.914505 439.083618164 90.75507355 58.96212769 435.47753906
		 90.75507355 61.057373047 435.47753906 92.55818176 62.10498047 435.61871338 94.36128998 61.057357788 435.75994873
		 94.36128998 58.96211243 435.75994873 92.55818176 57.914505 435.61871338 33.8740387 150.16595459 417.47320557
		 33.8740387 148.070709229 417.47320557 35.68856812 147.023101807 417.47320557 37.50309753 148.070709229 417.47320557
		 37.50309753 150.16595459 417.47320557 35.68856812 151.21356201 417.47320557 33.8740387 150.16595459 431.91729736
		 33.8740387 148.070709229 431.91729736 35.68856812 147.023101807 431.91729736 37.50309753 148.070709229 431.91729736
		 37.50309753 150.16595459 431.91729736 35.68856812 151.21356201 431.91729736 83.3105011 150.16595459 441.57977295
		 83.3105011 148.070709229 441.57977295 83.3105011 147.023101807 443.39434814 83.3105011 148.070709229 445.2088623
		 83.3105011 150.16595459 445.2088623 83.3105011 151.21356201 443.39434814 44.52286148 150.16595459 441.57977295
		 44.52286148 148.070709229 441.57977295 44.52286148 147.023101807 443.39434814 44.52286148 148.070709229 445.2088623
		 44.52286148 150.16595459 445.2088623 44.52286148 151.21356201 443.39434814 90.88410187 150.16595459 417.47320557
		 90.88410187 148.070709229 417.47320557 92.69863129 147.023101807 417.47320557 94.51316071 148.070709229 417.47320557
		 94.51316071 150.16595459 417.47320557 92.69863129 151.21356201 417.47320557 90.88410187 150.16595459 431.91729736
		 90.88410187 148.070709229 431.91729736 92.69863129 147.023101807 431.91729736 94.51316071 148.070709229 431.91729736
		 94.51316071 150.16595459 431.91729736 92.69863129 151.21356201 431.91729736 34.00059509277 148.070709229 435.67132568
		 35.80630493 147.023101807 435.54821777 37.61201096 148.070709229 435.4251709 37.61201096 150.16595459 435.4251709
		 35.80630493 151.21356201 435.54821777 34.00059509277 150.16595459 435.67132568 34.87106323 148.070709229 439.62207031
		 36.54636383 147.023101807 439.0017700195 38.22167206 148.070709229 438.38153076 38.22167206 150.16595459 438.38153076
		 36.54636383 151.21356201 439.0017700195 34.87106323 150.16595459 439.62207031 37.16788483 148.070709229 443.057556152
		 38.27725983 147.023101807 441.69763184 39.38663483 148.070709229 440.33764648 39.38663483 150.16595459 440.33764648
		 38.27725983 151.21356201 441.69763184 37.16788483 150.16595459 443.057556152 40.76609421 148.070709229 444.89337158
		 41.044994354 147.023101807 443.12353516 41.32388687 148.070709229 441.35369873 41.32388687 150.16595459 441.35369873
		 41.044994354 151.21356201 443.12353516 40.76609421 150.16595459 444.89337158 86.62947845 148.070709229 441.35736084
		 86.62947845 150.16595459 441.35736084 86.89096069 151.21356201 443.13287354 87.15244293 150.16595459 444.90844727
		 87.15244293 148.070709229 444.90844727 86.89096069 147.023101807 443.13287354 88.75551605 148.070709229 440.33911133
		 88.75551605 150.16595459 440.33911133 89.8137207 151.21356201 441.74389648 90.87192535 150.16595459 443.14868164
		 90.87192535 148.070709229 443.14868164 89.8137207 147.023101807 441.74389648 90.062828064 148.070709229 438.40362549
		 90.062828064 150.16595459 438.40362549 91.71130371 151.21356201 439.083618164 93.35977173 150.16595459 439.76361084
		 93.35977173 148.070709229 439.76361084 91.71130371 147.023101807 439.083618164 90.75507355 148.070709229 435.47753906
		 90.75507355 150.16595459 435.47753906 92.55818176 151.21356201 435.61871338 94.36128998 150.16595459 435.75994873
		 94.36128998 148.070709229 435.75994873 92.55818176 147.023101807 435.61871338;
	setAttr -s 1509 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 6 1 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 12 13 1 13 14 1 14 15 1
		 15 16 1 16 17 1 17 12 1 18 19 1 19 20 1 20 21 1 21 22 1 22 23 1 23 18 1 12 18 1 13 19 1
		 14 20 1 15 21 1 16 22 1 17 23 1 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 24 0 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 30 1 24 30 1 25 31 1 26 32 1 27 33 1 28 34 1 29 35 1
		 7 36 1 8 37 1 9 38 1 10 39 1 11 40 1 6 41 1 36 42 1 37 43 1 36 37 1 38 44 1 37 38 1
		 39 45 1 38 39 1 40 46 1 39 40 1 41 47 1 40 41 1 41 36 1 42 48 1 43 49 1 42 43 1 44 50 1
		 43 44 1 45 51 1 44 45 1 46 52 1 45 46 1 47 53 1 46 47 1 47 42 1 48 54 1 49 55 1 48 49 1
		 50 56 1 49 50 1 51 57 1 50 51 1 52 58 1 51 52 1 53 59 1 52 53 1 53 48 1 54 21 1 55 20 1
		 54 55 1 56 19 1 55 56 1 57 18 1 56 57 1 58 23 1 57 58 1 59 22 1 58 59 1 59 54 1 13 60 1
		 12 61 1 17 62 1 16 63 1 15 64 1 14 65 1 60 66 1 61 67 1 60 61 1 62 68 1 61 62 1 63 69 1
		 62 63 1 64 70 1 63 64 1 65 71 1 64 65 1 65 60 1 66 72 1 67 73 1 66 67 1 68 74 1 67 68 1
		 69 75 1 68 69 1 70 76 1 69 70 1 71 77 1 70 71 1 71 66 1 72 78 1 73 79 1 72 73 1 74 80 1
		 73 74 1 75 81 1 74 75 1 76 82 1 75 76 1 77 83 1 76 77 1 77 72 1 78 31 1 79 30 1 78 79 1
		 80 35 1 79 80 1 81 34 1 80 81 1 82 33 1 81 82 1 83 32 1 82 83 1 83 78 1 84 85 0 85 86 0
		 86 87 0 87 88 0;
	setAttr ".ed[166:331]" 88 89 0 89 84 0 90 91 1 91 92 1 92 93 1 93 94 1 94 95 1
		 95 90 1 84 90 1 85 91 1 86 92 1 87 93 1 88 94 1 89 95 1 96 97 1 97 98 1 98 99 1 99 100 1
		 100 101 1 101 96 1 102 103 1 103 104 1 104 105 1 105 106 1 106 107 1 107 102 1 96 102 1
		 97 103 1 98 104 1 99 105 1 100 106 1 101 107 1 108 109 0 109 110 0 110 111 0 111 112 0
		 112 113 0 113 108 0 114 115 1 115 116 1 116 117 1 117 118 1 118 119 1 119 114 1 108 114 1
		 109 115 1 110 116 1 111 117 1 112 118 1 113 119 1 91 120 1 92 121 1 93 122 1 94 123 1
		 95 124 1 90 125 1 120 126 1 121 127 1 120 121 1 122 128 1 121 122 1 123 129 1 122 123 1
		 124 130 1 123 124 1 125 131 1 124 125 1 125 120 1 126 132 1 127 133 1 126 127 1 128 134 1
		 127 128 1 129 135 1 128 129 1 130 136 1 129 130 1 131 137 1 130 131 1 131 126 1 132 138 1
		 133 139 1 132 133 1 134 140 1 133 134 1 135 141 1 134 135 1 136 142 1 135 136 1 137 143 1
		 136 137 1 137 132 1 138 105 1 139 104 1 138 139 1 140 103 1 139 140 1 141 102 1 140 141 1
		 142 107 1 141 142 1 143 106 1 142 143 1 143 138 1 97 144 1 96 145 1 101 146 1 100 147 1
		 99 148 1 98 149 1 144 150 1 145 151 1 144 145 1 146 152 1 145 146 1 147 153 1 146 147 1
		 148 154 1 147 148 1 149 155 1 148 149 1 149 144 1 150 156 1 151 157 1 150 151 1 152 158 1
		 151 152 1 153 159 1 152 153 1 154 160 1 153 154 1 155 161 1 154 155 1 155 150 1 156 162 1
		 157 163 1 156 157 1 158 164 1 157 158 1 159 165 1 158 159 1 160 166 1 159 160 1 161 167 1
		 160 161 1 161 156 1 162 115 1 163 114 1 162 163 1 164 119 1 163 164 1 165 118 1 164 165 1
		 166 117 1 165 166 1 167 116 1 166 167 1 167 162 1 168 169 0 169 170 0 170 171 0 171 172 0
		 172 173 0 173 168 0 174 175 1 175 176 1;
	setAttr ".ed[332:497]" 176 177 1 177 178 1 178 179 1 179 174 1 168 174 1 169 175 1
		 170 176 1 171 177 1 172 178 1 173 179 1 180 181 1 181 182 1 182 183 1 183 184 1 184 185 1
		 185 180 1 186 187 1 187 188 1 188 189 1 189 190 1 190 191 1 191 186 1 180 186 1 181 187 1
		 182 188 1 183 189 1 184 190 1 185 191 1 192 193 0 193 194 0 194 195 0 195 196 0 196 197 0
		 197 192 0 198 199 1 199 200 1 200 201 1 201 202 1 202 203 1 203 198 1 192 198 1 193 199 1
		 194 200 1 195 201 1 196 202 1 197 203 1 175 204 1 176 205 1 177 206 1 178 207 1 179 208 1
		 174 209 1 204 210 1 205 211 1 204 205 1 206 212 1 205 206 1 207 213 1 206 207 1 208 214 1
		 207 208 1 209 215 1 208 209 1 209 204 1 210 216 1 211 217 1 210 211 1 212 218 1 211 212 1
		 213 219 1 212 213 1 214 220 1 213 214 1 215 221 1 214 215 1 215 210 1 216 222 1 217 223 1
		 216 217 1 218 224 1 217 218 1 219 225 1 218 219 1 220 226 1 219 220 1 221 227 1 220 221 1
		 221 216 1 222 189 1 223 188 1 222 223 1 224 187 1 223 224 1 225 186 1 224 225 1 226 191 1
		 225 226 1 227 190 1 226 227 1 227 222 1 181 228 1 180 229 1 185 230 1 184 231 1 183 232 1
		 182 233 1 228 234 1 229 235 1 228 229 1 230 236 1 229 230 1 231 237 1 230 231 1 232 238 1
		 231 232 1 233 239 1 232 233 1 233 228 1 234 240 1 235 241 1 234 235 1 236 242 1 235 236 1
		 237 243 1 236 237 1 238 244 1 237 238 1 239 245 1 238 239 1 239 234 1 240 246 1 241 247 1
		 240 241 1 242 248 1 241 242 1 243 249 1 242 243 1 244 250 1 243 244 1 245 251 1 244 245 1
		 245 240 1 246 199 1 247 198 1 246 247 1 248 203 1 247 248 1 249 202 1 248 249 1 250 201 1
		 249 250 1 251 200 1 250 251 1 251 246 1 252 253 0 253 254 0 255 259 0 257 256 0 255 257 0
		 258 259 0 256 260 0 254 261 0 260 261 0 255 262 0 259 263 0 262 272 0;
	setAttr ".ed[498:663]" 252 264 0 258 265 0 264 265 0 265 263 1 253 266 0 254 267 0
		 266 267 0 257 268 0 256 269 0 268 269 0 264 266 0 262 268 0 260 270 0 269 270 0 261 271 0
		 270 271 0 267 271 1 252 258 0 272 263 0 271 263 0 267 265 0 270 272 1 262 270 1 264 273 1
		 266 274 1 273 274 0 265 275 1 273 275 0 267 276 1 276 275 0 274 276 0 273 277 0 274 278 0
		 277 278 0 275 279 0 277 279 0 276 280 0 280 279 0 278 280 0 281 282 0 282 283 0 283 284 0
		 284 285 0 285 286 0 286 281 0 287 288 1 288 289 1 289 290 1 290 291 1 291 292 1 292 287 1
		 281 287 1 282 288 1 283 289 1 284 290 1 285 291 1 286 292 1 293 294 1 294 295 1 295 296 1
		 296 297 1 297 298 1 298 293 1 299 300 1 300 301 1 301 302 1 302 303 1 303 304 1 304 299 1
		 293 299 1 294 300 1 295 301 1 296 302 1 297 303 1 298 304 1 305 306 0 306 307 0 307 308 0
		 308 309 0 309 310 0 310 305 0 311 312 1 312 313 1 313 314 1 314 315 1 315 316 1 316 311 1
		 305 311 1 306 312 1 307 313 1 308 314 1 309 315 1 310 316 1 288 317 1 289 318 1 290 319 1
		 291 320 1 292 321 1 287 322 1 317 323 1 318 324 1 317 318 1 319 325 1 318 319 1 320 326 1
		 319 320 1 321 327 1 320 321 1 322 328 1 321 322 1 322 317 1 323 329 1 324 330 1 323 324 1
		 325 331 1 324 325 1 326 332 1 325 326 1 327 333 1 326 327 1 328 334 1 327 328 1 328 323 1
		 329 335 1 330 336 1 329 330 1 331 337 1 330 331 1 332 338 1 331 332 1 333 339 1 332 333 1
		 334 340 1 333 334 1 334 329 1 335 302 1 336 301 1 335 336 1 337 300 1 336 337 1 338 299 1
		 337 338 1 339 304 1 338 339 1 340 303 1 339 340 1 340 335 1 294 341 1 293 342 1 298 343 1
		 297 344 1 296 345 1 295 346 1 341 347 1 342 348 1 341 342 1 343 349 1 342 343 1 344 350 1
		 343 344 1 345 351 1 344 345 1 346 352 1 345 346 1 346 341 1 347 353 1;
	setAttr ".ed[664:829]" 348 354 1 347 348 1 349 355 1 348 349 1 350 356 1 349 350 1
		 351 357 1 350 351 1 352 358 1 351 352 1 352 347 1 353 359 1 354 360 1 353 354 1 355 361 1
		 354 355 1 356 362 1 355 356 1 357 363 1 356 357 1 358 364 1 357 358 1 358 353 1 359 312 1
		 360 311 1 359 360 1 361 316 1 360 361 1 362 315 1 361 362 1 363 314 1 362 363 1 364 313 1
		 363 364 1 364 359 1 365 366 0 366 367 0 367 368 0 368 369 0 369 370 0 370 365 0 371 372 1
		 372 373 1 373 374 1 374 375 1 375 376 1 376 371 1 365 371 1 366 372 1 367 373 1 368 374 1
		 369 375 1 370 376 1 377 378 1 378 379 1 379 380 1 380 381 1 381 382 1 382 377 1 383 384 1
		 384 385 1 385 386 1 386 387 1 387 388 1 388 383 1 377 383 1 378 384 1 379 385 1 380 386 1
		 381 387 1 382 388 1 389 390 0 390 391 0 391 392 0 392 393 0 393 394 0 394 389 0 395 396 1
		 396 397 1 397 398 1 398 399 1 399 400 1 400 395 1 389 395 1 390 396 1 391 397 1 392 398 1
		 393 399 1 394 400 1 372 401 1 373 402 1 374 403 1 375 404 1 376 405 1 371 406 1 401 407 1
		 402 408 1 401 402 1 403 409 1 402 403 1 404 410 1 403 404 1 405 411 1 404 405 1 406 412 1
		 405 406 1 406 401 1 407 413 1 408 414 1 407 408 1 409 415 1 408 409 1 410 416 1 409 410 1
		 411 417 1 410 411 1 412 418 1 411 412 1 412 407 1 413 419 1 414 420 1 413 414 1 415 421 1
		 414 415 1 416 422 1 415 416 1 417 423 1 416 417 1 418 424 1 417 418 1 418 413 1 419 386 1
		 420 385 1 419 420 1 421 384 1 420 421 1 422 383 1 421 422 1 423 388 1 422 423 1 424 387 1
		 423 424 1 424 419 1 378 425 1 377 426 1 382 427 1 381 428 1 380 429 1 379 430 1 425 431 1
		 426 432 1 425 426 1 427 433 1 426 427 1 428 434 1 427 428 1 429 435 1 428 429 1 430 436 1
		 429 430 1 430 425 1 431 437 1 432 438 1 431 432 1 433 439 1 432 433 1;
	setAttr ".ed[830:995]" 434 440 1 433 434 1 435 441 1 434 435 1 436 442 1 435 436 1
		 436 431 1 437 443 1 438 444 1 437 438 1 439 445 1 438 439 1 440 446 1 439 440 1 441 447 1
		 440 441 1 442 448 1 441 442 1 442 437 1 443 396 1 444 395 1 443 444 1 445 400 1 444 445 1
		 446 399 1 445 446 1 447 398 1 446 447 1 448 397 1 447 448 1 448 443 1 449 450 0 450 451 0
		 451 452 0 452 453 0 453 454 0 454 449 0 455 456 1 456 457 1 457 458 1 458 459 1 459 460 1
		 460 455 1 449 455 1 450 456 1 451 457 1 452 458 1 453 459 1 454 460 1 461 462 1 462 463 1
		 463 464 1 464 465 1 465 466 1 466 461 1 467 468 1 468 469 1 469 470 1 470 471 1 471 472 1
		 472 467 1 461 467 1 462 468 1 463 469 1 464 470 1 465 471 1 466 472 1 473 474 0 474 475 0
		 475 476 0 476 477 0 477 478 0 478 473 0 479 480 1 480 481 1 481 482 1 482 483 1 483 484 1
		 484 479 1 473 479 1 474 480 1 475 481 1 476 482 1 477 483 1 478 484 1 456 485 1 457 486 1
		 458 487 1 459 488 1 460 489 1 455 490 1 485 491 1 486 492 1 485 486 1 487 493 1 486 487 1
		 488 494 1 487 488 1 489 495 1 488 489 1 490 496 1 489 490 1 490 485 1 491 497 1 492 498 1
		 491 492 1 493 499 1 492 493 1 494 500 1 493 494 1 495 501 1 494 495 1 496 502 1 495 496 1
		 496 491 1 497 503 1 498 504 1 497 498 1 499 505 1 498 499 1 500 506 1 499 500 1 501 507 1
		 500 501 1 502 508 1 501 502 1 502 497 1 503 470 1 504 469 1 503 504 1 505 468 1 504 505 1
		 506 467 1 505 506 1 507 472 1 506 507 1 508 471 1 507 508 1 508 503 1 462 509 1 461 510 1
		 466 511 1 465 512 1 464 513 1 463 514 1 509 515 1 510 516 1 509 510 1 511 517 1 510 511 1
		 512 518 1 511 512 1 513 519 1 512 513 1 514 520 1 513 514 1 514 509 1 515 521 1 516 522 1
		 515 516 1 517 523 1 516 517 1 518 524 1 517 518 1 519 525 1 518 519 1;
	setAttr ".ed[996:1161]" 520 526 1 519 520 1 520 515 1 521 527 1 522 528 1 521 522 1
		 523 529 1 522 523 1 524 530 1 523 524 1 525 531 1 524 525 1 526 532 1 525 526 1 526 521 1
		 527 480 1 528 479 1 527 528 1 529 484 1 528 529 1 530 483 1 529 530 1 531 482 1 530 531 1
		 532 481 1 531 532 1 532 527 1 533 534 0 534 535 0 535 536 0 536 537 0 537 538 0 538 533 0
		 539 540 1 540 541 1 541 542 1 542 543 1 543 544 1 544 539 1 533 539 1 534 540 1 535 541 1
		 536 542 1 537 543 1 538 544 1 545 546 1 546 547 1 547 548 1 548 549 1 549 550 1 550 545 1
		 551 552 1 552 553 1 553 554 1 554 555 1 555 556 1 556 551 1 545 551 1 546 552 1 547 553 1
		 548 554 1 549 555 1 550 556 1 557 558 0 558 559 0 559 560 0 560 561 0 561 562 0 562 557 0
		 563 564 1 564 565 1 565 566 1 566 567 1 567 568 1 568 563 1 557 563 1 558 564 1 559 565 1
		 560 566 1 561 567 1 562 568 1 540 569 1 541 570 1 542 571 1 543 572 1 544 573 1 539 574 1
		 569 575 1 570 576 1 569 570 1 571 577 1 570 571 1 572 578 1 571 572 1 573 579 1 572 573 1
		 574 580 1 573 574 1 574 569 1 575 581 1 576 582 1 575 576 1 577 583 1 576 577 1 578 584 1
		 577 578 1 579 585 1 578 579 1 580 586 1 579 580 1 580 575 1 581 587 1 582 588 1 581 582 1
		 583 589 1 582 583 1 584 590 1 583 584 1 585 591 1 584 585 1 586 592 1 585 586 1 586 581 1
		 587 554 1 588 553 1 587 588 1 589 552 1 588 589 1 590 551 1 589 590 1 591 556 1 590 591 1
		 592 555 1 591 592 1 592 587 1 546 593 1 545 594 1 550 595 1 549 596 1 548 597 1 547 598 1
		 593 599 1 594 600 1 593 594 1 595 601 1 594 595 1 596 602 1 595 596 1 597 603 1 596 597 1
		 598 604 1 597 598 1 598 593 1 599 605 1 600 606 1 599 600 1 601 607 1 600 601 1 602 608 1
		 601 602 1 603 609 1 602 603 1 604 610 1 603 604 1 604 599 1 605 611 1;
	setAttr ".ed[1162:1327]" 606 612 1 605 606 1 607 613 1 606 607 1 608 614 1 607 608 1
		 609 615 1 608 609 1 610 616 1 609 610 1 610 605 1 611 564 1 612 563 1 611 612 1 613 568 1
		 612 613 1 614 567 1 613 614 1 615 566 1 614 615 1 616 565 1 615 616 1 616 611 1 617 618 0
		 618 619 0 619 620 0 620 621 0 621 622 0 622 617 0 623 624 1 624 625 1 625 626 1 626 627 1
		 627 628 1 628 623 1 617 623 1 618 624 1 619 625 1 620 626 1 621 627 1 622 628 1 629 630 1
		 630 631 1 631 632 1 632 633 1 633 634 1 634 629 1 635 636 1 636 637 1 637 638 1 638 639 1
		 639 640 1 640 635 1 629 635 1 630 636 1 631 637 1 632 638 1 633 639 1 634 640 1 641 642 0
		 642 643 0 643 644 0 644 645 0 645 646 0 646 641 0 647 648 1 648 649 1 649 650 1 650 651 1
		 651 652 1 652 647 1 641 647 1 642 648 1 643 649 1 644 650 1 645 651 1 646 652 1 624 653 1
		 625 654 1 626 655 1 627 656 1 628 657 1 623 658 1 653 659 1 654 660 1 653 654 1 655 661 1
		 654 655 1 656 662 1 655 656 1 657 663 1 656 657 1 658 664 1 657 658 1 658 653 1 659 665 1
		 660 666 1 659 660 1 661 667 1 660 661 1 662 668 1 661 662 1 663 669 1 662 663 1 664 670 1
		 663 664 1 664 659 1 665 671 1 666 672 1 665 666 1 667 673 1 666 667 1 668 674 1 667 668 1
		 669 675 1 668 669 1 670 676 1 669 670 1 670 665 1 671 638 1 672 637 1 671 672 1 673 636 1
		 672 673 1 674 635 1 673 674 1 675 640 1 674 675 1 676 639 1 675 676 1 676 671 1 630 677 1
		 629 678 1 634 679 1 633 680 1 632 681 1 631 682 1 677 683 1 678 684 1 677 678 1 679 685 1
		 678 679 1 680 686 1 679 680 1 681 687 1 680 681 1 682 688 1 681 682 1 682 677 1 683 689 1
		 684 690 1 683 684 1 685 691 1 684 685 1 686 692 1 685 686 1 687 693 1 686 687 1 688 694 1
		 687 688 1 688 683 1 689 695 1 690 696 1 689 690 1 691 697 1 690 691 1;
	setAttr ".ed[1328:1493]" 692 698 1 691 692 1 693 699 1 692 693 1 694 700 1 693 694 1
		 694 689 1 695 648 1 696 647 1 695 696 1 697 652 1 696 697 1 698 651 1 697 698 1 699 650 1
		 698 699 1 700 649 1 699 700 1 700 695 1 701 702 0 702 703 0 703 704 0 704 705 0 705 706 0
		 706 701 0 707 708 1 708 709 1 709 710 1 710 711 1 711 712 1 712 707 1 701 707 1 702 708 1
		 703 709 1 704 710 1 705 711 1 706 712 1 713 714 1 714 715 1 715 716 1 716 717 1 717 718 1
		 718 713 1 719 720 1 720 721 1 721 722 1 722 723 1 723 724 1 724 719 1 713 719 1 714 720 1
		 715 721 1 716 722 1 717 723 1 718 724 1 725 726 0 726 727 0 727 728 0 728 729 0 729 730 0
		 730 725 0 731 732 1 732 733 1 733 734 1 734 735 1 735 736 1 736 731 1 725 731 1 726 732 1
		 727 733 1 728 734 1 729 735 1 730 736 1 708 737 1 709 738 1 710 739 1 711 740 1 712 741 1
		 707 742 1 737 743 1 738 744 1 737 738 1 739 745 1 738 739 1 740 746 1 739 740 1 741 747 1
		 740 741 1 742 748 1 741 742 1 742 737 1 743 749 1 744 750 1 743 744 1 745 751 1 744 745 1
		 746 752 1 745 746 1 747 753 1 746 747 1 748 754 1 747 748 1 748 743 1 749 755 1 750 756 1
		 749 750 1 751 757 1 750 751 1 752 758 1 751 752 1 753 759 1 752 753 1 754 760 1 753 754 1
		 754 749 1 755 722 1 756 721 1 755 756 1 757 720 1 756 757 1 758 719 1 757 758 1 759 724 1
		 758 759 1 760 723 1 759 760 1 760 755 1 714 761 1 713 762 1 718 763 1 717 764 1 716 765 1
		 715 766 1 761 767 1 762 768 1 761 762 1 763 769 1 762 763 1 764 770 1 763 764 1 765 771 1
		 764 765 1 766 772 1 765 766 1 766 761 1 767 773 1 768 774 1 767 768 1 769 775 1 768 769 1
		 770 776 1 769 770 1 771 777 1 770 771 1 772 778 1 771 772 1 772 767 1 773 779 1 774 780 1
		 773 774 1 775 781 1 774 775 1 776 782 1 775 776 1 777 783 1 776 777 1;
	setAttr ".ed[1494:1508]" 778 784 1 777 778 1 778 773 1 779 732 1 780 731 1 779 780 1
		 781 736 1 780 781 1 782 735 1 781 782 1 783 734 1 782 783 1 784 733 1 783 784 1 784 779 1;
	setAttr -s 725 -ch 2900 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 2 3
		f 4 1 14 -8 -14
		mu 0 4 554 555 556 557
		f 4 2 15 -9 -15
		mu 0 4 555 558 559 556
		f 4 3 16 -10 -16
		mu 0 4 14 15 16 17
		f 4 4 17 -11 -17
		mu 0 4 15 18 19 16
		f 4 5 12 -12 -18
		mu 0 4 560 561 562 563
		f 4 18 31 -25 -31
		mu 0 4 1285 1286 1287 1288
		f 4 19 32 -26 -32
		mu 0 4 564 565 566 567
		f 4 20 33 -27 -33
		mu 0 4 565 570 571 566
		f 4 21 34 -28 -34
		mu 0 4 1297 1298 1299 1300
		f 4 22 35 -29 -35
		mu 0 4 602 594 597 603
		f 4 23 30 -30 -36
		mu 0 4 594 595 596 597
		f 4 36 49 -43 -49
		mu 0 4 29 30 31 32
		f 4 37 50 -44 -50
		mu 0 4 624 625 626 627
		f 4 38 51 -45 -51
		mu 0 4 625 628 629 626
		f 4 39 52 -46 -52
		mu 0 4 43 44 45 46
		f 4 40 53 -47 -53
		mu 0 4 44 47 48 45
		f 4 41 48 -48 -54
		mu 0 4 630 631 632 633
		f 4 98 97 26 -97
		mu 0 4 577 572 566 571
		f 4 100 99 25 -98
		mu 0 4 572 573 567 566
		f 4 102 101 24 -100
		mu 0 4 1291 1292 1288 1287
		f 4 104 103 29 -102
		mu 0 4 600 601 597 596
		f 4 106 105 28 -104
		mu 0 4 601 609 603 597
		f 4 107 96 27 -106
		mu 0 4 1303 1304 1300 1299
		f 4 7 55 -63 -55
		mu 0 4 2 6 7 4
		f 4 8 56 -65 -56
		mu 0 4 25 17 21 26
		f 4 9 57 -67 -57
		mu 0 4 17 16 20 21
		f 4 10 58 -69 -58
		mu 0 4 16 19 22 20
		f 4 11 59 -71 -59
		mu 0 4 10 3 5 11
		f 4 6 54 -72 -60
		mu 0 4 3 2 4 5
		f 4 62 61 -75 -61
		mu 0 4 593 590 584 589
		f 4 64 63 -77 -62
		mu 0 4 590 591 585 584
		f 4 66 65 -79 -64
		mu 0 4 21 20 23 24
		f 4 68 67 -81 -66
		mu 0 4 619 620 614 613
		f 4 70 69 -83 -68
		mu 0 4 620 623 621 614
		f 4 71 60 -84 -70
		mu 0 4 5 4 8 9
		f 4 74 73 -87 -73
		mu 0 4 589 584 578 583
		f 4 76 75 -89 -74
		mu 0 4 584 585 579 578
		f 4 78 77 -91 -76
		mu 0 4 24 23 27 28
		f 4 80 79 -93 -78
		mu 0 4 613 614 608 607
		f 4 82 81 -95 -80
		mu 0 4 614 621 615 608
		f 4 83 72 -96 -82
		mu 0 4 9 8 12 13
		f 4 86 85 -99 -85
		mu 0 4 583 578 572 577
		f 4 88 87 -101 -86
		mu 0 4 578 579 573 572
		f 4 90 89 -103 -88
		mu 0 4 1295 1296 1292 1291
		f 4 92 91 -105 -90
		mu 0 4 607 608 601 600
		f 4 94 93 -107 -92
		mu 0 4 608 615 609 601
		f 4 95 84 -108 -94
		mu 0 4 1307 1308 1304 1303
		f 4 152 151 42 -151
		mu 0 4 33 34 32 31
		f 4 154 153 47 -152
		mu 0 4 34 37 38 32
		f 4 156 155 46 -154
		mu 0 4 51 49 45 48
		f 4 158 157 45 -156
		mu 0 4 49 50 46 45
		f 4 160 159 44 -158
		mu 0 4 50 54 55 46
		f 4 161 150 43 -160
		mu 0 4 39 33 31 40
		f 4 -19 109 -117 -109
		mu 0 4 1286 1285 1289 1290
		f 4 -24 110 -119 -110
		mu 0 4 595 594 598 599
		f 4 -23 111 -121 -111
		mu 0 4 594 602 604 598
		f 4 -22 112 -123 -112
		mu 0 4 1298 1297 1301 1302
		f 4 -21 113 -125 -113
		mu 0 4 570 565 569 576
		f 4 -20 108 -126 -114
		mu 0 4 565 564 568 569
		f 4 116 115 -129 -115
		mu 0 4 1290 1289 1293 1294
		f 4 118 117 -131 -116
		mu 0 4 599 598 605 606
		f 4 120 119 -133 -118
		mu 0 4 598 604 610 605
		f 4 122 121 -135 -120
		mu 0 4 1302 1301 1305 1306
		f 4 124 123 -137 -122
		mu 0 4 576 569 575 582
		f 4 125 114 -138 -124
		mu 0 4 569 568 574 575
		f 4 128 127 -141 -127
		mu 0 4 41 42 36 35
		f 4 130 129 -143 -128
		mu 0 4 606 605 611 612
		f 4 132 131 -145 -130
		mu 0 4 605 610 616 611
		f 4 134 133 -147 -132
		mu 0 4 56 57 53 52
		f 4 136 135 -149 -134
		mu 0 4 582 575 581 588
		f 4 137 126 -150 -136
		mu 0 4 575 574 580 581
		f 4 140 139 -153 -139
		mu 0 4 35 36 34 33
		f 4 142 141 -155 -140
		mu 0 4 612 611 617 618
		f 4 144 143 -157 -142
		mu 0 4 611 616 622 617
		f 4 146 145 -159 -144
		mu 0 4 52 53 50 49
		f 4 148 147 -161 -146
		mu 0 4 588 581 587 592
		f 4 149 138 -162 -148
		mu 0 4 581 580 586 587
		f 4 162 175 -169 -175
		mu 0 4 58 59 60 61
		f 4 163 176 -170 -176
		mu 0 4 59 62 63 60
		f 4 164 177 -171 -177
		mu 0 4 634 635 636 637
		f 4 165 178 -172 -178
		mu 0 4 73 74 75 76
		f 4 166 179 -173 -179
		mu 0 4 74 77 78 75
		f 4 167 174 -174 -180
		mu 0 4 638 639 640 641
		f 4 180 193 -187 -193
		mu 0 4 1309 1310 1311 1312
		f 4 181 194 -188 -194
		mu 0 4 642 643 644 645
		f 4 182 195 -189 -195
		mu 0 4 643 648 649 644
		f 4 183 196 -190 -196
		mu 0 4 1321 1322 1323 1324
		f 4 184 197 -191 -197
		mu 0 4 680 672 675 681
		f 4 185 192 -192 -198
		mu 0 4 672 673 674 675
		f 4 198 211 -205 -211
		mu 0 4 88 89 90 91
		f 4 199 212 -206 -212
		mu 0 4 89 92 93 90
		f 4 200 213 -207 -213
		mu 0 4 702 703 704 705
		f 4 201 214 -208 -214
		mu 0 4 103 104 105 106
		f 4 202 215 -209 -215
		mu 0 4 104 107 108 105
		f 4 203 210 -210 -216
		mu 0 4 706 707 708 709
		f 4 260 259 188 -259
		mu 0 4 655 650 644 649
		f 4 262 261 187 -260
		mu 0 4 650 651 645 644
		f 4 264 263 186 -262
		mu 0 4 1315 1316 1312 1311
		f 4 266 265 191 -264
		mu 0 4 678 679 675 674
		f 4 268 267 190 -266
		mu 0 4 679 687 681 675
		f 4 269 258 189 -268
		mu 0 4 1327 1328 1324 1323
		f 4 169 217 -225 -217
		mu 0 4 60 63 66 64
		f 4 170 218 -227 -218
		mu 0 4 84 76 80 85
		f 4 171 219 -229 -219
		mu 0 4 76 75 79 80
		f 4 172 220 -231 -220
		mu 0 4 75 78 81 79
		f 4 173 221 -233 -221
		mu 0 4 69 61 65 70
		f 4 168 216 -234 -222
		mu 0 4 61 60 64 65
		f 4 224 223 -237 -223
		mu 0 4 671 668 662 667
		f 4 226 225 -239 -224
		mu 0 4 668 669 663 662
		f 4 228 227 -241 -226
		mu 0 4 80 79 82 83
		f 4 230 229 -243 -228
		mu 0 4 697 698 692 691
		f 4 232 231 -245 -230
		mu 0 4 698 701 699 692
		f 4 233 222 -246 -232
		mu 0 4 65 64 67 68
		f 4 236 235 -249 -235
		mu 0 4 667 662 656 661
		f 4 238 237 -251 -236
		mu 0 4 662 663 657 656
		f 4 240 239 -253 -238
		mu 0 4 83 82 86 87
		f 4 242 241 -255 -240
		mu 0 4 691 692 686 685
		f 4 244 243 -257 -242
		mu 0 4 692 699 693 686
		f 4 245 234 -258 -244
		mu 0 4 68 67 71 72
		f 4 248 247 -261 -247
		mu 0 4 661 656 650 655
		f 4 250 249 -263 -248
		mu 0 4 656 657 651 650
		f 4 252 251 -265 -250
		mu 0 4 1319 1320 1316 1315
		f 4 254 253 -267 -252
		mu 0 4 685 686 679 678
		f 4 256 255 -269 -254
		mu 0 4 686 693 687 679
		f 4 257 246 -270 -256
		mu 0 4 1331 1332 1328 1327
		f 4 314 313 204 -313
		mu 0 4 94 95 91 90
		f 4 316 315 209 -314
		mu 0 4 95 99 100 91
		f 4 318 317 208 -316
		mu 0 4 111 109 105 108
		f 4 320 319 207 -318
		mu 0 4 109 110 106 105
		f 4 322 321 206 -320
		mu 0 4 110 114 115 106
		f 4 323 312 205 -322
		mu 0 4 96 94 90 93
		f 4 -181 271 -279 -271
		mu 0 4 1310 1309 1313 1314
		f 4 -186 272 -281 -272
		mu 0 4 673 672 676 677
		f 4 -185 273 -283 -273
		mu 0 4 672 680 682 676
		f 4 -184 274 -285 -274
		mu 0 4 1322 1321 1325 1326
		f 4 -183 275 -287 -275
		mu 0 4 648 643 647 654
		f 4 -182 270 -288 -276
		mu 0 4 643 642 646 647
		f 4 278 277 -291 -277
		mu 0 4 1314 1313 1317 1318
		f 4 280 279 -293 -278
		mu 0 4 677 676 683 684
		f 4 282 281 -295 -280
		mu 0 4 676 682 688 683
		f 4 284 283 -297 -282
		mu 0 4 1326 1325 1329 1330
		f 4 286 285 -299 -284
		mu 0 4 654 647 653 660
		f 4 287 276 -300 -286
		mu 0 4 647 646 652 653
		f 4 290 289 -303 -289
		mu 0 4 101 102 98 97
		f 4 292 291 -305 -290
		mu 0 4 684 683 689 690
		f 4 294 293 -307 -292
		mu 0 4 683 688 694 689
		f 4 296 295 -309 -294
		mu 0 4 116 117 113 112
		f 4 298 297 -311 -296
		mu 0 4 660 653 659 666
		f 4 299 288 -312 -298
		mu 0 4 653 652 658 659
		f 4 302 301 -315 -301
		mu 0 4 97 98 95 94
		f 4 304 303 -317 -302
		mu 0 4 690 689 695 696
		f 4 306 305 -319 -304
		mu 0 4 689 694 700 695
		f 4 308 307 -321 -306
		mu 0 4 112 113 110 109
		f 4 310 309 -323 -308
		mu 0 4 666 659 665 670
		f 4 311 300 -324 -310
		mu 0 4 659 658 664 665
		f 4 324 337 -331 -337
		mu 0 4 118 119 120 121
		f 4 325 338 -332 -338
		mu 0 4 119 122 123 120
		f 4 326 339 -333 -339
		mu 0 4 710 711 712 713
		f 4 327 340 -334 -340
		mu 0 4 133 134 135 136
		f 4 328 341 -335 -341
		mu 0 4 134 137 138 135
		f 4 329 336 -336 -342
		mu 0 4 714 715 716 717
		f 4 342 355 -349 -355
		mu 0 4 1333 1334 1335 1336
		f 4 343 356 -350 -356
		mu 0 4 773 771 768 770
		f 4 344 357 -351 -357
		mu 0 4 771 772 769 768
		f 4 345 358 -352 -358
		mu 0 4 1345 1346 1347 1348
		f 4 346 359 -353 -359
		mu 0 4 726 718 721 727
		f 4 347 354 -354 -360
		mu 0 4 718 719 720 721
		f 4 360 373 -367 -373
		mu 0 4 148 149 150 151
		f 4 361 374 -368 -374
		mu 0 4 149 152 153 150
		f 4 362 375 -369 -375
		mu 0 4 748 749 750 751
		f 4 363 376 -370 -376
		mu 0 4 163 164 165 166
		f 4 364 377 -371 -377
		mu 0 4 164 167 168 165
		f 4 365 372 -372 -378
		mu 0 4 752 753 754 755
		f 4 422 421 350 -421
		mu 0 4 766 765 768 769
		f 4 424 423 349 -422
		mu 0 4 765 767 770 768
		f 4 426 425 348 -424
		mu 0 4 1339 1340 1336 1335
		f 4 428 427 353 -426
		mu 0 4 724 725 721 720
		f 4 430 429 352 -428
		mu 0 4 725 733 727 721
		f 4 431 420 351 -430
		mu 0 4 1351 1352 1348 1347
		f 4 331 379 -387 -379
		mu 0 4 120 123 126 124
		f 4 332 380 -389 -380
		mu 0 4 144 136 140 145
		f 4 333 381 -391 -381
		mu 0 4 136 135 139 140
		f 4 334 382 -393 -382
		mu 0 4 135 138 141 139
		f 4 335 383 -395 -383
		mu 0 4 129 121 125 130
		f 4 330 378 -396 -384
		mu 0 4 121 120 124 125
		f 4 386 385 -399 -385
		mu 0 4 756 757 758 759
		f 4 388 387 -401 -386
		mu 0 4 757 760 761 758
		f 4 390 389 -403 -388
		mu 0 4 140 139 142 143
		f 4 392 391 -405 -390
		mu 0 4 743 744 738 737
		f 4 394 393 -407 -392
		mu 0 4 744 747 745 738
		f 4 395 384 -408 -394
		mu 0 4 125 124 127 128
		f 4 398 397 -411 -397
		mu 0 4 759 758 762 763
		f 4 400 399 -413 -398
		mu 0 4 758 761 764 762
		f 4 402 401 -415 -400
		mu 0 4 143 142 146 147
		f 4 404 403 -417 -402
		mu 0 4 737 738 732 731
		f 4 406 405 -419 -404
		mu 0 4 738 745 739 732
		f 4 407 396 -420 -406
		mu 0 4 128 127 131 132
		f 4 410 409 -423 -409
		mu 0 4 763 762 765 766
		f 4 412 411 -425 -410
		mu 0 4 762 764 767 765
		f 4 414 413 -427 -412
		mu 0 4 1343 1344 1340 1339
		f 4 416 415 -429 -414
		mu 0 4 731 732 725 724
		f 4 418 417 -431 -416
		mu 0 4 732 739 733 725
		f 4 419 408 -432 -418
		mu 0 4 1355 1356 1352 1351
		f 4 476 475 366 -475
		mu 0 4 154 155 151 150
		f 4 478 477 371 -476
		mu 0 4 155 159 160 151
		f 4 480 479 370 -478
		mu 0 4 171 169 165 168
		f 4 482 481 369 -480
		mu 0 4 169 170 166 165
		f 4 484 483 368 -482
		mu 0 4 170 174 175 166
		f 4 485 474 367 -484
		mu 0 4 156 154 150 153
		f 4 -343 433 -441 -433
		mu 0 4 1334 1333 1337 1338
		f 4 -348 434 -443 -434
		mu 0 4 719 718 722 723
		f 4 -347 435 -445 -435
		mu 0 4 718 726 728 722
		f 4 -346 436 -447 -436
		mu 0 4 1346 1345 1349 1350
		f 4 -345 437 -449 -437
		mu 0 4 772 771 774 775
		f 4 -344 432 -450 -438
		mu 0 4 771 773 776 774
		f 4 440 439 -453 -439
		mu 0 4 1338 1337 1341 1342
		f 4 442 441 -455 -440
		mu 0 4 723 722 729 730
		f 4 444 443 -457 -442
		mu 0 4 722 728 734 729
		f 4 446 445 -459 -444
		mu 0 4 1350 1349 1353 1354
		f 4 448 447 -461 -446
		mu 0 4 775 774 777 778
		f 4 449 438 -462 -448
		mu 0 4 774 776 779 777
		f 4 452 451 -465 -451
		mu 0 4 161 162 158 157
		f 4 454 453 -467 -452
		mu 0 4 730 729 735 736
		f 4 456 455 -469 -454
		mu 0 4 729 734 740 735
		f 4 458 457 -471 -456
		mu 0 4 176 177 173 172
		f 4 460 459 -473 -458
		mu 0 4 778 777 780 781
		f 4 461 450 -474 -460
		mu 0 4 777 779 782 780
		f 4 464 463 -477 -463
		mu 0 4 157 158 155 154
		f 4 466 465 -479 -464
		mu 0 4 736 735 741 742
		f 4 468 467 -481 -466
		mu 0 4 735 740 746 741
		f 4 470 469 -483 -468
		mu 0 4 172 173 170 169
		f 4 472 471 -485 -470
		mu 0 4 781 780 783 784
		f 4 473 462 -486 -472
		mu 0 4 780 782 785 783
		f 5 -489 495 497 516 -497
		mu 0 5 1357 1358 1359 1360 1361
		f 4 -501 -499 515 499
		mu 0 4 1362 1363 1364 1365
		f 4 491 496 -502 -500
		mu 0 4 178 179 180 181
		f 4 -488 502 504 -504
		mu 0 4 1366 1367 1368 1369
		f 4 489 506 -508 -506
		mu 0 4 1370 1371 1372 1373
		f 4 -487 498 508 -503
		mu 0 4 186 187 188 189
		f 4 490 505 -510 -496
		mu 0 4 190 191 192 193
		f 4 492 510 -512 -507
		mu 0 4 194 195 196 197
		f 4 494 512 -514 -511
		mu 0 4 1374 1375 1376 1377
		f 4 -494 503 514 -513
		mu 0 4 184 185 182 183
		f 4 518 501 -518 -515
		mu 0 4 182 181 180 183
		f 4 513 517 -517 -520
		mu 0 4 786 787 788 789
		f 4 509 507 511 -521
		mu 0 4 790 791 792 786
		f 4 -532 533 -536 -537
		mu 0 4 793 794 795 796
		f 3 -498 520 519
		mu 0 3 789 790 786
		f 4 -509 521 523 -523
		mu 0 4 797 798 799 800
		f 4 500 524 -526 -522
		mu 0 4 798 801 802 799
		f 4 -519 526 527 -525
		mu 0 4 801 803 804 802
		f 4 -505 522 528 -527
		mu 0 4 803 797 800 804
		f 4 -524 529 531 -531
		mu 0 4 198 199 200 201
		f 4 525 532 -534 -530
		mu 0 4 1378 1379 1380 1381
		f 4 -528 534 535 -533
		mu 0 4 202 203 204 205
		f 4 -529 530 536 -535
		mu 0 4 1382 1383 1384 1385
		f 4 537 550 -544 -550
		mu 0 4 206 207 208 209
		f 4 538 551 -545 -551
		mu 0 4 805 806 807 808
		f 4 539 552 -546 -552
		mu 0 4 806 809 810 807
		f 4 540 553 -547 -553
		mu 0 4 220 221 222 223
		f 4 541 554 -548 -554
		mu 0 4 221 224 225 222
		f 4 542 549 -549 -555
		mu 0 4 811 812 813 814
		f 4 555 568 -562 -568
		mu 0 4 1386 1387 1388 1389
		f 4 556 569 -563 -569
		mu 0 4 815 816 817 818
		f 4 557 570 -564 -570
		mu 0 4 816 821 822 817
		f 4 558 571 -565 -571
		mu 0 4 1398 1399 1400 1401
		f 4 559 572 -566 -572
		mu 0 4 853 845 848 854
		f 4 560 567 -567 -573
		mu 0 4 845 846 847 848
		f 4 573 586 -580 -586
		mu 0 4 235 236 237 238
		f 4 574 587 -581 -587
		mu 0 4 875 876 877 878
		f 4 575 588 -582 -588
		mu 0 4 876 879 880 877
		f 4 576 589 -583 -589
		mu 0 4 249 250 251 252
		f 4 577 590 -584 -590
		mu 0 4 250 253 254 251
		f 4 578 585 -585 -591
		mu 0 4 881 882 883 884
		f 4 635 634 563 -634
		mu 0 4 828 823 817 822
		f 4 637 636 562 -635
		mu 0 4 823 824 818 817
		f 4 639 638 561 -637
		mu 0 4 1392 1393 1389 1388
		f 4 641 640 566 -639
		mu 0 4 851 852 848 847
		f 4 643 642 565 -641
		mu 0 4 852 860 854 848
		f 4 644 633 564 -643
		mu 0 4 1404 1405 1401 1400
		f 4 544 592 -600 -592
		mu 0 4 208 212 213 210
		f 4 545 593 -602 -593
		mu 0 4 231 223 227 232
		f 4 546 594 -604 -594
		mu 0 4 223 222 226 227
		f 4 547 595 -606 -595
		mu 0 4 222 225 228 226
		f 4 548 596 -608 -596
		mu 0 4 216 209 211 217
		f 4 543 591 -609 -597
		mu 0 4 209 208 210 211
		f 4 599 598 -612 -598
		mu 0 4 844 841 835 840
		f 4 601 600 -614 -599
		mu 0 4 841 842 836 835
		f 4 603 602 -616 -601
		mu 0 4 227 226 229 230
		f 4 605 604 -618 -603
		mu 0 4 870 871 865 864
		f 4 607 606 -620 -605
		mu 0 4 871 874 872 865
		f 4 608 597 -621 -607
		mu 0 4 211 210 214 215
		f 4 611 610 -624 -610
		mu 0 4 840 835 829 834
		f 4 613 612 -626 -611
		mu 0 4 835 836 830 829
		f 4 615 614 -628 -613
		mu 0 4 230 229 233 234
		f 4 617 616 -630 -615
		mu 0 4 864 865 859 858
		f 4 619 618 -632 -617
		mu 0 4 865 872 866 859
		f 4 620 609 -633 -619
		mu 0 4 215 214 218 219
		f 4 623 622 -636 -622
		mu 0 4 834 829 823 828
		f 4 625 624 -638 -623
		mu 0 4 829 830 824 823
		f 4 627 626 -640 -625
		mu 0 4 1396 1397 1393 1392
		f 4 629 628 -642 -627
		mu 0 4 858 859 852 851
		f 4 631 630 -644 -629
		mu 0 4 859 866 860 852
		f 4 632 621 -645 -631
		mu 0 4 1408 1409 1405 1404
		f 4 689 688 579 -688
		mu 0 4 239 240 238 237
		f 4 691 690 584 -689
		mu 0 4 240 243 244 238
		f 4 693 692 583 -691
		mu 0 4 257 255 251 254
		f 4 695 694 582 -693
		mu 0 4 255 256 252 251
		f 4 697 696 581 -695
		mu 0 4 256 260 261 252
		f 4 698 687 580 -697
		mu 0 4 245 239 237 246
		f 4 -556 646 -654 -646
		mu 0 4 1387 1386 1390 1391
		f 4 -561 647 -656 -647
		mu 0 4 846 845 849 850
		f 4 -560 648 -658 -648
		mu 0 4 845 853 855 849
		f 4 -559 649 -660 -649
		mu 0 4 1399 1398 1402 1403
		f 4 -558 650 -662 -650
		mu 0 4 821 816 820 827
		f 4 -557 645 -663 -651
		mu 0 4 816 815 819 820
		f 4 653 652 -666 -652
		mu 0 4 1391 1390 1394 1395
		f 4 655 654 -668 -653
		mu 0 4 850 849 856 857
		f 4 657 656 -670 -655
		mu 0 4 849 855 861 856
		f 4 659 658 -672 -657
		mu 0 4 1403 1402 1406 1407
		f 4 661 660 -674 -659
		mu 0 4 827 820 826 833
		f 4 662 651 -675 -661
		mu 0 4 820 819 825 826
		f 4 665 664 -678 -664
		mu 0 4 247 248 242 241
		f 4 667 666 -680 -665
		mu 0 4 857 856 862 863
		f 4 669 668 -682 -667
		mu 0 4 856 861 867 862
		f 4 671 670 -684 -669
		mu 0 4 262 263 259 258
		f 4 673 672 -686 -671
		mu 0 4 833 826 832 839
		f 4 674 663 -687 -673
		mu 0 4 826 825 831 832
		f 4 677 676 -690 -676
		mu 0 4 241 242 240 239
		f 4 679 678 -692 -677
		mu 0 4 863 862 868 869
		f 4 681 680 -694 -679
		mu 0 4 862 867 873 868
		f 4 683 682 -696 -681
		mu 0 4 258 259 256 255
		f 4 685 684 -698 -683
		mu 0 4 839 832 838 843
		f 4 686 675 -699 -685
		mu 0 4 832 831 837 838
		f 4 699 712 -706 -712
		mu 0 4 264 265 266 267
		f 4 700 713 -707 -713
		mu 0 4 265 268 269 266
		f 4 701 714 -708 -714
		mu 0 4 885 886 887 888
		f 4 702 715 -709 -715
		mu 0 4 279 280 281 282
		f 4 703 716 -710 -716
		mu 0 4 889 890 891 892
		f 4 704 711 -711 -717
		mu 0 4 890 893 894 891
		f 4 717 730 -724 -730
		mu 0 4 1410 1411 1412 1413
		f 4 718 731 -725 -731
		mu 0 4 952 950 947 949
		f 4 719 732 -726 -732
		mu 0 4 950 951 948 947
		f 4 720 733 -727 -733
		mu 0 4 1422 1423 1424 1425
		f 4 721 734 -728 -734
		mu 0 4 895 896 897 898
		f 4 722 729 -729 -735
		mu 0 4 896 901 902 897
		f 4 735 748 -742 -748
		mu 0 4 293 294 295 296
		f 4 736 749 -743 -749
		mu 0 4 294 297 298 295
		f 4 737 750 -744 -750
		mu 0 4 925 926 927 928
		f 4 738 751 -745 -751
		mu 0 4 308 309 310 311
		f 4 739 752 -746 -752
		mu 0 4 929 930 931 932
		f 4 740 747 -747 -753
		mu 0 4 930 933 934 931
		f 4 797 796 725 -796
		mu 0 4 945 944 947 948
		f 4 799 798 724 -797
		mu 0 4 944 946 949 947
		f 4 801 800 723 -799
		mu 0 4 1416 1417 1413 1412
		f 4 803 802 728 -801
		mu 0 4 908 903 897 902
		f 4 805 804 727 -803
		mu 0 4 903 904 898 897
		f 4 806 795 726 -805
		mu 0 4 1428 1429 1425 1424
		f 4 706 754 -762 -754
		mu 0 4 266 269 272 270
		f 4 707 755 -764 -755
		mu 0 4 289 282 284 290
		f 4 708 756 -766 -756
		mu 0 4 282 281 283 284
		f 4 709 757 -768 -757
		mu 0 4 281 285 286 283
		f 4 710 758 -770 -758
		mu 0 4 275 267 271 276
		f 4 705 753 -771 -759
		mu 0 4 267 266 270 271
		f 4 761 760 -774 -760
		mu 0 4 935 936 937 938
		f 4 763 762 -776 -761
		mu 0 4 936 939 940 937
		f 4 765 764 -778 -763
		mu 0 4 284 283 287 288
		f 4 767 766 -780 -765
		mu 0 4 924 921 915 920
		f 4 769 768 -782 -767
		mu 0 4 921 922 916 915
		f 4 770 759 -783 -769
		mu 0 4 271 270 273 274
		f 4 773 772 -786 -772
		mu 0 4 938 937 941 942
		f 4 775 774 -788 -773
		mu 0 4 937 940 943 941
		f 4 777 776 -790 -775
		mu 0 4 288 287 291 292
		f 4 779 778 -792 -777
		mu 0 4 920 915 909 914
		f 4 781 780 -794 -779
		mu 0 4 915 916 910 909
		f 4 782 771 -795 -781
		mu 0 4 274 273 277 278
		f 4 785 784 -798 -784
		mu 0 4 942 941 944 945
		f 4 787 786 -800 -785
		mu 0 4 941 943 946 944
		f 4 789 788 -802 -787
		mu 0 4 1420 1421 1417 1416
		f 4 791 790 -804 -789
		mu 0 4 914 909 903 908
		f 4 793 792 -806 -791
		mu 0 4 909 910 904 903
		f 4 794 783 -807 -793
		mu 0 4 1432 1433 1429 1428
		f 4 851 850 741 -850
		mu 0 4 299 300 296 295
		f 4 853 852 746 -851
		mu 0 4 300 304 305 296
		f 4 855 854 745 -853
		mu 0 4 318 312 310 319
		f 4 857 856 744 -855
		mu 0 4 312 313 311 310
		f 4 859 858 743 -857
		mu 0 4 313 316 317 311
		f 4 860 849 742 -859
		mu 0 4 301 299 295 298
		f 4 -718 808 -816 -808
		mu 0 4 1411 1410 1414 1415
		f 4 -723 809 -818 -809
		mu 0 4 901 896 900 907
		f 4 -722 810 -820 -810
		mu 0 4 896 895 899 900
		f 4 -721 811 -822 -811
		mu 0 4 1423 1422 1426 1427
		f 4 -720 812 -824 -812
		mu 0 4 951 950 953 954
		f 4 -719 807 -825 -813
		mu 0 4 950 952 955 953
		f 4 815 814 -828 -814
		mu 0 4 1415 1414 1418 1419
		f 4 817 816 -830 -815
		mu 0 4 907 900 906 913
		f 4 819 818 -832 -817
		mu 0 4 900 899 905 906
		f 4 821 820 -834 -819
		mu 0 4 1427 1426 1430 1431
		f 4 823 822 -836 -821
		mu 0 4 954 953 956 957
		f 4 824 813 -837 -823
		mu 0 4 953 955 958 956
		f 4 827 826 -840 -826
		mu 0 4 306 307 303 302
		f 4 829 828 -842 -827
		mu 0 4 913 906 912 919
		f 4 831 830 -844 -829
		mu 0 4 906 905 911 912
		f 4 833 832 -846 -831
		mu 0 4 320 321 315 314
		f 4 835 834 -848 -833
		mu 0 4 957 956 959 960
		f 4 836 825 -849 -835
		mu 0 4 956 958 961 959
		f 4 839 838 -852 -838
		mu 0 4 302 303 300 299
		f 4 841 840 -854 -839
		mu 0 4 919 912 918 923
		f 4 843 842 -856 -841
		mu 0 4 912 911 917 918
		f 4 845 844 -858 -843
		mu 0 4 314 315 313 312
		f 4 847 846 -860 -845
		mu 0 4 960 959 962 963
		f 4 848 837 -861 -847
		mu 0 4 959 961 964 962
		f 4 861 874 -868 -874
		mu 0 4 322 323 324 325
		f 4 862 875 -869 -875
		mu 0 4 965 966 967 968
		f 4 863 876 -870 -876
		mu 0 4 966 969 970 967
		f 4 864 877 -871 -877
		mu 0 4 336 337 338 339
		f 4 865 878 -872 -878
		mu 0 4 971 972 973 974
		f 4 866 873 -873 -879
		mu 0 4 972 975 976 973
		f 4 879 892 -886 -892
		mu 0 4 1434 1435 1436 1437
		f 4 880 893 -887 -893
		mu 0 4 977 978 979 980
		f 4 881 894 -888 -894
		mu 0 4 978 983 984 979
		f 4 882 895 -889 -895
		mu 0 4 1446 1447 1448 1449
		f 4 883 896 -890 -896
		mu 0 4 1007 1008 1009 1010
		f 4 884 891 -891 -897
		mu 0 4 1008 1013 1014 1009
		f 4 897 910 -904 -910
		mu 0 4 350 351 352 353
		f 4 898 911 -905 -911
		mu 0 4 1037 1038 1039 1040
		f 4 899 912 -906 -912
		mu 0 4 1038 1041 1042 1039
		f 4 900 913 -907 -913
		mu 0 4 364 365 366 367
		f 4 901 914 -908 -914
		mu 0 4 1043 1044 1045 1046
		f 4 902 909 -909 -915
		mu 0 4 1044 1047 1048 1045
		f 4 959 958 887 -958
		mu 0 4 990 985 979 984
		f 4 961 960 886 -959
		mu 0 4 985 986 980 979
		f 4 963 962 885 -961
		mu 0 4 1440 1441 1437 1436
		f 4 965 964 890 -963
		mu 0 4 1020 1015 1009 1014
		f 4 967 966 889 -965
		mu 0 4 1015 1016 1010 1009
		f 4 968 957 888 -967
		mu 0 4 1452 1453 1449 1448
		f 4 868 916 -924 -916
		mu 0 4 324 328 329 326
		f 4 869 917 -926 -917
		mu 0 4 346 339 341 347
		f 4 870 918 -928 -918
		mu 0 4 339 338 340 341
		f 4 871 919 -930 -919
		mu 0 4 338 342 343 340
		f 4 872 920 -932 -920
		mu 0 4 332 325 327 333
		f 4 867 915 -933 -921
		mu 0 4 325 324 326 327
		f 4 923 922 -936 -922
		mu 0 4 1006 1003 997 1002
		f 4 925 924 -938 -923
		mu 0 4 1003 1004 998 997
		f 4 927 926 -940 -925
		mu 0 4 341 340 344 345
		f 4 929 928 -942 -927
		mu 0 4 1036 1033 1027 1032
		f 4 931 930 -944 -929
		mu 0 4 1033 1034 1028 1027
		f 4 932 921 -945 -931
		mu 0 4 327 326 330 331
		f 4 935 934 -948 -934
		mu 0 4 1002 997 991 996
		f 4 937 936 -950 -935
		mu 0 4 997 998 992 991
		f 4 939 938 -952 -937
		mu 0 4 345 344 348 349
		f 4 941 940 -954 -939
		mu 0 4 1032 1027 1021 1026
		f 4 943 942 -956 -941
		mu 0 4 1027 1028 1022 1021
		f 4 944 933 -957 -943
		mu 0 4 331 330 334 335
		f 4 947 946 -960 -946
		mu 0 4 996 991 985 990
		f 4 949 948 -962 -947
		mu 0 4 991 992 986 985
		f 4 951 950 -964 -949
		mu 0 4 1444 1445 1441 1440
		f 4 953 952 -966 -951
		mu 0 4 1026 1021 1015 1020
		f 4 955 954 -968 -953
		mu 0 4 1021 1022 1016 1015
		f 4 956 945 -969 -955
		mu 0 4 1456 1457 1453 1452
		f 4 1013 1012 903 -1012
		mu 0 4 354 355 353 352
		f 4 1015 1014 908 -1013
		mu 0 4 355 358 359 353
		f 4 1017 1016 907 -1015
		mu 0 4 374 368 366 375
		f 4 1019 1018 906 -1017
		mu 0 4 368 369 367 366
		f 4 1021 1020 905 -1019
		mu 0 4 369 372 373 367
		f 4 1022 1011 904 -1021
		mu 0 4 360 354 352 361
		f 4 -880 970 -978 -970
		mu 0 4 1435 1434 1438 1439
		f 4 -885 971 -980 -971
		mu 0 4 1013 1008 1012 1019
		f 4 -884 972 -982 -972
		mu 0 4 1008 1007 1011 1012
		f 4 -883 973 -984 -973
		mu 0 4 1447 1446 1450 1451
		f 4 -882 974 -986 -974
		mu 0 4 983 978 982 989
		f 4 -881 969 -987 -975
		mu 0 4 978 977 981 982
		f 4 977 976 -990 -976
		mu 0 4 1439 1438 1442 1443
		f 4 979 978 -992 -977
		mu 0 4 1019 1012 1018 1025
		f 4 981 980 -994 -979
		mu 0 4 1012 1011 1017 1018
		f 4 983 982 -996 -981
		mu 0 4 1451 1450 1454 1455
		f 4 985 984 -998 -983
		mu 0 4 989 982 988 995
		f 4 986 975 -999 -985
		mu 0 4 982 981 987 988
		f 4 989 988 -1002 -988
		mu 0 4 362 363 357 356
		f 4 991 990 -1004 -989
		mu 0 4 1025 1018 1024 1031
		f 4 993 992 -1006 -991
		mu 0 4 1018 1017 1023 1024
		f 4 995 994 -1008 -993
		mu 0 4 376 377 371 370
		f 4 997 996 -1010 -995
		mu 0 4 995 988 994 1001
		f 4 998 987 -1011 -997
		mu 0 4 988 987 993 994
		f 4 1001 1000 -1014 -1000
		mu 0 4 356 357 355 354
		f 4 1003 1002 -1016 -1001
		mu 0 4 1031 1024 1030 1035
		f 4 1005 1004 -1018 -1003
		mu 0 4 1024 1023 1029 1030
		f 4 1007 1006 -1020 -1005
		mu 0 4 370 371 369 368
		f 4 1009 1008 -1022 -1007
		mu 0 4 1001 994 1000 1005
		f 4 1010 999 -1023 -1009
		mu 0 4 994 993 999 1000
		f 4 1023 1036 -1030 -1036
		mu 0 4 378 379 380 381
		f 4 1024 1037 -1031 -1037
		mu 0 4 379 382 383 380
		f 4 1025 1038 -1032 -1038
		mu 0 4 1049 1050 1051 1052
		f 4 1026 1039 -1033 -1039
		mu 0 4 393 394 395 396
		f 4 1027 1040 -1034 -1040
		mu 0 4 394 397 398 395
		f 4 1028 1035 -1035 -1041
		mu 0 4 1053 1054 1055 1056
		f 4 1041 1054 -1048 -1054
		mu 0 4 1458 1459 1460 1461
		f 4 1042 1055 -1049 -1055
		mu 0 4 1057 1058 1059 1060
		f 4 1043 1056 -1050 -1056
		mu 0 4 1058 1063 1064 1059;
	setAttr ".fc[500:724]"
		f 4 1044 1057 -1051 -1057
		mu 0 4 1470 1471 1472 1473
		f 4 1045 1058 -1052 -1058
		mu 0 4 1095 1087 1090 1096
		f 4 1046 1053 -1053 -1059
		mu 0 4 1087 1088 1089 1090
		f 4 1059 1072 -1066 -1072
		mu 0 4 408 409 410 411
		f 4 1060 1073 -1067 -1073
		mu 0 4 409 412 413 410
		f 4 1061 1074 -1068 -1074
		mu 0 4 1117 1118 1119 1120
		f 4 1062 1075 -1069 -1075
		mu 0 4 423 424 425 426
		f 4 1063 1076 -1070 -1076
		mu 0 4 424 427 428 425
		f 4 1064 1071 -1071 -1077
		mu 0 4 1121 1122 1123 1124
		f 4 1121 1120 1049 -1120
		mu 0 4 1070 1065 1059 1064
		f 4 1123 1122 1048 -1121
		mu 0 4 1065 1066 1060 1059
		f 4 1125 1124 1047 -1123
		mu 0 4 1464 1465 1461 1460
		f 4 1127 1126 1052 -1125
		mu 0 4 1093 1094 1090 1089
		f 4 1129 1128 1051 -1127
		mu 0 4 1094 1102 1096 1090
		f 4 1130 1119 1050 -1129
		mu 0 4 1476 1477 1473 1472
		f 4 1030 1078 -1086 -1078
		mu 0 4 380 383 386 384
		f 4 1031 1079 -1088 -1079
		mu 0 4 404 396 400 405
		f 4 1032 1080 -1090 -1080
		mu 0 4 396 395 399 400
		f 4 1033 1081 -1092 -1081
		mu 0 4 395 398 401 399
		f 4 1034 1082 -1094 -1082
		mu 0 4 389 381 385 390
		f 4 1029 1077 -1095 -1083
		mu 0 4 381 380 384 385
		f 4 1085 1084 -1098 -1084
		mu 0 4 1086 1083 1077 1082
		f 4 1087 1086 -1100 -1085
		mu 0 4 1083 1084 1078 1077
		f 4 1089 1088 -1102 -1087
		mu 0 4 400 399 402 403
		f 4 1091 1090 -1104 -1089
		mu 0 4 1112 1113 1107 1106
		f 4 1093 1092 -1106 -1091
		mu 0 4 1113 1116 1114 1107
		f 4 1094 1083 -1107 -1093
		mu 0 4 385 384 387 388
		f 4 1097 1096 -1110 -1096
		mu 0 4 1082 1077 1071 1076
		f 4 1099 1098 -1112 -1097
		mu 0 4 1077 1078 1072 1071
		f 4 1101 1100 -1114 -1099
		mu 0 4 403 402 406 407
		f 4 1103 1102 -1116 -1101
		mu 0 4 1106 1107 1101 1100
		f 4 1105 1104 -1118 -1103
		mu 0 4 1107 1114 1108 1101
		f 4 1106 1095 -1119 -1105
		mu 0 4 388 387 391 392
		f 4 1109 1108 -1122 -1108
		mu 0 4 1076 1071 1065 1070
		f 4 1111 1110 -1124 -1109
		mu 0 4 1071 1072 1066 1065
		f 4 1113 1112 -1126 -1111
		mu 0 4 1468 1469 1465 1464
		f 4 1115 1114 -1128 -1113
		mu 0 4 1100 1101 1094 1093
		f 4 1117 1116 -1130 -1115
		mu 0 4 1101 1108 1102 1094
		f 4 1118 1107 -1131 -1117
		mu 0 4 1480 1481 1477 1476
		f 4 1175 1174 1065 -1174
		mu 0 4 414 415 411 410
		f 4 1177 1176 1070 -1175
		mu 0 4 415 419 420 411
		f 4 1179 1178 1069 -1177
		mu 0 4 431 429 425 428
		f 4 1181 1180 1068 -1179
		mu 0 4 429 430 426 425
		f 4 1183 1182 1067 -1181
		mu 0 4 430 434 435 426
		f 4 1184 1173 1066 -1183
		mu 0 4 416 414 410 413
		f 4 -1042 1132 -1140 -1132
		mu 0 4 1459 1458 1462 1463
		f 4 -1047 1133 -1142 -1133
		mu 0 4 1088 1087 1091 1092
		f 4 -1046 1134 -1144 -1134
		mu 0 4 1087 1095 1097 1091
		f 4 -1045 1135 -1146 -1135
		mu 0 4 1471 1470 1474 1475
		f 4 -1044 1136 -1148 -1136
		mu 0 4 1063 1058 1062 1069
		f 4 -1043 1131 -1149 -1137
		mu 0 4 1058 1057 1061 1062
		f 4 1139 1138 -1152 -1138
		mu 0 4 1463 1462 1466 1467
		f 4 1141 1140 -1154 -1139
		mu 0 4 1092 1091 1098 1099
		f 4 1143 1142 -1156 -1141
		mu 0 4 1091 1097 1103 1098
		f 4 1145 1144 -1158 -1143
		mu 0 4 1475 1474 1478 1479
		f 4 1147 1146 -1160 -1145
		mu 0 4 1069 1062 1068 1075
		f 4 1148 1137 -1161 -1147
		mu 0 4 1062 1061 1067 1068
		f 4 1151 1150 -1164 -1150
		mu 0 4 421 422 418 417
		f 4 1153 1152 -1166 -1151
		mu 0 4 1099 1098 1104 1105
		f 4 1155 1154 -1168 -1153
		mu 0 4 1098 1103 1109 1104
		f 4 1157 1156 -1170 -1155
		mu 0 4 436 437 433 432
		f 4 1159 1158 -1172 -1157
		mu 0 4 1075 1068 1074 1081
		f 4 1160 1149 -1173 -1159
		mu 0 4 1068 1067 1073 1074
		f 4 1163 1162 -1176 -1162
		mu 0 4 417 418 415 414
		f 4 1165 1164 -1178 -1163
		mu 0 4 1105 1104 1110 1111
		f 4 1167 1166 -1180 -1165
		mu 0 4 1104 1109 1115 1110
		f 4 1169 1168 -1182 -1167
		mu 0 4 432 433 430 429
		f 4 1171 1170 -1184 -1169
		mu 0 4 1081 1074 1080 1085
		f 4 1172 1161 -1185 -1171
		mu 0 4 1074 1073 1079 1080
		f 4 1185 1198 -1192 -1198
		mu 0 4 438 439 440 441
		f 4 1186 1199 -1193 -1199
		mu 0 4 439 442 443 440
		f 4 1187 1200 -1194 -1200
		mu 0 4 1125 1126 1127 1128
		f 4 1188 1201 -1195 -1201
		mu 0 4 453 454 455 456
		f 4 1189 1202 -1196 -1202
		mu 0 4 454 457 458 455
		f 4 1190 1197 -1197 -1203
		mu 0 4 1129 1130 1131 1132
		f 4 1203 1216 -1210 -1216
		mu 0 4 1482 1483 1484 1485
		f 4 1204 1217 -1211 -1217
		mu 0 4 1133 1134 1135 1136
		f 4 1205 1218 -1212 -1218
		mu 0 4 1134 1139 1140 1135
		f 4 1206 1219 -1213 -1219
		mu 0 4 1494 1495 1496 1497
		f 4 1207 1220 -1214 -1220
		mu 0 4 1171 1163 1166 1172
		f 4 1208 1215 -1215 -1221
		mu 0 4 1163 1164 1165 1166
		f 4 1221 1234 -1228 -1234
		mu 0 4 468 469 470 471
		f 4 1222 1235 -1229 -1235
		mu 0 4 469 472 473 470
		f 4 1223 1236 -1230 -1236
		mu 0 4 1193 1194 1195 1196
		f 4 1224 1237 -1231 -1237
		mu 0 4 483 484 485 486
		f 4 1225 1238 -1232 -1238
		mu 0 4 484 487 488 485
		f 4 1226 1233 -1233 -1239
		mu 0 4 1197 1198 1199 1200
		f 4 1283 1282 1211 -1282
		mu 0 4 1146 1141 1135 1140
		f 4 1285 1284 1210 -1283
		mu 0 4 1141 1142 1136 1135
		f 4 1287 1286 1209 -1285
		mu 0 4 1488 1489 1485 1484
		f 4 1289 1288 1214 -1287
		mu 0 4 1169 1170 1166 1165
		f 4 1291 1290 1213 -1289
		mu 0 4 1170 1178 1172 1166
		f 4 1292 1281 1212 -1291
		mu 0 4 1500 1501 1497 1496
		f 4 1192 1240 -1248 -1240
		mu 0 4 440 443 446 444
		f 4 1193 1241 -1250 -1241
		mu 0 4 464 456 460 465
		f 4 1194 1242 -1252 -1242
		mu 0 4 456 455 459 460
		f 4 1195 1243 -1254 -1243
		mu 0 4 455 458 461 459
		f 4 1196 1244 -1256 -1244
		mu 0 4 449 441 445 450
		f 4 1191 1239 -1257 -1245
		mu 0 4 441 440 444 445
		f 4 1247 1246 -1260 -1246
		mu 0 4 1162 1159 1153 1158
		f 4 1249 1248 -1262 -1247
		mu 0 4 1159 1160 1154 1153
		f 4 1251 1250 -1264 -1249
		mu 0 4 460 459 462 463
		f 4 1253 1252 -1266 -1251
		mu 0 4 1188 1189 1183 1182
		f 4 1255 1254 -1268 -1253
		mu 0 4 1189 1192 1190 1183
		f 4 1256 1245 -1269 -1255
		mu 0 4 445 444 447 448
		f 4 1259 1258 -1272 -1258
		mu 0 4 1158 1153 1147 1152
		f 4 1261 1260 -1274 -1259
		mu 0 4 1153 1154 1148 1147
		f 4 1263 1262 -1276 -1261
		mu 0 4 463 462 466 467
		f 4 1265 1264 -1278 -1263
		mu 0 4 1182 1183 1177 1176
		f 4 1267 1266 -1280 -1265
		mu 0 4 1183 1190 1184 1177
		f 4 1268 1257 -1281 -1267
		mu 0 4 448 447 451 452
		f 4 1271 1270 -1284 -1270
		mu 0 4 1152 1147 1141 1146
		f 4 1273 1272 -1286 -1271
		mu 0 4 1147 1148 1142 1141
		f 4 1275 1274 -1288 -1273
		mu 0 4 1492 1493 1489 1488
		f 4 1277 1276 -1290 -1275
		mu 0 4 1176 1177 1170 1169
		f 4 1279 1278 -1292 -1277
		mu 0 4 1177 1184 1178 1170
		f 4 1280 1269 -1293 -1279
		mu 0 4 1504 1505 1501 1500
		f 4 1337 1336 1227 -1336
		mu 0 4 474 475 471 470
		f 4 1339 1338 1232 -1337
		mu 0 4 475 479 480 471
		f 4 1341 1340 1231 -1339
		mu 0 4 491 489 485 488
		f 4 1343 1342 1230 -1341
		mu 0 4 489 490 486 485
		f 4 1345 1344 1229 -1343
		mu 0 4 490 494 495 486
		f 4 1346 1335 1228 -1345
		mu 0 4 476 474 470 473
		f 4 -1204 1294 -1302 -1294
		mu 0 4 1483 1482 1486 1487
		f 4 -1209 1295 -1304 -1295
		mu 0 4 1164 1163 1167 1168
		f 4 -1208 1296 -1306 -1296
		mu 0 4 1163 1171 1173 1167
		f 4 -1207 1297 -1308 -1297
		mu 0 4 1495 1494 1498 1499
		f 4 -1206 1298 -1310 -1298
		mu 0 4 1139 1134 1138 1145
		f 4 -1205 1293 -1311 -1299
		mu 0 4 1134 1133 1137 1138
		f 4 1301 1300 -1314 -1300
		mu 0 4 1487 1486 1490 1491
		f 4 1303 1302 -1316 -1301
		mu 0 4 1168 1167 1174 1175
		f 4 1305 1304 -1318 -1303
		mu 0 4 1167 1173 1179 1174
		f 4 1307 1306 -1320 -1305
		mu 0 4 1499 1498 1502 1503
		f 4 1309 1308 -1322 -1307
		mu 0 4 1145 1138 1144 1151
		f 4 1310 1299 -1323 -1309
		mu 0 4 1138 1137 1143 1144
		f 4 1313 1312 -1326 -1312
		mu 0 4 481 482 478 477
		f 4 1315 1314 -1328 -1313
		mu 0 4 1175 1174 1180 1181
		f 4 1317 1316 -1330 -1315
		mu 0 4 1174 1179 1185 1180
		f 4 1319 1318 -1332 -1317
		mu 0 4 496 497 493 492
		f 4 1321 1320 -1334 -1319
		mu 0 4 1151 1144 1150 1157
		f 4 1322 1311 -1335 -1321
		mu 0 4 1144 1143 1149 1150
		f 4 1325 1324 -1338 -1324
		mu 0 4 477 478 475 474
		f 4 1327 1326 -1340 -1325
		mu 0 4 1181 1180 1186 1187
		f 4 1329 1328 -1342 -1327
		mu 0 4 1180 1185 1191 1186
		f 4 1331 1330 -1344 -1329
		mu 0 4 492 493 490 489
		f 4 1333 1332 -1346 -1331
		mu 0 4 1157 1150 1156 1161
		f 4 1334 1323 -1347 -1333
		mu 0 4 1150 1149 1155 1156
		f 4 1347 1360 -1354 -1360
		mu 0 4 498 499 500 501
		f 4 1348 1361 -1355 -1361
		mu 0 4 1201 1202 1203 1204
		f 4 1349 1362 -1356 -1362
		mu 0 4 1202 1205 1206 1203
		f 4 1350 1363 -1357 -1363
		mu 0 4 512 513 514 515
		f 4 1351 1364 -1358 -1364
		mu 0 4 1207 1208 1209 1210
		f 4 1352 1359 -1359 -1365
		mu 0 4 1208 1211 1212 1209
		f 4 1365 1378 -1372 -1378
		mu 0 4 1506 1507 1508 1509
		f 4 1366 1379 -1373 -1379
		mu 0 4 1213 1214 1215 1216
		f 4 1367 1380 -1374 -1380
		mu 0 4 1214 1219 1220 1215
		f 4 1368 1381 -1375 -1381
		mu 0 4 1518 1519 1520 1521
		f 4 1369 1382 -1376 -1382
		mu 0 4 1243 1244 1245 1246
		f 4 1370 1377 -1377 -1383
		mu 0 4 1244 1249 1250 1245
		f 4 1383 1396 -1390 -1396
		mu 0 4 526 527 528 529
		f 4 1384 1397 -1391 -1397
		mu 0 4 1273 1274 1275 1276
		f 4 1385 1398 -1392 -1398
		mu 0 4 1274 1277 1278 1275
		f 4 1386 1399 -1393 -1399
		mu 0 4 540 541 542 543
		f 4 1387 1400 -1394 -1400
		mu 0 4 1279 1280 1281 1282
		f 4 1388 1395 -1395 -1401
		mu 0 4 1280 1283 1284 1281
		f 4 1445 1444 1373 -1444
		mu 0 4 1226 1221 1215 1220
		f 4 1447 1446 1372 -1445
		mu 0 4 1221 1222 1216 1215
		f 4 1449 1448 1371 -1447
		mu 0 4 1512 1513 1509 1508
		f 4 1451 1450 1376 -1449
		mu 0 4 1256 1251 1245 1250
		f 4 1453 1452 1375 -1451
		mu 0 4 1251 1252 1246 1245
		f 4 1454 1443 1374 -1453
		mu 0 4 1524 1525 1521 1520
		f 4 1354 1402 -1410 -1402
		mu 0 4 500 504 505 502
		f 4 1355 1403 -1412 -1403
		mu 0 4 522 515 517 523
		f 4 1356 1404 -1414 -1404
		mu 0 4 515 514 516 517
		f 4 1357 1405 -1416 -1405
		mu 0 4 514 518 519 516
		f 4 1358 1406 -1418 -1406
		mu 0 4 508 501 503 509
		f 4 1353 1401 -1419 -1407
		mu 0 4 501 500 502 503
		f 4 1409 1408 -1422 -1408
		mu 0 4 1242 1239 1233 1238
		f 4 1411 1410 -1424 -1409
		mu 0 4 1239 1240 1234 1233
		f 4 1413 1412 -1426 -1411
		mu 0 4 517 516 520 521
		f 4 1415 1414 -1428 -1413
		mu 0 4 1272 1269 1263 1268
		f 4 1417 1416 -1430 -1415
		mu 0 4 1269 1270 1264 1263
		f 4 1418 1407 -1431 -1417
		mu 0 4 503 502 506 507
		f 4 1421 1420 -1434 -1420
		mu 0 4 1238 1233 1227 1232
		f 4 1423 1422 -1436 -1421
		mu 0 4 1233 1234 1228 1227
		f 4 1425 1424 -1438 -1423
		mu 0 4 521 520 524 525
		f 4 1427 1426 -1440 -1425
		mu 0 4 1268 1263 1257 1262
		f 4 1429 1428 -1442 -1427
		mu 0 4 1263 1264 1258 1257
		f 4 1430 1419 -1443 -1429
		mu 0 4 507 506 510 511
		f 4 1433 1432 -1446 -1432
		mu 0 4 1232 1227 1221 1226
		f 4 1435 1434 -1448 -1433
		mu 0 4 1227 1228 1222 1221
		f 4 1437 1436 -1450 -1435
		mu 0 4 1516 1517 1513 1512
		f 4 1439 1438 -1452 -1437
		mu 0 4 1262 1257 1251 1256
		f 4 1441 1440 -1454 -1439
		mu 0 4 1257 1258 1252 1251
		f 4 1442 1431 -1455 -1441
		mu 0 4 1528 1529 1525 1524
		f 4 1499 1498 1389 -1498
		mu 0 4 530 531 529 528
		f 4 1501 1500 1394 -1499
		mu 0 4 531 534 535 529
		f 4 1503 1502 1393 -1501
		mu 0 4 550 544 542 551
		f 4 1505 1504 1392 -1503
		mu 0 4 544 545 543 542
		f 4 1507 1506 1391 -1505
		mu 0 4 545 548 549 543
		f 4 1508 1497 1390 -1507
		mu 0 4 536 530 528 537
		f 4 -1366 1456 -1464 -1456
		mu 0 4 1507 1506 1510 1511
		f 4 -1371 1457 -1466 -1457
		mu 0 4 1249 1244 1248 1255
		f 4 -1370 1458 -1468 -1458
		mu 0 4 1244 1243 1247 1248
		f 4 -1369 1459 -1470 -1459
		mu 0 4 1519 1518 1522 1523
		f 4 -1368 1460 -1472 -1460
		mu 0 4 1219 1214 1218 1225
		f 4 -1367 1455 -1473 -1461
		mu 0 4 1214 1213 1217 1218
		f 4 1463 1462 -1476 -1462
		mu 0 4 1511 1510 1514 1515
		f 4 1465 1464 -1478 -1463
		mu 0 4 1255 1248 1254 1261
		f 4 1467 1466 -1480 -1465
		mu 0 4 1248 1247 1253 1254
		f 4 1469 1468 -1482 -1467
		mu 0 4 1523 1522 1526 1527
		f 4 1471 1470 -1484 -1469
		mu 0 4 1225 1218 1224 1231
		f 4 1472 1461 -1485 -1471
		mu 0 4 1218 1217 1223 1224
		f 4 1475 1474 -1488 -1474
		mu 0 4 538 539 533 532
		f 4 1477 1476 -1490 -1475
		mu 0 4 1261 1254 1260 1267
		f 4 1479 1478 -1492 -1477
		mu 0 4 1254 1253 1259 1260
		f 4 1481 1480 -1494 -1479
		mu 0 4 552 553 547 546
		f 4 1483 1482 -1496 -1481
		mu 0 4 1231 1224 1230 1237
		f 4 1484 1473 -1497 -1483
		mu 0 4 1224 1223 1229 1230
		f 4 1487 1486 -1500 -1486
		mu 0 4 532 533 531 530
		f 4 1489 1488 -1502 -1487
		mu 0 4 1267 1260 1266 1271
		f 4 1491 1490 -1504 -1489
		mu 0 4 1260 1259 1265 1266
		f 4 1493 1492 -1506 -1491
		mu 0 4 546 547 545 544
		f 4 1495 1494 -1508 -1493
		mu 0 4 1237 1230 1236 1241
		f 4 1496 1485 -1509 -1495
		mu 0 4 1230 1229 1235 1236;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "85483749-4247-2DA2-3B52-49902BF07592";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C9EEBA8F-4F27-A3D0-4E58-B18EA17B7E27";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D4A1B191-4A82-AD64-E946-6B9A40B1A5B2";
createNode displayLayerManager -n "layerManager";
	rename -uid "C464B397-4F62-8256-D30B-7A9ADF12F15B";
createNode displayLayer -n "defaultLayer";
	rename -uid "C741B547-41D8-3A88-C3F2-698283648D3A";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7EDC99EB-426F-AFDD-34DC-61AC0929AD21";
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C815020C-4361-73C3-0906-A4B096AAC107";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 941\n            -height 502\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
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
createNode groupId -n "groupId71";
	rename -uid "97F19DB8-4362-FA6E-1D0E-459D782EAF9C";
	setAttr ".ihi" 0;
createNode groupId -n "groupId76";
	rename -uid "8904D9DD-4180-D10C-E657-F287B3326EB5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId77";
	rename -uid "9DD7A48D-4751-0807-CCEC-0081C6108A1F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId78";
	rename -uid "DE4A2C15-4251-8BFE-A7D3-F98C2F5CE3E4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId79";
	rename -uid "9A91B148-48B0-2998-AA7C-2BA9905BF856";
	setAttr ".ihi" 0;
createNode groupId -n "groupId80";
	rename -uid "64298259-4BBA-DBFF-E2FB-1CBF233BF027";
	setAttr ".ihi" 0;
createNode groupId -n "groupId81";
	rename -uid "5EAEC860-4FB9-967C-1B20-1AA1767FB6C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId82";
	rename -uid "EB7B27F2-4687-BB17-035C-199EF1D8EAF9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId83";
	rename -uid "357113C5-48FE-BF21-03E7-BDA31EDC0A95";
	setAttr ".ihi" 0;
createNode groupId -n "groupId89";
	rename -uid "288C72FC-41A0-FA9D-3011-C1944A58D52F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId90";
	rename -uid "253B216E-458D-F153-C38B-7BB78A1A8739";
	setAttr ".ihi" 0;
createNode groupId -n "groupId91";
	rename -uid "F2258285-44ED-D24F-684A-3D9F5089B2C1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId92";
	rename -uid "3F06FD1A-4437-FA20-C17D-659DE18FAF74";
	setAttr ".ihi" 0;
createNode groupId -n "groupId93";
	rename -uid "5CBD9294-4BDB-3AF4-AD76-FCA0AC045F89";
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
	setAttr -s 38 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 23 ".gn";
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
select -ne :modelPanel1ViewSelectedSet;
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
connectAttr "groupId66.id" "SM_Flat_Apartment_WindowAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_WindowAShape.iog.og[0].gco"
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
connectAttr "groupId83.id" "SM_Flat_Apartment_ExteriorWallAShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallAShape.iog.og[0].gco"
		;
connectAttr "groupId82.id" "SM_Flat_Apartment_ExteriorWallBShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallBShape.iog.og[0].gco"
		;
connectAttr "groupId81.id" "SM_Flat_Apartment_ExteriorWallCShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallCShape.iog.og[0].gco"
		;
connectAttr "groupId80.id" "SM_Flat_Apartment_ExteriorWallDShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallDShape.iog.og[0].gco"
		;
connectAttr "groupId92.id" "SM_Flat_Apartment_ExteriorWallEShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallEShape.iog.og[0].gco"
		;
connectAttr "groupId79.id" "SM_Flat_Apartment_ExteriorWallDoorAShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallDoorAShape.iog.og[0].gco"
		;
connectAttr "groupId78.id" "SM_Flat_Apartment_ExteriorWallDoorBShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallDoorBShape.iog.og[0].gco"
		;
connectAttr "groupId77.id" "SM_Flat_Apartment_ExteriorWallDoorCShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallDoorCShape.iog.og[0].gco"
		;
connectAttr "groupId76.id" "SM_Flat_Apartment_ExteriorWallDoorDShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallDoorDShape.iog.og[0].gco"
		;
connectAttr "groupId89.id" "SM_Flat_Apartment_ExteriorWallWindowAShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallWindowAShape.iog.og[0].gco"
		;
connectAttr "groupId90.id" "SM_Flat_Apartment_ExteriorWallWindowBShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallWindowBShape.iog.og[0].gco"
		;
connectAttr "groupId91.id" "SM_Flat_Apartment_ExteriorWallWindowCShape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_ExteriorWallWindowCShape.iog.og[0].gco"
		;
connectAttr "groupId93.id" "SM_Flat_Apartment_StairsCapShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Flat_Apartment_StairsCapShape.iog.og[0].gco"
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
connectAttr "SM_Flat_Apartment_DoorAShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Flat_Apartment_FloorConcrete100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_FloorTiles100x100Shape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_Roof100x100Shape.iog" ":initialShadingGroup.dsm" 
		-na;
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
connectAttr "SM_Flat_Apartment_StairsMiddleShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_InteriorWallDoorCShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_InteriorWallDoorAShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_InteriorWallDoorBShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_InteriorWallBShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_InteriorWallAShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallDoorDShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallDoorCShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallDoorBShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallDoorAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallDShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallCShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallBShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallWindowAShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallWindowBShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallWindowCShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallEShape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_ExteriorWallFShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "SM_Flat_Apartment_StairsCapShape.iog.og[0]" ":initialShadingGroup.dsm"
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
connectAttr "groupId71.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId76.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId77.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId78.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId79.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId80.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId81.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId82.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId83.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId89.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId90.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId91.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId92.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId93.msg" ":initialShadingGroup.gn" -na;
// End of Flat_Apartment_Building_Kit.ma
