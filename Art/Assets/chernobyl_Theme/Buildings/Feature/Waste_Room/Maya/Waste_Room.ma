//Maya ASCII 2024 scene
//Name: Waste_Room.ma
//Last modified: Tue, Jun 25, 2024 12:12:10 PM
//Codeset: 1252
requires maya "2024";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.3.4.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2024";
fileInfo "version" "2024";
fileInfo "cutIdentifier" "202310181224-69282f2959";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22631)";
fileInfo "UUID" "1FD234A6-4205-705B-973F-66BAFC392498";
createNode transform -s -n "persp";
	rename -uid "D3EDA406-40DC-2347-82B8-8983063771C0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2036.4429485468377 71.612994584674652 1174.3019420257219 ;
	setAttr ".r" -type "double3" 5.0616472725730519 -3298.999999992986 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "065D4CED-4BB2-1BEF-83D7-54BEAA77457B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 2200.9793772298276;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 400 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "F1C247BB-4EC5-D37E-4953-6E99C1D26A8E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 627.20495102423433 1334.5206875561612 381.68190813686789 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "0C3E0E5D-4705-82B2-8679-F1BB3354EFE1";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1134.520687871111;
	setAttr ".ow" 351.12059708808135;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -620 199.99999968505011 400 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "16508176-4DB4-1969-5244-598490E8B573";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 325.5703125 1051.7585456659469 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B46F93E5-45ED-5348-FE27-26BAE6EA9112";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1051.7585456659469;
	setAttr ".ow" 925.51835741957859;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 325.5703125 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5EABA6EA-4D04-3943-A954-2B90451AD905";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1051.7585456659469 325.5703125 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "BFF40F7F-4A50-FFE2-2DB5-278299128D34";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1051.7585456659469;
	setAttr ".ow" 1208.6407936723963;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 325.5703125 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "F57A866D-4546-2C39-CCDF-7C8CBABD3E0A";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "99CA2A0B-458C-4F66-E36F-739A3A6B31E3";
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
	setAttr -s 8 ".vt[0:7]"  -40 0 25 40 0 25 -40 180 25 40 180 25 -40 180 -25
		 40 180 -25 -40 0 -25 40 0 -25;
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
createNode transform -n "SM_Waste_Room";
	rename -uid "A1AE9228-424C-71B2-96A9-CFBFABF1712F";
