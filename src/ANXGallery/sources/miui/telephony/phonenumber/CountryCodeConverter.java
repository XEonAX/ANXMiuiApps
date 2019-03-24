package miui.telephony.phonenumber;

import android.content.res.Resources;
import com.miui.internal.R;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import miui.util.AppConstants;

public class CountryCodeConverter {
    public static final String AC = "247";
    public static final String AD = "376";
    public static final String AE = "971";
    public static final String AF = "93";
    public static final String AG = "1268";
    public static final String AI = "1264";
    public static final String AL = "355";
    public static final String AM = "374";
    public static final String AN = "599";
    public static final String AO = "244";
    public static final String AR = "54";
    public static final String AS = "1684";
    public static final String AT = "43";
    public static final String AU = "61";
    public static final String AW = "297";
    public static final String AZ = "994";
    public static final String BA = "387";
    public static final String BB = "1246";
    public static final String BD = "880";
    public static final String BE = "32";
    public static final String BF = "226";
    public static final String BG = "359";
    public static final String BH = "973";
    public static final String BI = "257";
    public static final String BJ = "229";
    public static final String BM = "1441";
    public static final String BN = "673";
    public static final String BO = "591";
    public static final String BR = "55";
    public static final String BS = "1242";
    public static final String BT = "975";
    public static final String BW = "267";
    public static final String BY = "375";
    public static final String BZ = "501";
    public static final String CD = "243";
    public static final String CF = "236";
    public static final String CG = "242";
    public static final String CH = "41";
    public static final String CI = "225";
    public static final String CK = "682";
    public static final String CL = "56";
    public static final String CM = "237";
    public static final String CN = "86";
    public static final String CO = "57";
    public static final String CR = "506";
    public static final String CU = "53";
    public static final String CV = "238";
    public static final String CY = "357";
    public static final String CZ = "420";
    public static final String DE = "49";
    public static final String DJ = "253";
    public static final String DK = "45";
    public static final String DM = "1767";
    public static final String DO = "1809";
    public static final String DO1 = "1829";
    public static final String DO2 = "1849";
    public static final String DZ = "213";
    public static final String EC = "593";
    public static final String EE = "372";
    public static final String EG = "20";
    public static final String ER = "291";
    public static final String ES = "34";
    public static final String ET = "251";
    private static final HashMap<String, String> FH = new HashMap();
    public static final String FI = "358";
    public static final String FJ = "679";
    public static final String FK = "500";
    private static final HashMap<String, String> FL = new HashMap();
    public static final String FM = "691";
    private static final HashMap<String, List<String>> FN = new HashMap();
    public static final String FO = "298";
    public static final String FR = "33";
    private static final String Fq = "";
    public static final String GA = "241";
    public static final String GD = "1473";
    public static final String GE = "995";
    public static final String GF = "594";
    public static final String GG = "441481";
    public static final String GG1 = "447781";
    public static final String GG2 = "447839";
    public static final String GG3 = "447911";
    public static final String GH = "233";
    public static final String GI = "350";
    public static final String GL = "299";
    public static final String GM = "220";
    public static final String GN = "224";
    public static final String GP_BL_MF = "590";
    public static final String GQ = "240";
    public static final String GR = "30";
    public static final String GT = "502";
    public static final String GU = "1671";
    public static final String GW = "245";
    public static final String GY = "592";
    public static final String HK = "852";
    public static final String HN = "504";
    public static final String HR = "385";
    public static final String HT = "509";
    public static final String HU = "36";
    public static final String ID = "62";
    public static final String IE = "353";
    public static final String IL = "972";
    public static final String IM = "441624";
    public static final String IM1 = "447524";
    public static final String IM2 = "447624";
    public static final String IM3 = "447924";
    public static final String IN = "91";
    public static final String IO = "246";
    public static final String IQ = "964";
    public static final String IR = "98";
    public static final String IS = "354";
    public static final String IT = "39";
    public static final String JE = "441534";
    public static final String JE1 = "447509";
    public static final String JE2 = "447700";
    public static final String JE3 = "447797";
    public static final String JE4 = "447829";
    public static final String JM = "1876";
    public static final String JO = "962";
    public static final String JP = "81";
    public static final String KE = "254";
    public static final String KG = "996";
    public static final String KH = "855";
    public static final String KI = "686";
    public static final String KM = "269";
    public static final String KN = "1869";
    public static final String KP = "850";
    public static final String KR = "82";
    public static final String KW = "965";
    public static final String KY = "1345";
    public static final String LA = "856";
    public static final String LB = "961";
    public static final String LC = "1758";
    public static final String LI = "423";
    public static final String LK = "94";
    public static final String LR = "231";
    public static final String LS = "266";
    public static final String LT = "370";
    public static final String LU = "352";
    public static final String LV = "371";
    public static final String LY = "218";
    public static final String MA = "212";
    public static final String MC = "377";
    public static final String MD = "373";
    public static final String ME = "382";
    public static final String MG = "261";
    public static final String MH = "692";
    public static final String MK = "389";
    public static final String ML = "223";
    public static final String MM = "95";
    public static final String MN = "976";
    public static final String MO = "853";
    public static final String MP = "1670";
    public static final String MQ = "596";
    public static final String MR = "222";
    public static final String MS = "1664";
    public static final String MT = "356";
    public static final String MU = "230";
    public static final String MV = "960";
    public static final String MW = "265";
    public static final String MX = "52";
    public static final String MY = "60";
    public static final String MZ = "258";
    public static final String NA = "264";
    public static final String NC = "687";
    public static final String NE = "227";
    public static final String NG = "234";
    public static final String NI = "505";
    public static final String NL = "31";
    public static final String NO = "47";
    public static final String NP = "977";
    public static final String NR = "674";
    public static final String NU = "683";
    public static final String NZ = "64";
    public static final String OM = "968";
    public static final String PA = "507";
    public static final String PE = "51";
    public static final String PF = "689";
    public static final String PG = "675";
    public static final String PH = "63";
    public static final String PK = "92";
    public static final String PL = "48";
    public static final String PM = "508";
    public static final String PR = "1787";
    public static final String PR1 = "1939";
    public static final String PS = "970";
    public static final String PT = "351";
    public static final String PW = "680";
    public static final String PY = "595";
    public static final String QA = "974";
    public static final String RE_YT = "262";
    public static final String RO = "40";
    public static final String RS = "381";
    public static final String RU_KZ = "7";
    public static final String RW = "250";
    public static final String SA = "966";
    public static final String SB = "677";
    public static final String SC = "248";
    public static final String SD = "249";
    public static final String SE = "46";
    public static final String SG = "65";
    public static final String SH = "290";
    public static final String SI = "386";
    public static final String SK = "421";
    public static final String SL = "232";
    public static final String SM = "378";
    public static final String SN = "221";
    public static final String SO = "252";
    public static final String SR = "597";
    public static final String ST = "239";
    public static final String SV = "503";
    public static final String SX = "1721";
    public static final String SY = "963";
    public static final String SZ = "268";
    public static final String TC = "1649";
    public static final String TD = "235";
    public static final String TG = "228";
    public static final String TH = "66";
    public static final String TJ = "992";
    public static final String TK = "690";
    public static final String TL = "670";
    public static final String TM = "993";
    public static final String TN = "216";
    public static final String TO = "676";
    public static final String TR = "90";
    public static final String TT = "1868";
    public static final String TV = "688";
    public static final String TW = "886";
    public static final String TZ = "255";
    public static final String UA = "380";
    public static final String UG = "256";
    public static final String UK = "44";
    public static final String US_CA = "1";
    public static final String UY = "598";
    public static final String UZ = "998";
    public static final String VA = "3906698";
    public static final String VC = "1784";
    public static final String VE = "58";
    public static final String VG = "1284";
    public static final String VI = "1340";
    public static final String VN = "84";
    public static final String VU = "678";
    public static final String WF = "681";
    public static final String WS = "685";
    public static final String YE = "967";
    public static final String ZA = "27";
    public static final String ZM = "260";
    public static final String ZW = "263";

