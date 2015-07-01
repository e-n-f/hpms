
// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Source Sans Pro Regular';
@sans_italic: 'Source Sans Pro Italic';
@sans_bold: 'Source Sans Pro Semibold';

// Common Colors //
@land: #fff;
@water: #c3e6ff;

Map { background-color: #000; }

#mapbox_satellite_full {
   raster-opacity: .3;
   image-filters: gray();
}
#mapbox_satellite_watermask {
   raster-opacity: 1;
   image-filters: gray();
}


// Roads & Railways //

#tunnel { opacity: 0.5; }

#road,
#tunnel,
#bridge {
  ['mapnik::geometry_type'=2] {
    line-color: #0000FF;
    line-width: 0.5;
    [class='motorway'],
    [class='main'] {
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
    }
    [class='street'],
    [class='street_limited'] {
      [zoom>=14] { line-width: 1; }
      [zoom>=16] { line-width: 2; }
    }
    [class='street_limited'] { line-dasharray: 4,1; }
  }
}

#ahpms {

   line-color: #FFFF00;

      line-width: 0.5;
      [zoom>=10] { line-width: 1; }
      [zoom>=12] { line-width: 2; }
      [zoom>=14] { line-width: 3; }
      [zoom>=16] { line-width: 5; }
  
  [zoom = 12] {
    line-width: .25;
    [AADT_VN >= 5000] { line-width: .25; }
    [AADT_VN >= 7000] { line-width: .5; }
    [AADT_VN >= 10000] { line-width: 1; }
    [AADT_VN >= 14000] { line-width: 1.5; }
    [AADT_VN >= 20000] { line-width: 2; }
    [AADT_VN >= 28000] { line-width: 2.5; }
    [AADT_VN >= 40000] { line-width: 3; }
    [AADT_VN >= 56000] { line-width: 3.5; }
    [AADT_VN >= 80000] { line-width: 4; }
    [AADT_VN >= 112000] { line-width: 4.5; }
    [AADT_VN >= 160000] { line-width: 5; }
    [AADT_VN >= 224000] { line-width: 5.5; }
    [AADT_VN >= 320000] { line-width: 6; }
  }
  
}