createNode mesh -n "SM_Waste_RoomShape" -p "SM_Waste_Room";
	rename -uid "0999E650-4D16-CBB6-17A2-5FA9FB1DFDAF";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:94]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "e[123]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[120]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 3 "e[0]" "e[18]" "e[121]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 2 "e[1]" "e[122]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 3 "e[0:1]" "e[18]" "e[120:123]";
	setAttr ".pv" -type "double2" 0.47902134674950503 0.50000008137430996 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 276 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.71115613 0.65089935 0.68385881
		 0.6653285 0.67914325 0.6653285 0.60610425 0.6653285 0.60610425 0.65089935 0.71115601
		 0.84556252 0.68385881 0.83113325 0.60610425 0.84556252 0.60610425 0.83113325 0.67914325
		 0.83113325 0.82642972 0.81169665 0.82642972 0.80190229 0.89946866 0.80190229 0.93363518
		 0.81169665 0.89946866 0.63609755 0.93363518 0.62630314 0.82642972 0.63609755 0.82642972
		 0.62630314 0.71626705 0.82096642 0.71626705 0.62630326 0.82131886 0.62630326 0.82131886
		 0.82096642 0.84988105 0.99900216 0.84988105 0.81360865 0.9570865 0.81360865 0.9570865
		 0.99900216 0.8459152 0.81360865 0.8459152 0.97941333 0.84119958 0.97941333 0.84119958
		 0.81360865 0.00095613039 0.62941515 0.0022117386 0.62058365 0.0068377722 0.62012386
		 0.0055920123 0.62938648 0.050629258 0.73882174 0.05526514 0.73882174 0.00095613039
		 0.84822834 0.0055920123 0.84825701 0.0022117386 0.85705984 0.0068377722 0.85751963
		 0.062147751 0.85705984 0.060892142 0.84822834 0.06552802 0.84825712 0.06677378 0.85751963
		 0.11056526 0.73882174 0.11520115 0.73882174 0.060892142 0.62941515 0.06552802 0.62938643
		 0.062147751 0.62058365 0.06677378 0.62012386 0.59049141 0.65089935 0.59049141 0.86873674
		 0.58369833 0.86873674 0.58369833 0.65089935 0.60169441 0.65089935 0.60169441 0.86873674
		 0.59490126 0.86873674 0.59490126 0.65089935 0.56876093 0.86971247 0.56876093 0.65089935
		 0.5705893 0.65089935 0.5705893 0.86971247 0.57622969 0.86971247 0.57622969 0.65089935
		 0.57805806 0.65089935 0.57805806 0.86971247 0.74788845 0.82287842 0.7525233 0.82287842
		 0.7525233 0.84487897 0.74788845 0.84487897 0.74392253 0.84487897 0.73928767 0.84487897
		 0.73928767 0.82287842 0.74392253 0.82287842 0.7306869 0.82287842 0.73532176 0.82287842
		 0.73532176 0.84487897 0.7306869 0.84487897 0.72672105 0.84487897 0.72208625 0.84487897
		 0.72208625 0.82287842 0.72672105 0.82287842 0.83723372 0.82287842 0.83723372 0.9886831
		 0.83259887 0.9886831 0.83259887 0.82287842 0.82232898 0.9886831 0.82232898 0.82287842
		 0.81836313 0.82287842 0.81836313 0.9886831 0.80809325 0.9886831 0.80809325 0.82287842
		 0.014428061 0.33820966 0.0051654628 0.33403233 0.11699001 0.22234394 0.12386331 0.23096578
		 0.00095613039 0.32493022 0.11413421 0.21383174 0.13073662 0.22234394 0.12386331 0.217665
		 0.12386331 0.21039784 0.24256116 0.33403233 0.23329857 0.33820966 0.13359241 0.21383174
		 0.11413421 0.12537606 0.12386331 0.12880996 0.2467705 0.32493022 0.13359241 0.12537606
		 0.11699001 0.11686389 0.12386331 0.12154283 0.13073662 0.11686389 0.00095613039 0.014277424
		 0.0051654628 0.0051752981 0.12386331 0.10824203 0.24256116 0.0051752981 0.2467705
		 0.014277424 0.01442802 0.00099800411 0.23329861 0.00099800411 0.49159738 0.33280307
		 0.48276588 0.33654135 0.37335932 0.22929743 0.26395276 0.33654135 0.25512126 0.33280307
		 0.25134295 0.32413995 0.36443314 0.21301953 0.36443314 0.12451999 0.25134295 0.013399382
		 0.25512126 0.0047362675 0.26395276 0.00099800411 0.37335932 0.10824209 0.48276588
		 0.00099800411 0.49159738 0.0047362675 0.49537575 0.013399382 0.38228554 0.12451999
		 0.38228554 0.21301953 0.49537575 0.32413995 0.68986815 0.33845329 0.68986815 0.64898735
		 0.67452651 0.63364577 0.67452651 0.35379487 0.47203076 0.64898735 0.48737234 0.63364577
		 0.47203076 0.33845329 0.48737234 0.35379487 0.1206414 0.62012386 0.22788531 0.72953045
		 0.1206414 0.83893704 0.73226464 0.31173861 0.61917442 0.20061818 0.61917442 0.11211865
		 0.73226464 0.00099802425 0.33991539 0.84653836 0.23267129 0.73713183 0.33991539 0.62772524
		 0.84989601 0.11211863 0.84989601 0.20061816 0.7368058 0.31173858 0.7368058 0.00099800411
		 0.34470123 0.84653836 0.34470123 0.62772524 0.45194513 0.73713183 0.84399635 0.6243912
		 0.84399635 0.31365058 0.95708656 0.42477116 0.95708656 0.51327074 0.56397516 0.65089935
		 0.56397516 0.86971247 0.45673108 0.76030594 0.72694027 0.42477122 0.84003043 0.31365058
		 0.84003043 0.6243912 0.72694027 0.51327074 0.79949254 0.94271767 0.79949254 0.82287836
		 0.8041274 0.82287836 0.8041274 0.94271767 0.79552668 0.82287842 0.79552668 0.94271773
		 0.79089189 0.94271773 0.79089189 0.82287842 0.78692603 0.82287836 0.78692603 0.94271761
		 0.78229117 0.94271761 0.78229117 0.82287836 0.77369052 0.94271773 0.77369052 0.82287842
		 0.77832532 0.82287842 0.77832532 0.94271773 0.76972467 0.82287842 0.76972467 0.89591742
		 0.76508981 0.89591742 0.76508981 0.82287842 0.76112396 0.82287842 0.76112396 0.8959173
		 0.7564891 0.8959173 0.7564891 0.82287842 0.71340472 0.84747452 0.7181204 0.84747452
		 0.7181204 0.8577444 0.71340472 0.8577444 0.70472324 0.84747452 0.7094388 0.84747452
		 0.7094388 0.8577444 0.70472324 0.8577444 0.50093555 0.32945997 0.4996759 0.32079685
		 0.50429207 0.32075295 0.50556153 0.32985505 0.55058527 0.20967641 0.5552296 0.20965447
		 0.55058527 0.12117686 0.5552296 0.12119879 0.4996759 0.010056252 0.50429207 0.010100129
		 0.50093555 0.0013931378 0.50556153 0.00099800411 0.56406951 0.12117688 0.56406951
		 0.20967637 0.55942518 0.2096545 0.55942518 0.12119875 0.61497879 0.32079685 0.61036259
		 0.32075295 0.61497879 0.010056252 0.61036259 0.010100149 0.61371911 0.32946 0.60909313
		 0.32985505 0.61371911 0.0013931378 0.60909313 0.00099802425 0.70459294 0.62418461
		 0.70459294 0.31365061 0.71138602 0.31365061 0.71138602 0.62418461 0.70062709 0.31365061
		 0.70062709 0.62418467 0.69383395 0.62418467 0.69383395 0.31365061 0.72297448 0.31365061
		 0.72297448 0.6243912 0.72114605 0.6243912 0.72114605 0.31365061 0.71535188 0.6243912
		 0.71535188 0.31365061 0.71718013 0.31365061 0.71718013 0.6243912 0.22096235 0.53908634
		 0.22096239 0.41924706 0.25002968 0.34012166 0.25002968 0.61821187 0.19896181 0.41924706
		 0.14282423 0.34012166;
	setAttr ".uvst[0].uvsp[250:275]" 0.14282423 0.61821187 0.19896181 0.53908634
		 0.46806496 0.62581325 0.36301321 0.62581325 0.38992685 0.54205292 0.41192737 0.54205292
		 0.38992685 0.42221361 0.36301321 0.33845335 0.41192737 0.42221361 0.46806496 0.33845338
		 0.060720272 0.41924715 0.060720272 0.53908646 0.03165295 0.61821187 0.03165295 0.34012166
		 0.082720809 0.53908646 0.13885838 0.61821187 0.13885838 0.34012166 0.082720809 0.41924715
		 0.25399551 0.33845335 0.35904732 0.33845335 0.33213368 0.42221364 0.31013313 0.42221364
		 0.33213368 0.54205292 0.35904732 0.62581319 0.31013313 0.54205292 0.25399551 0.62581319;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 130 ".vt[0:129]"  -600 3.0202627e-05 400 600 -1.557374e-05 400
		 -600 -1.557374e-05 -400 600 3.0202627e-05 -400 620 -3.0517578e-05 420 -620 -3.0517578e-05 419.99996948
		 -620 -3.0517578e-05 -420 620 -3.0517578e-05 -419.99996948 -600 462.60714722 400 -620.00012207031 453.31381226 420
		 620 453.31378174 420 600 462.6071167 400 600 462.60714722 -400 620.00012207031 453.31384277 -420
		 -620 453.31378174 -420 -600 462.6071167 -400 -600 0 357.73596191 -620 -9.4739026e-15 357.73605347
		 -600 0 -357.73553467 -620 -9.4739026e-15 -357.7355957 -600 315.17367554 357.73596191
		 -600 315.17367554 -357.73553467 -620 315.17367554 357.73605347 -620 315.17367554 -357.7355957
		 -620 335.5222168 357.73605347 -620 335.5222168 -357.7355957 -664.31616211 335.5222168 357.73605347
		 -664.31616211 335.5222168 -357.7355957 -664.31616211 315.17367554 -357.7355957 -664.31616211 315.17367554 357.73605347
		 -723.95941162 400.12347412 472.10528564 -707.82824707 405.54165649 510.21459961 -261.18618774 614.47033691 -4.8383152e-14
		 -670.44561768 400.10610962 526.51855469 -190.94467163 619.78753662 38.5178833 -190.94467163 619.78753662 -38.5178833
		 190.94390869 619.78753662 -38.5178833 190.94390869 619.78753662 38.5178833 -707.82824707 405.54165649 -510.21459961
		 -723.95941162 400.12347412 -472.10528564 -670.44561768 400.10610962 -526.51855469
		 670.44561768 400.10610962 526.51855469 707.82824707 405.54165649 510.21459961 723.95941162 400.12347412 472.10531616
		 261.1854248 614.47033691 -5.0172604e-14 707.82824707 405.54165649 -510.21459961 670.44561768 400.10610962 -526.51855469
		 723.95941162 400.12347412 -472.10531616 -727.55889893 420.12799072 472.22927856 -709.5333252 425.50372314 512.19866943
		 -227.58128357 645.58453369 29.65928078 -264.78582764 634.47479248 0 -670.25628662 420.025726318 530.36260986
		 -190.84999084 639.82843018 41.98253632 -190.84999084 639.82843018 -41.98253632 -176.032150269 651.14068604 -3.4442502e-07
		 176.031387329 651.14068604 -2.8970885e-06 190.84925842 639.82843018 -41.98253632
		 190.84925842 639.82843018 41.98253632 -227.58128357 645.58453369 -29.65928078 -709.5333252 425.50372314 -512.19866943
		 -727.55889893 420.12799072 -472.22927856 -670.25628662 420.025726318 -530.36260986
		 670.25628662 420.025726318 530.36260986 709.5333252 425.50372314 512.19866943 227.58055115 645.58453369 29.65927124
		 727.55889893 420.12799072 472.2293396 264.7850647 634.47479248 0 227.58055115 645.58453369 -29.65927505
		 709.5333252 425.50372314 -512.19866943 670.25628662 420.025726318 -530.36260986 727.55889893 420.12799072 -472.2293396
		 -207.39109802 650.013244629 -5.2714392e-07 207.39035034 650.013244629 -5.417086e-06
		 -603.79876709 400 403.79879761 603.79876709 400 403.79879761 -603.79876709 400 -403.79879761
		 603.79876709 400 -403.79879761 670 429.31317139 470 670 400 470 670 400 -470 670 429.31317139 -470
		 -670 400 470 -670 429.31317139 470 -670 429.31317139 -470 -670 400 -470 -723.95941162 401.51348877 472.10528564
		 -261.18618774 615.8604126 -4.8383152e-14 -723.95941162 401.51348877 -472.10528564
		 -670.44561768 401.49612427 -526.51855469 -190.94467163 621.1776123 -38.5178833 190.94390869 621.1776123 -38.5178833
		 670.44561768 401.49612427 -526.51855469 723.95941162 401.51348877 -472.10531616 261.1854248 615.8604126 -5.0172604e-14
		 723.95941162 401.51348877 472.10531616 190.94390869 621.1776123 38.5178833 -190.94467163 621.1776123 38.5178833
		 -670.44561768 401.49612427 526.51855469 670.44561768 401.49612427 526.51855469 -261.18618774 623.74993896 -4.8383152e-14
		 -723.95941162 409.40301514 472.10528564 -723.95941162 409.40301514 -472.10528564
		 -190.94467163 629.067138672 -38.5178833 -670.44561768 409.38565063 -526.51855469
		 190.94390869 629.067138672 -38.5178833 670.44561768 409.38565063 -526.51855469 261.1854248 623.74993896 -5.0172604e-14
		 723.95941162 409.40301514 -472.10531616 723.95941162 409.40301514 472.10531616 -190.94467163 629.067138672 38.5178833
		 190.94390869 629.067138672 38.5178833 -670.44561768 409.38565063 526.51855469 670.44561768 409.38565063 526.51855469
		 258.56216431 242.24194336 -420 258.56216431 337.17755127 -420 -258.56192017 242.24198914 -419.99996948
		 -258.56188965 337.17752075 -419.99996948 258.56213379 242.24194336 -400 258.56216431 337.17755127 -400
		 -258.56188965 337.17752075 -399.99993896 -258.56192017 242.24194336 -399.99993896
		 -258.56216431 242.24194336 420 -258.56216431 337.17755127 420 258.56192017 242.24198914 419.99996948
		 258.56188965 337.17752075 419.99996948 -258.56213379 242.24194336 400 -258.56216431 337.17755127 400
		 258.56188965 337.17752075 399.99993896 258.56192017 242.24194336 399.99993896;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 16 0 1 3 0 5 17 0 4 7 0 0 8 0 5 9 0 4 10 0 1 11 0
		 3 12 0 7 13 0 6 14 0 2 15 0 10 13 0 11 12 0 8 15 0 9 14 0 16 20 0 9 24 1 18 2 0 19 6 0
		 18 21 0 14 25 1 20 8 1 21 15 1 20 21 0 22 17 0 23 19 0 22 23 1 20 22 0 21 23 0 18 19 0
		 16 17 0 24 22 0 25 23 0 24 25 0 24 26 0 25 27 0 26 27 0 23 28 0 27 28 0 22 29 0 29 28 0
		 26 29 0 30 31 0 32 30 0 31 33 0 33 34 0 36 35 0 34 37 0 38 39 0 39 32 0 35 40 0 40 38 0
		 41 42 0 37 41 0 42 43 0 43 44 0 45 46 0 46 36 0 44 47 0 47 45 0 30 48 0 31 49 0 48 49 0
		 49 50 1 32 51 0 50 51 1 51 48 0 33 52 0 49 52 0 34 53 0 52 53 0 53 50 1 35 54 0 54 55 1
		 55 56 1 36 57 0 56 57 1 57 54 0 55 53 1 37 58 0 53 58 0 58 56 1 51 59 1 38 60 0 59 60 1
		 39 61 0 60 61 0 61 51 0 59 54 1 40 62 0 54 62 0 62 60 0 41 63 0 42 64 0 63 64 0 64 65 1
		 65 58 1 58 63 0 43 66 0 64 66 0 44 67 0 66 67 0 67 65 1 57 68 1 45 69 0 68 69 1 46 70 0
		 69 70 0 70 57 0 68 67 1 47 71 0 67 71 0 71 69 0 55 72 1 72 50 1 59 72 1 56 73 1 73 68 1
		 65 73 1 74 75 0 74 76 0 75 77 0 76 77 0 81 78 0 79 78 0 80 79 0 85 80 0 84 81 0 80 81 0
		 79 82 0 78 83 0 82 83 0 83 84 0 85 84 0 82 85 0 74 82 1 76 85 1 77 80 1 75 79 1 86 88 0
		 87 86 0 88 87 0 89 92 0 90 89 0 91 90 0 92 91 0 95 93 0 94 93 0 95 94 0 98 99 0 97 96 0
		 98 97 0 96 99 0 86 101 0 100 101 0 88 102 0 102 100 0 101 102 0 89 104 0 103 104 0
		 105 103 0 92 106 0 106 105 0 104 106 0 93 108 0;
	setAttr ".ed[166:223]" 107 108 0 95 109 0 109 107 0 109 108 0 110 111 0 98 112 0
		 112 110 0 99 113 0 112 113 0 111 113 0 7 6 0 13 14 0 116 114 0 115 117 0 114 115 0
		 117 116 0 13 115 1 14 117 1 6 116 1 7 114 1 114 118 0 115 119 0 118 119 0 117 120 0
		 116 121 0 120 121 0 12 119 1 119 120 0 12 15 0 15 120 1 2 121 1 121 118 0 3 2 0 3 118 1
		 5 4 0 9 10 0 124 122 0 123 125 0 122 123 0 125 124 0 9 123 1 10 125 1 4 124 1 5 122 1
		 122 126 0 123 127 0 126 127 0 125 128 0 124 129 0 128 129 0 8 127 1 127 128 0 8 11 0
		 11 128 1 1 129 1 129 126 0 0 1 0 0 126 1;
	setAttr -s 95 -ch 392 ".fc[0:94]" -type "polyFaces" 
		f 5 17 32 25 -3 5
		mu 0 5 0 1 2 3 4
		f 4 0 16 22 -5
		mu 0 4 10 11 12 13
		f 4 3 9 -13 -7
		mu 0 4 18 19 20 21
		f 4 -2 7 13 -9
		mu 0 4 22 23 24 25
		f 4 -23 24 23 -15
		mu 0 4 13 12 14 15
		f 4 -24 -21 18 11
		mu 0 4 15 14 16 17
		f 5 -20 -27 -34 -22 -11
		mu 0 5 7 8 9 6 5
		f 4 37 39 -42 -43
		mu 0 4 26 27 28 29
		f 4 -25 28 27 -30
		mu 0 4 82 83 84 85
		f 4 20 29 26 -31
		mu 0 4 188 189 190 191
		f 4 -17 31 -26 -29
		mu 0 4 192 193 194 195
		f 4 21 -35 -18 15
		mu 0 4 5 6 1 0
		f 4 34 36 -38 -36
		mu 0 4 88 89 90 91
		f 4 33 38 -40 -37
		mu 0 4 196 197 198 199
		f 4 -28 40 41 -39
		mu 0 4 85 84 86 87
		f 4 -33 35 42 -41
		mu 0 4 200 201 202 203
		f 4 63 64 66 67
		mu 0 4 92 93 94 95
		f 4 69 71 72 -65
		mu 0 4 93 96 97 94
		f 4 74 75 77 78
		mu 0 4 103 100 105 107
		f 4 79 81 82 -76
		mu 0 4 100 97 104 105
		f 4 83 85 87 88
		mu 0 4 95 98 101 102
		f 4 89 91 92 -86
		mu 0 4 98 103 106 101
		f 4 95 96 97 98
		mu 0 4 111 112 108 104
		f 4 100 102 103 -97
		mu 0 4 112 116 113 108
		f 4 104 106 108 109
		mu 0 4 107 110 114 115
		f 4 110 112 113 -107
		mu 0 4 110 113 117 114
		f 4 -73 -80 114 115
		mu 0 4 94 97 100 99
		f 4 -75 -90 116 -115
		mu 0 4 100 103 98 99
		f 4 -84 -67 -116 -117
		mu 0 4 98 95 94 99
		f 4 -105 -78 117 118
		mu 0 4 110 107 105 109
		f 4 -83 -98 119 -118
		mu 0 4 105 104 108 109
		f 4 -104 -111 -119 -120
		mu 0 4 108 113 110 109
		f 4 43 62 -64 -62
		mu 0 4 30 31 32 33
		f 4 44 61 -68 -66
		mu 0 4 34 30 33 35
		f 4 45 68 -70 -63
		mu 0 4 204 205 206 207
		f 4 46 70 -72 -69
		mu 0 4 205 208 209 206
		f 4 47 73 -79 -77
		mu 0 4 216 217 218 219
		f 4 48 80 -82 -71
		mu 0 4 208 210 211 209
		f 4 49 86 -88 -85
		mu 0 4 38 36 37 39
		f 4 50 65 -89 -87
		mu 0 4 36 34 35 37
		f 4 51 90 -92 -74
		mu 0 4 217 220 221 218
		f 4 52 84 -93 -91
		mu 0 4 220 224 225 221
		f 4 53 94 -96 -94
		mu 0 4 212 214 215 213
		f 4 54 93 -99 -81
		mu 0 4 210 212 213 211
		f 4 55 99 -101 -95
		mu 0 4 40 41 42 43
		f 4 56 101 -103 -100
		mu 0 4 41 44 45 42
		f 4 57 107 -109 -106
		mu 0 4 226 222 223 227
		f 4 58 76 -110 -108
		mu 0 4 222 216 219 223
		f 4 59 111 -113 -102
		mu 0 4 44 46 47 45
		f 4 60 105 -114 -112
		mu 0 4 46 48 49 47
		f 18 -44 -45 -51 -50 -53 -52 -48 -59 -58 -61 -60 -57 -56 -54 -55 -49 -47 -46
		mu 0 18 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135
		f 4 124 -126 -127 129
		mu 0 4 50 51 52 53
		f 4 133 -135 -136 132
		mu 0 4 54 55 56 57
		f 4 128 -130 -128 134
		mu 0 4 228 229 230 231
		f 4 131 -133 -131 125
		mu 0 4 232 233 234 235
		f 4 130 -137 120 139
		mu 0 4 136 137 138 139
		f 4 135 -138 -122 136
		mu 0 4 137 140 141 138
		f 4 127 -139 -124 137
		mu 0 4 140 142 143 141
		f 4 126 -140 122 138
		mu 0 4 142 136 139 143
		f 3 -156 -158 -159
		mu 0 3 144 145 146
		f 4 -161 -162 -164 -165
		mu 0 4 147 148 149 150
		f 3 -167 -169 169
		mu 0 3 151 152 153
		f 4 -171 -173 174 -176
		mu 0 4 154 155 156 157
		f 3 140 142 141
		mu 0 3 158 159 160
		f 4 143 146 145 144
		mu 0 4 161 162 163 164
		f 3 -148 149 148
		mu 0 3 165 166 167
		f 4 153 -151 152 151
		mu 0 4 168 169 170 171
		f 4 -141 154 158 -157
		mu 0 4 58 59 60 61
		f 4 -144 159 164 -163
		mu 0 4 236 237 238 239
		f 4 147 165 -170 -168
		mu 0 4 62 63 64 65
		f 4 150 173 -175 -172
		mu 0 4 240 241 242 243
		f 4 -194 -193 194 195
		mu 0 4 244 245 246 247
		f 4 196 -192 -196 -12
		mu 0 4 250 251 244 247
		f 4 -198 -197 -199 199
		mu 0 4 248 251 250 249
		f 4 -189 -200 8 192
		mu 0 4 245 248 249 246
		f 4 10 183 181 -185
		mu 0 4 252 253 254 255
		f 4 185 180 -183 -10
		mu 0 4 259 258 256 257
		f 4 179 -184 -178 182
		mu 0 4 256 254 253 257
		f 4 178 -186 176 184
		mu 0 4 255 258 259 252
		f 4 186 188 -188 -181
		mu 0 4 66 67 68 69
		f 4 189 191 -191 -182
		mu 0 4 70 71 72 73
		f 4 -180 187 193 -190
		mu 0 4 172 173 174 175
		f 4 -179 190 197 -187
		mu 0 4 176 177 178 179
		f 4 -218 -217 218 219
		mu 0 4 260 261 262 263
		f 4 220 -216 -220 -8
		mu 0 4 266 267 260 263
		f 4 -222 -221 -223 223
		mu 0 4 264 267 266 265
		f 4 -213 -224 4 216
		mu 0 4 261 264 265 262
		f 4 6 207 205 -209
		mu 0 4 268 269 270 271
		f 4 209 204 -207 -6
		mu 0 4 275 274 272 273
		f 4 203 -208 -202 206
		mu 0 4 272 270 269 273
		f 4 202 -210 200 208
		mu 0 4 271 274 275 268
		f 4 210 212 -212 -205
		mu 0 4 74 75 76 77
		f 4 213 215 -215 -206
		mu 0 4 78 79 80 81
		f 4 -204 211 217 -214
		mu 0 4 180 181 182 183
		f 4 -203 214 221 -211
		mu 0 4 184 185 186 187;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "0C7E7154-40A2-81DC-FA99-6A894C675E7B";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "025862F7-41E9-21B7-DE20-CF8D96FF3DCD";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C25DF886-4B25-713F-35BC-B8B74D4E7713";