    static {
        FL.put("412", AF);
        FL.put("276", AL);
        FL.put("603", DZ);
        FL.put("544", AS);
        FL.put(DZ, AD);
        FL.put("631", AO);
        FL.put("365", AI);
        FL.put("344", AG);
        FL.put("722", AR);
        FL.put("283", AM);
        FL.put("363", AW);
        FL.put(NI, AU);
        FL.put(SL, AT);
        FL.put("400", AZ);
        FL.put("364", BS);
        FL.put("426", BH);
        FL.put("470", BD);
        FL.put("342", BB);
        FL.put(BI, BY);
        FL.put("206", BE);
        FL.put("702", BZ);
        FL.put("616", BJ);
        FL.put(GI, BM);
        FL.put("402", BT);
        FL.put("736", BO);
        FL.put(LY, BA);
        FL.put("652", BW);
        FL.put("724", BR);
        FL.put("348", VG);
        FL.put("528", BN);
        FL.put("284", BG);
        FL.put("613", BF);
        FL.put("642", BI);
        FL.put("456", KH);
        FL.put("624", CM);
        FL.put("302", "1");
        FL.put("625", CV);
        FL.put("346", KY);
        FL.put("623", CF);
        FL.put("622", TD);
        FL.put("730", CL);
        FL.put("460", CN);
        FL.put("732", CO);
        FL.put("654", KM);
        FL.put("548", CK);
        FL.put("712", CR);
        FL.put("612", CI);
        FL.put("219", HR);
        FL.put("368", CU);
        FL.put("280", CY);
        FL.put(MU, CZ);
        FL.put("630", CD);
        FL.put(CV, DK);
        FL.put("638", DJ);
        FL.put("366", DM);
        FL.put(LT, DO);
        FL.put("740", EC);
        FL.put("602", EG);
        FL.put("706", SV);
        FL.put("627", GQ);
        FL.put("657", ER);
        FL.put(SC, EE);
        FL.put("636", ET);
        FL.put("750", FK);
        FL.put("288", FO);
        FL.put("542", FJ);
        FL.put(AO, FI);
        FL.put("208", FR);
        FL.put("742", GF);
        FL.put("547", PF);
        FL.put("628", GA);
        FL.put("607", GM);
        FL.put("282", GE);
        FL.put(RE_YT, DE);
        FL.put("620", GH);
        FL.put(LS, GI);
        FL.put("202", GR);
        FL.put(SH, GL);
        FL.put(LU, GD);
        FL.put("535", GU);
        FL.put("704", GT);
        FL.put("611", GN);
        FL.put("632", GW);
        FL.put("738", GY);
        FL.put(EE, HT);
        FL.put("708", HN);
        FL.put("454", HK);
        FL.put(TN, HU);
        FL.put("274", IS);
        FL.put("404", IN);
        FL.put("405", IN);
        FL.put("510", ID);
        FL.put("432", IR);
        FL.put("418", IQ);
        FL.put("272", IE);
        FL.put("425", IL);
        FL.put(MR, IT);
        FL.put("338", JM);
        FL.put("440", JP);
        FL.put("441", JP);
        FL.put("416", JO);
        FL.put("401", "7");
        FL.put("639", KE);
        FL.put("545", KI);
        FL.put("467", KP);
        FL.put("450", KR);
        FL.put("419", KW);
        FL.put("437", KG);
        FL.put("457", LA);
        FL.put(AC, LV);
        FL.put("415", LB);
        FL.put("651", LS);
        FL.put("618", LR);
        FL.put("606", LY);
        FL.put("295", LI);
        FL.put(IO, LT);
        FL.put("270", LU);
        FL.put("455", MO);
        FL.put("294", MK);
        FL.put("646", MG);
        FL.put("650", MW);
        FL.put(GT, MY);
        FL.put("472", MV);
        FL.put("610", ML);
        FL.put("278", MT);
        FL.put("551", MH);
        FL.put("340", MQ);
        FL.put("609", MR);
        FL.put("617", MU);
        FL.put("334", MX);
        FL.put("550", FM);
        FL.put("259", MD);
        FL.put(MA, MC);
        FL.put("428", MN);
        FL.put(AW, ME);
        FL.put(IS, MS);
        FL.put("604", MA);
        FL.put("643", MZ);
        FL.put("414", MM);
        FL.put("649", NA);
        FL.put("536", NR);
        FL.put("429", NP);
        FL.put("204", NL);
        FL.put("362", AN);
        FL.put("546", NC);
        FL.put("530", NZ);
        FL.put("710", NI);
        FL.put("614", NE);
        FL.put("621", NG);
        FL.put("534", MP);
        FL.put(CG, NO);
        FL.put("422", OM);
        FL.put("410", PK);
        FL.put("552", PW);
        FL.put(LI, PS);
        FL.put("714", PA);
        FL.put("537", PG);
        FL.put("744", PY);
        FL.put("716", PE);
        FL.put("515", PH);
        FL.put(ZM, PL);
        FL.put(SZ, PT);
        FL.put("330", PR);
        FL.put("427", QA);
        FL.put("629", CG);
        FL.put("647", RE_YT);
        FL.put(BF, RO);
        FL.put(RW, "7");
        FL.put("635", RW);
        FL.put(MT, KN);
        FL.put(FI, LC);
        FL.put("308", PM);
        FL.put("360", VC);
        FL.put("549", WS);
        FL.put("292", SM);
        FL.put("626", ST);
        FL.put(CZ, SA);
        FL.put("608", SN);
        FL.put(GM, RS);
        FL.put("633", SC);
        FL.put("619", SL);
        FL.put("525", SG);
        FL.put(LR, SK);
        FL.put("293", SI);
        FL.put("540", SB);
        FL.put("637", SO);
        FL.put("655", ZA);
        FL.put("214", ES);
        FL.put("413", LK);
        FL.put("634", SD);
        FL.put("746", SR);
        FL.put("653", SZ);
        FL.put(GQ, SE);
        FL.put(TG, CH);
        FL.put("417", SY);
        FL.put("466", TW);
        FL.put("436", TJ);
        FL.put("640", TZ);
        FL.put("520", TH);
        FL.put("514", NZ);
        FL.put("615", TG);
        FL.put("539", TO);
        FL.put(AM, TT);
        FL.put("605", TN);
        FL.put("286", TR);
        FL.put("438", TM);
        FL.put(AD, TC);
        FL.put("641", UG);
        FL.put(NG, UK);
        FL.put(TD, UK);
        FL.put(TZ, UA);
        FL.put("424", AE);
        FL.put("430", AE);
        FL.put("431", AE);
        FL.put("310", "1");
        FL.put("316", "1");
        FL.put("311", "1");
        FL.put("748", UY);
        FL.put("332", VI);
        FL.put("434", UZ);
        FL.put("541", VU);
        FL.put(CI, VA);
        FL.put("734", VE);
        FL.put("452", VN);
        FL.put("543", WF);
        FL.put(SK, YE);
        FL.put("645", ZM);
        FL.put("648", ZW);
        FN.put("302", Arrays.asList(new String[]{"011"}));
        FN.put("310", Arrays.asList(new String[]{"011"}));
        FN.put("311", Arrays.asList(new String[]{"011"}));
        FN.put("316", Arrays.asList(new String[]{"011"}));
        FN.put("334", Arrays.asList(new String[]{"00"}));
        FN.put("404", Arrays.asList(new String[]{"00"}));
        FN.put("405", Arrays.asList(new String[]{"00"}));
        FN.put("425", Arrays.asList(new String[]{"00"}));
        FN.put("428", Arrays.asList(new String[]{"001"}));
        FN.put("440", Arrays.asList(new String[]{"010"}));
        FN.put("441", Arrays.asList(new String[]{"010"}));
        FN.put("450", Arrays.asList(new String[]{"00700", "001", "002", "005", "006", "008", "00300", "00780"}));
        FN.put("452", Arrays.asList(new String[]{"00"}));
        FN.put("454", Arrays.asList(new String[]{"001", "002", "003", "0050", "0059", "0060", "007", "008", "009", "1666"}));
        FN.put("455", Arrays.asList(new String[]{"00"}));
        FN.put("460", Arrays.asList(new String[]{"00"}));
        FN.put("466", Arrays.asList(new String[]{"002", "005", "006", "007", "009", "019"}));
        FN.put("470", Arrays.asList(new String[]{"00"}));
        FN.put("510", Arrays.asList(new String[]{"001"}));
        FN.put("530", Arrays.asList(new String[]{"00"}));
        FN.put("535", Arrays.asList(new String[]{"011"}));
        FN.put("520", Arrays.asList(new String[]{"001"}));
        FN.put("724", Arrays.asList(new String[]{"00"}));
    }