#hpms {
  
  line-color: #FFFF00;
  line-cap: round;
  
  [zoom >= 14] {
  text-placement: line;
  text-face-name: @sans_bold;
  text-avoid-edges: true;
  text-name: '[AADT_VN]';
  text-size: 12;
  text-min-distance: 200;
  //text-dy: 12;
  text-fill: #FFF;
  text-halo-fill: #000;
  text-halo-radius: 2;
  }

  [zoom >= 0] {
  line-width: 0.0107304956044979;
  [AADT_VN >= 5000] { line-width: 0.0151752124148658; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0214609912089958; }
  [AADT_VN >= 10000] { line-width: 0.0303504248297316; }
  [AADT_VN >= 14142.135623731] { line-width: 0.0429219824179916; }
  [AADT_VN >= 20000] { line-width: 0.0607008496594632; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.0858439648359831; }
  [AADT_VN >= 40000] { line-width: 0.121401699318926; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.171687929671966; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.242803398637853; }
  [AADT_VN >= 113137.084989848] { line-width: 0.343375859343933; }
  [AADT_VN >= 160000] { line-width: 0.485606797275706; }
  [AADT_VN >= 226274.169979695] { line-width: 0.686751718687865; }
}
[zoom >= 1] {
  line-width: 0.0139496442858473;
  [AADT_VN >= 5000] { line-width: 0.0197277761393255; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0278992885716945; }
  [AADT_VN >= 10000] { line-width: 0.0394555522786511; }
  [AADT_VN >= 14142.135623731] { line-width: 0.055798577143389; }
  [AADT_VN >= 20000] { line-width: 0.0789111045573022; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.111597154286778; }
  [AADT_VN >= 40000] { line-width: 0.157822209114604; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.223194308573556; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.315644418229209; }
  [AADT_VN >= 113137.084989848] { line-width: 0.446388617147112; }
  [AADT_VN >= 160000] { line-width: 0.631288836458418; }
  [AADT_VN >= 226274.169979695] { line-width: 0.892777234294225; }
}
[zoom >= 2] {
  line-width: 0.0181345375716014;
  [AADT_VN >= 5000] { line-width: 0.0256461089811232; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0362690751432029; }
  [AADT_VN >= 10000] { line-width: 0.0512922179622464; }
  [AADT_VN >= 14142.135623731] { line-width: 0.0725381502864057; }
  [AADT_VN >= 20000] { line-width: 0.102584435924493; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.145076300572811; }
  [AADT_VN >= 40000] { line-width: 0.205168871848986; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.290152601145623; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.410337743697971; }
  [AADT_VN >= 113137.084989848] { line-width: 0.580305202291246; }
  [AADT_VN >= 160000] { line-width: 0.820675487395943; }
  [AADT_VN >= 226274.169979695] { line-width: 1.16061040458249; }
}
[zoom >= 3] {
  line-width: 0.0235748988430819;
  [AADT_VN >= 5000] { line-width: 0.0333399416754601; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0471497976861637; }
  [AADT_VN >= 10000] { line-width: 0.0666798833509203; }
  [AADT_VN >= 14142.135623731] { line-width: 0.0942995953723274; }
  [AADT_VN >= 20000] { line-width: 0.133359766701841; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.188599190744655; }
  [AADT_VN >= 40000] { line-width: 0.266719533403681; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.37719838148931; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.533439066807363; }
  [AADT_VN >= 113137.084989848] { line-width: 0.75439676297862; }
  [AADT_VN >= 160000] { line-width: 1.06687813361473; }
  [AADT_VN >= 226274.169979695] { line-width: 1.50879352595724; }
}
[zoom >= 4] {
  line-width: 0.0306473684960064;
  [AADT_VN >= 5000] { line-width: 0.0433419241780982; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0612947369920128; }
  [AADT_VN >= 10000] { line-width: 0.0866838483561964; }
  [AADT_VN >= 14142.135623731] { line-width: 0.122589473984026; }
  [AADT_VN >= 20000] { line-width: 0.173367696712393; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.245178947968051; }
  [AADT_VN >= 40000] { line-width: 0.346735393424786; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.490357895936103; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.693470786849572; }
  [AADT_VN >= 113137.084989848] { line-width: 0.980715791872206; }
  [AADT_VN >= 160000] { line-width: 1.38694157369914; }
  [AADT_VN >= 226274.169979695] { line-width: 1.96143158374441; }
}
[zoom >= 5] {
  line-width: 0.0398415790448083;
  [AADT_VN >= 5000] { line-width: 0.0563445014315277; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.0796831580896167; }
  [AADT_VN >= 10000] { line-width: 0.112689002863055; }
  [AADT_VN >= 14142.135623731] { line-width: 0.159366316179233; }
  [AADT_VN >= 20000] { line-width: 0.225378005726111; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.318732632358467; }
  [AADT_VN >= 40000] { line-width: 0.450756011452221; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.637465264716934; }
  [AADT_VN >= 80000.0000000001] { line-width: 0.901512022904443; }
  [AADT_VN >= 113137.084989848] { line-width: 1.27493052943387; }
  [AADT_VN >= 160000] { line-width: 1.80302404580889; }
  [AADT_VN >= 226274.169979695] { line-width: 2.54986105886774; }
}
[zoom >= 6] {
  line-width: 0.0517940527582508;
  [AADT_VN >= 5000] { line-width: 0.073247851860986; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.103588105516502; }
  [AADT_VN >= 10000] { line-width: 0.146495703721972; }
  [AADT_VN >= 14142.135623731] { line-width: 0.207176211033003; }
  [AADT_VN >= 20000] { line-width: 0.292991407443944; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.414352422066007; }
  [AADT_VN >= 40000] { line-width: 0.585982814887888; }
  [AADT_VN >= 56568.5424949238] { line-width: 0.828704844132014; }
  [AADT_VN >= 80000.0000000001] { line-width: 1.17196562977578; }
  [AADT_VN >= 113137.084989848] { line-width: 1.65740968826403; }
  [AADT_VN >= 160000] { line-width: 2.34393125955155; }
  [AADT_VN >= 226274.169979695] { line-width: 3.31481937652806; }
}
[zoom >= 7] {
  line-width: 0.0673322685857261;
  [AADT_VN >= 5000] { line-width: 0.0952222074192817; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.134664537171452; }
  [AADT_VN >= 10000] { line-width: 0.190444414838564; }
  [AADT_VN >= 14142.135623731] { line-width: 0.269329074342904; }
  [AADT_VN >= 20000] { line-width: 0.380888829677127; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.538658148685809; }
  [AADT_VN >= 40000] { line-width: 0.761777659354254; }
  [AADT_VN >= 56568.5424949238] { line-width: 1.07731629737162; }
  [AADT_VN >= 80000.0000000001] { line-width: 1.52355531870851; }
  [AADT_VN >= 113137.084989848] { line-width: 2.15463259474324; }
  [AADT_VN >= 160000] { line-width: 3.04711063741702; }
  [AADT_VN >= 226274.169979695] { line-width: 4.30926518948647; }
}
[zoom >= 8] {
  line-width: 0.0875319491614439;
  [AADT_VN >= 5000] { line-width: 0.123788869645066; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.175063898322888; }
  [AADT_VN >= 10000] { line-width: 0.247577739290133; }
  [AADT_VN >= 14142.135623731] { line-width: 0.350127796645776; }
  [AADT_VN >= 20000] { line-width: 0.495155478580265; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.700255593291552; }
  [AADT_VN >= 40000] { line-width: 0.990310957160531; }
  [AADT_VN >= 56568.5424949238] { line-width: 1.4005111865831; }
  [AADT_VN >= 80000.0000000001] { line-width: 1.98062191432106; }
  [AADT_VN >= 113137.084989848] { line-width: 2.80102237316621; }
  [AADT_VN >= 160000] { line-width: 3.96124382864212; }
  [AADT_VN >= 226274.169979695] { line-width: 5.60204474633241; }
}
[zoom >= 9] {
  line-width: 0.113791533909877;
  [AADT_VN >= 5000] { line-width: 0.160925530538586; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.227583067819754; }
  [AADT_VN >= 10000] { line-width: 0.321851061077172; }
  [AADT_VN >= 14142.135623731] { line-width: 0.455166135639509; }
  [AADT_VN >= 20000] { line-width: 0.643702122154345; }
  [AADT_VN >= 28284.2712474619] { line-width: 0.910332271279017; }
  [AADT_VN >= 40000] { line-width: 1.28740424430869; }
  [AADT_VN >= 56568.5424949238] { line-width: 1.82066454255803; }
  [AADT_VN >= 80000.0000000001] { line-width: 2.57480848861738; }
  [AADT_VN >= 113137.084989848] { line-width: 3.64132908511607; }
  [AADT_VN >= 160000] { line-width: 5.14961697723476; }
  [AADT_VN >= 226274.169979695] { line-width: 7.28265817023214; }
}
[zoom >= 10] {
  line-width: 0.14792899408284;
  [AADT_VN >= 5000] { line-width: 0.209203189700162; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.295857988165681; }
  [AADT_VN >= 10000] { line-width: 0.418406379400324; }
  [AADT_VN >= 14142.135623731] { line-width: 0.591715976331361; }
  [AADT_VN >= 20000] { line-width: 0.836812758800648; }
  [AADT_VN >= 28284.2712474619] { line-width: 1.18343195266272; }
  [AADT_VN >= 40000] { line-width: 1.6736255176013; }
  [AADT_VN >= 56568.5424949238] { line-width: 2.36686390532545; }
  [AADT_VN >= 80000.0000000001] { line-width: 3.34725103520259; }
  [AADT_VN >= 113137.084989848] { line-width: 4.73372781065089; }
  [AADT_VN >= 160000] { line-width: 6.69450207040519; }
  [AADT_VN >= 226274.169979695] { line-width: 9.46745562130178; }
}
[zoom >= 11] {
  line-width: 0.192307692307692;
  [AADT_VN >= 5000] { line-width: 0.271964146610211; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.384615384615385; }
  [AADT_VN >= 10000] { line-width: 0.543928293220421; }
  [AADT_VN >= 14142.135623731] { line-width: 0.769230769230769; }
  [AADT_VN >= 20000] { line-width: 1.08785658644084; }
  [AADT_VN >= 28284.2712474619] { line-width: 1.53846153846154; }
  [AADT_VN >= 40000] { line-width: 2.17571317288169; }
  [AADT_VN >= 56568.5424949238] { line-width: 3.07692307692308; }
  [AADT_VN >= 80000.0000000001] { line-width: 4.35142634576337; }
  [AADT_VN >= 113137.084989848] { line-width: 6.15384615384616; }
  [AADT_VN >= 160000] { line-width: 8.70285269152675; }
  [AADT_VN >= 226274.169979695] { line-width: 12.3076923076923; }
}
[zoom >= 12] {
  line-width: 0.25;
  [AADT_VN >= 5000] { line-width: 0.353553390593274; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.5; }
  [AADT_VN >= 10000] { line-width: 0.707106781186548; }
  [AADT_VN >= 14142.135623731] { line-width: 1; }
  [AADT_VN >= 20000] { line-width: 1.4142135623731; }
  [AADT_VN >= 28284.2712474619] { line-width: 2; }
  [AADT_VN >= 40000] { line-width: 2.82842712474619; }
  [AADT_VN >= 56568.5424949238] { line-width: 4; }
  [AADT_VN >= 80000.0000000001] { line-width: 5.65685424949238; }
  [AADT_VN >= 113137.084989848] { line-width: 8.00000000000001; }
  [AADT_VN >= 160000] { line-width: 11.3137084989848; }
  [AADT_VN >= 226274.169979695] { line-width: 16; }
}
[zoom >= 13] {
  line-width: 0.325;
  [AADT_VN >= 5000] { line-width: 0.459619407771256; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.65; }
  [AADT_VN >= 10000] { line-width: 0.919238815542512; }
  [AADT_VN >= 14142.135623731] { line-width: 1.3; }
  [AADT_VN >= 20000] { line-width: 1.83847763108502; }
  [AADT_VN >= 28284.2712474619] { line-width: 2.6; }
  [AADT_VN >= 40000] { line-width: 3.67695526217005; }
  [AADT_VN >= 56568.5424949238] { line-width: 5.2; }
  [AADT_VN >= 80000.0000000001] { line-width: 7.3539105243401; }
  [AADT_VN >= 113137.084989848] { line-width: 10.4; }
  [AADT_VN >= 160000] { line-width: 14.7078210486802; }
  [AADT_VN >= 226274.169979695] { line-width: 20.8; }
}
[zoom >= 14] {
  line-width: 0.4225;
  [AADT_VN >= 5000] { line-width: 0.597505230102633; }
  [AADT_VN >= 7071.06781186548] { line-width: 0.845; }
  [AADT_VN >= 10000] { line-width: 1.19501046020527; }
  [AADT_VN >= 14142.135623731] { line-width: 1.69; }
  [AADT_VN >= 20000] { line-width: 2.39002092041053; }
  [AADT_VN >= 28284.2712474619] { line-width: 3.38; }
  [AADT_VN >= 40000] { line-width: 4.78004184082106; }
  [AADT_VN >= 56568.5424949238] { line-width: 6.76; }
  [AADT_VN >= 80000.0000000001] { line-width: 9.56008368164213; }
  [AADT_VN >= 113137.084989848] { line-width: 13.52; }
  [AADT_VN >= 160000] { line-width: 19.1201673632843; }
  [AADT_VN >= 226274.169979695] { line-width: 27.04; }
}
[zoom >= 15] {
  line-width: 0.54925;
  [AADT_VN >= 5000] { line-width: 0.776756799133423; }
  [AADT_VN >= 7071.06781186548] { line-width: 1.0985; }
  [AADT_VN >= 10000] { line-width: 1.55351359826685; }
  [AADT_VN >= 14142.135623731] { line-width: 2.197; }
  [AADT_VN >= 20000] { line-width: 3.10702719653369; }
  [AADT_VN >= 28284.2712474619] { line-width: 4.394; }
  [AADT_VN >= 40000] { line-width: 6.21405439306738; }
  [AADT_VN >= 56568.5424949238] { line-width: 8.78800000000001; }
  [AADT_VN >= 80000.0000000001] { line-width: 12.4281087861348; }
  [AADT_VN >= 113137.084989848] { line-width: 17.576; }
  [AADT_VN >= 160000] { line-width: 24.8562175722695; }
  [AADT_VN >= 226274.169979695] { line-width: 35.152; }
}
[zoom >= 16] {
  line-width: 0.714025;
  [AADT_VN >= 5000] { line-width: 1.00978383887345; }
  [AADT_VN >= 7071.06781186548] { line-width: 1.42805; }
  [AADT_VN >= 10000] { line-width: 2.0195676777469; }
  [AADT_VN >= 14142.135623731] { line-width: 2.8561; }
  [AADT_VN >= 20000] { line-width: 4.0391353554938; }
  [AADT_VN >= 28284.2712474619] { line-width: 5.7122; }
  [AADT_VN >= 40000] { line-width: 8.0782707109876; }
  [AADT_VN >= 56568.5424949238] { line-width: 11.4244; }
  [AADT_VN >= 80000.0000000001] { line-width: 16.1565414219752; }
  [AADT_VN >= 113137.084989848] { line-width: 22.8488; }
  [AADT_VN >= 160000] { line-width: 32.3130828439504; }
  [AADT_VN >= 226274.169979695] { line-width: 45.6976; }
}
[zoom >= 17] {
  line-width: 0.9282325;
  [AADT_VN >= 5000] { line-width: 1.31271899053548; }
  [AADT_VN >= 7071.06781186548] { line-width: 1.856465; }
  [AADT_VN >= 10000] { line-width: 2.62543798107097; }
  [AADT_VN >= 14142.135623731] { line-width: 3.71293; }
  [AADT_VN >= 20000] { line-width: 5.25087596214194; }
  [AADT_VN >= 28284.2712474619] { line-width: 7.42586; }
  [AADT_VN >= 40000] { line-width: 10.5017519242839; }
  [AADT_VN >= 56568.5424949238] { line-width: 14.85172; }
  [AADT_VN >= 80000.0000000001] { line-width: 21.0035038485678; }
  [AADT_VN >= 113137.084989848] { line-width: 29.70344; }
  [AADT_VN >= 160000] { line-width: 42.0070076971355; }
  [AADT_VN >= 226274.169979695] { line-width: 59.40688; }
}
[zoom >= 18] {
  line-width: 1.20670225;
  [AADT_VN >= 5000] { line-width: 1.70653468769613; }
  [AADT_VN >= 7071.06781186548] { line-width: 2.4134045; }
  [AADT_VN >= 10000] { line-width: 3.41306937539226; }
  [AADT_VN >= 14142.135623731] { line-width: 4.826809; }
  [AADT_VN >= 20000] { line-width: 6.82613875078452; }
  [AADT_VN >= 28284.2712474619] { line-width: 9.653618; }
  [AADT_VN >= 40000] { line-width: 13.652277501569; }
  [AADT_VN >= 56568.5424949238] { line-width: 19.307236; }
  [AADT_VN >= 80000.0000000001] { line-width: 27.3045550031381; }
  [AADT_VN >= 113137.084989848] { line-width: 38.614472; }
  [AADT_VN >= 160000] { line-width: 54.6091100062762; }
  [AADT_VN >= 226274.169979695] { line-width: 77.2289440000001; }
}

  


  }