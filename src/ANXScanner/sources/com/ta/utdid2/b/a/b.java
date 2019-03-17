package com.ta.utdid2.b.a;

import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.wireless.security.SecExceptionCode;
import com.taobao.ma.decode.DecodeType;
import java.io.UnsupportedEncodingException;

/* compiled from: Base64 */
public class b {
    static final /* synthetic */ boolean a;

    /* compiled from: Base64 */
    static abstract class a {
        public int a;
        public byte[] b;

        a() {
        }
    }

    /* compiled from: Base64 */
    static class b extends a {
        private static final int[] a;
        private static final int[] b;
        private final int[] c;
        private int state;
        private int value;

        static {
            int[] iArr = new int[256];
            iArr[0] = -1;
            iArr[1] = -1;
            iArr[2] = -1;
            iArr[3] = -1;
            iArr[4] = -1;
            iArr[5] = -1;
            iArr[6] = -1;
            iArr[7] = -1;
            iArr[8] = -1;
            iArr[9] = -1;
            iArr[10] = -1;
            iArr[11] = -1;
            iArr[12] = -1;
            iArr[13] = -1;
            iArr[14] = -1;
            iArr[15] = -1;
            iArr[16] = -1;
            iArr[17] = -1;
            iArr[18] = -1;
            iArr[19] = -1;
            iArr[20] = -1;
            iArr[21] = -1;
            iArr[22] = -1;
            iArr[23] = -1;
            iArr[24] = -1;
            iArr[25] = -1;
            iArr[26] = -1;
            iArr[27] = -1;
            iArr[28] = -1;
            iArr[29] = -1;
            iArr[30] = -1;
            iArr[31] = -1;
            iArr[32] = -1;
            iArr[33] = -1;
            iArr[34] = -1;
            iArr[35] = -1;
            iArr[36] = -1;
            iArr[37] = -1;
            iArr[38] = -1;
            iArr[39] = -1;
            iArr[40] = -1;
            iArr[41] = -1;
            iArr[42] = -1;
            iArr[43] = 62;
            iArr[44] = -1;
            iArr[45] = -1;
            iArr[46] = -1;
            iArr[47] = 63;
            iArr[48] = 52;
            iArr[49] = 53;
            iArr[50] = 54;
            iArr[51] = 55;
            iArr[52] = 56;
            iArr[53] = 57;
            iArr[54] = 58;
            iArr[55] = 59;
            iArr[56] = 60;
            iArr[57] = 61;
            iArr[58] = -1;
            iArr[59] = -1;
            iArr[60] = -1;
            iArr[61] = -2;
            iArr[62] = -1;
            iArr[63] = -1;
            iArr[64] = -1;
            iArr[66] = 1;
            iArr[67] = 2;
            iArr[68] = 3;
            iArr[69] = 4;
            iArr[70] = 5;
            iArr[71] = 6;
            iArr[72] = 7;
            iArr[73] = 8;
            iArr[74] = 9;
            iArr[75] = 10;
            iArr[76] = 11;
            iArr[77] = 12;
            iArr[78] = 13;
            iArr[79] = 14;
            iArr[80] = 15;
            iArr[81] = 16;
            iArr[82] = 17;
            iArr[83] = 18;
            iArr[84] = 19;
            iArr[85] = 20;
            iArr[86] = 21;
            iArr[87] = 22;
            iArr[88] = 23;
            iArr[89] = 24;
            iArr[90] = 25;
            iArr[91] = -1;
            iArr[92] = -1;
            iArr[93] = -1;
            iArr[94] = -1;
            iArr[95] = -1;
            iArr[96] = -1;
            iArr[97] = 26;
            iArr[98] = 27;
            iArr[99] = 28;
            iArr[100] = 29;
            iArr[101] = 30;
            iArr[102] = 31;
            iArr[103] = 32;
            iArr[104] = 33;
            iArr[105] = 34;
            iArr[106] = 35;
            iArr[107] = 36;
            iArr[108] = 37;
            iArr[109] = 38;
            iArr[110] = 39;
            iArr[111] = 40;
            iArr[112] = 41;
            iArr[113] = 42;
            iArr[114] = 43;
            iArr[115] = 44;
            iArr[116] = 45;
            iArr[117] = 46;
            iArr[118] = 47;
            iArr[SecExceptionCode.SEC_ERROR_SET_GLOBAL_USER_DATA] = 48;
            iArr[120] = 49;
            iArr[SecExceptionCode.SEC_ERROR_INIT_DATA_FILE_MISMATCH] = 50;
            iArr[SecExceptionCode.SEC_ERROR_INIT_NO_DATA_FILE] = 51;
            iArr[SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_LOW_VERSION_DATA] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR] = -1;
            iArr[Opcodes.IAND] = -1;
            iArr[DecodeType.ONE] = -1;
            iArr[128] = -1;
            iArr[129] = -1;
            iArr[130] = -1;
            iArr[131] = -1;
            iArr[132] = -1;
            iArr[133] = -1;
            iArr[134] = -1;
            iArr[135] = -1;
            iArr[136] = -1;
            iArr[137] = -1;
            iArr[138] = -1;
            iArr[139] = -1;
            iArr[140] = -1;
            iArr[141] = -1;
            iArr[142] = -1;
            iArr[143] = -1;
            iArr[144] = -1;
            iArr[145] = -1;
            iArr[146] = -1;
            iArr[147] = -1;
            iArr[Opcodes.LCMP] = -1;
            iArr[Opcodes.FCMPL] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_NO_ANNOTATION] = -1;
            iArr[Opcodes.DCMPL] = -1;
            iArr[152] = -1;
            iArr[Opcodes.IFEQ] = -1;
            iArr[Opcodes.IFNE] = -1;
            iArr[155] = -1;
            iArr[156] = -1;
            iArr[157] = -1;
            iArr[Opcodes.IFLE] = -1;
            iArr[Opcodes.IF_ICMPEQ] = -1;
            iArr[Opcodes.IF_ICMPNE] = -1;
            iArr[Opcodes.IF_ICMPLT] = -1;
            iArr[Opcodes.IF_ICMPGE] = -1;
            iArr[Opcodes.IF_ICMPGT] = -1;
            iArr[164] = -1;
            iArr[Opcodes.IF_ACMPEQ] = -1;
            iArr[Opcodes.IF_ACMPNE] = -1;
            iArr[Opcodes.GOTO] = -1;
            iArr[168] = -1;
            iArr[Opcodes.RET] = -1;
            iArr[170] = -1;
            iArr[171] = -1;
            iArr[172] = -1;
            iArr[173] = -1;
            iArr[174] = -1;
            iArr[175] = -1;
            iArr[Opcodes.ARETURN] = -1;
            iArr[Opcodes.RETURN] = -1;
            iArr[Opcodes.GETSTATIC] = -1;
            iArr[179] = -1;
            iArr[Opcodes.GETFIELD] = -1;
            iArr[Opcodes.PUTFIELD] = -1;
            iArr[Opcodes.INVOKEVIRTUAL] = -1;
            iArr[Opcodes.INVOKESPECIAL] = -1;
            iArr[Opcodes.INVOKESTATIC] = -1;
            iArr[Opcodes.INVOKEINTERFACE] = -1;
            iArr[186] = -1;
            iArr[Opcodes.NEW] = -1;
            iArr[Opcodes.NEWARRAY] = -1;
            iArr[189] = -1;
            iArr[190] = -1;
            iArr[191] = -1;
            iArr[Opcodes.CHECKCAST] = -1;
            iArr[Opcodes.INSTANCEOF] = -1;
            iArr[194] = -1;
            iArr[195] = -1;
            iArr[196] = -1;
            iArr[197] = -1;
            iArr[Opcodes.IFNULL] = -1;
            iArr[199] = -1;
            iArr[200] = -1;
            iArr[201] = -1;
            iArr[202] = -1;
            iArr[203] = -1;
            iArr[204] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_INCORRECT_DATA_FILE_DATA] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_KEY_NOT_EXSITED] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_NO_MEMORY] = -1;
            iArr[209] = -1;
            iArr[210] = -1;
            iArr[211] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_LOW_VERSION_DATA_FILE] = -1;
            iArr[213] = -1;
            iArr[214] = -1;
            iArr[215] = -1;
            iArr[216] = -1;
            iArr[217] = -1;
            iArr[218] = -1;
            iArr[219] = -1;
            iArr[220] = -1;
            iArr[221] = -1;
            iArr[222] = -1;
            iArr[223] = -1;
            iArr[224] = -1;
            iArr[225] = -1;
            iArr[226] = -1;
            iArr[227] = -1;
            iArr[228] = -1;
            iArr[229] = -1;
            iArr[230] = -1;
            iArr[231] = -1;
            iArr[232] = -1;
            iArr[233] = -1;
            iArr[234] = -1;
            iArr[235] = -1;
            iArr[236] = -1;
            iArr[237] = -1;
            iArr[238] = -1;
            iArr[239] = -1;
            iArr[240] = -1;
            iArr[241] = -1;
            iArr[242] = -1;
            iArr[243] = -1;
            iArr[244] = -1;
            iArr[245] = -1;
            iArr[246] = -1;
            iArr[247] = -1;
            iArr[248] = -1;
            iArr[249] = -1;
            iArr[250] = -1;
            iArr[251] = -1;
            iArr[252] = -1;
            iArr[253] = -1;
            iArr[254] = -1;
            iArr[255] = -1;
            a = iArr;
            iArr = new int[256];
            iArr[0] = -1;
            iArr[1] = -1;
            iArr[2] = -1;
            iArr[3] = -1;
            iArr[4] = -1;
            iArr[5] = -1;
            iArr[6] = -1;
            iArr[7] = -1;
            iArr[8] = -1;
            iArr[9] = -1;
            iArr[10] = -1;
            iArr[11] = -1;
            iArr[12] = -1;
            iArr[13] = -1;
            iArr[14] = -1;
            iArr[15] = -1;
            iArr[16] = -1;
            iArr[17] = -1;
            iArr[18] = -1;
            iArr[19] = -1;
            iArr[20] = -1;
            iArr[21] = -1;
            iArr[22] = -1;
            iArr[23] = -1;
            iArr[24] = -1;
            iArr[25] = -1;
            iArr[26] = -1;
            iArr[27] = -1;
            iArr[28] = -1;
            iArr[29] = -1;
            iArr[30] = -1;
            iArr[31] = -1;
            iArr[32] = -1;
            iArr[33] = -1;
            iArr[34] = -1;
            iArr[35] = -1;
            iArr[36] = -1;
            iArr[37] = -1;
            iArr[38] = -1;
            iArr[39] = -1;
            iArr[40] = -1;
            iArr[41] = -1;
            iArr[42] = -1;
            iArr[43] = -1;
            iArr[44] = -1;
            iArr[45] = 62;
            iArr[46] = -1;
            iArr[47] = -1;
            iArr[48] = 52;
            iArr[49] = 53;
            iArr[50] = 54;
            iArr[51] = 55;
            iArr[52] = 56;
            iArr[53] = 57;
            iArr[54] = 58;
            iArr[55] = 59;
            iArr[56] = 60;
            iArr[57] = 61;
            iArr[58] = -1;
            iArr[59] = -1;
            iArr[60] = -1;
            iArr[61] = -2;
            iArr[62] = -1;
            iArr[63] = -1;
            iArr[64] = -1;
            iArr[66] = 1;
            iArr[67] = 2;
            iArr[68] = 3;
            iArr[69] = 4;
            iArr[70] = 5;
            iArr[71] = 6;
            iArr[72] = 7;
            iArr[73] = 8;
            iArr[74] = 9;
            iArr[75] = 10;
            iArr[76] = 11;
            iArr[77] = 12;
            iArr[78] = 13;
            iArr[79] = 14;
            iArr[80] = 15;
            iArr[81] = 16;
            iArr[82] = 17;
            iArr[83] = 18;
            iArr[84] = 19;
            iArr[85] = 20;
            iArr[86] = 21;
            iArr[87] = 22;
            iArr[88] = 23;
            iArr[89] = 24;
            iArr[90] = 25;
            iArr[91] = -1;
            iArr[92] = -1;
            iArr[93] = -1;
            iArr[94] = -1;
            iArr[95] = 63;
            iArr[96] = -1;
            iArr[97] = 26;
            iArr[98] = 27;
            iArr[99] = 28;
            iArr[100] = 29;
            iArr[101] = 30;
            iArr[102] = 31;
            iArr[103] = 32;
            iArr[104] = 33;
            iArr[105] = 34;
            iArr[106] = 35;
            iArr[107] = 36;
            iArr[108] = 37;
            iArr[109] = 38;
            iArr[110] = 39;
            iArr[111] = 40;
            iArr[112] = 41;
            iArr[113] = 42;
            iArr[114] = 43;
            iArr[115] = 44;
            iArr[116] = 45;
            iArr[117] = 46;
            iArr[118] = 47;
            iArr[SecExceptionCode.SEC_ERROR_SET_GLOBAL_USER_DATA] = 48;
            iArr[120] = 49;
            iArr[SecExceptionCode.SEC_ERROR_INIT_DATA_FILE_MISMATCH] = 50;
            iArr[SecExceptionCode.SEC_ERROR_INIT_NO_DATA_FILE] = 51;
            iArr[SecExceptionCode.SEC_ERROR_INIT_INCORRECT_DATA_FILE] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_LOW_VERSION_DATA] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_PARSE_USER_CONFIG_ERROR] = -1;
            iArr[Opcodes.IAND] = -1;
            iArr[DecodeType.ONE] = -1;
            iArr[128] = -1;
            iArr[129] = -1;
            iArr[130] = -1;
            iArr[131] = -1;
            iArr[132] = -1;
            iArr[133] = -1;
            iArr[134] = -1;
            iArr[135] = -1;
            iArr[136] = -1;
            iArr[137] = -1;
            iArr[138] = -1;
            iArr[139] = -1;
            iArr[140] = -1;
            iArr[141] = -1;
            iArr[142] = -1;
            iArr[143] = -1;
            iArr[144] = -1;
            iArr[145] = -1;
            iArr[146] = -1;
            iArr[147] = -1;
            iArr[Opcodes.LCMP] = -1;
            iArr[Opcodes.FCMPL] = -1;
            iArr[SecExceptionCode.SEC_ERROR_INIT_NO_ANNOTATION] = -1;
            iArr[Opcodes.DCMPL] = -1;
            iArr[152] = -1;
            iArr[Opcodes.IFEQ] = -1;
            iArr[Opcodes.IFNE] = -1;
            iArr[155] = -1;
            iArr[156] = -1;
            iArr[157] = -1;
            iArr[Opcodes.IFLE] = -1;
            iArr[Opcodes.IF_ICMPEQ] = -1;
            iArr[Opcodes.IF_ICMPNE] = -1;
            iArr[Opcodes.IF_ICMPLT] = -1;
            iArr[Opcodes.IF_ICMPGE] = -1;
            iArr[Opcodes.IF_ICMPGT] = -1;
            iArr[164] = -1;
            iArr[Opcodes.IF_ACMPEQ] = -1;
            iArr[Opcodes.IF_ACMPNE] = -1;
            iArr[Opcodes.GOTO] = -1;
            iArr[168] = -1;
            iArr[Opcodes.RET] = -1;
            iArr[170] = -1;
            iArr[171] = -1;
            iArr[172] = -1;
            iArr[173] = -1;
            iArr[174] = -1;
            iArr[175] = -1;
            iArr[Opcodes.ARETURN] = -1;
            iArr[Opcodes.RETURN] = -1;
            iArr[Opcodes.GETSTATIC] = -1;
            iArr[179] = -1;
            iArr[Opcodes.GETFIELD] = -1;
            iArr[Opcodes.PUTFIELD] = -1;
            iArr[Opcodes.INVOKEVIRTUAL] = -1;
            iArr[Opcodes.INVOKESPECIAL] = -1;
            iArr[Opcodes.INVOKESTATIC] = -1;
            iArr[Opcodes.INVOKEINTERFACE] = -1;
            iArr[186] = -1;
            iArr[Opcodes.NEW] = -1;
            iArr[Opcodes.NEWARRAY] = -1;
            iArr[189] = -1;
            iArr[190] = -1;
            iArr[191] = -1;
            iArr[Opcodes.CHECKCAST] = -1;
            iArr[Opcodes.INSTANCEOF] = -1;
            iArr[194] = -1;
            iArr[195] = -1;
            iArr[196] = -1;
            iArr[197] = -1;
            iArr[Opcodes.IFNULL] = -1;
            iArr[199] = -1;
            iArr[200] = -1;
            iArr[201] = -1;
            iArr[202] = -1;
            iArr[203] = -1;
            iArr[204] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_INCORRECT_DATA_FILE_DATA] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_KEY_NOT_EXSITED] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_NO_MEMORY] = -1;
            iArr[209] = -1;
            iArr[210] = -1;
            iArr[211] = -1;
            iArr[SecExceptionCode.SEC_ERROR_STA_STORE_LOW_VERSION_DATA_FILE] = -1;
            iArr[213] = -1;
            iArr[214] = -1;
            iArr[215] = -1;
            iArr[216] = -1;
            iArr[217] = -1;
            iArr[218] = -1;
            iArr[219] = -1;
            iArr[220] = -1;
            iArr[221] = -1;
            iArr[222] = -1;
            iArr[223] = -1;
            iArr[224] = -1;
            iArr[225] = -1;
            iArr[226] = -1;
            iArr[227] = -1;
            iArr[228] = -1;
            iArr[229] = -1;
            iArr[230] = -1;
            iArr[231] = -1;
            iArr[232] = -1;
            iArr[233] = -1;
            iArr[234] = -1;
            iArr[235] = -1;
            iArr[236] = -1;
            iArr[237] = -1;
            iArr[238] = -1;
            iArr[239] = -1;
            iArr[240] = -1;
            iArr[241] = -1;
            iArr[242] = -1;
            iArr[243] = -1;
            iArr[244] = -1;
            iArr[245] = -1;
            iArr[246] = -1;
            iArr[247] = -1;
            iArr[248] = -1;
            iArr[249] = -1;
            iArr[250] = -1;
            iArr[251] = -1;
            iArr[252] = -1;
            iArr[253] = -1;
            iArr[254] = -1;
            iArr[255] = -1;
            b = iArr;
        }

        public b(int i, byte[] bArr) {
            this.b = bArr;
            this.c = (i & 8) == 0 ? a : b;
            this.state = 0;
            this.value = 0;
        }

        /* JADX WARNING: Removed duplicated region for block: B:64:0x0052 A:{SYNTHETIC} */
        /* JADX WARNING: Removed duplicated region for block: B:54:0x0115  */
        /* JADX WARNING: Removed duplicated region for block: B:7:0x0019  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(byte[] bArr, int i, int i2, boolean z) {
            if (this.state == 6) {
                return false;
            }
            int i3 = i2 + i;
            int i4 = this.state;
            int i5 = this.value;
            int i6 = 0;
            byte[] bArr2 = this.b;
            int[] iArr = this.c;
            int i7 = i4;
            i4 = i;
            while (i4 < i3) {
                if (i7 == 0) {
                    while (i4 + 4 <= i3) {
                        i5 = (((iArr[bArr[i4] & 255] << 18) | (iArr[bArr[i4 + 1] & 255] << 12)) | (iArr[bArr[i4 + 2] & 255] << 6)) | iArr[bArr[i4 + 3] & 255];
                        if (i5 >= 0) {
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i4 += 4;
                        } else if (i4 >= i3) {
                            i4 = i5;
                            if (z) {
                                this.state = i7;
                                this.value = i4;
                                this.a = i6;
                                return true;
                            }
                            switch (i7) {
                                case 1:
                                    this.state = 6;
                                    return false;
                                case 2:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i4 >> 4);
                                    i6 = i5;
                                    break;
                                case 3:
                                    i5 = i6 + 1;
                                    bArr2[i6] = (byte) (i4 >> 10);
                                    i6 = i5 + 1;
                                    bArr2[i5] = (byte) (i4 >> 2);
                                    break;
                                case 4:
                                    this.state = 6;
                                    return false;
                            }
                            this.state = i7;
                            this.a = i6;
                            return true;
                        }
                    }
                    if (i4 >= i3) {
                    }
                }
                i = i4 + 1;
                i4 = iArr[bArr[i4] & 255];
                switch (i7) {
                    case 0:
                        if (i4 >= 0) {
                            i7++;
                            i5 = i4;
                            i4 = i;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 1:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            i7++;
                            i4 = i;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 2:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            i7++;
                            i4 = i;
                            continue;
                        } else if (i4 == -2) {
                            i4 = i6 + 1;
                            bArr2[i6] = (byte) (i5 >> 4);
                            i7 = 4;
                            i6 = i4;
                            i4 = i;
                            break;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 3:
                        if (i4 >= 0) {
                            i5 = (i5 << 6) | i4;
                            bArr2[i6 + 2] = (byte) i5;
                            bArr2[i6 + 1] = (byte) (i5 >> 8);
                            bArr2[i6] = (byte) (i5 >> 16);
                            i6 += 3;
                            i7 = 0;
                            i4 = i;
                            continue;
                        } else if (i4 == -2) {
                            bArr2[i6 + 1] = (byte) (i5 >> 2);
                            bArr2[i6] = (byte) (i5 >> 10);
                            i6 += 2;
                            i7 = 5;
                            i4 = i;
                            break;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 4:
                        if (i4 == -2) {
                            i7++;
                            i4 = i;
                            continue;
                        } else if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                    case 5:
                        if (i4 != -1) {
                            this.state = 6;
                            return false;
                        }
                        i4 = i;
                        break;
                }
                i4 = i;
            }
            i4 = i5;
            if (z) {
            }
        }
    }

    /* compiled from: Base64 */
    static class c extends a {
        static final /* synthetic */ boolean a;
        private static final byte[] c = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
        private static final byte[] d = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 45, (byte) 95};
        int b;
        /* renamed from: b */
        public final boolean f75b;
        /* renamed from: c */
        public final boolean f76c;
        private int count;
        /* renamed from: d */
        public final boolean f77d;
        private final byte[] e;
        private final byte[] f;

        static {
            boolean z;
            if (b.class.desiredAssertionStatus()) {
                z = false;
            } else {
                z = true;
            }
            a = z;
        }

        public c(int i, byte[] bArr) {
            boolean z;
            boolean z2 = true;
            this.b = bArr;
            this.b = (i & 1) == 0;
            if ((i & 2) == 0) {
                z = true;
            } else {
                z = false;
            }
            this.c = z;
            if ((i & 4) == 0) {
                z2 = false;
            }
            this.d = z2;
            this.f = (i & 8) == 0 ? c : d;
            this.e = new byte[2];
            this.b = 0;
            this.count = this.c ? 19 : -1;
        }

        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean a(byte[] bArr, int i, int i2, boolean z) {
            int i3;
            byte[] bArr2 = this.f;
            byte[] bArr3 = this.b;
            int i4 = 0;
            int i5 = this.count;
            int i6 = i2 + i;
            int i7 = -1;
            switch (this.b) {
                case 0:
                    i3 = i;
                    break;
                case 1:
                    if (i + 2 <= i6) {
                        i3 = i + 1;
                        i = i3 + 1;
                        i7 = (((this.e[0] & 255) << 16) | ((bArr[i] & 255) << 8)) | (bArr[i3] & 255);
                        this.b = 0;
                        i3 = i;
                        break;
                    }
                case 2:
                    if (i + 1 <= i6) {
                        i3 = i + 1;
                        i7 = (((this.e[0] & 255) << 16) | ((this.e[1] & 255) << 8)) | (bArr[i] & 255);
                        this.b = 0;
                        break;
                    }
                default:
                    i3 = i;
                    break;
            }
            if (i7 != -1) {
                bArr3[0] = bArr2[(i7 >> 18) & 63];
                bArr3[1] = bArr2[(i7 >> 12) & 63];
                bArr3[2] = bArr2[(i7 >> 6) & 63];
                i4 = 4;
                bArr3[3] = bArr2[i7 & 63];
                i5--;
                if (i5 == 0) {
                    if (this.d) {
                        i5 = 5;
                        bArr3[4] = (byte) 13;
                    } else {
                        i5 = 4;
                    }
                    i4 = i5 + 1;
                    bArr3[i5] = (byte) 10;
                    i5 = 19;
                }
            }
            while (true) {
                int i8 = i5;
                int i9 = i4;
                if (i3 + 3 > i6) {
                    byte[] bArr4;
                    if (z) {
                        if (i3 - this.b == i6 - 1) {
                            if (this.b > 0) {
                                i4 = 1;
                                i5 = this.e[0];
                                i7 = i3;
                            } else {
                                i4 = i3 + 1;
                                i5 = bArr[i3];
                                i7 = i4;
                                i4 = 0;
                            }
                            i3 = (i5 & 255) << 4;
                            this.b -= i4;
                            i4 = i9 + 1;
                            bArr3[i9] = bArr2[(i3 >> 6) & 63];
                            i5 = i4 + 1;
                            bArr3[i4] = bArr2[i3 & 63];
                            if (this.b) {
                                i4 = i5 + 1;
                                bArr3[i5] = (byte) 61;
                                i5 = i4 + 1;
                                bArr3[i4] = (byte) 61;
                            }
                            if (this.c) {
                                if (this.d) {
                                    i4 = i5 + 1;
                                    bArr3[i5] = (byte) 13;
                                    i5 = i4;
                                }
                                i9 = i5 + 1;
                                bArr3[i5] = (byte) 10;
                                i3 = i7;
                            } else {
                                i3 = i7;
                                i9 = i5;
                            }
                        } else if (i3 - this.b == i6 - 2) {
                            if (this.b > 1) {
                                i4 = 1;
                                i5 = this.e[0];
                            } else {
                                i4 = i3 + 1;
                                i5 = bArr[i3];
                                i3 = i4;
                                i4 = 0;
                            }
                            int i10 = (i5 & 255) << 10;
                            if (this.b > 0) {
                                i7 = i4 + 1;
                                i5 = this.e[i4];
                                i4 = i7;
                            } else {
                                i7 = i3 + 1;
                                i5 = bArr[i3];
                                i3 = i7;
                            }
                            i5 = ((i5 & 255) << 2) | i10;
                            this.b -= i4;
                            i4 = i9 + 1;
                            bArr3[i9] = bArr2[(i5 >> 12) & 63];
                            i7 = i4 + 1;
                            bArr3[i4] = bArr2[(i5 >> 6) & 63];
                            i4 = i7 + 1;
                            bArr3[i7] = bArr2[i5 & 63];
                            if (this.b) {
                                i5 = i4 + 1;
                                bArr3[i4] = (byte) 61;
                            } else {
                                i5 = i4;
                            }
                            if (this.c) {
                                if (this.d) {
                                    i4 = i5 + 1;
                                    bArr3[i5] = (byte) 13;
                                    i5 = i4;
                                }
                                i9 = i5 + 1;
                                bArr3[i5] = (byte) 10;
                            } else {
                                i9 = i5;
                            }
                        } else if (this.c && i9 > 0 && i8 != 19) {
                            if (this.d) {
                                i5 = i9 + 1;
                                bArr3[i9] = (byte) 13;
                            } else {
                                i5 = i9;
                            }
                            i9 = i5 + 1;
                            bArr3[i5] = (byte) 10;
                        }
                        if (!a && this.b != 0) {
                            throw new AssertionError();
                        } else if (!(a || r3 == i6)) {
                            throw new AssertionError();
                        }
                    } else if (i3 == i6 - 1) {
                        bArr4 = this.e;
                        i4 = this.b;
                        this.b = i4 + 1;
                        bArr4[i4] = bArr[i3];
                    } else if (i3 == i6 - 2) {
                        bArr4 = this.e;
                        i4 = this.b;
                        this.b = i4 + 1;
                        bArr4[i4] = bArr[i3];
                        bArr4 = this.e;
                        i4 = this.b;
                        this.b = i4 + 1;
                        bArr4[i4] = bArr[i3 + 1];
                    }
                    this.a = i9;
                    this.count = i8;
                    return true;
                }
                i5 = (((bArr[i3] & 255) << 16) | ((bArr[i3 + 1] & 255) << 8)) | (bArr[i3 + 2] & 255);
                bArr3[i9] = bArr2[(i5 >> 18) & 63];
                bArr3[i9 + 1] = bArr2[(i5 >> 12) & 63];
                bArr3[i9 + 2] = bArr2[(i5 >> 6) & 63];
                bArr3[i9 + 3] = bArr2[i5 & 63];
                i3 += 3;
                i4 = i9 + 4;
                i5 = i8 - 1;
                if (i5 == 0) {
                    if (this.d) {
                        i5 = i4 + 1;
                        bArr3[i4] = (byte) 13;
                    } else {
                        i5 = i4;
                    }
                    i4 = i5 + 1;
                    bArr3[i5] = (byte) 10;
                    i5 = 19;
                }
            }
        }
    }

    static {
        boolean z;
        if (b.class.desiredAssertionStatus()) {
            z = false;
        } else {
            z = true;
        }
        a = z;
    }

    public static byte[] decode(String str, int flags) {
        return decode(str.getBytes(), flags);
    }

    public static byte[] decode(byte[] input, int flags) {
        return decode(input, 0, input.length, flags);
    }

    public static byte[] decode(byte[] input, int offset, int len, int flags) {
        b bVar = new b(flags, new byte[((len * 3) / 4)]);
        if (!bVar.a(input, offset, len, true)) {
            throw new IllegalArgumentException("bad base-64");
        } else if (bVar.a == bVar.b.length) {
            return bVar.b;
        } else {
            byte[] bArr = new byte[bVar.a];
            System.arraycopy(bVar.b, 0, bArr, 0, bVar.a);
            return bArr;
        }
    }

    public static String encodeToString(byte[] input, int flags) {
        try {
            return new String(encode(input, flags), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] encode(byte[] input, int flags) {
        return encode(input, 0, input.length, flags);
    }

    public static byte[] encode(byte[] input, int offset, int len, int flags) {
        c cVar = new c(flags, null);
        int i = (len / 3) * 4;
        if (!cVar.b) {
            switch (len % 3) {
                case 1:
                    i += 2;
                    break;
                case 2:
                    i += 3;
                    break;
            }
        } else if (len % 3 > 0) {
            i += 4;
        }
        if (cVar.c && len > 0) {
            int i2;
            int i3 = ((len - 1) / 57) + 1;
            if (cVar.d) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            i += i2 * i3;
        }
        cVar.b = new byte[i];
        cVar.a(input, offset, len, true);
        if (a || cVar.a == i) {
            return cVar.b;
        }
        throw new AssertionError();
    }

    private b() {
    }
}