    private static void cW() {
        if (FH.isEmpty()) {
            Resources resources = AppConstants.getCurrentApplication().getResources();
            FH.put(BS, resources.getString(R.string.country_name_bs));
            FH.put(BB, resources.getString(R.string.country_name_bb));
            FH.put(AI, resources.getString(R.string.country_name_ai));
            FH.put(AG, resources.getString(R.string.country_name_ag));
            FH.put(VG, resources.getString(R.string.country_name_vg));
            FH.put(VI, resources.getString(R.string.country_name_vi));
            FH.put(KY, resources.getString(R.string.country_name_ky));
            FH.put(BM, resources.getString(R.string.country_name_bm));
            FH.put(GD, resources.getString(R.string.country_name_gd));
            FH.put(TC, resources.getString(R.string.country_name_tc));
            FH.put(MS, resources.getString(R.string.country_name_ms));
            FH.put(MP, resources.getString(R.string.country_name_mp));
            FH.put(GU, resources.getString(R.string.country_name_gu));
            FH.put(AS, resources.getString(R.string.country_name_as));
            FH.put(SX, resources.getString(R.string.country_name_sx));
            FH.put(LC, resources.getString(R.string.country_name_lc));
            FH.put(DM, resources.getString(R.string.country_name_dm));
            FH.put(VC, resources.getString(R.string.country_name_vc));
            FH.put(PR, resources.getString(R.string.country_name_pr));
            FH.put(DO, resources.getString(R.string.country_name_do));
            FH.put(DO1, resources.getString(R.string.country_name_do));
            FH.put(DO2, resources.getString(R.string.country_name_do));
            FH.put(TT, resources.getString(R.string.country_name_tt));
            FH.put(KN, resources.getString(R.string.country_name_kn));
            FH.put(JM, resources.getString(R.string.country_name_jm));
            FH.put(PR1, resources.getString(R.string.country_name_pr));
            FH.put("1", resources.getString(R.string.country_name_us_ca));
            FH.put(EG, resources.getString(R.string.country_name_eg));
            FH.put(MA, resources.getString(R.string.country_name_ma));
            FH.put(DZ, resources.getString(R.string.country_name_dz));
            FH.put(TN, resources.getString(R.string.country_name_tn));
            FH.put(LY, resources.getString(R.string.country_name_ly));
            FH.put(GM, resources.getString(R.string.country_name_gm));
            FH.put(SN, resources.getString(R.string.country_name_sn));
            FH.put(MR, resources.getString(R.string.country_name_mr));
            FH.put(ML, resources.getString(R.string.country_name_ml));
            FH.put(GN, resources.getString(R.string.country_name_gn));
            FH.put(CI, resources.getString(R.string.country_name_ci));
            FH.put(BF, resources.getString(R.string.country_name_bf));
            FH.put(NE, resources.getString(R.string.country_name_ne));
            FH.put(TG, resources.getString(R.string.country_name_tg));
            FH.put(BJ, resources.getString(R.string.country_name_bj));
            FH.put(MU, resources.getString(R.string.country_name_mu));
            FH.put(LR, resources.getString(R.string.country_name_lr));
            FH.put(SL, resources.getString(R.string.country_name_sl));
            FH.put(GH, resources.getString(R.string.country_name_gh));
            FH.put(NG, resources.getString(R.string.country_name_ng));
            FH.put(TD, resources.getString(R.string.country_name_td));
            FH.put(CF, resources.getString(R.string.country_name_cf));
            FH.put(CM, resources.getString(R.string.country_name_cm));
            FH.put(CV, resources.getString(R.string.country_name_cv));
            FH.put(ST, resources.getString(R.string.country_name_st));
            FH.put(GQ, resources.getString(R.string.country_name_gq));
            FH.put(GA, resources.getString(R.string.country_name_ga));
            FH.put(CG, resources.getString(R.string.country_name_cg));
            FH.put(CD, resources.getString(R.string.country_name_cd));
            FH.put(AO, resources.getString(R.string.country_name_ao));
            FH.put(GW, resources.getString(R.string.country_name_gw));
            FH.put(IO, resources.getString(R.string.country_name_io));
            FH.put(AC, resources.getString(R.string.country_name_ac));
            FH.put(SC, resources.getString(R.string.country_name_sc));
            FH.put(SD, resources.getString(R.string.country_name_sd));
            FH.put(RW, resources.getString(R.string.country_name_rw));
            FH.put(ET, resources.getString(R.string.country_name_et));
            FH.put(SO, resources.getString(R.string.country_name_so));
            FH.put(DJ, resources.getString(R.string.country_name_dj));
            FH.put(KE, resources.getString(R.string.country_name_ke));
            FH.put(TZ, resources.getString(R.string.country_name_tz));
            FH.put(UG, resources.getString(R.string.country_name_ug));
            FH.put(BI, resources.getString(R.string.country_name_bi));
            FH.put(MZ, resources.getString(R.string.country_name_mz));
            FH.put(ZM, resources.getString(R.string.country_name_zm));
            FH.put(MG, resources.getString(R.string.country_name_mg));
            FH.put(RE_YT, resources.getString(R.string.country_name_re_yt));
            FH.put(ZW, resources.getString(R.string.country_name_zw));
            FH.put(NA, resources.getString(R.string.country_name_na));
            FH.put(MW, resources.getString(R.string.country_name_mw));
            FH.put(LS, resources.getString(R.string.country_name_ls));
            FH.put(BW, resources.getString(R.string.country_name_bw));
            FH.put(SZ, resources.getString(R.string.country_name_sz));
            FH.put(KM, resources.getString(R.string.country_name_km));
            FH.put(ZA, resources.getString(R.string.country_name_za));
            FH.put(SH, resources.getString(R.string.country_name_sh));
            FH.put(ER, resources.getString(R.string.country_name_er));
            FH.put(AW, resources.getString(R.string.country_name_aw));
            FH.put(FO, resources.getString(R.string.country_name_fo));
            FH.put(GL, resources.getString(R.string.country_name_gl));
            FH.put(GR, resources.getString(R.string.country_name_gr));
            FH.put(NL, resources.getString(R.string.country_name_nl));
            FH.put(BE, resources.getString(R.string.country_name_be));
            FH.put(FR, resources.getString(R.string.country_name_fr));
            FH.put(ES, resources.getString(R.string.country_name_es));
            FH.put(GI, resources.getString(R.string.country_name_gi));
            FH.put(PT, resources.getString(R.string.country_name_pt));
            FH.put(LU, resources.getString(R.string.country_name_lu));
            FH.put(IE, resources.getString(R.string.country_name_ie));
            FH.put(IS, resources.getString(R.string.country_name_is));
            FH.put(AL, resources.getString(R.string.country_name_al));
            FH.put(MT, resources.getString(R.string.country_name_mt));
            FH.put(CY, resources.getString(R.string.country_name_cy));
            FH.put(FI, resources.getString(R.string.country_name_fi));
            FH.put(BG, resources.getString(R.string.country_name_bg));
            FH.put(HU, resources.getString(R.string.country_name_hu));
            FH.put(LT, resources.getString(R.string.country_name_lt));
            FH.put(LV, resources.getString(R.string.country_name_lv));
            FH.put(EE, resources.getString(R.string.country_name_ee));
            FH.put(MD, resources.getString(R.string.country_name_md));
            FH.put(AM, resources.getString(R.string.country_name_am));
            FH.put(BY, resources.getString(R.string.country_name_by));
            FH.put(AD, resources.getString(R.string.country_name_ad));
            FH.put(MC, resources.getString(R.string.country_name_mc));
            FH.put(SM, resources.getString(R.string.country_name_sm));
            FH.put(UA, resources.getString(R.string.country_name_ua));
            FH.put(RS, resources.getString(R.string.country_name_rs));
            FH.put(ME, resources.getString(R.string.country_name_me));
            FH.put(HR, resources.getString(R.string.country_name_hr));
            FH.put(SI, resources.getString(R.string.country_name_si));
            FH.put(BA, resources.getString(R.string.country_name_ba));
            FH.put(MK, resources.getString(R.string.country_name_mk));
            FH.put(VA, resources.getString(R.string.country_name_va));
            FH.put(IT, resources.getString(R.string.country_name_it));
            FH.put(RO, resources.getString(R.string.country_name_ro));
            FH.put(CH, resources.getString(R.string.country_name_ch));
            FH.put(CZ, resources.getString(R.string.country_name_cz));
            FH.put(SK, resources.getString(R.string.country_name_sk));
            FH.put(LI, resources.getString(R.string.country_name_li));
            FH.put(AT, resources.getString(R.string.country_name_at));
            FH.put(GG, resources.getString(R.string.country_name_gg));
            FH.put(JE, resources.getString(R.string.country_name_je));
            FH.put(IM, resources.getString(R.string.country_name_im));
            FH.put(JE1, resources.getString(R.string.country_name_je));
            FH.put(IM1, resources.getString(R.string.country_name_im));
            FH.put(IM2, resources.getString(R.string.country_name_im));
            FH.put(JE2, resources.getString(R.string.country_name_je));
            FH.put(GG1, resources.getString(R.string.country_name_gg));
            FH.put(JE3, resources.getString(R.string.country_name_je));
            FH.put(JE4, resources.getString(R.string.country_name_je));
            FH.put(GG2, resources.getString(R.string.country_name_gg));
            FH.put(GG3, resources.getString(R.string.country_name_gg));
            FH.put(IM3, resources.getString(R.string.country_name_im));
            FH.put(UK, resources.getString(R.string.country_name_uk));
            FH.put(DK, resources.getString(R.string.country_name_dk));
            FH.put(SE, resources.getString(R.string.country_name_se));
            FH.put(NO, resources.getString(R.string.country_name_no));
            FH.put(PL, resources.getString(R.string.country_name_pl));
            FH.put(DE, resources.getString(R.string.country_name_de));
            FH.put(FK, resources.getString(R.string.country_name_fk));
            FH.put(BZ, resources.getString(R.string.country_name_bz));
            FH.put(GT, resources.getString(R.string.country_name_gt));
            FH.put(SV, resources.getString(R.string.country_name_sv));
            FH.put(HN, resources.getString(R.string.country_name_hn));
            FH.put(NI, resources.getString(R.string.country_name_ni));
            FH.put(CR, resources.getString(R.string.country_name_cr));
            FH.put(PA, resources.getString(R.string.country_name_pa));
            FH.put(PM, resources.getString(R.string.country_name_pm));
            FH.put(HT, resources.getString(R.string.country_name_ht));
            FH.put(PE, resources.getString(R.string.country_name_pe));
            FH.put(MX, resources.getString(R.string.country_name_mx));
            FH.put(CU, resources.getString(R.string.country_name_cu));
            FH.put(AR, resources.getString(R.string.country_name_ar));
            FH.put(BR, resources.getString(R.string.country_name_br));
            FH.put(CL, resources.getString(R.string.country_name_cl));
            FH.put(CO, resources.getString(R.string.country_name_co));
            FH.put(VE, resources.getString(R.string.country_name_ve));
            FH.put(GP_BL_MF, resources.getString(R.string.country_name_gp_bl_mf));
            FH.put(BO, resources.getString(R.string.country_name_bo));
            FH.put(GY, resources.getString(R.string.country_name_gy));
            FH.put(EC, resources.getString(R.string.country_name_ec));
            FH.put(GF, resources.getString(R.string.country_name_gf));
            FH.put(PY, resources.getString(R.string.country_name_py));
            FH.put(MQ, resources.getString(R.string.country_name_mq));
            FH.put(SR, resources.getString(R.string.country_name_sr));
            FH.put(UY, resources.getString(R.string.country_name_uy));
            FH.put(AN, resources.getString(R.string.country_name_an));
            FH.put(MY, resources.getString(R.string.country_name_my));
            FH.put(AU, resources.getString(R.string.country_name_au));
            FH.put(ID, resources.getString(R.string.country_name_id));
            FH.put(PH, resources.getString(R.string.country_name_ph));
            FH.put(NZ, resources.getString(R.string.country_name_nz));
            FH.put(SG, resources.getString(R.string.country_name_sg));
            FH.put(TH, resources.getString(R.string.country_name_th));
            FH.put(TL, resources.getString(R.string.country_name_tl));
            FH.put(BN, resources.getString(R.string.country_name_bn));
            FH.put(NR, resources.getString(R.string.country_name_nr));
            FH.put(PG, resources.getString(R.string.country_name_pg));
            FH.put(TO, resources.getString(R.string.country_name_to));
            FH.put(SB, resources.getString(R.string.country_name_sb));
            FH.put(VU, resources.getString(R.string.country_name_vu));
            FH.put(FJ, resources.getString(R.string.country_name_fj));
            FH.put(PW, resources.getString(R.string.country_name_pw));
            FH.put(WF, resources.getString(R.string.country_name_wf));
            FH.put(CK, resources.getString(R.string.country_name_ck));
            FH.put(NU, resources.getString(R.string.country_name_nu));
            FH.put(WS, resources.getString(R.string.country_name_ws));
            FH.put(KI, resources.getString(R.string.country_name_ki));
            FH.put(NC, resources.getString(R.string.country_name_nc));
            FH.put(TV, resources.getString(R.string.country_name_tv));
            FH.put(PF, resources.getString(R.string.country_name_pf));
            FH.put(TK, resources.getString(R.string.country_name_tk));
            FH.put(FM, resources.getString(R.string.country_name_fm));
            FH.put(MH, resources.getString(R.string.country_name_mh));
            FH.put("7", resources.getString(R.string.country_name_ru_kz));
            FH.put(JP, resources.getString(R.string.country_name_jp));
            FH.put(KR, resources.getString(R.string.country_name_kr));
            FH.put(VN, resources.getString(R.string.country_name_vn));
            FH.put(KP, resources.getString(R.string.country_name_kp));
            FH.put(HK, resources.getString(R.string.country_name_hk));
            FH.put(MO, resources.getString(R.string.country_name_mo));
            FH.put(KH, resources.getString(R.string.country_name_kh));
            FH.put(LA, resources.getString(R.string.country_name_la));
            FH.put(CN, resources.getString(R.string.country_name_cn));
            FH.put(BD, resources.getString(R.string.country_name_bd));
            FH.put(TW, resources.getString(R.string.country_name_tw));
            FH.put(TR, resources.getString(R.string.country_name_tr));
            FH.put(IN, resources.getString(R.string.country_name_in));
            FH.put(PK, resources.getString(R.string.country_name_pk));
            FH.put(AF, resources.getString(R.string.country_name_af));
            FH.put(LK, resources.getString(R.string.country_name_lk));
            FH.put(MM, resources.getString(R.string.country_name_mm));
            FH.put(MV, resources.getString(R.string.country_name_mv));
            FH.put(LB, resources.getString(R.string.country_name_lb));
            FH.put(JO, resources.getString(R.string.country_name_jo));
            FH.put(SY, resources.getString(R.string.country_name_sy));
            FH.put(IQ, resources.getString(R.string.country_name_iq));
            FH.put(KW, resources.getString(R.string.country_name_kw));
            FH.put(SA, resources.getString(R.string.country_name_sa));
            FH.put(YE, resources.getString(R.string.country_name_ye));
            FH.put(OM, resources.getString(R.string.country_name_om));
            FH.put(PS, resources.getString(R.string.country_name_ps));
            FH.put(AE, resources.getString(R.string.country_name_ae));
            FH.put(IL, resources.getString(R.string.country_name_il));
            FH.put(BH, resources.getString(R.string.country_name_bh));
            FH.put(QA, resources.getString(R.string.country_name_qa));
            FH.put(BT, resources.getString(R.string.country_name_bt));
            FH.put(MN, resources.getString(R.string.country_name_mn));
            FH.put(NP, resources.getString(R.string.country_name_np));
            FH.put(IR, resources.getString(R.string.country_name_ir));
            FH.put(TJ, resources.getString(R.string.country_name_tj));
            FH.put(TM, resources.getString(R.string.country_name_tm));
            FH.put(AZ, resources.getString(R.string.country_name_az));
            FH.put(GE, resources.getString(R.string.country_name_ge));
            FH.put(KG, resources.getString(R.string.country_name_kg));
            FH.put(UZ, resources.getString(R.string.country_name_uz));
        }
    }

