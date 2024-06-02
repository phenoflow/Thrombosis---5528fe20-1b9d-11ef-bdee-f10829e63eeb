cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  thrombosis-p16-thromboembolism---primary:
    run: thrombosis-p16-thromboembolism---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  thrombosis-p16-infarct---primary:
    run: thrombosis-p16-infarct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-thromboembolism---primary/output
  femoral-thrombosis-p16---primary:
    run: femoral-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-infarct---primary/output
  basilar-thrombosis-p16---primary:
    run: basilar-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: femoral-thrombosis-p16---primary/output
  current-thrombosis-p16---primary:
    run: current-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: basilar-thrombosis-p16---primary/output
  myocardal-thrombosis-p16---primary:
    run: myocardal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: current-thrombosis-p16---primary/output
  septal-thrombosis-p16---primary:
    run: septal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: myocardal-thrombosis-p16---primary/output
  mesenteric-thrombosis-p16---primary:
    run: mesenteric-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: septal-thrombosis-p16---primary/output
  thrombosis-p16-unspec---primary:
    run: thrombosis-p16-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: mesenteric-thrombosis-p16---primary/output
  thrombosis-p16-cereb---primary:
    run: thrombosis-p16-cereb---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-unspec---primary/output
  thrombosis-p16-thrombus---primary:
    run: thrombosis-p16-thrombus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-cereb---primary/output
  thrombosis-p16-phlebitis---primary:
    run: thrombosis-p16-phlebitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-thrombus---primary/output
  carotid-thrombosis-p16---primary:
    run: carotid-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-phlebitis---primary/output
  cerebrovascular-thrombosis-p16---primary:
    run: cerebrovascular-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: carotid-thrombosis-p16---primary/output
  thrombosis---primary:
    run: thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: cerebrovascular-thrombosis-p16---primary/output
  lateral-thrombosis-p16---primary:
    run: lateral-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: thrombosis---primary/output
  thrombosis-p16-related---primary:
    run: thrombosis-p16-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: lateral-thrombosis-p16---primary/output
  thrombosis-p16-sided---primary:
    run: thrombosis-p16-sided---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-related---primary/output
  thrombosis-p16-attack---primary:
    run: thrombosis-p16-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-sided---primary/output
  thrombosis-p16---primary:
    run: thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-attack---primary/output
  nonpyogenic-thrombosis-p16---primary:
    run: nonpyogenic-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: thrombosis-p16---primary/output
  thrombosis-p16-iliac---primary:
    run: thrombosis-p16-iliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: nonpyogenic-thrombosis-p16---primary/output
  thrombosis-p16-heart---primary:
    run: thrombosis-p16-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-iliac---primary/output
  subendocardial-thrombosis-p16---primary:
    run: subendocardial-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-heart---primary/output
  thrombosis-p16-dressler's---primary:
    run: thrombosis-p16-dressler's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: subendocardial-thrombosis-p16---primary/output
  transmural-thrombosis-p16---primary:
    run: transmural-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-dressler's---primary/output
  superior-thrombosis-p16---primary:
    run: superior-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: transmural-thrombosis-p16---primary/output
  antenatal-thrombosis-p16---primary:
    run: antenatal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: superior-thrombosis-p16---primary/output
  atrial-thrombosis-p16---primary:
    run: atrial-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antenatal-thrombosis-p16---primary/output
  thrombosis-p16-posterior---primary:
    run: thrombosis-p16-posterior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: atrial-thrombosis-p16---primary/output
  popliteal-thrombosis-p16---primary:
    run: popliteal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-posterior---primary/output
  coronary-thrombosis-p16---primary:
    run: coronary-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: popliteal-thrombosis-p16---primary/output
  axillary-thrombosis-p16---primary:
    run: axillary-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: coronary-thrombosis-p16---primary/output
  cavernous-thrombosis-p16---primary:
    run: cavernous-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: axillary-thrombosis-p16---primary/output
  arterial-thrombosis-p16---primary:
    run: arterial-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: cavernous-thrombosis-p16---primary/output
  operative-thrombosis-p16---primary:
    run: operative-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: arterial-thrombosis-p16---primary/output
  thrombosis-p16-tia---primary:
    run: thrombosis-p16-tia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: operative-thrombosis-p16---primary/output
  tibial-thrombosis-p16---primary:
    run: tibial-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-tia---primary/output
  thrombosis-p16-system---primary:
    run: thrombosis-p16-system---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: tibial-thrombosis-p16---primary/output
  obstetric-thrombosis-p16---primary:
    run: obstetric-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-system---primary/output
  thrombosis-p16-fugax---primary:
    run: thrombosis-p16-fugax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: obstetric-thrombosis-p16---primary/output
  lower-thrombosis-p16---primary:
    run: lower-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-fugax---primary/output
  thrombosis-p16-muscle---primary:
    run: thrombosis-p16-muscle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: lower-thrombosis-p16---primary/output
  thrombosis-p16-leriche's---primary:
    run: thrombosis-p16-leriche's---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-muscle---primary/output
  thrombosis-p16-infarctn---primary:
    run: thrombosis-p16-infarctn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-leriche's---primary/output
  thrombosis-p16-embolus---primary:
    run: thrombosis-p16-embolus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-infarctn---primary/output
  postnatal-thrombosis-p16---primary:
    run: postnatal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-embolus---primary/output
  thrombosis-p16-pedis---primary:
    run: thrombosis-p16-pedis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: postnatal-thrombosis-p16---primary/output
  thrombosis-p16-pregnancy---primary:
    run: thrombosis-p16-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-pedis---primary/output
  thrombosis-p16-stroke---primary:
    run: thrombosis-p16-stroke---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-pregnancy---primary/output
  radiological-thrombosis-p16---primary:
    run: radiological-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-stroke---primary/output
  thrombosis-p16-subclavian---primary:
    run: thrombosis-p16-subclavian---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: radiological-thrombosis-p16---primary/output
  thrombosis-p16-artery---primary:
    run: thrombosis-p16-artery---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-subclavian---primary/output
  personal-thrombosis-p16---primary:
    run: personal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-artery---primary/output
  ventricular-thrombosis-p16---primary:
    run: ventricular-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: personal-thrombosis-p16---primary/output
  thrombosis-p16-transverse---primary:
    run: thrombosis-p16-transverse---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ventricular-thrombosis-p16---primary/output
  thrombosis-p16-colitis---primary:
    run: thrombosis-p16-colitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-transverse---primary/output
  longitudinal-thrombosis-p16---primary:
    run: longitudinal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-colitis---primary/output
  hepatic-thrombosis-p16---primary:
    run: hepatic-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: longitudinal-thrombosis-p16---primary/output
  jugular-thrombosis-p16---primary:
    run: jugular-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: hepatic-thrombosis-p16---primary/output
  transient-thrombosis-p16---primary:
    run: transient-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: jugular-thrombosis-p16---primary/output
  thrombosis-p16-wallenberg---primary:
    run: thrombosis-p16-wallenberg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: transient-thrombosis-p16---primary/output
  thrombosis-p16-brainstem---primary:
    run: thrombosis-p16-brainstem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-wallenberg---primary/output
  internal-thrombosis-p16---primary:
    run: internal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-brainstem---primary/output
  thrombosis-p16-lacunar---primary:
    run: thrombosis-p16-lacunar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: internal-thrombosis-p16---primary/output
  thrombosis-p16-myocard---primary:
    run: thrombosis-p16-myocard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-lacunar---primary/output
  thrombosis-p16-rupture---primary:
    run: thrombosis-p16-rupture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-myocard---primary/output
  thrombosis-p16-delivered---primary:
    run: thrombosis-p16-delivered---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-rupture---primary/output
  thrombosis-p16-complication---primary:
    run: thrombosis-p16-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-delivered---primary/output
  renal-thrombosis-p16---primary:
    run: renal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-complication---primary/output
  right-thrombosis-p16---primary:
    run: right-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: renal-thrombosis-p16---primary/output
  postthrombotic-thrombosis-p16---primary:
    run: postthrombotic-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: right-thrombosis-p16---primary/output
  thrombosis-p16-inferior---primary:
    run: thrombosis-p16-inferior---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: postthrombotic-thrombosis-p16---primary/output
  intestinal-thrombosis-p16---primary:
    run: intestinal-thrombosis-p16---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-inferior---primary/output
  thrombosis-p16-cva---primary:
    run: thrombosis-p16-cva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: intestinal-thrombosis-p16---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: thrombosis-p16-cva---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
