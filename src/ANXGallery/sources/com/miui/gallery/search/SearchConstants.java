package com.miui.gallery.search;

import com.miui.gallery.search.core.suggestion.RankInfo;
import com.nexstreaming.nexeditorsdk.nexExportFormat;

public class SearchConstants {

    public enum SearchType {
        SEARCH_TYPE_HINT("hint"),
        SEARCH_TYPE_HISTORY("history"),
        SEARCH_TYPE_NAVIGATION("navigation"),
        SEARCH_TYPE_SUGGESTION("suggestion"),
        SEARCH_TYPE_SEARCH("search"),
        SEARCH_TYPE_RESULT("result"),
        SEARCH_TYPE_RESULT_LIST("list"),
        SEARCH_TYPE_FILTER("filter"),
        SEARCH_TYPE_FEEDBACK_LIKELY_RESULT("likelyResult");
        
        private String name;

        private SearchType(String name) {
            this.name = name;
        }
    }

    public enum SectionType {
        SECTION_TYPE_DEFAULT("default"),
        SECTION_TYPE_RECOMMEND("recommend"),
        SECTION_TYPE_PEOPLE("people"),
        SECTION_TYPE_ALBUM("album"),
        SECTION_TYPE_LOCATION("location"),
        SECTION_TYPE_TAG(nexExportFormat.TAG_FORMAT_TAG),
        SECTION_TYPE_FEATURE("feature"),
        SECTION_TYPE_LOCATION_LIST("locationList"),
        SECTION_TYPE_TAG_LIST("tagList"),
        SECTION_TYPE_IMAGE_LIST("imageList"),
        SECTION_TYPE_HISTORY("history"),
        SECTION_TYPE_WARNING("warning"),
        SECTION_TYPE_FILTER("facet"),
        SECTION_TYPE_OCR("ocr"),
        SECTION_TYPE_OTHER("other"),
        SECTION_TYPE_NO_RESULT("noResult"),
        SECTION_TYPE_GUIDE("guide"),
        SECTION_TYPE_SUGGESTION("suggestion"),
        SECTION_TYPE_APP_SCREENSHOT("appScreenshot");
        
        private final String name;

        private SectionType(String name) {
            this.name = name;
        }

        public String getName() {
            return this.name;
        }

        public static SectionType fromName(String name) {
            for (SectionType sectionType : values()) {
                if (sectionType.name.equals(name)) {
                    return sectionType;
                }
            }
            return SECTION_TYPE_DEFAULT;
        }
    }

    public static final int comparePriority(int lPriority, int rPriority) {
        return rPriority - lPriority;
    }

    public static boolean isErrorStatus(int status) {
        return (status == 0 || status == -1) ? false : true;
    }

    public static int compareErrorStatus(int status1, int status2) {
        return comparePriority(getErrorStatusPriority(status1), getErrorStatusPriority(status2));
    }

    public static int getErrorStatusPriority(int status) {
        switch (status) {
            case -1:
            case 0:
                return 5;
            case 1:
            case 2:
            case 13:
            case 14:
                return 2;
            case 3:
            case 12:
                return 1;
            default:
                return 4;
        }
    }

    public static int getConvertedStyle(RankInfo rankInfo) {
        return (rankInfo == null || !"HD".equals(rankInfo.getStyle())) ? 0 : 1;
    }

    public static boolean isHorizontalDocumentStyle(RankInfo rankInfo) {
        return getConvertedStyle(rankInfo) == 1;
    }

    public static String getDefaultOrder(String rankName) {
        if ("date".equalsIgnoreCase(rankName)) {
            return "DESC";
        }
        return getDefaultOrder();
    }

    public static String getDefaultOrder() {
        return "ASC";
    }
}
