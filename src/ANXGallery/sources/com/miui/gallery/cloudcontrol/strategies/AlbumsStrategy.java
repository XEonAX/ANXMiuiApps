package com.miui.gallery.cloudcontrol.strategies;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.gson.annotations.SerializedName;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

public class AlbumsStrategy extends BaseStrategy {
    @SerializedName("patterns")
    private List<AlbumPattern> mAlbumPatterns;
    @SerializedName("albums")
    private List<Album> mAlbums;
    private transient HashMap<String, Album> mAlbumsMap;
    private transient ArrayList<String> mWhiteList;
    private transient ArrayList<Pattern> mWhiteListPatterns;

    public static class Album {
        @SerializedName("attributes")
        private Attributes mAttributes;
        @SerializedName("name-string-res")
        private String mNameStringRes;
        @SerializedName("names")
        private List<NameData> mNames;
        @SerializedName("path")
        private String mPath;

        public static class NameData {
            @SerializedName("language-code")
            private String mLanguageCode;
            @SerializedName("name")
            private String mName;

            public String getLanguageCode() {
                return this.mLanguageCode;
            }

            public String getName() {
                return this.mName;
            }

            public String toString() {
                return "NameData{mLanguageCode='" + this.mLanguageCode + '\'' + ", mName='" + this.mName + '\'' + '}';
            }
        }

        public String getBestName() {
            Resources resources = GalleryApp.sGetAndroidContext().getResources();
            String ret = null;
            if (!TextUtils.isEmpty(this.mNameStringRes)) {
                int nameResId = resources.getIdentifier(this.mNameStringRes, "string", "com.miui.gallery");
                if (nameResId != 0) {
                    try {
                        ret = resources.getString(nameResId);
                    } catch (Throwable e) {
                        Log.d("AlbumsStrategy", e);
                    }
                }
                if (!TextUtils.isEmpty(ret)) {
                    return ret;
                }
            }
            if (this.mNames != null) {
                String langCode = getLanguageCode();
                String langCodeEng = getLanguageCode(Locale.ENGLISH);
                boolean isEnglishLanguage = TextUtils.equals(langCodeEng, resources.getConfiguration().locale.getLanguage());
                String englishName = null;
                for (NameData nameData : this.mNames) {
                    if (nameData.getLanguageCode().equals(langCode)) {
                        ret = nameData.getName();
                        break;
                    } else if (isEnglishLanguage && nameData.getLanguageCode().equals(langCodeEng)) {
                        englishName = nameData.getName();
                    }
                }
                if (!TextUtils.isEmpty(ret)) {
                    return ret;
                }
                if (!TextUtils.isEmpty(englishName)) {
                    return englishName;
                }
            }
            return ret;
        }

        private String getLanguageCode() {
            return getLanguageCode(GalleryApp.sGetAndroidContext().getResources().getConfiguration().locale);
        }

        private String getLanguageCode(Locale locale) {
            String langCode = locale.getLanguage();
            if (TextUtils.isEmpty(locale.getCountry())) {
                return langCode;
            }
            return langCode + "_" + locale.getCountry();
        }

        public String getPath() {
            return this.mPath;
        }

        public Attributes getAttributes() {
            return this.mAttributes;
        }

        public String toString() {
            return "AlbumsStrategy{mPath='" + this.mPath + '\'' + ", mNames=" + this.mNames + ", mAttributes=" + this.mAttributes + ", mNameStringRes=" + this.mNameStringRes + '}';
        }
    }

    public static class AlbumPattern {
        @SerializedName("attributes")
        private Attributes mAttributes;
        @SerializedName("pattern")
        private String mPattern;

        public String getPattern() {
            return this.mPattern;
        }

        public Attributes getAttributes() {
            return this.mAttributes;
        }

        public String toString() {
            return "AlbumPattern{mPattern='" + this.mPattern + '\'' + ", mAttributes=" + this.mAttributes + '}';
        }
    }

    public static class Attributes {
        @SerializedName("auto-upload")
        private boolean mAutoUpload;
        @SerializedName("hide")
        private boolean mHide;
        @SerializedName("in-whitelist")
        private boolean mInWhiteList;
        @SerializedName("manual-rename-restricted")
        private boolean mManualRenameRestricted;
        @SerializedName("show-in-photos-tab")
        private boolean mShowInPhotosTab;

        public boolean isHide() {
            return this.mHide;
        }

        public boolean isAutoUpload() {
            return this.mAutoUpload;
        }

        public boolean isShowInPhotosTab() {
            return this.mShowInPhotosTab;
        }

        public boolean isInWhiteList() {
            return this.mInWhiteList;
        }

        public boolean isManualRenameRestricted() {
            return this.mManualRenameRestricted;
        }

        public String toString() {
            return "Attributes{mHide=" + this.mHide + ", mAutoUpload=" + this.mAutoUpload + ", mShowInPhotosTab=" + this.mShowInPhotosTab + ", mInWhiteList=" + this.mInWhiteList + ", mManualRenameRestricted=" + this.mManualRenameRestricted + '}';
        }
    }

    public void doAdditionalProcessing() {
        if (BaseMiscUtil.isValid(this.mAlbums)) {
            if (this.mAlbumsMap == null) {
                this.mAlbumsMap = new HashMap();
            } else {
                this.mAlbumsMap.clear();
            }
            if (this.mWhiteList == null) {
                this.mWhiteList = new ArrayList();
            } else {
                this.mWhiteList.clear();
            }
            for (Album album : this.mAlbums) {
                if (album.getPath() != null) {
                    this.mAlbumsMap.put(album.getPath().toLowerCase(), album);
                    if (album.getAttributes() != null && album.getAttributes().isInWhiteList()) {
                        this.mWhiteList.add(album.getPath());
                    }
                }
            }
        }
        if (BaseMiscUtil.isValid(this.mAlbumPatterns)) {
            if (this.mWhiteListPatterns == null) {
                this.mWhiteListPatterns = new ArrayList();
            } else {
                this.mWhiteListPatterns.clear();
            }
            for (AlbumPattern pattern : this.mAlbumPatterns) {
                if (!(TextUtils.isEmpty(pattern.getPattern()) || pattern.getAttributes() == null || !pattern.getAttributes().isInWhiteList())) {
                    try {
                        this.mWhiteListPatterns.add(Pattern.compile(pattern.getPattern(), 2));
                    } catch (Throwable e) {
                        Log.e("AlbumsStrategy", e);
                    }
                }
            }
        }
    }

    public ArrayList<String> getAlbumsInWhiteList() {
        return this.mWhiteList;
    }

    public Album getAlbumByPath(String path) {
        if (path == null || this.mAlbumsMap == null || this.mAlbumsMap.size() <= 0) {
            return null;
        }
        return (Album) this.mAlbumsMap.get(path.toLowerCase());
    }

    public List<AlbumPattern> getAlbumPatterns() {
        return this.mAlbumPatterns;
    }

    public ArrayList<Pattern> getWhiteListPatterns() {
        return this.mWhiteListPatterns;
    }

    public String toString() {
        return "AlbumsStrategy{mAlbums=" + this.mAlbums + ", mAlbumPatterns=" + this.mAlbumPatterns + '}';
    }
}
