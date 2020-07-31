MODULE KyleModule
  PERS string workingPlanUUID:="sdvonvskvnwovewn342532nkfloencvosnvqwef12";
    PERS string AP238_WORKINGSTEP_NAME := "";
    PERS string AP238_WORKINGSTEP_UUID := "";
    PERS string AP238_FEATURE_NAME := "";
    PERS string AP238_FEATURE_UUID := "";
    PERS bool ok;
    PERS num startIndex :=134;
    PERS num stopIndex :=140;
      CONST speeddata serge := [ 800, 500, 5000, 1000];
      
      

    PROC main()
        
       !  SetDO IsDone,0;
         MoveAbsJ jHome,v400,z10,PendEff_point\WObj:=A;
        MoveAbsJ jee,v400,z10,PendEff_point\WObj:=A;
        ConfJ\Off;
        ConfL\Off;
        
       FOR i FROM 1 TO dim(WorkPlan,1) DO
           
           ok := StrToVal(Workplan{i,1}, startIndex);
           ok := StrToVal(Workplan{i,2}, stopIndex);
               
                WorkingStep startIndex, stopIndex, Workplan{i,3}, Workplan{i,4}, Workplan{i,5}, Workplan{i,6}, WorkingstepRobtargets, WorkingstepSpeeddatas;
                
        ENDFOR
     
        MoveAbsJ jee,v400,z10,PendEff_point\WObj:=A;
        MoveAbsJ jHome,v400,z10,PendEff_point\WObj:=A;
        !SetDO IsDone,0;
    ENDPROC

    PROC WorkingStep(num startpos, num endpos, string workingstepName, string workingstepUUID, string featureName, string featureUUID, robtarget targetList{*}, speeddata speedList{*})

        FOR i FROM startpos TO endpos DO
      !           SetDO IsDone,0;
            AP238_WORKINGSTEP_NAME := workingstepName;
            AP238_WORKINGSTEP_UUID := workingstepUUID;
            AP238_FEATURE_NAME := featureName;
            AP238_FEATURE_UUID := featureUUID;
     !       MoveL targetList{i},v1000,z100,PendEff_point\WObj:=A;
            MoveL Workingsteprobtargets{i}, speedList{i}, z100,PendEff_point\WObj:=A;
     !       SetDO IsDone,1;
            AP238_WORKINGSTEP_NAME := "";
            AP238_WORKINGSTEP_UUID := "";
            AP238_FEATURE_NAME := "";
            AP238_FEATURE_UUID := "";
        ENDFOR

    ENDPROC

ENDMODULE