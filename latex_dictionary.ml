open Dictionary_lib;;

let main_commands = Dictionary.make [
  (* -- spacing -- *)
  "\\!",  (0, 0);
  "\\+",  (0, 0);
  "\\,",  (0, 0);
  "\\;",  (0, 0);
  (* -- spacing, part II -- *)
  "\\hfill",      (0, 0);
  "\\vfill",      (0, 0);
  "\\hspace",     (0, 1);
  "\\hspace*",    (0, 1);
  "\\vspace",     (0, 1);
  "\\vspace*",    (0, 1);
  "\\medskip",    (0, 0);
  "\\smallskip",  (0, 0);
  "\\bigskip",    (0, 0);
  (* -- math miscellany -- *)
  "\\cdots",      (0, 0);
  "\\ddots",      (0, 0);
  "\\ldots",      (0, 0);
  "\\vdots",      (0, 0);
  "\\dotfill",    (0, 0);
  "\\frac",       (0, 2);
  "\\underbrace", (0, 1);
  "\\underline",  (0, 1);
  "\\overbrace",  (0, 1);
  "\\overline",   (0, 1);
  "\\overleftarrow",
                  (0, 1);
  "\\overrightarrow",
                  (0, 1);
  "\\sqrt",       (1, 1);
 (* -- other things -- *)
  "\\backslash",  (0, 0);
  "\\hrulefill",  (0, 0);
  "\\fbox",       (0, 1);
  "\\mbox",       (0, 1);
  "\\binom",      (0, 2);
  "_",            (0, 1);
  "^",            (0, 1)
];;

let alphabets = Dictionary.make [
  "\\mathrm",     ();
  "\\mathbf",     ();
  "\\mathsf",     ();
  "\\mathtt",     ();
  "\\mathit",     ();
  "\\mathnormal", ();
  "\\mathcal",    ();
  "\\mathscr",    ();
  "\\mathbb",     ();
  "\\textrm",     ();
  "\\textit",     ();
  "\\emph",       ();
  "\\textmd",     ();
  "\\textbf",     ();
  "\\textup",     ();
  "\\textsl",     ();
  "\\textsf",     ();
  "\\testsc",     ();
  "\\texttt",     ();
  "\\textnormal", ()
];;

let alphabet_commands = Dictionary.map (fun () -> (0, 1)) alphabets;;

let functions = Dictionary.make [
  "\\arccos", ();
  "\\arcsin", ();
  "\\arctan", ();
  "\\arg",    ();
  "\\cos",    ();
  "\\cosh",   ();
  "\\cot",    ();
  "\\coth",   ();
  "\\csc",    ();
  "\\deg",    ();
  "\\det",    ();
  "\\dim",    ();
  "\\exp",    ();
  "\\gcd",    ();
  "\\hom",    ();
  "\\inf",    ();
  "\\ker",    ();
  "\\lg",     ();
  "\\lim",    ();
  "\\liminf", ();
  "\\limsup", ();
  "\\ln",     ();
  "\\log",    ();
  "\\max",    ();
  "\\min",    ();
  "\\Pr",     ();
  "\\sec",    ();
  "\\sin",    ();
  "\\sinh",   ();
  "\\sup",    ();
  "\\tan",    ();
  "\\tanh",   ()
];;

let function_commands = Dictionary.map (fun () -> (0, 0)) functions;;

