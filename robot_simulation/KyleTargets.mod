MODULE targets

	!Workplan Variables
	CONST string workplanName := "Kyle";
	CONST string workplanUUID := "5fe3906e-bab0-4959-ac2d-0b1ba3e96e69";

	!Workingsteps
	CONST string WorkPlan{20,6} := [
		["1","7", "Drilling.8", "84ee9563-7912-44c0-bfcd-293f92d8b13d", "Hole.126", "e36ab6dd-4c22-45de-bb9a-479c95405714"],
		["8","14", "Drilling.13", "7ccdfa8a-1cd0-4d02-a500-c80e233b9fd7", "Hole.131", "c4be57f8-fa2c-406f-958b-f31cab34a103"],
		["15","21", "Drilling.14", "8aaf65a2-9007-4bac-b3e6-82b54667c4fe", "Hole.130", "454ae504-a6e0-4436-86a5-e3b48f3a6ebd"],
		["22","28", "Drilling.9", "4f888b1b-6ab9-4e86-946e-5ff123a5037a", "Hole.127", "08e93d49-b28c-4bd3-b6c6-d75430b53a2a"],
		["29","35", "Drilling.7", "02130e2a-b3d5-4e34-8f53-cfbcf2ec8645", "Hole.125", "21017ae4-2b73-4540-894a-30ebc29570ea"],
		["36","42", "Drilling.12", "e30b7ca7-ddbc-40f5-8f65-344a992b1e61", "Hole.132", "e66331d3-3fdc-412a-b6b2-0661d9428281"],
		["43","49", "Drilling.10", "b91ee5e9-1632-43a6-bfe1-16c34d1e5e2f", "Hole.128", "c3d88a5e-7e8b-41d5-b2dc-b0479c29b49e"],
		["50","56", "Drilling.11", "7425d9a6-1369-462c-aada-26a7e19600fd", "Hole.133", "91a8736d-f4a7-4689-80ff-5676ef598fa4"],
		["57","63", "Drilling.27", "5ca7da6b-cc79-4d4d-a6a5-65927e745900", "Hole.135", "331ef13e-3ab3-4da9-b4fa-780c17cbb45e"],
		["64","70", "Drilling.28", "0ef1a843-f159-42da-bcb9-5e1b1c1a301e", "Hole.136", "273267bc-da8b-478b-8b4c-85da8157c9a8"],
		["71","77", "Drilling.29", "11479f12-cf2b-427e-bcec-a468864a2f6d", "Hole.137", "ae1b5195-bf51-44f8-b490-b9d022c936f5"],
		["78","84", "Drilling.30", "d8138029-1469-4182-9afa-9758c29db750", "Hole.138", "46c2d2d0-291f-4604-8bcb-81b365ac65aa"],
		["85","91", "Drilling.31", "8ddb58e3-7706-4204-9557-33380402deaa", "Hole.143", "b8cd4e05-5960-47a1-9f38-2d3fecb31d31"],
		["92","98", "Drilling.32", "bd18ceba-683d-43f3-ad41-06c60c238459", "Hole.142", "cb399f51-d989-4a53-8519-adc3953d158c"],
		["99","105", "Drilling.33", "954da869-fb1d-46f5-9e46-6bf9dcadccda", "Hole.141", "469b1018-b1f9-41c1-939c-a7f265401ba7"],
		["106","112", "Drilling.34", "4e46309a-1422-44c1-86ed-d1c3dc44e9d8", "Hole.140", "37a3b727-c3a1-4ace-845d-67909f3448ad"],
		["113","119", "Drilling.47", "e199d4d2-363b-4bee-92cd-6f11fd8dd563", "Hole.145", "cc8e4781-ee8a-461a-a242-06836f687ae1"],
		["120","126", "Drilling.48", "6d043768-99d8-4c13-af46-7da20463ca22", "Hole.146", "f61a0d74-4152-4b6e-94ed-418b5255987a"],
		["127","133", "Drilling.49", "2f8af433-5b96-4376-97a8-7eb59b4bf896", "Hole.147", "685632c0-b3c9-4929-8c2a-40f363535f56"],
		["134","140", "Drilling.50", "8566419f-d7a9-4061-8d1e-a84c15c8dc73", "Hole.148", "12ffa80d-2d25-44ad-b7a8-efb1cabf81b5"]
		];

	!Positions
	CONST robtarget WorkingstepRobtargets{140} := [
		[[288.779069493284,152.045401982975,43.701087144004],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.029622843527,145.529890074137,-6.67377200502937],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.029622843527,145.529890074137,-6.67377200502937],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[287.561218687428,141.457695131113,-38.1580589731752],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[287.561218687428,141.457695131113,-38.1580589731752],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.029622843527,145.529890074137,-6.67377200502937],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.779069493284,152.045401982975,43.701087144004],[0.007422705894557,0.000477984990411884,-0.997905463626588,0.0642601013985811],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.208709454143,129.914601473053,47.0306171325024],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.489331593404,124.405758598223,-3.46468112064122],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.489331593404,124.405758598223,-3.46468112064122],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.039720430442,120.962731801455,-35.0242425288559],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.039720430442,120.962731801455,-35.0242425288559],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.489331593404,124.405758598223,-3.46468112064122],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.208709454143,129.914601473053,47.0306171325024],[0.00711216548716867,0.000386768399255158,-0.998499282658082,0.0542996320759508],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.16608088718,78.4773374561232,51.5237669183629],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.494487366864,75.1494275837429,0.837338971379267],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.494487366864,75.1494275837429,0.837338971379267],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.074741416666,73.0694839135052,-30.8416784954856],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.074741416666,73.0694839135052,-30.8416784954856],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.494487366864,75.1494275837429,0.837338971379267],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.16608088718,78.4773374561232,51.5237669183629],[0.00662098912699226,0.00021710380003204,-0.999440902554252,0.0327719036746759],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.915081712141,203.37187194352,35.8970963576192],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.081898579771,194.655140114566,-14.1425318593251],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.081898579771,194.655140114566,-14.1425318593251],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.561159122039,189.207182721469,-45.4172994949153],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.561159122039,189.207182721469,-45.4172994949153],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.081898579771,194.655140114566,-14.1425318593251],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.915081712141,203.37187194352,35.8970963576192],[0.00829344469822132,0.00071684874899254,-0.99625072742016,0.0861115150122795],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.138188356465,99.8323134359238,49.2767143787854],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.448696753655,95.553399144166,-1.33806107081477],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.448696753655,95.553399144166,-1.33806107081477],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.017764501897,92.8790777118172,-32.9722957268149],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.017764501897,92.8790777118172,-32.9722957268149],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.448696753655,95.553399144166,-1.33806107081477],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.138188356465,99.8323134359238,49.2767143787854],[0.00680464181526441,0.000287089635706398,-0.999088004780399,0.0421517868331755],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.289915734788,182.554869058621,40.1026325032385],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.496842125603,174.813489467987,-10.0977865815075],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.496842125603,174.813489467987,-10.0977865815075],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.001171119863,169.975127223841,-41.4730485094737],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.001171119863,169.975127223841,-41.4730485094737],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.496842125603,174.813489467987,-10.0977865815075],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.289915734788,182.554869058621,40.1026325032385],[0.00787523856525625,0.000603576012444046,-0.997044757638711,0.0764157547806785],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.309102101314,245.858135120208,27.7054804314411],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.387828114989,235.321844841818,-21.9813170243381],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.387828114989,235.321844841818,-21.9813170243381],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[287.812031873535,228.736663417825,-53.0355654342003],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[287.812031873535,228.736663417825,-53.0355654342003],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[288.387828114989,235.321844841818,-21.9813170243381],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[289.309102101314,245.858135120208,27.7054804314411],[0.00921908733036795,0.000966562056112772,-0.994506082335781,0.104267571103021],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.458489628179,256.577531419905,26.2903440426919],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.518538429408,245.697784689916,-23.3220294425105],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.518538429408,245.697784689916,-23.3220294425105],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[239.931068930175,238.897942983672,-54.3297628707619],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[239.931068930175,238.897942983672,-54.3297628707619],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[240.518538429408,245.697784689916,-23.3220294425105],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[241.458489628179,256.577531419905,26.2903440426919],[0.0094165728968686,0.00102020140999334,-0.99413767750685,0.107705921402901],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.659328209428,81.9362218762582,49.3667840745575],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.983302512521,78.3473909020153,-1.30177897488602],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.983302512521,78.3473909020153,-1.30177897488602],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.560786451954,76.1043715431133,-32.9696308807882],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.560786451954,76.1043715431133,-32.9696308807882],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.983302512521,78.3473909020153,-1.30177897488602],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.659328209428,81.9362218762582,49.3667840745575],[0.00666644321018516,0.000235774252738867,-0.999352927467223,0.0353444381497125],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.705942714164,121.3363389992,45.8993369958386],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.991875748216,116.022263401137,-4.61690503488058],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.991875748216,116.022263401137,-4.61690503488058],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.545583894497,112.700966152347,-36.1895563040799],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.545583894497,112.700966152347,-36.1895563040799],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.991875748216,116.022263401137,-4.61690503488058],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.705942714164,121.3363389992,45.8993369958386],[0.00705746724934637,0.000370148416132423,-0.99860250830434,0.0523744742642432],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.786606171087,170.92295449455,39.5986687515689],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.003389010044,163.436804479832,-10.6406000412369],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.003389010044,163.436804479832,-10.6406000412369],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.513878284388,158.757960720632,-42.0401430367406],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[384.513878284388,158.757960720632,-42.0401430367406],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.003389010044,163.436804479832,-10.6406000412369],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[385.786606171087,170.92295449455,39.5986687515689],[0.0077728569445215,0.000575867762347651,-0.997236511782182,0.073882275545262],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[377.811662051271,247.005082716161,25.8049759829888],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[376.876497420054,236.207365300938,-23.8254054958343],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[376.876497420054,236.207365300938,-23.8254054958343],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[376.292019525545,229.458791916423,-54.8443939200984],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[376.292019525545,229.458791916423,-54.8443939200984],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[376.876497420054,236.207365300938,-23.8254054958343],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[377.811662051271,247.005082716161,25.8049759829888],[0.00936607002242295,0.00100689956012748,-0.994226831681083,0.106884377020243],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[480.170049765267,240.852707828735,25.2149600674652],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.236152061027,230.073975332924,-24.4195718721205],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.236152061027,230.073975332924,-24.4195718721205],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.652465995876,223.337267523042,-55.4411543343616],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.652465995876,223.337267523042,-55.4411543343616],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.236152061027,230.073975332924,-24.4195718721205],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[480.170049765267,240.852707828735,25.2149600674652],[0.00935279474907906,0.00100366331647834,-0.99424737884142,0.106694271436163],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[480.004815039626,167.740024424446,38.6041144078019],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.220912039579,160.232745745701,-11.6319907649338],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.220912039579,160.232745745701,-11.6319907649338],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.73097266455,155.540696571485,-43.0295564978937],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.73097266455,155.540696571485,-43.0295564978937],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.220912039579,160.232745745701,-11.6319907649338],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[480.004815039626,167.740024424446,38.6041144078019],[0.00778003061909403,0.000578044083313996,-0.99722089826046,0.0740919500432094],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.919259856698,121.968377201349,44.4964931486716],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.201390441381,116.509965212552,-6.00430290508506],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.201390441381,116.509965212552,-6.00430290508506],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.752722056809,113.098457719554,-37.5673004386829],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.752722056809,113.098457719554,-37.5673004386829],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.201390441381,116.509965212552,-6.00430290508506],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.919259856698,121.968377201349,44.4964931486716],[0.00709667369513751,0.000382372295419974,-0.998526380753501,0.0538010962082301],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.875986083091,82.7441856052948,48.0496180783819],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.197918637486,79.0407236941793,-2.6106680875305],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.197918637486,79.0407236941793,-2.6106680875305],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.774126483985,76.7260599997321,-34.2733469412257],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[478.774126483985,76.7260599997321,-34.2733469412257],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.197918637486,79.0407236941793,-2.6106680875305],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[479.875986083091,82.7441856052948,48.0496180783819],[0.00668739513582172,0.000244089648411723,-0.999312165570881,0.0364748530987777],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.795866652297,78.1720086574168,46.9499170079332],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.119914093827,74.5843463317669,-3.71872977857378],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.119914093827,74.5843463317669,-3.71872977857378],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[585.697443744781,72.3420573782357,-35.3866340201408],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[585.697443744781,72.3420573782357,-35.3866340201408],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.119914093827,74.5843463317669,-3.71872977857378],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.795866652297,78.1720086574168,46.9499170079332],[0.00666571377515568,0.000235671494483464,-0.99935333985005,0.0353329145325675],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[582.277502827268,118.969427450682,43.3656713654528],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[581.559827374303,113.515850932254,-7.13564985589618],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[581.559827374303,113.515850932254,-7.13564985589618],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[581.1112802162,110.107365608236,-38.6989756192392],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[581.1112802162,110.107365608236,-38.6989756192392],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[581.559827374303,113.515850932254,-7.13564985589618],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[582.277502827268,118.969427450682,43.3656713654528],[0.00709470104640348,0.0003819253989814,-0.99852896922153,0.0537532973448111],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.927237975716,164.1291021749,37.4752655648295],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.142522601734,156.596792870165,-12.7570799738735],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.142522601734,156.596792870165,-12.7570799738735],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[585.652075492993,151.889099554705,-44.1522959355627],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[585.652075492993,151.889099554705,-44.1522959355627],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.142522601734,156.596792870165,-12.7570799738735],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[586.927237975716,164.1291021749,37.4752655648295],[0.00778853013651704,0.000580626521977126,-0.997202342888956,0.0743403592130852],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[590.794286307596,244.05726888917,22.3952123523095],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[589.83677588721,232.848046284667,-27.1434241085131],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[589.83677588721,232.848046284667,-27.1434241085131],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[589.238331874469,225.842282156853,-58.105071896527],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[589.238331874469,225.842282156853,-58.105071896527],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[589.83677588721,232.848046284667,-27.1434241085131],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[590.794286307596,244.05726888917,22.3952123523095],[0.00960319833789452,0.00107271202908935,-0.993772536259963,0.111007990910686],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]
		];

	!Speeds
	CONST speeddata WorkingstepSpeeddatas{140} := [
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 4.23333333333333, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000],
		[ 800, 500, 5000, 1000]
		];


ENDMODULE
