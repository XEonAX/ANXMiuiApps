package miui.yellowpage;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import miui.yellowpage.Tag.TagPhone;
import miui.yellowpage.Tag.TagYellowPage;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class YellowPage {
    private static final String TAG = "YellowPage";
    private String mAddress;
    private String mAlias;
    private String mAuthIconName;
    private String mBrief;
    private String mCatId;
    private String mContent;
    private String mCreditImg;
    private String mExtraData;
    private String mFirmUrl;
    private List<String> mGallery;
    private String mHotCatId;
    private int mHotSort;
    private boolean mIsHot;
    private boolean mIsMasterPage;
    private boolean mIsPreset;
    private String mLatitude;
    private String mLocId;
    private String mLongitude;
    private String mMiId;
    private String mName;
    private List<YellowPagePhone> mPhones = new ArrayList();
    private String mPhotoUrl;
    private String mPinyin;
    private int mProviderId;
    private List<Provider> mProviders;
    private String mSlogan;
    private List<Social> mSocials;
    private String mSourceId;
    private String mSourceUrl;
    private String mThumbnailUrl;
    private String mUrl;
    private long mYid;

    public static class Provider {
        private int mId;
        private String mSourceUrl;

        public Provider setId(int id) {
            this.mId = id;
            return this;
        }

        public int getId() {
            return this.mId;
        }

        public Provider setSourceUrl(String url) {
            this.mSourceUrl = url;
            return this;
        }

        public String getSourceUrl() {
            return this.mSourceUrl;
        }

        public static Provider fromJson(JSONObject json) {
            try {
                int id = json.getInt("provider");
                return new Provider().setId(id).setSourceUrl(json.getString(TagYellowPage.SOURCE_URL));
            } catch (JSONException e) {
                e.printStackTrace();
                return null;
            }
        }
    }

    public static class Social {
        private String mName;
        private int mProviderId;
        private String mUrl;

        public Social(String url, String name, int providerId) {
            this.mUrl = url;
            this.mName = name;
            this.mProviderId = providerId;
        }

        public String getUrl() {
            return this.mUrl;
        }

        public String getName() {
            return this.mName;
        }

        public int getProviderId() {
            return this.mProviderId;
        }
    }

    private interface TagCallMenuNIvr {
        public static final String CALL_MENU = "callMenu";
        public static final String ICON = "icon";
        public static final String NAME = "name";
        public static final String PRICE = "price";
        public static final String TYPE = "type";
    }

    private interface TagSocial {
        public static final String NAME = "name";
        public static final String PROVIDER = "provider";
        public static final String PROVIDER_NAME = "providerName";
        public static final String URL = "url";
    }

    public YellowPage setSlogan(String slogan) {
        this.mSlogan = slogan;
        return this;
    }

    public String getSlogan() {
        return this.mSlogan;
    }

    public YellowPage setLongitude(String longitude) {
        this.mLongitude = longitude;
        return this;
    }

    public String getLongitude() {
        return this.mLongitude;
    }

    public YellowPage setLatitude(String latitude) {
        this.mLatitude = latitude;
        return this;
    }

    public String getLatitude() {
        return this.mLatitude;
    }

    public YellowPage setAuthIconName(String authIconName) {
        this.mAuthIconName = authIconName;
        return this;
    }

    public String getAuthIconName() {
        return this.mAuthIconName;
    }

    public YellowPage setId(long id) {
        this.mYid = id;
        return this;
    }

    public long getId() {
        return this.mYid;
    }

    public YellowPage setUrl(String url) {
        this.mUrl = url;
        return this;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public YellowPage setFirmUrl(String firmUrl) {
        this.mFirmUrl = firmUrl;
        return this;
    }

    public String getCreditImg() {
        return this.mCreditImg;
    }

    public YellowPage setCreditImg(String creditImg) {
        this.mCreditImg = creditImg;
        return this;
    }

    public String getFirmUrl() {
        return this.mFirmUrl;
    }

    public YellowPage setBrief(String brief) {
        this.mBrief = brief;
        return this;
    }

    public String getBrief() {
        return this.mBrief;
    }

    public YellowPage setAddress(String addr) {
        this.mAddress = addr;
        return this;
    }

    public String getAddress() {
        return this.mAddress;
    }

    public YellowPage setAlias(String alias) {
        this.mAlias = alias;
        return this;
    }

    public String getAlias() {
        return this.mAlias;
    }

    public YellowPage setGallery(List<String> gallery) {
        this.mGallery = gallery;
        return this;
    }

    public List<String> getGallery() {
        return this.mGallery;
    }

    public YellowPage setName(String name) {
        this.mName = name;
        return this;
    }

    public String getName() {
        return this.mName;
    }

    public YellowPage setPinyin(String pinyin) {
        this.mPinyin = pinyin;
        return this;
    }

    public String getPinyin() {
        return this.mPinyin;
    }

    public YellowPage setPhones(List<YellowPagePhone> phones) {
        this.mPhones = phones;
        return this;
    }

    public List<YellowPagePhone> getPhones() {
        return this.mPhones;
    }

    public String getProviderName(Context context) {
        return YellowPageUtils.getProvider(context, this.mProviderId).getName();
    }

    public YellowPage setProviderId(int id) {
        this.mProviderId = id;
        return this;
    }

    public int getProviderId() {
        return this.mProviderId;
    }

    public String getMiId() {
        return this.mMiId;
    }

    public YellowPage setMiId(String miId) {
        this.mMiId = miId;
        return this;
    }

    public Bitmap getProviderIcon(Context context) {
        return YellowPageUtils.getProvider(context, this.mProviderId).getIcon();
    }

    public byte[] getPhoto() {
        return null;
    }

    public YellowPage setPhotoName(String url) {
        this.mPhotoUrl = url;
        return this;
    }

    public String getPhotoName() {
        return this.mPhotoUrl;
    }

    public YellowPage setThumbnailName(String name) {
        this.mThumbnailUrl = name;
        return this;
    }

    public String getThumbnailName() {
        return this.mThumbnailUrl;
    }

    public byte[] getThumbnail() {
        return null;
    }

    public YellowPage setSocials(List<Social> socials) {
        this.mSocials = socials;
        return this;
    }

    public List<Social> getSocials() {
        return this.mSocials;
    }

    public YellowPage setIsMasterPage(boolean master) {
        this.mIsMasterPage = master;
        return this;
    }

    public boolean isMasterPage() {
        return this.mIsMasterPage;
    }

    public YellowPage setIsHot(boolean hot) {
        this.mIsHot = hot;
        return this;
    }

    public boolean isHot() {
        return this.mIsHot;
    }

    public YellowPage setIsPreset(boolean isPreset) {
        this.mIsPreset = isPreset;
        return this;
    }

    public boolean isPreset() {
        return this.mIsPreset;
    }

    private YellowPage setContent(String content) {
        this.mContent = content;
        return this;
    }

    public String getContent() {
        return this.mContent;
    }

    public boolean isProviderMiui() {
        return this.mProviderId == 0;
    }

    public YellowPage setSourceUrl(String url) {
        this.mSourceUrl = url;
        return this;
    }

    public String getSourceUrl() {
        return this.mSourceUrl;
    }

    public YellowPage setSourceId(String id) {
        this.mSourceId = id;
        return this;
    }

    public String getSourceId() {
        return this.mSourceId;
    }

    public YellowPage setHotSort(int sort) {
        this.mHotSort = sort;
        return this;
    }

    public int getHotSort() {
        return this.mHotSort;
    }

    public YellowPage setHotCatId(String id) {
        this.mHotCatId = id;
        return this;
    }

    public String getHotCatId() {
        return this.mHotCatId == null ? "" : this.mHotCatId;
    }

    public YellowPage setCatId(String catId) {
        this.mCatId = catId;
        return this;
    }

    public String getCatId() {
        return this.mCatId;
    }

    public YellowPage setLocId(String id) {
        this.mLocId = id;
        return this;
    }

    public String getLocId() {
        return this.mLocId;
    }

    public List<Provider> getProviderList() {
        return this.mProviders;
    }

    public YellowPage setProviderList(List<Provider> list) {
        this.mProviders = list;
        return this;
    }

    public YellowPagePhone getPhoneInfo(Context context, String number) {
        if (TextUtils.isEmpty(number)) {
            return null;
        }
        String normalizedNumber = YellowPageUtils.getNormalizedNumber(context, number);
        if (this.mPhones != null) {
            for (YellowPagePhone phone : this.mPhones) {
                if (TextUtils.equals(normalizedNumber, phone.getNormalizedNumber())) {
                    return phone;
                }
            }
        }
        return null;
    }

    public String getExtraData() {
        return this.mExtraData;
    }

    public YellowPage setExtraData(String mExtraData) {
        this.mExtraData = mExtraData;
        return this;
    }

    public static YellowPage fromJson(String jsonString) {
        try {
            return fromJson(new JSONObject(jsonString));
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static YellowPage fromJson(JSONObject json) {
        JSONObject jSONObject = json;
        try {
            int hotSort;
            String hotCatId;
            String brief;
            String sourceId;
            String sourceUrl;
            String catId;
            String locId;
            String longitude;
            String latitude;
            String miId;
            String miSudId;
            String authIcon;
            boolean isHotPage;
            String firmUrl;
            String url;
            boolean isMasterPage;
            String address;
            String alias;
            boolean isPreset;
            String pinyin;
            int pid;
            List<YellowPagePhone> phoneList;
            String str;
            long yid = jSONObject.getLong(TagYellowPage.YID);
            String name = jSONObject.getString(TagYellowPage.NAME);
            int pid2 = jSONObject.optInt("provider");
            String pinyin2 = jSONObject.optString(TagYellowPage.PINYIN);
            String alias2 = jSONObject.optString(TagYellowPage.ALIAS);
            String address2 = jSONObject.optString("address");
            String url2 = jSONObject.optString(TagYellowPage.URL);
            String firmUrl2 = jSONObject.optString(TagYellowPage.FIRMURL);
            String creditImg = jSONObject.optString(TagYellowPage.CREDITIMG);
            String sourceUrl2 = jSONObject.optString(TagYellowPage.SOURCE_URL);
            String sourceId2 = jSONObject.optString(TagYellowPage.SOURCE_ID);
            String brief2 = jSONObject.optString(TagYellowPage.BRIEF_INFO);
            String hotCatId2 = jSONObject.optString("hotCatId");
            int hotSort2 = jSONObject.optInt("hotSort");
            String creditImg2 = creditImg;
            String catId2 = jSONObject.optString("catId");
            String locId2 = jSONObject.optString("locId");
            String longitude2 = jSONObject.optString("longitude");
            String latitude2 = jSONObject.optString("latitude");
            String miId2 = jSONObject.optString("miid");
            String miSudId2 = jSONObject.optString(TagYellowPage.MI_SUB_ID);
            String slogan = jSONObject.optString("slogan");
            String authIcon2 = jSONObject.optString(TagYellowPage.AUTH_ICON);
            String url3 = url2;
            int i = 0;
            String alias3 = alias2;
            boolean isMasterPage2 = jSONObject.optInt(TagYellowPage.TYPE) == 2;
            boolean isHotPage2 = jSONObject.optInt(TagYellowPage.HOT) == 1;
            String pinyin3 = pinyin2;
            boolean isPreset2 = jSONObject.optInt("buildIn") == 1;
            boolean hasCallMenu = jSONObject.has(TagCallMenuNIvr.CALL_MENU);
            JSONArray phoneArray = jSONObject.optJSONArray("phone");
            if (phoneArray != null) {
                boolean isHotPage3;
                boolean isPreset3;
                JSONArray phoneArray2;
                List<YellowPagePhone> phoneList2 = null;
                boolean i2 = false;
                while (true) {
                    isHotPage3 = isHotPage2;
                    isPreset3 = isPreset2;
                    isPreset2 = i2;
                    if (isPreset2 >= phoneArray.length()) {
                        break;
                    }
                    isHotPage2 = phoneArray.getJSONObject(isPreset2);
                    boolean isMasterPage3 = isMasterPage2;
                    hotSort = hotSort2;
                    String number = isHotPage2.getString("phone");
                    hotCatId = hotCatId2;
                    hotCatId2 = isHotPage2.optString(TagPhone.NORMALIZED_NUMBER);
                    brief = brief2;
                    brief2 = isHotPage2.getString(TagPhone.Tag);
                    String tagPinyin = isHotPage2.getString(TagPhone.PINYIN);
                    long t9Rank = isHotPage2.optLong(TagPhone.T9_RANK);
                    boolean atdCatId = isHotPage2.optInt(TagPhone.ATD_CAT_ID);
                    sourceId = sourceId2;
                    int count = isHotPage2.optInt("count");
                    boolean antispamProviderId = isHotPage2.optInt("provider");
                    boolean flag = isHotPage2.optInt("flag");
                    sourceUrl = sourceUrl2;
                    boolean visible = !isHotPage2.getInt("hide");
                    if (phoneList2 == null) {
                        isMasterPage2 = new ArrayList();
                        phoneList2 = isMasterPage2;
                    } else {
                        isMasterPage2 = phoneList2;
                    }
                    String creditImg3 = creditImg2;
                    catId = catId2;
                    locId = locId2;
                    longitude = longitude2;
                    latitude = latitude2;
                    miId = miId2;
                    miSudId = miSudId2;
                    String slogan2 = slogan;
                    authIcon = authIcon2;
                    isHotPage = isHotPage3;
                    JSONObject phoneJson = isHotPage2;
                    List<YellowPagePhone> phoneList3 = isMasterPage2;
                    firmUrl = firmUrl2;
                    url = url3;
                    isMasterPage = isMasterPage3;
                    boolean atdCatId2 = atdCatId;
                    boolean antispamProviderId2 = antispamProviderId;
                    boolean flag2 = flag;
                    address = address2;
                    boolean i3 = isPreset2;
                    alias = alias3;
                    isPreset = isPreset3;
                    phoneArray2 = phoneArray;
                    pinyin = pinyin3;
                    pid = pid2;
                    isHotPage2 = new YellowPagePhone(yid, name, brief2, number, hotCatId2, 1, pid2, count, visible, pinyin, tagPinyin, hasCallMenu);
                    isMasterPage2 = t9Rank;
                    isHotPage2.setT9Rank(isMasterPage2);
                    address2 = slogan2;
                    isHotPage2.setRawSlogan(address2);
                    isHotPage2.setCid(atdCatId2);
                    isHotPage2.setFlag(flag2);
                    isHotPage2.setAntispamProviderId(antispamProviderId2);
                    long t9Rank2 = isMasterPage2;
                    isMasterPage2 = creditImg3;
                    isHotPage2.setCreditImg(isMasterPage2);
                    List<YellowPagePhone> phoneList4 = phoneList3;
                    phoneList4.add(isHotPage2);
                    i2 = i3 + 1;
                    creditImg2 = isMasterPage2;
                    phoneList2 = phoneList4;
                    slogan = address2;
                    phoneArray = phoneArray2;
                    hotSort2 = hotSort;
                    hotCatId2 = hotCatId;
                    brief2 = brief;
                    sourceId2 = sourceId;
                    sourceUrl2 = sourceUrl;
                    catId2 = catId;
                    locId2 = locId;
                    longitude2 = longitude;
                    latitude2 = latitude;
                    miId2 = miId;
                    miSudId2 = miSudId;
                    authIcon2 = authIcon;
                    isHotPage2 = isHotPage;
                    url3 = url;
                    firmUrl2 = firmUrl;
                    isMasterPage2 = isMasterPage;
                    address2 = address;
                    alias3 = alias;
                    isPreset2 = isPreset;
                    pinyin3 = pinyin;
                    pid2 = pid;
                }
                isMasterPage = isMasterPage2;
                firmUrl = firmUrl2;
                address = address2;
                brief = brief2;
                hotSort = hotSort2;
                hotCatId = hotCatId2;
                sourceId = sourceId2;
                sourceUrl = sourceUrl2;
                pid = pid2;
                url2 = creditImg2;
                catId = catId2;
                locId = locId2;
                longitude = longitude2;
                latitude = latitude2;
                miId = miId2;
                miSudId = miSudId2;
                address2 = slogan;
                authIcon = authIcon2;
                url = url3;
                alias = alias3;
                pinyin = pinyin3;
                isHotPage = isHotPage3;
                isPreset = isPreset3;
                phoneArray2 = phoneArray;
                phoneList = phoneList2;
            } else {
                isHotPage = isHotPage2;
                isMasterPage = isMasterPage2;
                firmUrl = firmUrl2;
                address = address2;
                brief = brief2;
                hotSort = hotSort2;
                hotCatId = hotCatId2;
                isPreset = isPreset2;
                sourceId = sourceId2;
                sourceUrl = sourceUrl2;
                pid = pid2;
                url2 = creditImg2;
                catId = catId2;
                locId = locId2;
                longitude = longitude2;
                latitude = latitude2;
                miId = miId2;
                miSudId = miSudId2;
                address2 = slogan;
                authIcon = authIcon2;
                url = url3;
                alias = alias3;
                pinyin = pinyin3;
                phoneList = null;
            }
            JSONArray socialArray = jSONObject.optJSONArray(TagYellowPage.SOCIAL);
            List<Social> socialList = null;
            if (socialArray != null && socialArray.length() > 0) {
                socialList = new ArrayList();
                for (hotSort2 = 0; hotSort2 < socialArray.length(); hotSort2++) {
                    JSONObject socialJson = socialArray.getJSONObject(hotSort2);
                    socialList.add(new Social(socialJson.getString("url"), socialJson.getString("name"), socialJson.optInt("provider")));
                }
            }
            List<Provider> providers = new ArrayList();
            JSONArray providerArray = jSONObject.optJSONArray(TagYellowPage.PROVIDER_LIST);
            if (providerArray != null) {
                while (true) {
                    int i4 = i;
                    if (i4 >= providerArray.length()) {
                        break;
                    }
                    Provider provider = Provider.fromJson(providerArray.getJSONObject(i4));
                    if (provider != null) {
                        providers.add(provider);
                    }
                    i = i4 + 1;
                }
            }
            alias2 = jSONObject.optString(TagYellowPage.PHOTO);
            pinyin2 = jSONObject.optString(TagYellowPage.THUMBNAIL);
            sourceId2 = jSONObject.optString("extraData");
            name = brief;
            YellowPage brief3 = new YellowPage().setId(yid).setName(name).setPinyin(pinyin).setBrief(name);
            name = alias;
            brief3 = brief3.setAlias(name);
            name = address;
            int pid3 = pid;
            brief3 = brief3.setAddress(name).setPhones(phoneList).setSocials(socialList).setThumbnailName(pinyin2).setPhotoName(alias2).setProviderId(pid3);
            name = url;
            brief3 = brief3.setUrl(name);
            name = firmUrl;
            name = sourceUrl;
            brief3 = brief3.setFirmUrl(name).setCreditImg(url2).setSourceUrl(name);
            name = sourceId;
            brief3 = brief3.setSourceId(name);
            boolean isMasterPage4 = isMasterPage;
            brief3 = brief3.setIsMasterPage(isMasterPage4);
            isMasterPage4 = isPreset;
            brief3 = brief3.setIsPreset(isMasterPage4);
            isMasterPage4 = isHotPage;
            brief3 = brief3.setIsHot(isMasterPage4);
            name = hotCatId;
            brief3 = brief3.setHotCatId(name);
            pid3 = hotSort;
            brief3 = brief3.setHotSort(pid3);
            name = catId;
            brief3 = brief3.setCatId(name);
            name = locId;
            brief3 = brief3.setLocId(name);
            name = longitude;
            brief3 = brief3.setLongitude(name);
            name = latitude;
            YellowPage providerList = brief3.setLatitude(name).setContent(json.toString()).setSlogan(address2).setProviderList(providers);
            sourceUrl2 = miSudId;
            if (TextUtils.isEmpty(sourceUrl2)) {
                long j = yid;
                str = miId;
                yid = str;
            } else {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(miId);
                stringBuilder.append("/");
                stringBuilder.append(sourceUrl2);
                str = stringBuilder.toString();
            }
            return providerList.setMiId(str).setAuthIconName(authIcon).setExtraData(sourceId2);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }
}
