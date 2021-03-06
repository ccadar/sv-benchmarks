(set-info :origin "SVCOMP13 benchmarks generated by Arie Gurfinkel")
(set-info :status sat)
(set-logic HORN)
(declare-fun cp-rel-entry () Bool)
(declare-fun cp-rel-bb.i6.i.outer.outer
             (Real Real Real Real Real Real Real Real Real)
             Bool)
(declare-fun cp-rel-bb.i6.i.outer.outer.outer
             (Real Real Real Real Real Real Real Real)
             Bool)
(declare-fun cp-rel-UnifiedReturnBlock () Bool)
(declare-fun cp-rel-__UFO__0
             (Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Bool)
             Bool)
(declare-fun cp-rel-bb.i6.i.us
             (Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Bool)
             Bool)
(declare-fun cp-rel-bb.i6.i.outer
             (Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Real
              Bool
              Real
              Real
              Real
              Real
              Real
              Real
              Real)
             Bool)
(assert |cp-rel-entry|)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Bool) )(let (($x633480 (|cp-rel-bb.i6.i.outer.outer.outer| ?A ?B ?C ?D ?E ?F ?G ?H)))
(let (($x842952 (= ?I true)))
(let (($x582447 (and |cp-rel-entry| (<= ?H 0.0) (>= ?G 0.0) (<= ?G 0.0) (>= ?F 0.0) (<= ?F 0.0) (>= ?E 0.0) (<= ?E 0.0) (>= ?D 0.0) (<= ?D 0.0) (>= ?C 0.0) (<= ?C 0.0) (>= ?B 0.0) (<= ?B 0.0) (>= ?A 0.0) (<= ?A 0.0) $x842952 (>= ?H 0.0))))
(=> $x582447 $x633480)))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Real) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Bool) (?S1 Bool) (?T1 Bool) (?U1 Bool) (?V1 Bool) (?W1 Bool) (?X1 Bool) (?Y1 Bool) (?Z1 Real) (?A2 Real) (?B2 Real) (?C2 Real) (?D2 Real) (?E2 Real) (?F2 Real) (?G2 Real) (?H2 Real) (?I2 Real) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Bool) (?N2 Bool) (?O2 Bool) (?P2 Bool) (?Q2 Bool) (?R2 Bool) (?S2 Bool) (?T2 Bool) (?U2 Bool) (?V2 Bool) (?W2 Bool) (?X2 Real) (?Y2 Real) (?Z2 Bool) (?A3 Bool) (?B3 Real) (?C3 Bool) (?D3 Bool) (?E3 Bool) (?F3 Bool) (?G3 Bool) )(let (($x226988 (|cp-rel-bb.i6.i.outer.outer.outer| ?A ?B ?C ?D ?E ?F ?G ?H)))
(let (($x318858 (= ?W2 (and ?F3 ?G3))))
(let (($x812706 (or (not ?Z) (and ?A1 ?B1 (not ?C1)))))
(let (($x859705 (or (not ?Z) ?B1)))
(let (($x265135 (or (not ?D1) (and ?Z ?E1 ?F1))))
(let (($x239371 (or (not ?D1) ?E1)))
(let (($x329268 (or (not ?G1) (and ?Z ?H1 (not ?F1)))))
(let (($x546681 (or (not ?G1) ?H1)))
(let (($x637516 (not ?I1)))
(let (($x547393 (or $x637516 (and ?D1 ?J1 ?K1))))
(let (($x324470 (or $x637516 ?J1)))
(let (($x426152 (not ?L1)))
(let (($x258686 (or $x426152 (and ?G1 ?M1 ?K1))))
(let (($x303933 (or $x426152 ?M1)))
(let (($x618592 (not ?N1)))
(let (($x244211 (or $x618592 (and ?L1 ?O1 ?C1) (and ?I1 ?P1 ?C1) (and ?A1 ?Q1 ?C1))))
(let (($x524873 (or $x618592 (and ?O1 (not ?P1) (not ?Q1)) (and ?P1 (not ?O1) (not ?Q1)) (and ?Q1 (not ?O1) (not ?P1)))))
(let (($x325721 (or (not ?R1) (and ?N1 ?S1 (not ?T1)))))
(let (($x292746 (or (not ?R1) ?S1)))
(let (($x544366 (not ?U1)))
(let (($x209412 (or $x544366 (and ?R1 ?V1 (not ?W1)))))
(let (($x413940 (or $x544366 ?V1)))
(let (($x368647 (>= ?H2 ?Y)))
(let (($x563306 (<= ?H2 ?Y)))
(let (($x926256 (>= ?G2 ?X)))
(let (($x129433 (<= ?G2 ?X)))
(let (($x400033 (>= ?E2 ?W)))
(let (($x36993 (<= ?E2 ?W)))
(let (($x226518 (>= ?D2 ?V)))
(let (($x185250 (<= ?D2 ?V)))
(let (($x371621 (>= ?B2 ?U)))
(let (($x281482 (<= ?B2 ?U)))
(let (($x277990 (>= ?A2 ?T)))
(let (($x150804 (<= ?A2 ?T)))
(let (($x60692 (>= ?Z1 ?S)))
(let (($x322816 (<= ?Z1 ?S)))
(let (($x922091 (not ?C1)))
(let (($x583402 (and ?I1 ?M2 $x922091 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x549899 (and ?L1 ?L2 $x922091 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x842132 (and ?N1 ?K2 ?T1 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x724219 (and ?R1 ?J2 ?W1 (<= ?Z1 1.0) (>= ?Z1 1.0) (<= ?A2 2.0) (>= ?A2 2.0) $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x86256 (and ?U1 ?Y1 (<= ?Z1 1.0) (>= ?Z1 1.0) (<= ?A2 2.0) (>= ?A2 2.0) (<= ?B2 ?C2) (>= ?B2 ?C2) (<= ?D2 0.0) (>= ?D2 0.0) (<= ?E2 ?F2) (>= ?E2 ?F2) (<= ?G2 ?F2) (>= ?G2 ?F2) (<= ?H2 ?I2) (>= ?H2 ?I2))))
(let (($x568487 (not ?X1)))
(let (($x857370 (or $x568487 $x86256 $x724219 $x842132 $x549899 $x583402)))
(let (($x335020 (or $x568487 (and ?Y1 (not ?J2) (not ?K2) (not ?L2) (not ?M2)) (and ?J2 (not ?Y1) (not ?K2) (not ?L2) (not ?M2)) (and ?K2 (not ?Y1) (not ?J2) (not ?L2) (not ?M2)) (and ?L2 (not ?Y1) (not ?J2) (not ?K2) (not ?M2)) (and ?M2 (not ?Y1) (not ?J2) (not ?K2) (not ?L2)))))
(let (($x227050 (or (not ?N2) (and ?X1 ?O2 ?P2))))
(let (($x536746 (or (not ?N2) ?O2)))
(let (($x525454 (not ?Q2)))
(let (($x820720 (or $x525454 (and ?N2 ?R2 (not ?S2)))))
(let (($x627254 (or $x525454 ?R2)))
(let (($x861486 (or (not ?T2) (and ?Q2 ?U2 (not ?V2)))))
(let (($x586546 (or (not ?T2) ?U2)))
(let (($x25654 (= ?T2 true)))
(let (($x510769 (= ?W2 true)))
(let (($x229951 (= ?C1 (= ?T 0.0))))
(let (($x461636 (= ?K1 (= ?U 0.0))))
(let (($x577317 (= ?F1 (or ?K1 ?C1))))
(let (($x585400 (= ?T1 (= ?Y2 0.0))))
(let (($x448973 (= ?Z2 (not (= ?S 1.0)))))
(let (($x733963 (= ?A3 (= ?V 0.0))))
(let (($x277277 (= ?W1 (and ?A3 ?Z2))))
(let (($x202897 (= ?I2 (+ 1.0 ?Y))))
(let (($x860215 (= ?C2 (ite ?R 0.0 ?U))))
(let (($x362911 (= ?P2 (= ?B2 0.0))))
(let (($x546732 (= ?S2 (= ?B3 0.0))))
(let (($x93346 (= ?C3 (not (= ?Q 1.0)))))
(let (($x633360 (= ?D3 (= ?D2 1.0))))
(let (($x354694 (= ?V2 (and ?D3 ?C3))))
(let (($x282575 (= ?E3 (= ?Z1 1.0))))
(let (($x386258 (= ?X2 (ite ?E3 0.0 ?A2))))
(let (($x213452 (= ?F3 (= ?G2 ?E2))))
(let (($x105657 (= ?G3 (= ?H2 ?P))))
(let (($x644165 (|cp-rel-bb.i6.i.outer| ?I ?J ?K ?L ?M ?N ?O ?P ?Q ?R ?S ?T ?U ?V ?W ?X ?Y)))
(let (($x369305 (and $x644165 $x105657 $x213452 $x386258 $x282575 $x354694 $x633360 $x93346 $x546732 $x362911 $x860215 $x202897 $x277277 $x733963 $x448973 $x585400 $x577317 $x461636 $x229951 (>= ?H ?P) (<= ?H ?P) (>= ?G ?H2) (<= ?G ?H2) (>= ?F ?G2) (<= ?F ?G2) (>= ?E ?E2) (<= ?E ?E2) (>= ?D 2.0) (<= ?D 2.0) (>= ?C ?X2) (<= ?C ?X2) (>= ?B 1.0) (<= ?B 1.0) (>= ?A ?Z1) (<= ?A ?Z1) $x510769 $x25654 $x586546 $x861486 $x627254 $x820720 $x536746 $x227050 $x335020 $x857370 $x413940 $x209412 $x292746 $x325721 $x524873 $x244211 $x303933 $x258686 $x324470 $x547393 $x546681 $x329268 $x239371 $x265135 $x859705 $x812706 $x318858)))
(=> $x369305 $x226988))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) )(let (($x542021 (|cp-rel-bb.i6.i.outer.outer| ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x842952 (= ?R true)))
(let (($x910418 (|cp-rel-bb.i6.i.outer.outer.outer| ?A ?B ?C ?D ?E ?F ?G ?H)))
(let (($x267126 (and $x910418 (>= ?Q ?G) (<= ?Q ?G) (>= ?P ?F) (<= ?P ?F) (>= ?O ?E) (<= ?O ?E) (>= ?N 1.0) (<= ?N 1.0) (>= ?M ?D) (<= ?M ?D) (>= ?L ?C) (<= ?L ?C) (>= ?K ?B) (<= ?K ?B) (>= ?J ?A) (<= ?J ?A) $x842952 (= ?I (+ 1.0 ?H)))))
(=> $x267126 $x542021))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Real) (?S1 Real) (?T1 Real) (?U1 Real) (?V1 Real) (?W1 Real) (?X1 Real) (?Y1 Real) (?Z1 Real) (?A2 Real) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Real) (?N2 Bool) (?O2 Bool) (?P2 Real) (?Q2 Bool) (?R2 Bool) (?S2 Real) (?T2 Real) (?U2 Real) (?V2 Real) (?W2 Real) (?X2 Real) (?Y2 Real) (?Z2 Real) )(let (($x521390 (|cp-rel-bb.i6.i.outer.outer| ?H ?S2 ?T2 ?U2 ?V2 ?W2 ?X2 ?Y2 ?Z2)))
(let (($x511997 (or (not ?F1) (and ?D1 ?G1 ?U) (and ?A1 ?H1 ?U) (and ?S ?I1 ?U))))
(let (($x580267 (or (not ?F1) (and ?G1 (not ?H1) (not ?I1)) (and ?H1 (not ?G1) (not ?I1)) (and ?I1 (not ?G1) (not ?H1)))))
(let (($x98 (not ?J1)))
(let (($x374519 (or $x98 ?K1)))
(let (($x926256 (>= ?Z1 ?Q)))
(let (($x129433 (<= ?Z1 ?Q)))
(let (($x557363 (>= ?Y1 ?P)))
(let (($x875037 (<= ?Y1 ?P)))
(let (($x226518 (>= ?W1 ?O)))
(let (($x185250 (<= ?W1 ?O)))
(let (($x839506 (>= ?V1 ?N)))
(let (($x274533 (<= ?V1 ?N)))
(let (($x277990 (>= ?T1 ?M)))
(let (($x150804 (<= ?T1 ?M)))
(let (($x60692 (>= ?S1 ?L)))
(let (($x322816 (<= ?S1 ?L)))
(let (($x332320 (>= ?R1 ?K)))
(let (($x66322 (<= ?R1 ?K)))
(let (($x859807 (not ?U)))
(let (($x319924 (and ?A1 ?E2 $x859807 $x66322 $x332320 $x322816 $x60692 $x150804 $x277990 $x274533 $x839506 $x185250 $x226518 $x875037 $x557363 $x129433 $x926256)))
(let (($x458242 (and ?D1 ?D2 $x859807 $x66322 $x332320 $x322816 $x60692 $x150804 $x277990 $x274533 $x839506 $x185250 $x226518 $x875037 $x557363 $x129433 $x926256)))
(let (($x197508 (and ?F1 ?C2 ?L1 $x66322 $x332320 $x322816 $x60692 $x150804 $x277990 $x274533 $x839506 $x185250 $x226518 $x875037 $x557363 $x129433 $x926256)))
(let (($x852729 (and ?J1 ?B2 ?O1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) $x150804 $x277990 $x274533 $x839506 $x185250 $x226518 $x875037 $x557363 $x129433 $x926256)))
(let (($x63613 (and ?M1 ?Q1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) (<= ?T1 ?U1) (>= ?T1 ?U1) (<= ?V1 0.0) (>= ?V1 0.0) (<= ?W1 ?X1) (>= ?W1 ?X1) (<= ?Y1 ?X1) (>= ?Y1 ?X1) (<= ?Z1 ?A2) (>= ?Z1 ?A2))))
(let (($x299702 (not ?P1)))
(let (($x260932 (or $x299702 (and ?Q1 (not ?B2) (not ?C2) (not ?D2) (not ?E2)) (and ?B2 (not ?Q1) (not ?C2) (not ?D2) (not ?E2)) (and ?C2 (not ?Q1) (not ?B2) (not ?D2) (not ?E2)) (and ?D2 (not ?Q1) (not ?B2) (not ?C2) (not ?E2)) (and ?E2 (not ?Q1) (not ?B2) (not ?C2) (not ?D2)))))
(let (($x857828 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x197602 (and $x857828 (= ?R2 (= ?V1 1.0)) (= ?Q2 (not (= ?I 1.0))) (= ?K2 (= ?P2 0.0)) (= ?H2 (= ?T1 0.0)) (= ?U1 (ite ?J 0.0 ?M)) (= ?A2 (+ 1.0 ?Q)) (= ?O1 (and ?O2 ?N2)) (= ?O2 (= ?N 0.0)) (= ?N2 (not (= ?K 1.0))) (= ?L1 (= ?M2 0.0)) (= ?X (or ?C1 ?U)) (= ?C1 (= ?M 0.0)) (= ?U (= ?L 0.0)) (>= ?Z2 ?Z1) (<= ?Z2 ?Z1) (>= ?Y2 ?Y1) (<= ?Y2 ?Y1) (>= ?X2 ?W1) (<= ?X2 ?W1) (>= ?W2 ?V1) (<= ?W2 ?V1) (>= ?V2 2.0) (<= ?V2 2.0) (>= ?U2 ?S1) (<= ?U2 ?S1) (>= ?T2 1.0) (<= ?T2 1.0) (>= ?S2 ?R1) (<= ?S2 ?R1) (= ?L2 true) (= ?I2 true) (or (not ?I2) ?J2) (or (not ?I2) (and ?F2 ?J2 (not ?K2))) (or (not ?F2) ?G2) (or (not ?F2) (and ?P1 ?G2 ?H2)) $x260932 (or $x299702 $x63613 $x852729 $x197508 $x458242 $x319924) (or (not ?M1) ?N1) (or (not ?M1) (and ?J1 ?N1 (not ?O1))) $x374519 (or $x98 (and ?F1 ?K1 (not ?L1))) $x580267 $x511997 (or (not ?D1) ?E1) (or (not ?D1) (and ?Y ?E1 ?C1)) (or (not ?A1) ?B1) (or (not ?A1) (and ?V ?B1 ?C1)) (or (not ?Y) ?Z) (or (not ?Y) (and ?R ?Z (not ?X))) (or (not ?V) ?W) (or (not ?V) (and ?R ?W ?X)) (or (not ?R) ?T) (or (not ?R) (and ?S ?T $x859807)) (= ?L2 (and ?R2 ?Q2)))))
(=> $x197602 $x521390)))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Bool) (?J Real) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Bool) )(let (($x378412 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?R ?I ?J ?K ?L ?M ?N ?O ?P)))
(let (($x842952 (= ?Y true)))
(let (($x860091 (|cp-rel-bb.i6.i.outer.outer| ?H ?Q ?R ?S ?T ?U ?V ?W ?X)))
(let (($x888041 (and $x860091 (>= ?P ?X) (<= ?P ?X) (>= ?O ?W) (<= ?O ?W) (>= ?N ?V) (<= ?N ?V) (>= ?M ?U) (<= ?M ?U) (>= ?L ?T) (<= ?L ?T) (>= ?K ?S) (<= ?K ?S) (>= ?J ?Q) (<= ?J ?Q) $x842952 (= ?I (= ?R 1.0)))))
(=> $x888041 $x378412))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Real) (?S1 Real) (?T1 Real) (?U1 Real) (?V1 Real) (?W1 Real) (?X1 Real) (?Y1 Real) (?Z1 Real) (?A2 Real) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Real) (?K2 Bool) (?L2 Bool) (?M2 Real) (?N2 Real) (?O2 Real) (?P2 Real) (?Q2 Real) (?R2 Real) (?S2 Real) (?T2 Real) )(let (($x375369 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?N2 ?O2 ?P2 ?Q2 ?R2 ?S2 ?T2)))
(let (($x637516 (not ?V)))
(let (($x324470 (or $x637516 ?W)))
(let (($x426152 (not ?Y)))
(let (($x303933 (or $x426152 ?Z)))
(let (($x98 (not ?D1)))
(let (($x374519 (or $x98 ?E1)))
(let (($x859114 (not ?F1)))
(let (($x3633 (or $x859114 (and ?D1 ?G1 ?U) (and ?A1 ?H1 ?U) (and ?S ?I1 ?U))))
(let (($x626651 (or $x859114 (and ?G1 (not ?H1) (not ?I1)) (and ?H1 (not ?G1) (not ?I1)) (and ?I1 (not ?G1) (not ?H1)))))
(let (($x508798 (>= ?Z1 ?Q)))
(let (($x474781 (<= ?Z1 ?Q)))
(let (($x193931 (>= ?Y1 ?P)))
(let (($x389855 (<= ?Y1 ?P)))
(let (($x581132 (>= ?W1 ?O)))
(let (($x290818 (<= ?W1 ?O)))
(let (($x211260 (>= ?V1 ?N)))
(let (($x97936 (<= ?V1 ?N)))
(let (($x154114 (>= ?T1 ?M)))
(let (($x924181 (<= ?T1 ?M)))
(let (($x301110 (>= ?S1 ?L)))
(let (($x276609 (<= ?S1 ?L)))
(let (($x32055 (>= ?R1 ?K)))
(let (($x122874 (<= ?R1 ?K)))
(let (($x159592 (not ?U)))
(let (($x346345 (and ?A1 ?E2 $x159592 $x122874 $x32055 $x276609 $x301110 $x924181 $x154114 $x97936 $x211260 $x290818 $x581132 $x389855 $x193931 $x474781 $x508798)))
(let (($x396691 (and ?D1 ?D2 $x159592 $x122874 $x32055 $x276609 $x301110 $x924181 $x154114 $x97936 $x211260 $x290818 $x581132 $x389855 $x193931 $x474781 $x508798)))
(let (($x818088 (and ?F1 ?C2 ?L1 $x122874 $x32055 $x276609 $x301110 $x924181 $x154114 $x97936 $x211260 $x290818 $x581132 $x389855 $x193931 $x474781 $x508798)))
(let (($x217307 (and ?J1 ?B2 ?O1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) $x924181 $x154114 $x97936 $x211260 $x290818 $x581132 $x389855 $x193931 $x474781 $x508798)))
(let (($x842803 (and ?M1 ?Q1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) (<= ?T1 ?U1) (>= ?T1 ?U1) (<= ?V1 0.0) (>= ?V1 0.0) (<= ?W1 ?X1) (>= ?W1 ?X1) (<= ?Y1 ?X1) (>= ?Y1 ?X1) (<= ?Z1 ?A2) (>= ?Z1 ?A2))))
(let (($x860014 (or (not ?P1) (and ?Q1 (not ?B2) (not ?C2) (not ?D2) (not ?E2)) (and ?B2 (not ?Q1) (not ?C2) (not ?D2) (not ?E2)) (and ?C2 (not ?Q1) (not ?B2) (not ?D2) (not ?E2)) (and ?D2 (not ?Q1) (not ?B2) (not ?C2) (not ?E2)) (and ?E2 (not ?Q1) (not ?B2) (not ?C2) (not ?D2)))))
(let (($x864951 (and ?P1 (not ?H2) (<= ?N2 ?R1) (>= ?N2 ?R1) (<= ?O2 ?S1) (>= ?O2 ?S1) (<= ?P2 ?T1) (>= ?P2 ?T1) (<= ?Q2 ?V1) (>= ?Q2 ?V1) (<= ?R2 ?W1) (>= ?R2 ?W1) (<= ?S2 ?Y1) (>= ?S2 ?Y1) (<= ?T2 ?Z1) (>= ?T2 ?Z1))))
(let (($x274682 (and ?F2 ?I2 (<= ?N2 ?R1) (>= ?N2 ?R1) (<= ?O2 ?S1) (>= ?O2 ?S1) (<= ?P2 ?T1) (>= ?P2 ?T1) (<= ?Q2 ?V1) (>= ?Q2 ?V1) (<= ?R2 ?W1) (>= ?R2 ?W1) (<= ?S2 ?Y1) (>= ?S2 ?Y1) (<= ?T2 ?Z1) (>= ?T2 ?Z1))))
(let (($x631254 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x410574 (and $x631254 (= ?H2 (= ?T1 0.0)) (= ?U1 (ite ?J 0.0 ?M)) (= ?A2 (+ 1.0 ?Q)) (= ?O1 (and ?L2 ?K2)) (= ?L2 (= ?N 0.0)) (= ?K2 (not (= ?K 1.0))) (= ?L1 (= ?J2 0.0)) (= ?X (or ?C1 ?U)) (= ?C1 (= ?M 0.0)) (= ?U (= ?L 0.0)) (or $x274682 $x864951) (or (not ?F2) ?G2) (or (not ?F2) (and ?P1 ?G2 ?H2)) $x860014 (or (not ?P1) $x842803 $x217307 $x818088 $x396691 $x346345) (or (not ?M1) ?N1) (or (not ?M1) (and ?J1 ?N1 (not ?O1))) (or (not ?J1) ?K1) (or (not ?J1) (and ?F1 ?K1 (not ?L1))) $x626651 $x3633 $x374519 (or $x98 (and ?Y ?E1 ?C1)) (or (not ?A1) ?B1) (or (not ?A1) (and ?V ?B1 ?C1)) $x303933 (or $x426152 (and ?R ?Z (not ?X))) $x324470 (or $x637516 (and ?R ?W ?X)) (or (not ?R) ?T) (or (not ?R) (and ?S ?T $x159592)) (= ?I2 (= ?M2 0.0)))))
(=> $x410574 $x375369)))))))))))))))))))))))))))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Real) (?A1 Real) (?B1 Real) (?C1 Real) (?D1 Real) (?E1 Real) (?F1 Real) )(let (($x295316 (|cp-rel-bb.i6.i.us| ?A ?B ?C ?D ?E ?F ?G ?H ?Z ?I ?A1 ?B1 ?C1 ?D1 ?E1 ?F1 ?J ?K ?L ?M ?N ?O ?P ?Q ?U ?Y)))
(let (($x406326 (not ?R)))
(let (($x503267 (or $x406326 (and ?S ?T (not ?U)))))
(let (($x446832 (or $x406326 ?T)))
(let (($x510769 (= ?V true)))
(let (($x200683 (not (= ?Y true))))
(let (($x210783 (= ?U (= ?L 0.0))))
(let (($x543731 (= ?Y (= ?M 0.0))))
(let (($x188966 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x131332 (and $x188966 $x543731 $x210783 $x200683 $x510769 (or (not ?V) ?W) (or (not ?V) (and ?R ?W ?X)) $x446832 $x503267 (= ?X (or ?Y ?U)))))
(=> $x131332 $x295316))))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Bool) (?L Bool) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Real) (?Z Real) (?A1 Bool) )(let (($x195018 (|cp-rel-bb.i6.i.us| ?A ?B ?C ?D ?E ?F ?G ?H ?M ?I ?N ?O ?P ?Q ?R ?S ?J ?T ?U ?V ?W ?X ?Y ?Z ?K ?L)))
(=> (and $x195018 (= ?A1 true)) $x195018)))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Real) (?A1 Real) (?B1 Real) (?C1 Real) (?D1 Real) (?E1 Real) (?F1 Real) )(let (($x904112 (|cp-rel-__UFO__0| ?A ?B ?C ?D ?E ?F ?G ?H ?Z ?I ?A1 ?B1 ?C1 ?D1 ?E1 ?F1 ?J ?K ?L ?M ?N ?O ?P ?Q ?U ?Y)))
(let (($x406326 (not ?R)))
(let (($x503267 (or $x406326 (and ?S ?T (not ?U)))))
(let (($x446832 (or $x406326 ?T)))
(let (($x200683 (not (= ?Y true))))
(let (($x210783 (= ?U (= ?L 0.0))))
(let (($x543731 (= ?Y (= ?M 0.0))))
(let (($x188966 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x419439 (and $x188966 $x543731 $x210783 $x200683 (= ?W true) (or (not ?W) ?X) (or (not ?W) (and ?R ?X (not ?V))) $x446832 $x503267 (= ?V (or ?Y ?U)))))
(=> $x419439 $x904112)))))))))))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Bool) (?L Bool) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Real) (?S Real) (?T Real) (?U Real) (?V Real) (?W Real) (?X Real) (?Y Real) (?Z Real) (?A1 Bool) )(let (($x692074 (|cp-rel-__UFO__0| ?A ?B ?C ?D ?E ?F ?G ?H ?M ?I ?N ?O ?P ?Q ?R ?S ?J ?T ?U ?V ?W ?X ?Y ?Z ?K ?L)))
(=> (and $x692074 (= ?A1 true)) $x692074)))
)
(assert (forall ((?A Real) (?B Real) (?C Real) (?D Real) (?E Real) (?F Real) (?G Real) (?H Real) (?I Real) (?J Bool) (?K Real) (?L Real) (?M Real) (?N Real) (?O Real) (?P Real) (?Q Real) (?R Bool) (?S Bool) (?T Bool) (?U Bool) (?V Bool) (?W Bool) (?X Bool) (?Y Bool) (?Z Bool) (?A1 Bool) (?B1 Bool) (?C1 Bool) (?D1 Bool) (?E1 Bool) (?F1 Bool) (?G1 Bool) (?H1 Bool) (?I1 Bool) (?J1 Bool) (?K1 Bool) (?L1 Bool) (?M1 Bool) (?N1 Bool) (?O1 Bool) (?P1 Bool) (?Q1 Bool) (?R1 Real) (?S1 Real) (?T1 Real) (?U1 Real) (?V1 Real) (?W1 Real) (?X1 Real) (?Y1 Real) (?Z1 Real) (?A2 Real) (?B2 Bool) (?C2 Bool) (?D2 Bool) (?E2 Bool) (?F2 Bool) (?G2 Bool) (?H2 Bool) (?I2 Bool) (?J2 Bool) (?K2 Bool) (?L2 Bool) (?M2 Bool) (?N2 Bool) (?O2 Bool) (?P2 Real) (?Q2 Real) (?R2 Bool) (?S2 Bool) (?T2 Real) (?U2 Bool) (?V2 Bool) (?W2 Bool) (?X2 Bool) (?Y2 Bool) )(let (($x318858 (= ?O2 (and ?X2 ?Y2))))
(let (($x812706 (or (not ?R) (and ?S ?T (not ?U)))))
(let (($x859705 (or (not ?R) ?T)))
(let (($x265135 (or (not ?V) (and ?R ?W ?X))))
(let (($x239371 (or (not ?V) ?W)))
(let (($x329268 (or (not ?Y) (and ?R ?Z (not ?X)))))
(let (($x546681 (or (not ?Y) ?Z)))
(let (($x637516 (not ?A1)))
(let (($x547393 (or $x637516 (and ?V ?B1 ?C1))))
(let (($x324470 (or $x637516 ?B1)))
(let (($x426152 (not ?D1)))
(let (($x258686 (or $x426152 (and ?Y ?E1 ?C1))))
(let (($x303933 (or $x426152 ?E1)))
(let (($x618592 (not ?F1)))
(let (($x244211 (or $x618592 (and ?D1 ?G1 ?U) (and ?A1 ?H1 ?U) (and ?S ?I1 ?U))))
(let (($x524873 (or $x618592 (and ?G1 (not ?H1) (not ?I1)) (and ?H1 (not ?G1) (not ?I1)) (and ?I1 (not ?G1) (not ?H1)))))
(let (($x325721 (or (not ?J1) (and ?F1 ?K1 (not ?L1)))))
(let (($x292746 (or (not ?J1) ?K1)))
(let (($x544366 (not ?M1)))
(let (($x209412 (or $x544366 (and ?J1 ?N1 (not ?O1)))))
(let (($x413940 (or $x544366 ?N1)))
(let (($x368647 (>= ?Z1 ?Q)))
(let (($x563306 (<= ?Z1 ?Q)))
(let (($x926256 (>= ?Y1 ?P)))
(let (($x129433 (<= ?Y1 ?P)))
(let (($x400033 (>= ?W1 ?O)))
(let (($x36993 (<= ?W1 ?O)))
(let (($x226518 (>= ?V1 ?N)))
(let (($x185250 (<= ?V1 ?N)))
(let (($x371621 (>= ?T1 ?M)))
(let (($x281482 (<= ?T1 ?M)))
(let (($x277990 (>= ?S1 ?L)))
(let (($x150804 (<= ?S1 ?L)))
(let (($x60692 (>= ?R1 ?K)))
(let (($x322816 (<= ?R1 ?K)))
(let (($x922091 (not ?U)))
(let (($x583402 (and ?A1 ?E2 $x922091 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x549899 (and ?D1 ?D2 $x922091 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x842132 (and ?F1 ?C2 ?L1 $x322816 $x60692 $x150804 $x277990 $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x724219 (and ?J1 ?B2 ?O1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) $x281482 $x371621 $x185250 $x226518 $x36993 $x400033 $x129433 $x926256 $x563306 $x368647)))
(let (($x86256 (and ?M1 ?Q1 (<= ?R1 1.0) (>= ?R1 1.0) (<= ?S1 2.0) (>= ?S1 2.0) (<= ?T1 ?U1) (>= ?T1 ?U1) (<= ?V1 0.0) (>= ?V1 0.0) (<= ?W1 ?X1) (>= ?W1 ?X1) (<= ?Y1 ?X1) (>= ?Y1 ?X1) (<= ?Z1 ?A2) (>= ?Z1 ?A2))))
(let (($x568487 (not ?P1)))
(let (($x857370 (or $x568487 $x86256 $x724219 $x842132 $x549899 $x583402)))
(let (($x335020 (or $x568487 (and ?Q1 (not ?B2) (not ?C2) (not ?D2) (not ?E2)) (and ?B2 (not ?Q1) (not ?C2) (not ?D2) (not ?E2)) (and ?C2 (not ?Q1) (not ?B2) (not ?D2) (not ?E2)) (and ?D2 (not ?Q1) (not ?B2) (not ?C2) (not ?E2)) (and ?E2 (not ?Q1) (not ?B2) (not ?C2) (not ?D2)))))
(let (($x227050 (or (not ?F2) (and ?P1 ?G2 ?H2))))
(let (($x536746 (or (not ?F2) ?G2)))
(let (($x525454 (not ?I2)))
(let (($x820720 (or $x525454 (and ?F2 ?J2 (not ?K2)))))
(let (($x627254 (or $x525454 ?J2)))
(let (($x861486 (or (not ?L2) (and ?I2 ?M2 (not ?N2)))))
(let (($x586546 (or (not ?L2) ?M2)))
(let (($x25654 (= ?L2 true)))
(let (($x229951 (= ?U (= ?L 0.0))))
(let (($x461636 (= ?C1 (= ?M 0.0))))
(let (($x577317 (= ?X (or ?C1 ?U))))
(let (($x585400 (= ?L1 (= ?Q2 0.0))))
(let (($x448973 (= ?R2 (not (= ?K 1.0)))))
(let (($x733963 (= ?S2 (= ?N 0.0))))
(let (($x277277 (= ?O1 (and ?S2 ?R2))))
(let (($x202897 (= ?A2 (+ 1.0 ?Q))))
(let (($x860215 (= ?U1 (ite ?J 0.0 ?M))))
(let (($x362911 (= ?H2 (= ?T1 0.0))))
(let (($x546732 (= ?K2 (= ?T2 0.0))))
(let (($x93346 (= ?U2 (not (= ?I 1.0)))))
(let (($x633360 (= ?V2 (= ?V1 1.0))))
(let (($x354694 (= ?N2 (and ?V2 ?U2))))
(let (($x282575 (= ?W2 (= ?R1 1.0))))
(let (($x386258 (= ?P2 (ite ?W2 0.0 ?S1))))
(let (($x213452 (= ?X2 (= ?Y1 ?W1))))
(let (($x105657 (= ?Y2 (= ?Z1 ?H))))
(let (($x644165 (|cp-rel-bb.i6.i.outer| ?A ?B ?C ?D ?E ?F ?G ?H ?I ?J ?K ?L ?M ?N ?O ?P ?Q)))
(let (($x405483 (and $x644165 $x105657 $x213452 $x386258 $x282575 $x354694 $x633360 $x93346 $x546732 $x362911 $x860215 $x202897 $x277277 $x733963 $x448973 $x585400 $x577317 $x461636 $x229951 (not (= ?O2 true)) $x25654 $x586546 $x861486 $x627254 $x820720 $x536746 $x227050 $x335020 $x857370 $x413940 $x209412 $x292746 $x325721 $x524873 $x244211 $x303933 $x258686 $x324470 $x547393 $x546681 $x329268 $x239371 $x265135 $x859705 $x812706 $x318858)))
(=> $x405483 |cp-rel-UnifiedReturnBlock|))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
(assert (not cp-rel-UnifiedReturnBlock))
(check-sat)
