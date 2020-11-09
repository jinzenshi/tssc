/***** McClelland codes *****/

program k_mcc
version 8.2

replace NAMES_STD = "Afghanistan" if NAMES_STD == "afg"
replace NAMES_STD = "Albania" if NAMES_STD == "alb"
replace NAMES_STD = "Algeria" if NAMES_STD == "alg"
replace NAMES_STD = "Angola" if NAMES_STD == "ang"
replace NAMES_STD = "Antigua and Barbuda" if NAMES_STD == "aab"
replace NAMES_STD = "Argentina" if NAMES_STD == "arg"
replace NAMES_STD = "Armenia" if NAMES_STD == "arm"
replace NAMES_STD = "Australia" if NAMES_STD == "aul"
replace NAMES_STD = "Austria" if NAMES_STD == "aus"
replace NAMES_STD = "Austria-Hungary" if NAMES_STD == "auh"
replace NAMES_STD = "Azerbaijan" if NAMES_STD == "aze"
replace NAMES_STD = "Baden" if NAMES_STD == "bad"
replace NAMES_STD = "Bahamas" if NAMES_STD == "bhm"
replace NAMES_STD = "Bahrain" if NAMES_STD == "bah"
replace NAMES_STD = "Bangladesh" if NAMES_STD == "bng"
replace NAMES_STD = "Barbados" if NAMES_STD == "bar"
replace NAMES_STD = "Bavaria" if NAMES_STD == "bav"
replace NAMES_STD = "Belarus" if NAMES_STD == "blr"
replace NAMES_STD = "Belgium" if NAMES_STD == "bel"
replace NAMES_STD = "Belize" if NAMES_STD == "blz"
replace NAMES_STD = "Benin" if NAMES_STD == "ben"
replace NAMES_STD = "Bhutan" if NAMES_STD == "bhu"
replace NAMES_STD = "Bolivia" if NAMES_STD == "bol"
replace NAMES_STD = "Bosnia and Herzegovina" if NAMES_STD == "bos"
replace NAMES_STD = "Botswana" if NAMES_STD == "bot"
replace NAMES_STD = "Brazil" if NAMES_STD == "bra"
replace NAMES_STD = "Brunei" if NAMES_STD == "bru"
replace NAMES_STD = "Bulgaria" if NAMES_STD == "bul"
replace NAMES_STD = "Burkina Faso" if NAMES_STD == "bfo"
replace NAMES_STD = "Burundi" if NAMES_STD == "bui"
replace NAMES_STD = "Cambodia" if NAMES_STD == "cam"
replace NAMES_STD = "Cameroon" if NAMES_STD == "cao"
replace NAMES_STD = "Canada" if NAMES_STD == "can"
replace NAMES_STD = "Cape Verde" if NAMES_STD == "cap"
replace NAMES_STD = "Central African Republic" if NAMES_STD == "cen"
replace NAMES_STD = "Chad" if NAMES_STD == "cha"
replace NAMES_STD = "Chile" if NAMES_STD == "chl"
replace NAMES_STD = "China" if NAMES_STD == "chn"
replace NAMES_STD = "Colombia" if NAMES_STD == "col"
replace NAMES_STD = "Comoros" if NAMES_STD == "com"
replace NAMES_STD = "Democratic Republic of Congo" if NAMES_STD == "zai"
replace NAMES_STD = "Congo" if NAMES_STD == "con"
replace NAMES_STD = "Costa Rica" if NAMES_STD == "cos"
replace NAMES_STD = "Croatia" if NAMES_STD == "cro"
replace NAMES_STD = "Cuba" if NAMES_STD == "cub"
replace NAMES_STD = "Cyprus" if NAMES_STD == "cyp"
replace NAMES_STD = "Czech Republic" if NAMES_STD == "czr"
replace NAMES_STD = "Czechoslovakia" if NAMES_STD == "cze"
replace NAMES_STD = "Denmark" if NAMES_STD == "den"
replace NAMES_STD = "Djibouti" if NAMES_STD == "dji"
replace NAMES_STD = "Dominica" if NAMES_STD == "dma"
replace NAMES_STD = "Dominican Republic" if NAMES_STD == "dom"
replace NAMES_STD = "Ecuador" if NAMES_STD == "ecu"
replace NAMES_STD = "Egypt" if NAMES_STD == "egy"
replace NAMES_STD = "El Salvador" if NAMES_STD == "sal"
replace NAMES_STD = "Equatorial Guinea" if NAMES_STD == "eqg"
replace NAMES_STD = "Estonia" if NAMES_STD == "est"
replace NAMES_STD = "Ethiopia" if NAMES_STD == "eth"
replace NAMES_STD = "Fiji" if NAMES_STD == "fji"
replace NAMES_STD = "Finland" if NAMES_STD == "fin"
replace NAMES_STD = "France" if NAMES_STD == "frn"
replace NAMES_STD = "Gabon" if NAMES_STD == "gab"
replace NAMES_STD = "Gambia" if NAMES_STD == "gam"
replace NAMES_STD = "Georgia" if NAMES_STD == "grg"
replace NAMES_STD = "German Democratic Republic" if NAMES_STD == "gdr"
replace NAMES_STD = "Germany" if NAMES_STD == "gmy" | NAMES_STD == "gfr"
replace NAMES_STD = "Ghana" if NAMES_STD == "gha"
replace NAMES_STD = "Greece" if NAMES_STD == "grc"
replace NAMES_STD = "Grenada" if NAMES_STD == "grn"
replace NAMES_STD = "Guatemala" if NAMES_STD == "gua"
replace NAMES_STD = "Guinea" if NAMES_STD == "gui"
replace NAMES_STD = "Guinea-Bissau" if NAMES_STD == "gnb"
replace NAMES_STD = "Guyana" if NAMES_STD == "guy"
replace NAMES_STD = "Haiti" if NAMES_STD == "hai"
replace NAMES_STD = "Hanover" if NAMES_STD == "han"
replace NAMES_STD = "Hesse Electoral" if NAMES_STD == "hse"
replace NAMES_STD = "Hesse Grand Ducal" if NAMES_STD == "hsg"
replace NAMES_STD = "Honduras" if NAMES_STD == "hon"
replace NAMES_STD = "Hungary" if NAMES_STD == "hun"
replace NAMES_STD = "Iceland" if NAMES_STD == "ice"
replace NAMES_STD = "India" if NAMES_STD == "ind"
replace NAMES_STD = "Indonesia" if NAMES_STD == "ins"
replace NAMES_STD = "Iran" if NAMES_STD == "irn"
replace NAMES_STD = "Iraq" if NAMES_STD == "irq"
replace NAMES_STD = "Ireland" if NAMES_STD == "ire"
replace NAMES_STD = "Israel" if NAMES_STD == "isr"
replace NAMES_STD = "Italy" if NAMES_STD == "ita"
replace NAMES_STD = "Cote d'Ivoire" if NAMES_STD == "ivo"
replace NAMES_STD = "Jamaica" if NAMES_STD == "jam"
replace NAMES_STD = "Japan" if NAMES_STD == "jpn"
replace NAMES_STD = "Jordan" if NAMES_STD == "jor"
replace NAMES_STD = "Kazakhstan" if NAMES_STD == "kzk"
replace NAMES_STD = "Kenya" if NAMES_STD == "ken"
replace NAMES_STD = "Kyrgyz Republic" if NAMES_STD == "kyr"
replace NAMES_STD = "South Korea" if NAMES_STD == "kor" | NAMES_STD == "rok"
replace NAMES_STD = "North Korea" if NAMES_STD == "prk"
replace NAMES_STD = "Kuwait" if NAMES_STD == "kuw"
replace NAMES_STD = "Laos" if NAMES_STD == "lao"
replace NAMES_STD = "Latvia" if NAMES_STD == "lat"
replace NAMES_STD = "Lebanon" if NAMES_STD == "leb"
replace NAMES_STD = "Lesotho" if NAMES_STD == "les"
replace NAMES_STD = "Liberia" if NAMES_STD == "lbr"
replace NAMES_STD = "Libya" if NAMES_STD == "lib"
replace NAMES_STD = "Liechtenstein" if NAMES_STD == "lie"
replace NAMES_STD = "Lithuania" if NAMES_STD == "lit"
replace NAMES_STD = "Luxembourg" if NAMES_STD == "lux"
replace NAMES_STD = "Macedonia" if NAMES_STD == "mac"
replace NAMES_STD = "Madagascar" if NAMES_STD == "mag"
replace NAMES_STD = "Malawi" if NAMES_STD == "maw"
replace NAMES_STD = "Malaysia" if NAMES_STD == "mal"
replace NAMES_STD = "Maldives" if NAMES_STD == "mad"
replace NAMES_STD = "Mali" if NAMES_STD == "mli"
replace NAMES_STD = "Malta" if NAMES_STD == "mlt"
replace NAMES_STD = "Marshall Islands" if NAMES_STD == "msi"
replace NAMES_STD = "Mauritania" if NAMES_STD == "maa"
replace NAMES_STD = "Mauritius" if NAMES_STD == "mas"
replace NAMES_STD = "Meckelnburg Schwerin" if NAMES_STD == "mec"
replace NAMES_STD = "Mexico" if NAMES_STD == "mex"
replace NAMES_STD = "Micronesia" if NAMES_STD == "fms"
replace NAMES_STD = "Modena" if NAMES_STD == "mod"
replace NAMES_STD = "Moldova" if NAMES_STD == "mld"
replace NAMES_STD = "Mongolia" if NAMES_STD == "mon"
replace NAMES_STD = "Morocco" if NAMES_STD == "mor"
replace NAMES_STD = "Mozambique" if NAMES_STD == "mzm"
replace NAMES_STD = "Myanmar" if NAMES_STD == "mya"
replace NAMES_STD = "Namibia" if NAMES_STD == "nam"
replace NAMES_STD = "Nepal" if NAMES_STD == "nep"
replace NAMES_STD = "Netherlands" if NAMES_STD == "nth"
replace NAMES_STD = "New Zealand" if NAMES_STD == "new"
replace NAMES_STD = "Nicaragua" if NAMES_STD == "nic"
replace NAMES_STD = "Niger" if NAMES_STD == "nir"
replace NAMES_STD = "Nigeria" if NAMES_STD == "nig"
replace NAMES_STD = "Norway" if NAMES_STD == "nor"
replace NAMES_STD = "Oman" if NAMES_STD == "oma"
replace NAMES_STD = "Pakistan" if NAMES_STD == "pak"
replace NAMES_STD = "Panama" if NAMES_STD == "pan"
replace NAMES_STD = "Papua New Guinea" if NAMES_STD == "png"
replace NAMES_STD = "Paraguay" if NAMES_STD == "par"
replace NAMES_STD = "Parma" if NAMES_STD == "pma"
replace NAMES_STD = "Peru" if NAMES_STD == "per"
replace NAMES_STD = "Philippines" if NAMES_STD == "phi"
replace NAMES_STD = "Poland" if NAMES_STD == "pol"
replace NAMES_STD = "Portugal" if NAMES_STD == "por"
replace NAMES_STD = "Qatar" if NAMES_STD == "qat"
replace NAMES_STD = "Romania" if NAMES_STD == "rum"
replace NAMES_STD = "Russia" if NAMES_STD == "rus"
replace NAMES_STD = "Rwanda" if NAMES_STD == "rwa"
replace NAMES_STD = "Saint Kitts and Nevis" if NAMES_STD == "skn"
replace NAMES_STD = "Saint Lucia" if NAMES_STD == "slu"
replace NAMES_STD = "Saint Vincent and the Grenadines" if NAMES_STD == "svg"
replace NAMES_STD = "San Marino" if NAMES_STD == "snm"
replace NAMES_STD = "Sao Tome and Principe" if NAMES_STD == "stp"
replace NAMES_STD = "Saudi Arabia" if NAMES_STD == "sau"
replace NAMES_STD = "Saxony" if NAMES_STD == "sax"
replace NAMES_STD = "Senegal" if NAMES_STD == "sen"
replace NAMES_STD = "Seychelles" if NAMES_STD == "sey"
replace NAMES_STD = "Sierra Leone" if NAMES_STD == "sie"
replace NAMES_STD = "Singapore" if NAMES_STD == "sin"
replace NAMES_STD = "Slovak Republic" if NAMES_STD == "slo"
replace NAMES_STD = "Slovenia" if NAMES_STD == "slv"
replace NAMES_STD = "Solomon Islands" if NAMES_STD == "sol"
replace NAMES_STD = "Somalia" if NAMES_STD == "som"
replace NAMES_STD = "South Africa" if NAMES_STD == "saf"
replace NAMES_STD = "Spain" if NAMES_STD == "spn"
replace NAMES_STD = "Sri Lanka" if NAMES_STD == "sri"
replace NAMES_STD = "Sudan" if NAMES_STD == "sud"
replace NAMES_STD = "Suriname" if NAMES_STD == "sur"
replace NAMES_STD = "Swaziland" if NAMES_STD == "swa"
replace NAMES_STD = "Sweden" if NAMES_STD == "swd"
replace NAMES_STD = "Switzerland" if NAMES_STD == "swz"
replace NAMES_STD = "Syria" if NAMES_STD == "syr"
replace NAMES_STD = "Tajikistan" if NAMES_STD == "taj"
replace NAMES_STD = "Taiwan" if NAMES_STD == "taw"
replace NAMES_STD = "Tanzania" if NAMES_STD == "taz"
replace NAMES_STD = "Thailand" if NAMES_STD == "thi"
replace NAMES_STD = "Togo" if NAMES_STD == "tog"
replace NAMES_STD = "Trinidad and Tobago" if NAMES_STD == "tri"
replace NAMES_STD = "Tunisia" if NAMES_STD == "tun"
replace NAMES_STD = "Turkey" if NAMES_STD == "tur"
replace NAMES_STD = "Turkmenistan" if NAMES_STD == "tkm"
replace NAMES_STD = "Tuscany" if NAMES_STD == "tus"
replace NAMES_STD = "Two Sicilies" if NAMES_STD == "sic"
replace NAMES_STD = "Uganda" if NAMES_STD == "uga"
replace NAMES_STD = "Ukraine" if NAMES_STD == "ukr"
replace NAMES_STD = "United Arab Emirates" if NAMES_STD == "uae"
replace NAMES_STD = "United Kingdom" if NAMES_STD == "uk"
replace NAMES_STD = "United States" if NAMES_STD == "usa"
replace NAMES_STD = "Uruguay" if NAMES_STD == "uru"
replace NAMES_STD = "Uzbekistan" if NAMES_STD == "uzb"
replace NAMES_STD = "Vanuatu" if NAMES_STD == "van"
replace NAMES_STD = "Vatican" if NAMES_STD == "pap"
replace NAMES_STD = "Venezuela" if NAMES_STD == "ven"
replace NAMES_STD = "Vietnam" if NAMES_STD == "drv"
replace NAMES_STD = "Republic of Vietnam" if NAMES_STD == "rvn"
replace NAMES_STD = "Samoa" if NAMES_STD == "wsm"
replace NAMES_STD = "Wuerttemburg" if NAMES_STD == "wrt"
replace NAMES_STD = "Yemen" if NAMES_STD == "yem"
replace NAMES_STD = "Yemen Arab Republic" if NAMES_STD == "yar"
replace NAMES_STD = "Yemen People's Republic" if NAMES_STD == "ypr"
replace NAMES_STD = "Yugoslavia" if NAMES_STD == "yug"
replace NAMES_STD = "Zambia" if NAMES_STD == "zam"
replace NAMES_STD = "Zanzibar" if NAMES_STD == "zan"
replace NAMES_STD = "Zimbabwe" if NAMES_STD == "rho"

end
exit