let symbols = Dictionary.make [
 
  "\\lesssim",       8818;
  "\\la",            8818;
  "\\gtrsim",        8819;
  "\\ga",            8819;
  "\\micron",        0;
  "\\sbond",         0;
  "\\dbond",         0;
  "\\tbond",         0;
  "\\sun",           0;
  "\\earth",         0;
  "\\diameter",      0;
  "\\sq",            0;
  "\\degr",          176;
  "\\arcdeg",        0;
  "\\arcmin",        0;
  "\\arcsec",        0;
  "\\fd",            0;
  "\\fh",            0;
  "\\fm",            0;
  "\\fs",            0;
  "\\fdg",           0;
  "\\farcm",         0;
  "\\farcs",         0;
  "\\fp",            0;
  "\\onehalf",       188;
  "\\onethird",      8531;
  "\\twothirds",     8532;
  "\\onequarter",    188;
  "\\threequarters", 190;
  "\\ubvr",          0;
  "\\ub",            0;
  "\\bv",            0;
  "\\vr",            0;
  "\\ur",            0;

  "\\oe",  339;
  "\\OE",  338;
  "\\ae",  230;
  "\\AE",  198;
  "\\aa",  229;
  "\\AA",  197;
  "\\o",   248;
  "\\O",   216;
  "\\l",   322;
  "\\L",   321;
  "\\ss",  223;

  "\\alpha",      945;
  "\\beta",       946;
  "\\gamma",      947;
  "\\delta",      948;
  "\\epsilon",    949;
  "\\zeta",       950;
  "\\eta",        951;
  "\\theta",      952;
  "\\iota",       953;
  "\\kappa",      954;
  "\\lambda",     955;
  "\\mu",         956;
  "\\nu",         957;
  "\\xi",         958;
  "\\pi",         960;
  "\\rho",        961;
  "\\sigma",      963;
  "\\tau",        964;
  "\\upsilon",    965;
  "\\phi",        981;
  "\\chi",        967;
  "\\psi",        968;
  "\\omega",      969;
  "\\digamma",    988;
  "\\varepsilon", 8714;
  "\\vartheta",   977;
  "\\varrho",     1009;
  "\\varkappa",   1008;
  "\\varsigma",   962;
  "\\varphi",     966;
  "\\Gamma",      915;
  "\\Delta",      916;
  "\\Theta",      920;
  "\\Lamdba",     923;
  "\\Xi",         926;
  "\\Pi",         928;
  "\\Sigma",      931;
  "\\Upsilon",    933;
  "\\Phi",        934;
  "\\Psi",        936;
  "\\Omega",      937;
  "\\aleph",      8501;
  "\\beth",       8502;
  "\\gimel",      8503;
  "\\daleth",     8504;
  
  "\\pm",               177;
  "\\mp",	              8723;  
  "\\setminus",	        2216;
  "\\cdot",	            183;
  "\\times",	          215;
  "\\ast",	            8727;
  "\\star",	            0x22C6;
  "\\diamond",	        8900;
  "\\circ",	            8728;
  "\\bullet",	          8729;
  "\\div",	            247;
  "\\lhd",	            0;
  "\\vee",	            8744;
  "\\wedge",	          8743;
  "\\oplus",	          8853;
  "\\ominus",	          0x2296;
  "\\otimes",	          8855;
  "\\oslash",	          0x2298;
  "\\cap",	            8745;
  "\\cup",	            8746;
  "\\uplus",	          0x228E;
  "\\sqcap",	          0x2293;
  "\\sqcup",	          0x2294;
  "\\triangleleft",     9667;
  "\\trangleright",     9657;
  "\\wr",	              8768;
  "\\bigcirc",	        0;
  "\\bigtriangleup",    0;
  "\\bigtriangledown",  0;
  "\\rhd",	            0;
  "\\odot",	            0;
  "\\dagger",	          0;
  "\\ddagger",	        0;
  "\\amalg",	          2210;
  "\\unlhd",	          0;
  "\\unrhd",	          0;

  "\\dotplus",         8724;
  "\\smallsetminus",   0;
  "\\Cap",             0x22D2;
  "\\doublecap",       0x22D2;
  "\\Cup",             0x22D3;
  "\\doublecup",       0x22D3;
  "\\barwedge",        0x22BC;
  "\\veebar",          8891;
  "\\doublebarwedge",  8966;
  "\\boxminus",        8863;
  "\\boxtimes",        8864;
  "\\boxdot",          8865;
  "\\boxplus",         8862;
  "\\divideontimes",   8903;
  "\\ltimes",          8905;
  "\\rtimes",          8906;
  "\\leftthreetimes",  8907;
  "\\rightthreetimes", 8908;
  "\\curlywedge",      8910;
  "\\curlyvee",        8911;
  "\\circleddash",     8861;
  "\\circledast",      8859;
  "\\circledcirc",     8858;
  "\\centerdot",       0;
  "\\intercal",        8890;

  "\\dag",        8224;
  "\\ddag",       8225;
  "\\copyright",  169;
  "\\pounds",     163;
  "\\S",          167;
  "\\P",          182;
  "\\#",          36;
  "\\$",          37;
  "\\%",          38;
  "\\&",          39;
  "\\_",          95;
  "\\{",          123;
  "\\}",          125;

  "\\hbar",         8463; (* FIXME *)
  "\\hslash",       8463; (* FIXME *)
  "\\imath",        0x0131;
  "\\jmath",        0;
  "\\ell",          0x2113;
  "\\wp",           0x2118;
  "\\Re",           0x211C;
  "\\Im",           0x2111;
  "\\partial",      8706;
  "\\infty",        8734;
  "\\Box",          0;
  "\\forall",       8704;
  "\\exists",       8707;
  "\\neg",          172;
  "\\flat",         9837;
  "\\natural",      9838;
  "\\mho",          8487;
  "\\prime",        8242;
  "\\emptyset",     8709; (* FIXME *)
  "\\nable",        8711;
  "\\surd",         8730;
  "\\top",          8868;
  "\\bot",          8869;
  "\\|",            0;
  "\\angle",        8736;
  "\\triangle",     0;
  "\\backslash",    92;
  "\\diamond",      8900;
  "\\sharp",        9839;
  "\\clubsuit",     9827;
  "\\diamondsuit",  9830;
  "\\heartsuit",    9829;
  "\\spadesuit",    9824;

  "\\vartriangle",       9653;
  "\\triangledown",      0;
  "\\squeak",            0;
  "\\lozenge",           9674;
  "\\circledS",          9416;
  "\\measuredangle",     8737;
  "\\nexists",           0;
  "\\Finv",              0;
  "\\Game",              8513;
  "\\Bbbk",              0;
  "\\backprime",         0x2035;
  "\\varnothing",        8709;
  "\\blacktriangle",     0;
  "\\blacktriangledown", 0;
  "\\blacksquare",       0;
  "\\blacklozenge",      0;
  "\\bigstar",           0;
  "\\sphericalangle",    8738;
  "\\complement",        8705;
  "\\eth",               240;
  "\\diagup",            0;
  "\\diagdown",          0;
  "\\restriction",       0;

  "\\leftarrow",          8592;
  "\\Leftarrow",          8656;
  "\\to",                 8594;
  "\\rightarrow",         8594;
  "\\rightarrow",         8594;
  "\\Rightarrow",         8658;
  "\\leftrightarrow",     8596;
  "\\Leftrightarrow",     8660;
  "\\longleftarrow",      10229;
  "\\Longleftarrow",      10232;
  "\\longrightarrow",     10230;
  "\\Longrightarrow",     10233;
  "\\longleftrightarrow", 10231;
  "\\Longleftrightarrow", 10234;
  "\\mapsto",             0x21A6;
  "\\longmapsto",         10236;
  "\\hookleftarrow",      0x21A9;
  "\\hookrightarrow",     0x21A0;
  "\\leftharpoonup",      0;
  "\\leftharpoondown",    0;
  "\\rightharpoonup",     0;
  "\\rightharpoondown",   0;
  "\\rightleftharpoons",  0;
  "\\leadsto",            0;
  "\\uparrow",            0;
  "\\Uparrow",            0;
  "\\downarrow",          0;
  "\\Downarrow",          0x21D3;
  "\\updownarrow",        8597;
  "\\Updownarrow",        0x21D1;
  "\\nearrow",            0x2197;
  "\\searrow",            0x2198;
  "\\swarrow",            0x2199;
  "\\nwarrow",            0x2196;
  
  "\\dashleftarrow",        0;
  "\\dashrightarrow",       0;
  "\\leftleftarrows",       0;
  "\\rightrightarrow",      0;
  "\\leftrightarrows",      0;
  "\\rightleftarrows",      0;
  "\\Lleftarrow",           0;
  "\\Rrightarrow",          0;
  "\\twoheadleftarrow",     0;
  "\\twoheadrightarrow",    0;
  "\\leftwarrowtail",       0;
  "\\rightarrowtail",       0;
  "\\looparrowleft",        0;
  "\\looparrowright",       0;
  "\\leftrightharpoons",    0;
  "\\rightleftharpoons",    0;
  "\\curvearrowleft",       0;
  "\\curvearrowright",      0;
  "\\Lsh",                  0;
  "\\Rsh",                  0;
  "\\upuparrows",           0;
  "\\downdownarrow",        0;
  "\\uphapoonleft",         0;
  "\\upharpoonright",       0;
  "\\downharpoonleft",      0;
  "\\downharpoonright",     0;
  "\\multimap",             0;
  "\\leftsqugarrow",        0;
  "\\rightsquigarrow",      0;
  "\\leftrightsquigarrow",  0;
  "\\nleftarrow",           0;
  "\\nrightarrow",          0;
  "\\nLeftarrow",           0;
  "\\nRightarrow",          0;
  "\\nleftrightarrow",      0;
  "\\nLeftrightarrow",      0;
  
  "\\leq",        0;
  "\\geq",        0;
  "\\prec",       8826;
  "\\succ",       8827;
  "\\preceq",     10927;
  "\\succeq",     10928;
  "\\ll",         8810;
  "\\gg",         8811;
  "\\subset",     8834;
  "\\supset",     8835;
  "\\subseteq",   8838;
  "\\supseteq",   8839;
  "\\sqsubset",   8847;
  "\\sqsupset",   8848;
  "\\sqsubseteq", 8849;
  "\\sqsupseteq", 8850;
  "\\in",         8712;
  "\\nin",        8713;
  "\\ni",         8715;
  "\\vdash",      8866;
  "\\dashv",      8867;
  "\\smile",      8895;
  "\\frown",      8894;
  "\\mid",        8739;
  "\\parallel",   8741;
  "\\neq",        8800;
  "\\ne",         8800;
  "\\equiv",      8801;
  "\\sim",        8764;
  "\\simeq",      8771;
  "\\asymp",      8781;
  "\\approx",     8776;
  "\\cong",       8773;
  "\\bowtie",     0x22C8;
  "\\propto",     8733;
  "\\models",     0x22A7;
  "\\doteq",      8784;
  "\\Join",       0;

  "\\leqq",               8806;
  "\\geqq",               8807;
  "\\leqslant",           10877;
  "\\geqslant",           10878;
  "\\eqslantless",        10901;
  "\\eqlsnantgtr",        10902;
  "\\lesssim",            8818;
  "\\gtrsim",             8819;
  "\\lessapprox",         10885;
  "\\gtrapprox",          10886;
  "\\approxeq",           8778;
  "\\eqsim",              8770;
  "\\lessdot",            8918;
  "\\gtrdot",             8919;
  "\\lll",                8920;
  "\\llless",             8920;
  "\\ggg",                8921;
  "\\gggtr",              8921;
  "\\lessgtr",            8822;
  "\\gtrless",            8823;
  "\\lesseqgtr",          8922;
  "\\gtreqless",          8923;
  "\\lesseqqgtr",         8922;
  "\\gtreqqless",         8923;
  "\\qcirc",              8790;
  "\\circeq",             8791;
  "\\triangleeq",         0;
  "\\doteqdot",           0;
  "\\Doteq",              0;
  "\\risingdotseq",       0;
  "\\fallingdotseq",      0;
  "\\backsim",            0;
  "\\backsimeq",          0;
  "\\thicksim",           0;
  "\\thickapprox",        0;
  "\\subseteqq",          0;
  "\\supseteqq",          0;
  "\\Subset",             0;
  "\\Supset",             0;
  "\\preccurlyeq",        0;
  "\\succcurlyeq",        0;
  "\\curlyeqprec",        0;
  "\\curlyeqsucc",        0;
  "\\precsim",            0;
  "\\succsim",            0;
  "\\precapprox",         0;
  "\\succapprox",         0;
  "\\vartriangleleft",    0;
  "\\vartriangleright",   0;
  "\\trianglelefteq",     0;
  "\\trianglerighteq",    0;
  "\\vDash",              0;
  "\\Vdash",              0;
  "\\Vvdash",             0;
  "\\smallsmile",         0;
  "\\smallfrown",         0;
  "\\shortmid",           0;
  "\\shartparallel",      0;
  "\\bumpeq",             0;
  "\\Bumpeq",             0;
  "\\between",            8812;
  "\\pitchfork",          8916;
  "\\varpropto",          8733;
  "\\backepsilon",        1014;
  "\\blacktriangleleft",  9666;
  "\\blacktriangleright", 9656;
  "\\therefore",          8756;
  "\\because",            8757;

  "\\nless",            0;
  "\\ngtr",             0;
  "\\nleq",             0;
  "\\ngeq",             0;
  "\\nleqslant",        0;
  "\\ngeqslant",        0;
  "\\lneq",             0;
  "\\gneq",             0;
  "\\lneqq",            0;
  "\\gneqq",            0;
  "\\lvertneqq",        0;
  "\\gvertneqq",        0;
  "\\lnsin",            0;
  "\\gnsim",            0;
  "\\lnapprox",         0;
  "\\gnapprox",         0;
  "\\nprec",            0;
  "\\nsucc",            0;
  "\\npreceq",          0;
  "\\nsucceq",          0;
  "\\precneqq",         0;
  "\\succneqq",         0;
  "\\precnsim",         0;
  "\\succnsim",         0;
  "\\newnapprox",       0;
  "\\succnapprox",      0;
  "\\nsim",             0;
  "\\ncong",            0;
  "\\nshortmid",        0;
  "\\nmid",             0;
  "\\nshortparallel",   0;
  "\\nparallel",        8742;
  "\\nvdash",           0;
  "\\nVdash",           0;
  "\\nvDash",           0;
  "\\nVDash",           0;
  "\\ntriangleleft",    0;
  "\\ntriangleright",   0;
  "\\ntrianglelefteq",  0;
  "\\ntrianglerighteq", 0;
  "\\nsubseteq",        0;
  "\\nsupseteq",        0;
  "\\nsubseteqq",       0;
  "\\nsupseteqq",       0;
  "\\subsetneq",        0;
  "\\supsetneq",        0;
  "\\varsubsetneq",     0;
  "\\varsupsetneq",     0;
  "\\subsetneqq",       0;
  "\\supsetneqq",       0;
  "\\varsubsetneqq",    0;
  "\\varsupsetneqq",    0;

  "\\lfloor",   8970;
  "\\rfloor",   8971;
  "\\lceil",    8968;
  "\\rceil",    8969;
  "\\langle",   9001;
  "\\rangle",   9002;
  "\\vert",     124;
  "\\Vert",     8214;
  "\\ulcorner", 0x231C;
  "\\urcorner", 0x231D;
  "\\llcorner", 0x231E;
  "\\lrcorner", 0x231F
];;

let symbol_commands = Dictionary.map (fun _ -> (0, 0)) symbols;;

let commands = JoinedDictionary.make 
[
  main_commands; 
  alphabet_commands; 
  function_commands; 
  symbol_commands
];;

(* vim: set tw=96 et ts=2 sw=2: *)
