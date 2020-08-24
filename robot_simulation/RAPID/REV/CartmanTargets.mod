MODULE targets

	!Workplan Variables
	CONST string workplanName := "Cartman";
	CONST string workplanUUID := "e8924aac-08a1-45c9-8646-5367342a41b0";

	!Workingsteps
	CONST string WorkPlan{20,6} := [
		["1","7", "Drilling.82", "d2e6eab3-8d0a-4f0f-a95d-911cd3530854", "Hole.182", "99ddfef0-3deb-445b-9c3c-e9123ea0c45e"],
		["8","14", "Drilling.77", "18dec0f3-9a71-4d62-9ffd-4b071a4c2c96", "Hole.187", "ac14d56a-bac8-4703-abe8-8083d949a042"],
		["15","21", "Drilling.77A", "cce52ede-30b0-41b1-9812-f49428268d42", "Hole.186", "13f6412f-3d62-4080-9683-c1b012cf2329"],
		["22","28", "Drilling.81", "cc8ebbb7-3856-4b1d-89e7-3bb7927c75a5", "Hole.183", "cc7cadc1-0fbf-4952-a172-cb43c9784d58"],
		["29","35", "Drilling.82A", "fb1fd053-2caa-42bb-a221-a69a247b4566", "Hole.181", "d6ab53ed-32cb-4e94-b962-5e5bce2dd949"],
		["36","42", "Drilling.78", "0ce5bf9a-dc56-429d-9ede-9ff3cf936782", "Hole.188", "61b61ac0-b937-4570-af27-f3e5565ecb41"],
		["43","49", "Drilling.80", "097974f7-0281-41d6-be47-a718a708f2c1", "Hole.184", "41873095-e461-4717-85b4-deda62e7cc48"],
		["50","56", "Drilling.79", "0d38a1e5-c414-47eb-bffd-0c035c73e724", "Hole.189", "7aab888b-ee1b-4aa6-95a1-195311f5c09c"],
		["57","63", "Drilling.56", "71fb19fa-6caa-4311-b6e3-cc7c1a002d0e", "Hole.193", "534c8ca5-8759-4bfe-8b3a-f64014fb1b37"],
		["64","70", "Drilling.57", "82dc275d-79a1-4817-aca9-f89dbea4337b", "Hole.194", "b7011f38-5032-4673-a101-1254335b2b68"],
		["71","77", "Drilling.58", "e8ffa874-f10e-4ad9-b179-7e628cd38fb4", "Hole.195", "b2305f3a-4977-4727-8945-7fbced9dd981"],
		["78","84", "Drilling.59", "0436a6f4-bfce-4d24-b9fc-4974d9771220", "Hole.196", "3f2baa8f-1c3f-4c1c-9c8e-c6857731bbd6"],
		["85","91", "Drilling.60", "c922b515-5149-48e0-b3c2-25974a63925d", "Hole.199", "9f4fe053-f702-4970-bd3b-e9d6d5939926"],
		["92","98", "Drilling.61", "54f7aa6c-4c3b-4a01-975b-a374c0101e01", "Hole.198", "0cbf5231-fc2b-4c71-8eca-d485859f5bef"],
		["99","105", "Drilling.62", "308c7519-319c-495b-866e-887c108f69fd", "Hole.197", "97270ee4-7d12-42d9-b2be-af7000f13095"],
		["106","112", "Drilling.63", "ae041463-52c1-413a-bc8f-b82ceccd6cbf", "Hole.192", "a8675cfd-087c-4d76-9144-1d9942c5b76b"],
		["113","119", "Drilling.96", "366ca4c1-51ca-4762-a30e-71a9ecae8757", "Hole.176", "5d7c72e5-ba80-4f5c-9be4-85262b61495c"],
		["120","126", "Drilling.97", "81b03597-23b4-45f9-8253-620e9a46ff2e", "Hole.177", "fbc5cc65-6031-4a9a-8bf6-0c8b0c46d944"],
		["127","133", "Drilling.98", "d04a2e7a-5080-477a-8967-be3c7ad103b0", "Hole.178", "14004e87-3834-406b-b1c2-5711ea87ae56"],
		["134","140", "Drilling.99", "80c84945-9521-4e27-bda3-a7734aa46377", "Hole.179", "ec45e44e-466b-44fe-87e7-d5d7371b5502"]
		];

	!Positions
	CONST robtarget WorkingstepRobtargets{140} := [
		[[1250.47999638542,-108.227438181067,34.9975797061398],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1249.75058558968,-102.335059394747,-15.4542570506085],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1249.75058558968,-102.335059394747,-15.4542570506085],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1249.29470384234,-98.6523226532974,-46.9866550235762],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1249.29470384234,-98.6523226532974,-46.9866550235762],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1249.75058558968,-102.335059394747,-15.4542570506085],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.47999638542,-108.227438181067,34.9975797061398],[0.00721600922388558,-0.000419915796535777,-0.998285039502953,-0.0580924503373097],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.4996392186,-113.751032090431,35.2122877951345],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.76430434352,-107.660275683661,-15.2158984603209],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.76430434352,-107.660275683661,-15.2158984603209],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.3047200466,-103.853552929431,-46.7335148699807],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.3047200466,-103.853552929431,-46.7335148699807],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.76430434352,-107.660275683661,-15.2158984603209],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.4996392186,-113.751032090431,35.2122877951345],[0.00727717079532053,-0.000437833858996109,-0.998168434785264,-0.0600551986514469],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.80854349765,-65.9236756789968,39.7730886825223],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.13380297056,-62.3940738632379,-10.8996518812492],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.13380297056,-62.3940738632379,-10.8996518812492],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1188.71209014113,-60.1880727283885,-42.5701147336066],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1188.71209014113,-60.1880727283885,-42.5701147336066],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.13380297056,-62.3940738632379,-10.8996518812492],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.80854349765,-65.9236756789968,39.7730886825223],[0.00665335945126355,-0.000231418506074151,-0.999373500218657,-0.0347604130326124],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.74376412468,-153.597058265429,28.5448951127816],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.92722949069,-145.231482502716,-21.5549094112862],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.92722949069,-145.231482502716,-21.5549094112862],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.41689534445,-140.002997651021,-52.8672872388287],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.41689534445,-140.002997651021,-52.8672872388287],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.92722949069,-145.231482502716,-21.5549094112862],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.74376412468,-153.597058265429,28.5448951127816],[0.00812040995990566,-0.000673216620954281,-0.996547971260864,-0.0826180773034575],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.30388547251,-68.6381103493351,38.7572467507825],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.62544921187,-64.8997376477342,-11.9004702702614],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.62544921187,-64.8997376477342,-11.9004702702614],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.20142654896,-62.5632547092337,-43.5615434084138],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.20142654896,-62.5632547092337,-43.5615434084138],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.62544921187,-64.8997376477342,-11.9004702702614],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.30388547251,-68.6381103493351,38.7572467507825],[0.0066912868110706,-0.000246540181525224,-0.99929951275717,-0.0368191485783281],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.60083196625,-155.158216713176,29.2801865539037],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.78653274383,-146.849895222209,-20.8291809413968],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.78653274383,-146.849895222209,-20.8291809413968],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.27759572982,-141.657194290354,-52.1475356259597],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.27759572982,-141.657194290354,-52.1475356259597],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1189.78653274383,-146.849895222209,-20.8291809413968],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.60083196625,-155.158216713176,29.2801865539037],[0.00809702025081855,-0.000666620341839099,-0.996595199463999,-0.0820487799159123],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.64830610495,-198.940144194599,19.8167872449908],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.71368198328,-188.105946746604,-29.8056536805528],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.71368198328,-188.105946746604,-29.8056536805528],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.12954190724,-181.334573341607,-60.8196792590172],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.12954190724,-181.334573341607,-60.8196792590172],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1250.71368198328,-188.105946746604,-29.8056536805528],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1251.64830610495,-198.940144194599,19.8167872449908],[0.00936178502431022,-0.00100991908065343,-0.99418752340432,-0.107249733574467],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1191.95221981654,-205.961103975954,19.400651812078],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1191.00653678319,-194.929122888932,-30.1779834746662],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1191.00653678319,-194.929122888932,-30.1779834746662],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.41548488734,-188.034134709543,-61.1646305288814],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1190.41548488734,-188.034134709543,-61.1646305288814],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1191.00653678319,-194.929122888932,-30.1779834746662],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1191.95221981654,-205.961103975954,19.400651812078],[0.00947883770226787,-0.00104166552827841,-0.99397062768479,-0.109231212886453],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1047.46148935396,-72.0531501973382,41.2352412437369],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1046.7834469431,-68.3409147913177,-9.42440311722726],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1046.7834469431,-68.3409147913177,-9.42440311722726],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1046.35967043631,-66.0207676625549,-41.0866808428298],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1046.35967043631,-66.0207676625549,-41.0866808428298],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1046.7834469431,-68.3409147913177,-9.42440311722726],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1047.46148935396,-72.0531501973382,41.2352412437369],[0.00668721181442413,-0.000244662737514811,-0.999309004762805,-0.0365613776855514],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1052.42343074024,-109.067908351377,37.7494232893189],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1051.70138758157,-103.441970404417,-12.7329248721323],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1051.70138758157,-103.441970404417,-12.7329248721323],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1051.2501106074,-99.9257591875673,-44.2843924730394],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1051.2501106074,-99.9257591875673,-44.2843924730394],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1051.70138758157,-103.441970404417,-12.7329248721323],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1052.42343074024,-109.067908351377,37.7494232893189],[0.00713988796543304,-0.000396579657530434,-0.998435450217324,-0.0554573392234659],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1058.4740893206,-161.105031430509,30.4416121484464],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.65889579635,-152.781550841607,-19.6652250138031],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.65889579635,-152.781550841607,-19.6652250138031],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.1493998437,-147.579375473542,-50.981998240209],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.1493998437,-147.579375473542,-50.981998240209],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.65889579635,-152.781550841607,-19.6652250138031],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1058.4740893206,-161.105031430509,30.4416121484464],[0.00810621924312884,-0.000668612028545384,-0.996582703082117,-0.0821995017325489],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.93506911126,-221.171435306608,18.5414921384049],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1056.96677196969,-209.747370115093,-30.9478313076238],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1056.96677196969,-209.747370115093,-30.9478313076238],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1056.36158625621,-202.607329370396,-61.8786584613916],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1056.36158625621,-202.607329370396,-61.8786584613916],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1056.96677196969,-209.747370115093,-30.9478313076238],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1057.93506911126,-221.171435306608,18.5414921384049],[0.00971864696644204,-0.00110695702979796,-0.993528265759436,-0.113163190500817],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.85981856446,-218.635862664587,17.7574554971789],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.88699287504,-207.128711860815,-31.7125262145345],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.88699287504,-207.128711860815,-31.7125262145345],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.27897681915,-199.936742608458,-62.6312647843553],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.27897681915,-199.936742608458,-62.6312647843553],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.88699287504,-207.128711860815,-31.7125262145345],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.85981856446,-218.635862664587,17.7574554971789],[0.00976696523800443,-0.0011207663604795,-0.993432439926763,-0.113997094585619],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1128.43014953787,-163.53542979742,28.8839393142151],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.60307907723,-154.926299957873,-21.1744150121005],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.60307907723,-154.926299957873,-21.1744150121005],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.08616003933,-149.545593808156,-52.4608864660477],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.08616003933,-149.545593808156,-52.4608864660477],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.60307907723,-154.926299957873,-21.1744150121005],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1128.43014953787,-163.53542979742,28.8839393142151],[0.00823029283472108,-0.000702478845333139,-0.996343236229819,-0.0850407221419141],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.5520604083,-112.02129801337,36.3318839337975],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.82241740506,-106.125413538039,-14.1195399047956],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.82241740506,-106.125413538039,-14.1195399047956],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.36639052804,-102.440485740957,-45.6516798039163],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.36639052804,-102.440485740957,-45.6516798039163],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1126.82241740506,-106.125413538039,-14.1195399047956],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.5520604083,-112.02129801337,36.3318839337975],[0.00721835054793264,-0.000420303654481913,-0.9982830037692,-0.0581271291717486],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1128.61924471962,-66.6938481139753,40.5341707855242],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.94479223978,-63.1822305905469,-10.1398230991262],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.94479223978,-63.1822305905469,-10.1398230991262],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.52325943989,-60.9874696384043,-41.811069277033],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.52325943989,-60.9874696384043,-41.811069277033],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1127.94479223978,-63.1822305905469,-10.1398230991262],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1128.61924471962,-66.6938481139753,40.5341707855242],[0.00665039597780486,-0.00023013398092707,-0.999379672280555,-0.0345830869660357],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1280.40535998915,-77.4781676063704,37.6669469437901],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1279.7168202408,-73.2235977584369,-12.9498936176672],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1279.7168202408,-73.2235977584369,-12.9498936176672],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1279.28648289808,-70.5644916034785,-44.5854189685778],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1279.28648289808,-70.5644916034785,-44.5854189685778],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1279.7168202408,-73.2235977584369,-12.9498936176672],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1280.40535998915,-77.4781676063704,37.6669469437901],[0.00679504073904094,-0.000285047734089657,-0.999098177542344,-0.0419115473433251],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1277.40817693077,-117.472016129421,33.472734421395],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.66202723732,-111.027774865225,-16.911340594068],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.66202723732,-111.027774865225,-16.911340594068],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.1956836789,-107.000124075103,-48.4013874787322],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.1956836789,-107.000124075103,-48.4013874787322],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.66202723732,-111.027774865225,-16.911340594068],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1277.40817693077,-117.472016129421,33.472734421395],[0.00738904055701226,-0.000470569704976723,-0.99795091498347,-0.0635543226496346],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1277.64942637825,-158.123953639288,27.3488861055936],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.81987972713,-149.449130570658,-22.6980848025598],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.81987972713,-149.449130570658,-22.6980848025598],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.30141307018,-144.027366152764,-53.9774416201559],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.30141307018,-144.027366152764,-53.9774416201559],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1276.81987972713,-149.449130570658,-22.6980848025598],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1277.64942637825,-158.123953639288,27.3488861055936],[0.00825634172421117,-0.000710159372976826,-0.996287002832898,-0.0856944366994647],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1275.33381015192,-199.568058708582,19.231409467319],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1274.39345782,-188.627142215315,-30.3675026556215],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1274.39345782,-188.627142215315,-30.3675026556215],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1273.80573761255,-181.789069407022,-61.3668227324593],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1273.80573761255,-181.789069407022,-61.3668227324593],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1274.39345782,-188.627142215315,-30.3675026556215],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]],
		[[1275.33381015192,-199.568058708582,19.231409467319],[0.00942251539533556,-0.00102672230604247,-0.994071031047524,-0.108318730037993],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]
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