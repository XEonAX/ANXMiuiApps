package com.google.zxing.pdf417.encoder;

import android.support.v4.app.FrameMetricsAggregator;
import android.support.v4.view.InputDeviceCompat;
import com.ali.auth.third.core.rpc.protocol.RpcException.ErrorCode;
import com.alibaba.baichuan.trade.biz.alipay.AlibcAlipay;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.wireless.security.SecExceptionCode;
import com.google.zxing.WriterException;
import com.google.zxing.pdf417.PDF417Common;

final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = new int[][]{new int[]{27, 917}, new int[]{522, 568, 723, AlibcAlipay.PAY_SDK_FAILED}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{274, 562, 232, 755, SecExceptionCode.SEC_ERROR_DYN_STORE_UNKNOWN_ERROR, 524, SecExceptionCode.SEC_ERROR_PKG_VALID_INVALID_PARAM, 132, 295, 116, 442, 428, 295, 42, Opcodes.ARETURN, 65}, new int[]{361, 575, 922, 525, Opcodes.ARETURN, 586, 640, 321, 536, 742, 677, 742, 687, 284, Opcodes.INSTANCEOF, 517, 273, 494, 263, 147, 593, SecExceptionCode.SEC_ERROR_PKG_VALID, 571, 320, SecExceptionCode.SEC_ERROR_PKG_VALID_NO_MEMORY, 133, 231, 390, 685, 330, 63, 410}, new int[]{539, 422, 6, 93, 862, 771, 453, 106, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE_DATA, 287, 107, SecExceptionCode.SEC_ERROR_DYN_STORE_GET_ENCRYPT_KEY_FAILED, 733, 877, 381, SecExceptionCode.SEC_ERROR_SIGNATURE_ILLEGEL_KEY, 723, 476, CameraActions.START_FACE_DETECTION, 172, 430, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE, 858, 822, 543, 376, FrameMetricsAggregator.EVERY_DURATION, 400, 672, 762, 283, Opcodes.INVOKESTATIC, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, SecExceptionCode.SEC_ERROR_SIGNATURE_CONFUSE_FAILED, Opcodes.IFLE, 651, 201, 488, 502, 648, 733, 717, 83, SecExceptionCode.SEC_ERROR_DYN_ENC_GET_DATA_FILE_KEY_FAILED, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, 400, 925, 749, 415, 822, 93, 217, SecExceptionCode.SEC_ERROR_STA_STORE_NO_MEMORY, PDF417Common.MAX_CODEWORDS_IN_BARCODE, 244, 583, 620, 246, Opcodes.LCMP, 447, 631, 292, SecExceptionCode.SEC_ERROR_UMID_TIME_OUT, 490, SecExceptionCode.SEC_ERROR_STA_KEY_ENC_INVALID_ENCRYPTED_DATA, 516, 258, 457, SecExceptionCode.SEC_ERROR_UMID_NO_NETWORK_INIT, 594, 723, 674, 292, 272, 96, 684, 432, 686, SecExceptionCode.SEC_ERROR_SIGNATURE_NO_SEEDSECRET, 860, 569, Opcodes.INSTANCEOF, 219, 129, 186, 236, 287, Opcodes.CHECKCAST, 775, 278, 173, 40, 379, 712, CameraActions.STOP_FACE_DETECTION, 646, 776, 171, 491, 297, 763, 156, 732, 95, 270, 447, 90, 507, 48, 228, 821, AlibcAlipay.PAY_COMMON_ERROR, 898, 784, 663, 627, 378, 382, 262, 380, SecExceptionCode.SEC_ERROR_SIGNATURE_NO_MEM, 754, 336, 89, SecExceptionCode.SEC_ERROR_SIGNATURE_BLOWFISH_FAILED, 87, 432, 670, 616, 157, 374, 242, 726, SecExceptionCode.SEC_ERROR_SIGNATRUE, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, 315, 550, 86, SecExceptionCode.SEC_ERROR_PKG_VALID_INVALID_PARAM, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, 204, 82, 586, 708, 250, SecExceptionCode.SEC_ERROR_UMID_SERVER_RESP_INVALID, 786, 138, 720, 858, 194, SecExceptionCode.SEC_ERROR_STA_DECRYPT_MISMATCH_KEY_DATA, 913, 275, 190, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, 710, 814, 919, 89, 68, 569, 11, 204, 796, SecExceptionCode.SEC_ERROR_SIGNATURE_CONFUSE_FAILED, 540, 913, SecExceptionCode.SEC_ERROR_PKG_VALID_INVALID_PARAM, SecExceptionCode.SEC_ERROR_STA_KEY_ENC, SecExceptionCode.SEC_ERROR_STA_KEY_ENC_UNKNOWN_ERROR, 137, 439, 418, 592, 668, 353, 859, 370, 694, 325, 240, 216, 257, 284, 549, 209, 884, 315, 70, 329, 793, 490, 274, 877, Opcodes.IF_ICMPGE, 749, 812, 684, CameraActions.SET_FACE_DETECTION_LISTENER, 334, 376, 849, 521, 307, 291, SecExceptionCode.SEC_ERROR_PKG_VALID_NO_MEMORY, 712, 19, 358, SecExceptionCode.SEC_ERROR_STA_UNKNOWN_ERROR, SecExceptionCode.SEC_ERROR_UMID_TIME_OUT, 103, FrameMetricsAggregator.EVERY_DURATION, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, CameraActions.STOP_FACE_DETECTION, 830, 730, 433, 848, 585, 136, 538, SecExceptionCode.SEC_ERROR_UMID_ENVIRONMENT_CHANGED, 90, 2, 290, 743, 199, 655, SecExceptionCode.SEC_ERROR_UMID_GET_URL_ERROR, 329, 49, SecExceptionCode.SEC_ERROR_PKG_VALID_INVALID_JPG, 580, 355, 588, Opcodes.NEWARRAY, CameraActions.START_FACE_DETECTION, 10, 134, 628, 320, 479, 130, 739, 71, 263, 318, 374, 601, Opcodes.CHECKCAST, SecExceptionCode.SEC_ERROR_SIGNATURE_CONFUSE_FAILED, 142, 673, 687, 234, 722, 384, Opcodes.RETURN, 752, SecExceptionCode.SEC_ERROR_SIGNATURE_DATA_FILE_MISMATCH, 640, 455, Opcodes.INSTANCEOF, 689, 707, 805, 641, 48, 60, 732, 621, 895, 544, 261, 852, 655, SecExceptionCode.SEC_ERROR_STA_NO_SUCH_INDEX, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, 503, 118, 49, 795, 32, 144, 500, 238, 836, 394, 280, 566, 319, 9, 647, 550, 73, 914, 342, Opcodes.IAND, 32, 681, 331, 792, 620, 60, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE, 441, Opcodes.GETFIELD, 791, 893, 754, SecExceptionCode.SEC_ERROR_SIGNATURE_CONFUSE_FAILED, 383, 228, 749, 760, 213, 54, 297, 134, 54, 834, SecExceptionCode.SEC_ERROR_STA_STORE_UNKNOWN_ERROR, 922, 191, 910, 532, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE, 829, 189, 20, Opcodes.GOTO, 29, 872, 449, 83, 402, 41, 656, SecExceptionCode.SEC_ERROR_DYN_STORE_GET_ENCRYPT_KEY_FAILED, 579, 481, 173, SecExceptionCode.SEC_ERROR_DYN_ENC_GET_DATA_FILE_KEY_FAILED, 251, 688, 95, 497, 555, 642, 543, 307, Opcodes.IF_ICMPEQ, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, SecExceptionCode.SEC_ERROR_DYN_STORE_GET_DATA_FILE_KEY_FAILED, 35, SecExceptionCode.SEC_ERROR_DYN_STORE_UNKNOWN_ERROR, 428, SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY, 409, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, 155, 914, SecExceptionCode.SEC_ERROR_STA_STORE_UNKNOWN_ERROR, 229, 643, 294, 871, SecExceptionCode.SEC_ERROR_STA_KEY_NOT_EXISTED, 88, 87, Opcodes.INSTANCEOF, 352, 781, 846, 75, 327, 520, 435, 543, 203, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, ErrorCode.API_UNAUTHORIZED, 390, 644, 102, 476, SecExceptionCode.SEC_ERROR_DYN_ENC_UNKNOWN_ERROR, 290, 632, 545, 37, 858, 916, 552, 41, 542, 289, SecExceptionCode.SEC_ERROR_INIT_NO_DATA_FILE, 272, 383, SecExceptionCode.SEC_ERROR_PKG_VALID, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, 204, 681, 407, 855, 85, 99, 62, 482, Opcodes.GETFIELD, 20, 297, 451, 593, 913, 142, AlibcAlipay.PAY_COMMON_ERROR, 684, 287, 536, 561, 76, 653, SecExceptionCode.SEC_ERROR_PKG_VALID_UNKNOWN_ERR, 729, 567, 744, 390, InputDeviceCompat.SOURCE_DPAD, Opcodes.CHECKCAST, 516, 258, 240, 518, 794, 395, 768, 848, 51, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE_DATA, 384, 168, 190, 826, 328, 596, 786, 303, 570, 381, 415, 641, 156, 237, Opcodes.DCMPL, 429, 531, SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY, 676, 710, 89, 168, 304, 402, 40, 708, 575, Opcodes.IF_ICMPGE, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, 707, 94, 8, 494, 114, 521, 2, SecExceptionCode.SEC_ERROR_DYN_ENC_UNKNOWN_ERROR, 851, 543, 152, 729, 771, 95, 248, 361, 578, 323, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, SecExceptionCode.SEC_ERROR_UMID_THREADPOOL_FULL, 452, Opcodes.GOTO, 342, 244, 173, 35, CameraActions.STOP_FACE_DETECTION, 651, 51, SecExceptionCode.SEC_ERROR_SIGNATRUE_UNKNOWN, 591, 452, 578, 37, SecExceptionCode.SEC_ERROR_INIT_LOW_VERSION_DATA, 298, 332, 552, 43, 427, SecExceptionCode.SEC_ERROR_SET_GLOBAL_USER_DATA, 662, 777, 475, 850, 764, 364, 578, 911, 283, 711, 472, 420, 245, 288, 594, 394, FrameMetricsAggregator.EVERY_DURATION, 327, 589, 777, SecExceptionCode.SEC_ERROR_SIGNATRUE_UNKNOWN, 688, 43, ErrorCode.API_UNAUTHORIZED, 842, 383, 721, 521, 560, 644, 714, 559, 62, 145, 873, 663, 713, Opcodes.IF_ICMPEQ, 672, 729, 624, 59, Opcodes.INSTANCEOF, 417, Opcodes.IFLE, 209, 563, 564, 343, 693, 109, SecExceptionCode.SEC_ERROR_SIGNATURE_NO_DATA_FILE, 563, 365, Opcodes.PUTFIELD, 772, 677, SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA, 248, 353, 708, 410, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, 247, Opcodes.INVOKESTATIC, 45, 787, 680, 18, 66, 407, 369, 54, 492, 228, SecExceptionCode.SEC_ERROR_SIGNATURE_ATLAS_KEY_NOT_EXSITED, 830, 922, 437, 519, 644, SecExceptionCode.SEC_ERROR_UMID_SERVER_RESP_INVALID, 789, 420, 305, 441, SecExceptionCode.SEC_ERROR_STA_STORE_ILLEGEL_KEY, SecExceptionCode.SEC_ERROR_STA_ENC, 892, 827, 141, 537, 381, 662, InputDeviceCompat.SOURCE_DPAD, 56, 252, 341, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, 560, SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA, 756, 665, 397, AlibcAlipay.PAY_COMMON_ERROR, 851, SecExceptionCode.SEC_ERROR_STA_NO_SUCH_INDEX, 473, 795, 378, 31, 647, 915, 459, 806, 590, 731, 425, 216, 548, 249, 321, 881, SecExceptionCode.SEC_ERROR_SIGNATRUE_UNKNOWN, 535, 673, 782, 210, 815, SecExceptionCode.SEC_ERROR_UMID_SERVER_RESP_INVALID, 303, 843, 922, 281, 73, 469, 791, 660, Opcodes.IF_ICMPGE, 498, 308, 155, 422, SecExceptionCode.SEC_ERROR_UMID_NO_NETWORK_INIT, 817, Opcodes.NEW, 62, 16, 425, 535, 336, 286, 437, 375, 273, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE_DATA, 296, Opcodes.INVOKESPECIAL, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, 923, SecExceptionCode.SEC_ERROR_STA_DECRYPT_MISMATCH_KEY_DATA, 424, 242, 749, 321, 54, 669, 316, 342, SecExceptionCode.SEC_ERROR_STA_STORE_UNKNOWN_ERROR, 534, 105, 667, 488, 640, 672, 576, 540, 316, 486, 721, SecExceptionCode.SEC_ERROR_SIGNATURE_INCORRECT_DATA_FILE_DATA, 46, 656, 447, 171, 616, 464, 190, 531, 297, 321, 762, 752, 533, 175, 134, 14, 381, 433, 717, 45, 111, 20, 596, 284, 736, 138, 646, 411, 877, 669, 141, 919, 45, 780, 407, 164, 332, SecExceptionCode.SEC_ERROR_PKG_VALID_UNKNOWN_ERR, Opcodes.IF_ACMPEQ, 726, SecExceptionCode.SEC_ERROR_SIGNATRUE, 325, 498, 655, 357, 752, 768, 223, 849, 647, 63, SecExceptionCode.SEC_ERROR_STA_INVALID_ENCRYPTED_DATA, 863, 251, 366, 304, 282, 738, 675, 410, 389, 244, 31, SecExceptionCode.SEC_ERROR_INIT_DATA_FILE_MISMATCH, 303, 263}};

    private PDF417ErrorCorrection() {
    }

    static int getErrorCorrectionCodewordCount(int errorCorrectionLevel) {
        if (errorCorrectionLevel >= 0 && errorCorrectionLevel <= 8) {
            return 1 << (errorCorrectionLevel + 1);
        }
        throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
    }

    static int getRecommendedMinimumErrorCorrectionLevel(int n) throws WriterException {
        if (n <= 0) {
            throw new IllegalArgumentException("n must be > 0");
        } else if (n <= 40) {
            return 2;
        } else {
            if (n <= Opcodes.IF_ICMPNE) {
                return 3;
            }
            if (n <= 320) {
                return 4;
            }
            if (n <= 863) {
                return 5;
            }
            throw new WriterException("No recommendation possible");
        }
    }

    static String generateErrorCorrection(CharSequence dataCodewords, int errorCorrectionLevel) {
        int j;
        int k = getErrorCorrectionCodewordCount(errorCorrectionLevel);
        char[] e = new char[k];
        int sld = dataCodewords.length();
        for (int i = 0; i < sld; i++) {
            int t1 = (dataCodewords.charAt(i) + e[e.length - 1]) % PDF417Common.NUMBER_OF_CODEWORDS;
            for (j = k - 1; j >= 1; j--) {
                e[j] = (char) ((e[j - 1] + (929 - ((EC_COEFFICIENTS[errorCorrectionLevel][j] * t1) % PDF417Common.NUMBER_OF_CODEWORDS))) % PDF417Common.NUMBER_OF_CODEWORDS);
            }
            e[0] = (char) ((929 - ((EC_COEFFICIENTS[errorCorrectionLevel][0] * t1) % PDF417Common.NUMBER_OF_CODEWORDS)) % PDF417Common.NUMBER_OF_CODEWORDS);
        }
        StringBuilder sb = new StringBuilder(k);
        for (j = k - 1; j >= 0; j--) {
            if (e[j] != 0) {
                e[j] = (char) (929 - e[j]);
            }
            sb.append(e[j]);
        }
        return sb.toString();
    }
}