    public static boolean isChinaEnvironment(String str, String str2) {
        return CN.equals(str) || CN.equals(str2);
    }

    public static String getCountryCode(String str) {
        return (String) FL.get(str);
    }

    public static String getIddCode(String str) {
        return FN.get(str) != null ? (String) ((List) FN.get(str)).get(0) : null;
    }

    public static List<String> getIddCodes(String str) {
        return (List) FN.get(str);
    }

    public static String toName(String str) {
        cW();
        str = (String) FH.get(str);
        return str == null ? "" : str;
    }

    public static boolean isValidCountryCode(String str) {
        cW();
        return FH.containsKey(str);
    }

    public static String parse(StringBuffer stringBuffer, int i, int i2) {
        if (i2 <= 0) {
            return "";
        }
        char charAt;
        char charAt2;
        char charAt3;
        switch (stringBuffer.charAt(i)) {
            case '1':
                if (i2 > 3) {
                    charAt = stringBuffer.charAt(i + 2);
                    charAt2 = stringBuffer.charAt(i + 3);
                    switch (stringBuffer.charAt(i + 1)) {
                        case '2':
                            if (charAt == '4') {
                                if (charAt2 == '2') {
                                    return BS;
                                }
                                if (charAt2 == '6') {
                                    return BB;
                                }
                            } else if (charAt == '6') {
                                if (charAt2 == '4') {
                                    return AI;
                                }
                                if (charAt2 == '8') {
                                    return AG;
                                }
                            } else if (charAt == '8' && charAt2 == '4') {
                                return VG;
                            }
                            break;
                        case '3':
                            if (charAt == '4') {
                                if (charAt2 == '0') {
                                    return VI;
                                }
                                if (charAt2 == '5') {
                                    return KY;
                                }
                            }
                            break;
                        case '4':
                            if (charAt == '4' && charAt2 == '1') {
                                return BM;
                            }
                            if (charAt == '7' && charAt2 == '3') {
                                return GD;
                            }
                            break;
                        case '6':
                            if (charAt == '4' && charAt2 == '9') {
                                return TC;
                            }
                            if (charAt == '6' && charAt2 == '4') {
                                return MS;
                            }
                            if (charAt == '7') {
                                if (charAt2 == '0') {
                                    return MP;
                                }
                                if (charAt2 == '1') {
                                    return GU;
                                }
                            }
                            if (charAt == '8' && charAt2 == '4') {
                                return AS;
                            }
                            break;
                        case '7':
                            if (charAt == '2' && charAt2 == '1') {
                                return SX;
                            }
                            if (charAt == '5' && charAt2 == '8') {
                                return LC;
                            }
                            if (charAt == '6' && charAt2 == '7') {
                                return DM;
                            }
                            if (charAt == '8') {
                                if (charAt2 == '4') {
                                    return VC;
                                }
                                if (charAt2 == '7') {
                                    return PR;
                                }
                            }
                            break;
                        case '8':
                            if (charAt == '0' && charAt2 == '9') {
                                return DO;
                            }
                            if (charAt == '2' && charAt2 == '9') {
                                return DO1;
                            }
                            if (charAt == '4' && charAt2 == '9') {
                                return DO2;
                            }
                            if (charAt == '6') {
                                if (charAt2 == '8') {
                                    return TT;
                                }
                                if (charAt2 == '9') {
                                    return KN;
                                }
                            }
                            if (charAt == '7' && charAt2 == '6') {
                                return JM;
                            }
                            break;
                        case '9':
                            if (charAt == '3' && charAt2 == '9') {
                                return PR1;
                            }
                    }
                }
                return "1";
            case '2':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            return EG;
                        case '1':
                            if (i2 > 2) {
                                charAt3 = stringBuffer.charAt(i + 2);
                                if (charAt3 == '6') {
                                    return TN;
                                }
                                if (charAt3 == '8') {
                                    return LY;
                                }
                                switch (charAt3) {
                                    case '2':
                                        return MA;
                                    case '3':
                                        return DZ;
                                }
                            }
                            break;
                        case '2':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return GM;
                                    case '1':
                                        return SN;
                                    case '2':
                                        return MR;
                                    case '3':
                                        return ML;
                                    case '4':
                                        return GN;
                                    case '5':
                                        return CI;
                                    case '6':
                                        return BF;
                                    case '7':
                                        return NE;
                                    case '8':
                                        return TG;
                                    case '9':
                                        return BJ;
                                }
                            }
                            break;
                        case '3':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return MU;
                                    case '1':
                                        return LR;
                                    case '2':
                                        return SL;
                                    case '3':
                                        return GH;
                                    case '4':
                                        return NG;
                                    case '5':
                                        return TD;
                                    case '6':
                                        return CF;
                                    case '7':
                                        return CM;
                                    case '8':
                                        return CV;
                                    case '9':
                                        return ST;
                                }
                            }
                            break;
                        case '4':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return GQ;
                                    case '1':
                                        return GA;
                                    case '2':
                                        return CG;
                                    case '3':
                                        return CD;
                                    case '4':
                                        return AO;
                                    case '5':
                                        return GW;
                                    case '6':
                                        return IO;
                                    case '7':
                                        return AC;
                                    case '8':
                                        return SC;
                                    case '9':
                                        return SD;
                                }
                            }
                            break;
                        case '5':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return RW;
                                    case '1':
                                        return ET;
                                    case '2':
                                        return SO;
                                    case '3':
                                        return DJ;
                                    case '4':
                                        return KE;
                                    case '5':
                                        return TZ;
                                    case '6':
                                        return UG;
                                    case '7':
                                        return BI;
                                    case '8':
                                        return MZ;
                                }
                            }
                            break;
                        case '6':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return ZM;
                                    case '1':
                                        return MG;
                                    case '2':
                                        return RE_YT;
                                    case '3':
                                        return ZW;
                                    case '4':
                                        return NA;
                                    case '5':
                                        return MW;
                                    case '6':
                                        return LS;
                                    case '7':
                                        return BW;
                                    case '8':
                                        return SZ;
                                    case '9':
                                        return KM;
                                }
                            }
                            break;
                        case '7':
                            return ZA;
                        case '9':
                            if (i2 > 2) {
                                charAt3 = stringBuffer.charAt(i + 2);
                                switch (charAt3) {
                                    case '0':
                                        return SH;
                                    case '1':
                                        return ER;
                                    default:
                                        switch (charAt3) {
                                            case '7':
                                                return AW;
                                            case '8':
                                                return FO;
                                            case '9':
                                                return GL;
                                        }
                                        break;
                                }
                            }
                            break;
                    }
                }
                break;
            case '3':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            return GR;
                        case '1':
                            return NL;
                        case '2':
                            return BE;
                        case '3':
                            return FR;
                        case '4':
                            return ES;
                        case '5':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return GI;
                                    case '1':
                                        return PT;
                                    case '2':
                                        return LU;
                                    case '3':
                                        return IE;
                                    case '4':
                                        return IS;
                                    case '5':
                                        return AL;
                                    case '6':
                                        return MT;
                                    case '7':
                                        return CY;
                                    case '8':
                                        return FI;
                                    case '9':
                                        return BG;
                                }
                            }
                            break;
                        case '6':
                            return HU;
                        case '7':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return LT;
                                    case '1':
                                        return LV;
                                    case '2':
                                        return EE;
                                    case '3':
                                        return MD;
                                    case '4':
                                        return AM;
                                    case '5':
                                        return BY;
                                    case '6':
                                        return AD;
                                    case '7':
                                        return MC;
                                    case '8':
                                        return SM;
                                }
                            }
                            break;
                        case '8':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return UA;
                                    case '1':
                                        return RS;
                                    case '2':
                                        return ME;
                                    case '5':
                                        return HR;
                                    case '6':
                                        return SI;
                                    case '7':
                                        return BA;
                                    case '9':
                                        return MK;
                                }
                            }
                            break;
                        case '9':
                            if (i2 > 6 && stringBuffer.charAt(i + 2) == '0' && stringBuffer.charAt(i + 3) == '6' && stringBuffer.charAt(i + 4) == '6' && stringBuffer.charAt(i + 5) == '9' && stringBuffer.charAt(i + 6) == '8') {
                                return VA;
                            }
                            return IT;
                    }
                }
                break;
            case '4':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            return RO;
                        case '1':
                            return CH;
                        case '2':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return CZ;
                                    case '1':
                                        return SK;
                                    case '3':
                                        return LI;
                                }
                            }
                            break;
                        case '3':
                            return AT;
                        case '4':
                            if (i2 > 5) {
                                charAt = stringBuffer.charAt(i + 3);
                                charAt2 = stringBuffer.charAt(i + 4);
                                char charAt4 = stringBuffer.charAt(i + 5);
                                charAt3 = stringBuffer.charAt(i + 2);
                                if (charAt3 != '1') {
                                    if (charAt3 == '7') {
                                        if (charAt == '5' && charAt2 == '0' && charAt4 == '9') {
                                            return JE1;
                                        }
                                        if (charAt == '5' && charAt2 == '2' && charAt4 == '4') {
                                            return IM1;
                                        }
                                        if (charAt == '6' && charAt2 == '2' && charAt4 == '4') {
                                            return IM2;
                                        }
                                        if (charAt == '7' && charAt2 == '0' && charAt4 == '0') {
                                            return JE2;
                                        }
                                        if (charAt == '7' && charAt2 == '8' && charAt4 == '1') {
                                            return GG1;
                                        }
                                        if (charAt == '7' && charAt2 == '9' && charAt4 == '7') {
                                            return JE3;
                                        }
                                        if (charAt == '8' && charAt2 == '2' && charAt4 == '9') {
                                            return JE4;
                                        }
                                        if (charAt == '8' && charAt2 == '3' && charAt4 == '9') {
                                            return GG2;
                                        }
                                        if (charAt == '9' && charAt2 == '1' && charAt4 == '1') {
                                            return GG3;
                                        }
                                        if (charAt == '9' && charAt2 == '2' && charAt4 == '4') {
                                            return IM3;
                                        }
                                    }
                                } else if (charAt == '4' && charAt2 == '8' && charAt4 == '1') {
                                    return GG;
                                } else {
                                    if (charAt == '5' && charAt2 == '3' && charAt4 == '4') {
                                        return JE;
                                    }
                                    if (charAt == '6' && charAt2 == '2' && charAt4 == '4') {
                                        return IM;
                                    }
                                }
                            }
                            return UK;
                        case '5':
                            return DK;
                        case '6':
                            return SE;
                        case '7':
                            return NO;
                        case '8':
                            return PL;
                        case '9':
                            return DE;
                    }
                }
                break;
            case '5':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return FK;
                                    case '1':
                                        return BZ;
                                    case '2':
                                        return GT;
                                    case '3':
                                        return SV;
                                    case '4':
                                        return HN;
                                    case '5':
                                        return NI;
                                    case '6':
                                        return CR;
                                    case '7':
                                        return PA;
                                    case '8':
                                        return PM;
                                    case '9':
                                        return HT;
                                }
                            }
                            break;
                        case '1':
                            return PE;
                        case '2':
                            return MX;
                        case '3':
                            return CU;
                        case '4':
                            return AR;
                        case '5':
                            return BR;
                        case '6':
                            return CL;
                        case '7':
                            return CO;
                        case '8':
                            return VE;
                        case '9':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return GP_BL_MF;
                                    case '1':
                                        return BO;
                                    case '2':
                                        return GY;
                                    case '3':
                                        return EC;
                                    case '4':
                                        return GF;
                                    case '5':
                                        return PY;
                                    case '6':
                                        return MQ;
                                    case '7':
                                        return SR;
                                    case '8':
                                        return UY;
                                    case '9':
                                        return AN;
                                }
                            }
                            break;
                    }
                }
                break;
            case '6':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            return MY;
                        case '1':
                            return AU;
                        case '2':
                            return ID;
                        case '3':
                            return PH;
                        case '4':
                            return NZ;
                        case '5':
                            return SG;
                        case '6':
                            return TH;
                        case '7':
                            if (i2 > 2) {
                                charAt3 = stringBuffer.charAt(i + 2);
                                if (charAt3 == '0') {
                                    return TL;
                                }
                                switch (charAt3) {
                                    case '3':
                                        return BN;
                                    case '4':
                                        return NR;
                                    case '5':
                                        return PG;
                                    case '6':
                                        return TO;
                                    case '7':
                                        return SB;
                                    case '8':
                                        return VU;
                                    case '9':
                                        return FJ;
                                }
                            }
                            break;
                        case '8':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return PW;
                                    case '1':
                                        return WF;
                                    case '2':
                                        return CK;
                                    case '3':
                                        return NU;
                                    case '5':
                                        return WS;
                                    case '6':
                                        return KI;
                                    case '7':
                                        return NC;
                                    case '8':
                                        return TV;
                                    case '9':
                                        return PF;
                                }
                            }
                            break;
                        case '9':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return TK;
                                    case '1':
                                        return FM;
                                    case '2':
                                        return MH;
                                }
                            }
                            break;
                    }
                }
                break;
            case '7':
                return "7";
            case '8':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '1':
                            return JP;
                        case '2':
                            return KR;
                        case '4':
                            return VN;
                        case '5':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return KP;
                                    case '2':
                                        return HK;
                                    case '3':
                                        return MO;
                                    case '5':
                                        return KH;
                                    case '6':
                                        return LA;
                                }
                            }
                            break;
                        case '6':
                            return CN;
                        case '8':
                            if (i2 > 2) {
                                charAt3 = stringBuffer.charAt(i + 2);
                                if (charAt3 == '0') {
                                    return BD;
                                }
                                if (charAt3 == '6') {
                                    return TW;
                                }
                            }
                            break;
                    }
                }
                break;
            case '9':
                if (i2 > 1) {
                    switch (stringBuffer.charAt(i + 1)) {
                        case '0':
                            return TR;
                        case '1':
                            return IN;
                        case '2':
                            return PK;
                        case '3':
                            return AF;
                        case '4':
                            return LK;
                        case '5':
                            return MM;
                        case '6':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return MV;
                                    case '1':
                                        return LB;
                                    case '2':
                                        return JO;
                                    case '3':
                                        return SY;
                                    case '4':
                                        return IQ;
                                    case '5':
                                        return KW;
                                    case '6':
                                        return SA;
                                    case '7':
                                        return YE;
                                    case '8':
                                        return OM;
                                }
                            }
                            break;
                        case '7':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '0':
                                        return PS;
                                    case '1':
                                        return AE;
                                    case '2':
                                        return IL;
                                    case '3':
                                        return BH;
                                    case '4':
                                        return QA;
                                    case '5':
                                        return BT;
                                    case '6':
                                        return MN;
                                    case '7':
                                        return NP;
                                }
                            }
                            break;
                        case '8':
                            return IR;
                        case '9':
                            if (i2 > 2) {
                                switch (stringBuffer.charAt(i + 2)) {
                                    case '2':
                                        return TJ;
                                    case '3':
                                        return TM;
                                    case '4':
                                        return AZ;
                                    case '5':
                                        return GE;
                                    case '6':
                                        return KG;
                                    case '8':
                                        return UZ;
                                }
                            }
                            break;
                    }
                }
                break;
        }
        return "";
    }
}