createNode displayLayerManager -n "layerManager";
	rename -uid "3CB0D1BD-4845-F690-5874-B99307A9C639";
createNode displayLayer -n "defaultLayer";
	rename -uid "361310AE-45AA-B2F1-B638-469BF7A0F144";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "EA94513B-443B-E9D0-AD27-1E8DB9E65C54";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E732EA41-41CF-71C7-3F37-51BEBBB08B0B";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "FEEA5DE1-4DC8-F9E0-D6D1-C89FE1D93842";
	setAttr ".version" -type "string" "5.3.4.1";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "CB2A94D7-480E-8FAC-3F15-04888DE3AF05";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "43EB73A4-4F7E-7D05-B813-59B1368B1202";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "92739A92-4947-FF05-58BD-0786E5DED16F";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CE08C5E6-441B-472E-4217-60A3192EB236";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 333\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 622\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 623\n            -height 332\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1252\n            -height 710\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAllAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 1\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAllAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1252\\n    -height 710\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "48342548-47C0-CC92-CA6A-479A6567ACF2";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 174 -ast 0 -aet 174 ";
	setAttr ".st" 6;
createNode groupId -n "groupId1";
	rename -uid "3293EA7E-45F5-E80E-36CC-90B58B3EC62D";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 0;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
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
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
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
connectAttr "groupId1.id" "SM_Waste_RoomShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "SM_Waste_RoomShape.iog.og[0].gco";
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
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "SM_Waste_RoomShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of Waste_Room.ma
