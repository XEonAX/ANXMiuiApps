package com.miui.gallery.assistant.jni.filter;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BaiduSceneResult implements ISceneResult {
    public static final int ACCOUNT_BOOK = 129;
    public static final int AIRCRAFT_AIRPORT = 122;
    public static final int AMUSEMENT_PARK = 54;
    public static final int ANCIENT_CHINESE_ARCHITECTURE = 108;
    public static final int ANIMAL_OTHER = 45;
    public static final int APPAREL = 136;
    public static final int AQUARIUM = 63;
    public static final int BABY = 0;
    public static final int BADMINTON = 87;
    public static final int BANK_CARD = 127;
    public static final int BAR = 57;
    public static final int BARBECUE = 10;
    public static final int BASKETBALL = 85;
    public static final int BEACH = 25;
    public static final int BED = 67;
    public static final int BICYCLE = 119;
    public static final int BILLIARDS = 90;
    public static final int BIRDS = 42;
    public static final int BLACK_WHITE = 143;
    public static final int BOWLING = 89;
    public static final int BOXING = 100;
    public static final int BREAD = 8;
    public static final int BRIDGE = 114;
    public static final int BUILDING_OTHER = 115;
    public static final int BUSINESS_CARD = 128;
    public static final int CABINET = 71;
    public static final int CANYON = 36;
    public static final int CAR = 116;
    public static final int CARTOON = 140;
    public static final int CASSEROLE_CASSEROLE = 20;
    public static final int CASTLE = 110;
    public static final int CAT = 40;
    public static final int CHURCH = 109;
    public static final int CINEMA = 55;
    public static final int COSMETICS = 138;
    public static final int DANCE = 96;
    public static final int DECORATION_RELATED = 75;
    public static final int DESERT = 33;
    public static final int DESSERT = 6;
    public static final int DESSERT_OTHER = 7;
    public static final int DIGITAL_PRODUCT = 142;
    public static final int DOG = 41;
    public static final int DRINK = 13;
    public static final int ENTERTAINMENT_OTHER = 65;
    public static final int EXPRESS_ORDER = 133;
    public static final int FASHION_OTHER = 139;
    public static final int FERRY = 117;
    public static final int FILE_OTHER = 135;
    public static final int FISH = 44;
    public static final int FITNESS = 82;
    public static final int FLOWER = 46;
    public static final int FOOD_OTHER = 22;
    public static final int FOOTBALL = 84;
    public static final int FOREST = 26;
    public static final int FOUNTAIN = 113;
    public static final int FRUIT = 12;
    public static final int FRYING = 21;
    public static final int GAME = 141;
    public static final int GAMING_ROOM = 58;
    public static final int GARDEN = 107;
    public static final int GOLF = 98;
    public static final int GRASS = 47;
    public static final int GRASSLAND = 31;
    public static final int GROUP_PHOTO = 2;
    public static final int HOT_POT = 9;
    public static final int HOUSEHOLD_APPLIANCES = 73;
    public static final int HOUSE_PLANT = 74;
    public static final int ICE_CREAM = 4;
    public static final int ID_CARD = 126;
    public static final int INDOOR_OTHER = 79;
    public static final int INSECT = 43;
    public static final int INTERIOR_DOOR = 69;
    public static final int INVOICE = 131;
    public static final int JAPANESE_CUISINE = 11;
    public static final int JEWELRY = 137;
    public static final int KTV = 56;
    public static final int LAKES_RIVERS = 27;
    public static final int LIGHT = 72;
    public static final int MALL = 53;
    public static final int MEETING_ROOM = 76;
    public static final int MOTORCYCLE = 120;
    public static final int MOUNTAIN = 35;
    public static final int MOUNTAINEERING = 103;
    public static final int NATURAL_SCENERY = 39;
    public static final int NIGHT_VIEW = 23;
    public static final int NOODLES_OTHER = 18;
    public static final int OCEAN = 24;
    public static final int PALACE = 106;
    public static final int PARACHUTE = 94;
    public static final int PARK = 38;
    public static final int PASTA = 17;
    public static final int PERSON = 3;
    public static final int PIER = 124;
    public static final int PINGPONG = 88;
    public static final int PLANT_OTHER = 49;
    public static final int PORRIDGE = 19;
    public static final int REPORT_HALL = 78;
    public static final int RESTAURANT = 61;
    public static final int RIDING = 91;
    public static final int RUN = 83;
    public static final int SCREEN_TEXT = 134;
    public static final int SEAFOOD = 14;
    public static final int SELFIE = 1;
    public static final int SHOOTING = 101;
    public static final int SHOW = 52;
    public static final int SKATEBOARD = 97;
    public static final int SKI = 80;
    public static final int SKY = 29;
    public static final int SNACKS = 5;
    public static final int SNORKELING_DIVE = 93;
    public static final int SNOW = 28;
    public static final int SOFA = 66;
    public static final int SPA = 64;
    public static final int SPORTS_OTHER = 104;
    public static final int STARRY_SKY = 32;
    public static final int STATION = 121;
    public static final int STREET_VIEW = 112;
    public static final int SUBWAY = 118;
    public static final int SUNRISE_SUNSET = 30;
    public static final int SUPERMARKET = 62;
    public static final int SURF = 92;
    public static final int SWIM = 81;
    public static final int SWIMMING_POOL = 60;
    public static final int TABLE = 70;
    public static final int TAEKWONDO = 102;
    public static final int TAG_COUNT = 144;
    public static final int TEMPLE = 105;
    public static final int TENNIS = 86;
    public static final int TOGETHER = 51;
    public static final int TRAIN = 123;
    public static final int TRAVEL_OTHER = 125;
    public static final int TREES_LEAVES = 48;
    public static final int UNDERWATER = 37;
    public static final int VARIOUS_TICKETS = 132;
    public static final int VISA = 130;
    public static final int VOLLEYBALL = 99;
    public static final int WATERFALL = 34;
    public static final int WEDDING = 50;
    public static final int WESTERN_ARCHITECTURE = 111;
    public static final int WESTERN_FOOD = 15;
    public static final int WHEATEN_FOOD = 16;
    public static final int WINDOW = 68;
    public static final int WORKPLACE = 77;
    public static final int YOGA = 95;
    public static final int ZOO = 59;
    public final int classNum;
    public final float[] classProb;
    public float[] tagThresholds;

    public BaiduSceneResult(int classNum, float[] classProb) {
        this.classNum = classNum;
        this.classProb = classProb;
        initThresholds();
    }

    private void initThresholds() {
        this.tagThresholds = new float[TAG_COUNT];
        for (int i = 0; i < this.tagThresholds.length; i++) {
            this.tagThresholds[i] = 0.0f;
        }
        this.tagThresholds[4] = 0.8f;
        this.tagThresholds[5] = 0.1f;
        this.tagThresholds[6] = 0.1f;
        this.tagThresholds[7] = 0.1f;
        this.tagThresholds[8] = 0.1f;
        this.tagThresholds[9] = 0.5f;
        this.tagThresholds[10] = 0.5f;
        this.tagThresholds[11] = 0.6f;
        this.tagThresholds[12] = 0.8f;
        this.tagThresholds[13] = 0.8f;
        this.tagThresholds[14] = 0.6f;
        this.tagThresholds[15] = 0.6f;
        this.tagThresholds[16] = 0.6f;
        this.tagThresholds[17] = 0.6f;
        this.tagThresholds[18] = 0.8f;
        this.tagThresholds[19] = 0.8f;
        this.tagThresholds[20] = 0.8f;
        this.tagThresholds[21] = 0.8f;
        this.tagThresholds[22] = 0.8f;
        this.tagThresholds[40] = 0.85f;
        this.tagThresholds[41] = 0.85f;
        this.tagThresholds[2] = 0.1f;
        this.tagThresholds[51] = 0.3f;
        this.tagThresholds[52] = 0.6f;
        this.tagThresholds[56] = 0.07f;
        this.tagThresholds[57] = 0.04f;
        this.tagThresholds[80] = 0.5f;
        this.tagThresholds[81] = 0.5f;
        this.tagThresholds[82] = 0.2f;
        this.tagThresholds[84] = 0.2f;
        this.tagThresholds[85] = 0.2f;
        this.tagThresholds[86] = 0.2f;
        this.tagThresholds[87] = 0.2f;
        this.tagThresholds[88] = 0.2f;
        this.tagThresholds[90] = 0.5f;
        this.tagThresholds[92] = 0.5f;
        this.tagThresholds[99] = 0.03f;
        this.tagThresholds[MOUNTAINEERING] = 0.5f;
        this.tagThresholds[ID_CARD] = 0.001f;
        this.tagThresholds[BANK_CARD] = 0.001f;
        this.tagThresholds[128] = 0.001f;
        this.tagThresholds[ACCOUNT_BOOK] = 0.001f;
        this.tagThresholds[VISA] = 0.001f;
        this.tagThresholds[INVOICE] = 0.001f;
        this.tagThresholds[VARIOUS_TICKETS] = 0.001f;
        this.tagThresholds[EXPRESS_ORDER] = 0.001f;
        this.tagThresholds[SCREEN_TEXT] = 0.001f;
        this.tagThresholds[FILE_OTHER] = 0.001f;
    }

    public int getClassNum() {
        return this.classNum;
    }

    public float[] getClassProb() {
        return this.classProb;
    }

    private int[] getTopKIndex(float[] array, int k) {
        int i;
        float[] tempArrary = Arrays.copyOf(array, array.length);
        int[] numbers = new int[tempArrary.length];
        for (i = 0; i < numbers.length; i++) {
            numbers[i] = i;
        }
        for (i = 0; i < k; i++) {
            int index = i;
            for (int j = i; j < tempArrary.length; j++) {
                if (tempArrary[index] < tempArrary[j]) {
                    index = j;
                }
            }
            float temp = tempArrary[i];
            tempArrary[i] = tempArrary[index];
            tempArrary[index] = temp;
            int temp2 = numbers[i];
            numbers[i] = numbers[index];
            numbers[index] = temp2;
        }
        int[] num_k = new int[k];
        System.arraycopy(numbers, 0, num_k, 0, k);
        return num_k;
    }

    public List<Integer> getValidTopKTag(int k) {
        List<Integer> result = new ArrayList(k);
        if (this.classProb != null && this.classProb.length == this.classNum && k > 0 && k < this.classNum) {
            float[] tempArrary = Arrays.copyOf(this.classProb, this.classProb.length);
            for (int i = 0; i < tempArrary.length; i++) {
                if (tempArrary[i] < this.tagThresholds[i]) {
                    tempArrary[i] = 0.0f;
                }
            }
            for (int tag : getTopKIndex(tempArrary, k)) {
                if (tempArrary[tag] > 0.0f) {
                    result.add(Integer.valueOf(tag));
                }
            }
        }
        return result;
    }

    public List<Integer> getTags(int maxNum) {
        if (maxNum <= 0) {
            maxNum = 3;
        }
        return getValidTopKTag(maxNum);
    }
}
