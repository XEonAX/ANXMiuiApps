package miui.vip;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.miui.internal.vip.VipConstants;
import com.miui.internal.vip.VipInternalCallback;
import com.miui.internal.vip.utils.ImageDownloader;
import com.miui.internal.vip.utils.JsonParser;
import com.miui.internal.vip.utils.Utils;
import com.miui.internal.vip.utils.VipDataPref;
import com.miui.system.internal.R;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import miui.accounts.ExtraAccountManager;

public class VipPortraitView extends RelativeLayout {
    static final int ACHIEVEMENT_COUNT = 4;
    static final String BANNER = "banner";
    static final int[] BadgeIconSize = new int[]{R.dimen.vip_achievement_icon_size, R.dimen.vip_achievement_icon_size_1};
    static final int[] LayoutId = new int[]{R.layout.vip_portrait_view, R.layout.vip_portrait_expand_view};
    static final int MAX_BANNER_COUNT = 2;
    static final int MODEL_COMPACT = 0;
    static final int MODEL_EXPAND = 1;
    static final String PREF_KEY_BANNER = "banner";
    static final String PREF_NAME = "portrait_view";
    static final String STATISTIC_AVATAR = "portrait_avatar";
    static final String STATISTIC_BACKGROUND = "portrait_background";
    static final String STATISTIC_BANNER = "portrait_banner_";
    static final String STATISTIC_CUSTOM_BUTTON = "portrait_custom_button";
    static final String STATISTIC_SIGN = "portrait_sign";
    static final int WRAP_CONTENT = -1;
    public int ARROW_STYLE_CARD;
    public int ARROW_STYLE_LIST;
    OnClickListener mAccountWelcomeClick;
    List<VipAchievement> mAchievementList;
    LinearLayout mAchievements;
    ImageView mAction;
    OnClickListener mActionClick;
    Drawable mActionIcon;
    View mArrow;
    int mArrowCardMargin;
    int mArrowListMargin;
    int mArrowStyle;
    ImageView mAvatar;
    OnClickListener mAvatarClick;
    OnClickListener mBackgroundClick;
    ImageView mBadge;
    LinearLayout mBanner;
    View mBannerGroup;
    List<VipBanner> mBannerList;
    Comparator<VipAchievement> mCmpVipAchievement;
    Comparator<VipBanner> mCmpVipBanner;
    Account mExtAccount;
    View mFrame;
    TextView mIdView;
    private final VipInternalCallback mListener;
    Drawable mLockIcon;
    TextView mName;
    VipDataPref mPref;
    private final BroadcastReceiver mReceiver;
    boolean mServiceAvailable;
    boolean mShowBanner;
    int mShowModel;
    TextView mSign;
    OnClickListener mSignClick;
    View mSignGroup;
    TextView mTitle;
    OnClickListener mUserDetailClick;
    long mUserId;
    VipUserInfo mUserInfo;
    String mUserSign;
    OnClickListener mVipLevelListClick;

    static class ClickListenerWrapper implements OnClickListener {
        OnClickListener mClickListener;
        String mData;

        ClickListenerWrapper(String data, OnClickListener clickListener) {
            this.mClickListener = clickListener;
            this.mData = data;
        }

        public void onClick(View v) {
            VipService.instance().sendStatistic(this.mData);
            if (this.mClickListener != null) {
                this.mClickListener.onClick(v);
            }
        }
    }

    private static <T> boolean isSameList(List<T> left, List<T> right, Comparator<T> cmp) {
        boolean z = true;
        if (left == null) {
            if (right != null) {
                z = false;
            }
            return z;
        } else if (right == null || left.size() != right.size()) {
            return false;
        } else {
            int count = left.size();
            for (int i = 0; i < count; i++) {
                if (cmp.compare(left.get(i), right.get(i)) != 0) {
                    return false;
                }
            }
            return true;
        }
    }

    public VipPortraitView(Context context) {
        super(context);
        this.ARROW_STYLE_LIST = 0;
        this.ARROW_STYLE_CARD = 1;
        this.mArrowStyle = this.ARROW_STYLE_LIST;
        this.mShowModel = 0;
        this.mShowBanner = true;
        this.mCmpVipAchievement = new Comparator<VipAchievement>() {
            public int compare(VipAchievement lhs, VipAchievement rhs) {
                return lhs.id != rhs.id ? -1 : 0;
            }
        };
        this.mCmpVipBanner = new Comparator<VipBanner>() {
            public int compare(VipBanner lhs, VipBanner rhs) {
                return (TextUtils.equals(lhs.name, rhs.name) && TextUtils.equals(lhs.icon, rhs.icon)) ? 0 : -1;
            }
        };
        this.mAccountWelcomeClick = new OnClickListener() {
            public void onClick(View v) {
                Utils.startActivity(VipPortraitView.this.getContext(), VipConstants.ACTION_ACCOUNT_WELCOME, "com.xiaomi.account");
            }
        };
        this.mUserDetailClick = new ClickListenerWrapper(STATISTIC_AVATAR, new OnClickListener() {
            public void onClick(View v) {
                Utils.startActivity(VipPortraitView.this.getContext(), VipConstants.ACTION_USER_DETAIL, "com.xiaomi.account");
            }
        });
        this.mAvatarClick = this.mUserDetailClick;
        this.mVipLevelListClick = new ClickListenerWrapper(STATISTIC_BACKGROUND, new OnClickListener() {
            public void onClick(View v) {
                Utils.startActivity(VipPortraitView.this.getContext(), "com.xiaomi.vip.action.VIP_LEVEL_LIST", VipConstants.VIP_PACKAGE);
            }
        });
        this.mBackgroundClick = this.mVipLevelListClick;
        this.mListener = new VipInternalCallback(16, 64) {
            public void onUserInfo(int code, VipUserInfo user, String errMsg) {
                Utils.log("VipPortraitView.onUserInfo, code = %d, user = %s, errMsg = %s", Integer.valueOf(code), user, errMsg);
                if (code == 0) {
                    VipPortraitView.this.setVipLevel(user);
                }
            }

            public void onAchievements(int code, List<VipAchievement> list, String errMsg) {
                if (code == 0 && !VipPortraitView.isSameList(VipPortraitView.this.mAchievementList, list, VipPortraitView.this.mCmpVipAchievement)) {
                    VipPortraitView.this.setAchievements(list);
                }
            }

            public void onConnected(boolean serviceAvailable, VipUserInfo user, List<VipAchievement> achievements) {
                String str = "VipPortraitView.onConnected, serviceAvailable = %s, user = %s, achievements = %s";
                Object[] objArr = new Object[3];
                objArr[0] = Boolean.valueOf(serviceAvailable);
                objArr[1] = user;
                objArr[2] = achievements != null ? Arrays.toString(achievements.toArray()) : "null";
                Utils.log(str, objArr);
                VipPortraitView.this.mServiceAvailable = serviceAvailable;
                if (serviceAvailable) {
                    Utils.log("VipPortraitView.onConnected, before setAchievements", new Object[0]);
                    if (Utils.hasData((List) achievements)) {
                        VipPortraitView.this.setAchievements(achievements);
                    } else {
                        VipService.instance().queryAchievements();
                    }
                    VipService.instance().queryBanners();
                    Utils.log("VipPortraitView.onConnected, before setVipLevel", new Object[0]);
                    if (user != null) {
                        VipPortraitView.this.setVipLevel(user);
                        return;
                    } else {
                        VipService.instance().queryUserVipInfo();
                        return;
                    }
                }
                VipPortraitView.this.clearVipInfo();
            }

            public void onBanners(int code, List<VipBanner> list, String errMsg) {
                if (code == 0 && !VipPortraitView.isSameList(VipPortraitView.this.mBannerList, list, VipPortraitView.this.mCmpVipBanner)) {
                    VipPortraitView.this.saveBannerData(list);
                    VipPortraitView.this.setBanners(list);
                }
            }
        };
        this.mReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                Utils.log("VipPortraitView.mReceiver, action = %s", intent.getAction());
                VipPortraitView.this.setAccountData();
                if (!TextUtils.equals(intent.getAction(), "android.accounts.LOGIN_ACCOUNTS_POST_CHANGED")) {
                    return;
                }
                if (intent.getIntExtra("extra_update_type", 0) == 2) {
                    Utils.log("mReciever, user is added, connect vip service", new Object[0]);
                    VipPortraitView.this.connect();
                    return;
                }
                Utils.log("mReciever, user is removed, disconnect vip service", new Object[0]);
                VipPortraitView.this.disconnect();
            }
        };
    }

    public VipPortraitView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public VipPortraitView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.ARROW_STYLE_LIST = 0;
        this.ARROW_STYLE_CARD = 1;
        this.mArrowStyle = this.ARROW_STYLE_LIST;
        this.mShowModel = 0;
        this.mShowBanner = true;
        this.mCmpVipAchievement = /* anonymous class already generated */;
        this.mCmpVipBanner = /* anonymous class already generated */;
        this.mAccountWelcomeClick = /* anonymous class already generated */;
        this.mUserDetailClick = new ClickListenerWrapper(STATISTIC_AVATAR, /* anonymous class already generated */);
        this.mAvatarClick = this.mUserDetailClick;
        this.mVipLevelListClick = new ClickListenerWrapper(STATISTIC_BACKGROUND, /* anonymous class already generated */);
        this.mBackgroundClick = this.mVipLevelListClick;
        this.mListener = /* anonymous class already generated */;
        this.mReceiver = /* anonymous class already generated */;
        TypedArray a = context.obtainStyledAttributes(attrs, R.styleable.VipPortraitView, R.attr.vipShowModel, 0);
        this.mShowModel = a.getInt(R.styleable.VipPortraitView_vipShowModel, 0);
        a.recycle();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Utils.log("VipPortraitView.onAttachedToWindow", new Object[0]);
        getContext().registerReceiver(this.mReceiver, Utils.ACCOUNT_CHANGE_FILTER);
        connect();
        initViewAndSetData();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Utils.log("VipPortraitView.onDetachedToWindow", new Object[0]);
        this.mExtAccount = null;
        ImageDownloader.stop();
        getContext().unregisterReceiver(this.mReceiver);
        disconnect();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        initViewAndSetData();
    }

    public void showBanner(boolean show) {
        this.mShowBanner = show;
        setBanners(this.mBannerList);
    }

    public boolean isShowCompactModel() {
        return this.mShowModel == 0;
    }

    public void setArrowStyle(int style) {
        if (this.mArrow != null && this.mShowModel == 1) {
            ((LayoutParams) this.mArrow.getLayoutParams()).setMarginEnd(style == this.ARROW_STYLE_CARD ? this.mArrowCardMargin : this.mArrowListMargin);
        }
        this.mArrowStyle = style;
    }

    public void setAvatarViewClickListener(OnClickListener listener) {
        OnClickListener clickListenerWrapper;
        if (listener != null) {
            clickListenerWrapper = new ClickListenerWrapper(STATISTIC_AVATAR, listener);
        } else {
            clickListenerWrapper = this.mUserDetailClick;
        }
        this.mAvatarClick = clickListenerWrapper;
        if (this.mFrame != null) {
            this.mFrame.setOnClickListener(this.mAvatarClick);
        }
    }

    public void setSignatureViewClickListener(OnClickListener listener) {
        this.mSignClick = new ClickListenerWrapper(STATISTIC_SIGN, listener);
        if (this.mSignGroup != null) {
            this.mSignGroup.setOnClickListener(this.mSignClick);
        }
    }

    public void setOnClickListener(OnClickListener l) {
        OnClickListener clickListenerWrapper = l != null ? new ClickListenerWrapper(STATISTIC_BACKGROUND, l) : this.mServiceAvailable ? this.mVipLevelListClick : null;
        this.mBackgroundClick = clickListenerWrapper;
        super.setOnClickListener(this.mBackgroundClick);
    }

    public void setCustomButton(Drawable icon, OnClickListener onClick) {
        this.mActionIcon = icon;
        this.mActionClick = new ClickListenerWrapper(STATISTIC_CUSTOM_BUTTON, onClick);
        if (this.mAction != null) {
            this.mAction.setImageDrawable(icon);
            this.mAction.setOnClickListener(this.mActionClick);
        }
    }

    public void setSignature(String signature) {
        if (this.mSignGroup != null) {
            String sign = this.mSign.getText().toString();
            if (TextUtils.isEmpty(signature)) {
                this.mSignGroup.setVisibility(8);
            } else {
                this.mSignGroup.setVisibility(0);
                if (!signature.equals(sign)) {
                    this.mSign.setText(this.mUserSign);
                }
            }
        }
        this.mUserSign = signature;
    }

    @Deprecated
    public static View getAchievementView(Context ctx, List<VipAchievement> list) {
        return null;
    }

    public void setXiaomiAccount(Account account) {
        this.mExtAccount = account;
        setAccountData();
    }

    public void connect() {
        VipService.instance().connect(this.mListener);
    }

    public void disconnect() {
        VipService.instance().disconnect(this.mListener);
    }

    public void showBottomDivider(boolean show) {
        findViewById(R.id.vip_bottom_divider).setVisibility(show ? 0 : 8);
    }

    private void initViewAndSetData() {
        if (this.mFrame == null) {
            this.mArrowListMargin = getResources().getDimensionPixelSize(R.dimen.vip_margin_arrow_right);
            this.mArrowCardMargin = getResources().getDimensionPixelSize(R.dimen.vip_margin_frame_left);
            initView();
            setAccountData();
            loadBannerData();
        }
    }

    private synchronized VipDataPref getPref() {
        if (this.mPref == null) {
            this.mPref = new VipDataPref(getContext(), PREF_NAME);
        }
        return this.mPref;
    }

    private void saveBannerData(List<VipBanner> bannerList) {
        Utils.log("VipPortraitView.saveBannerData, bannerList = %s, bannerJson = %s", bannerList, JsonParser.toJson(bannerList));
        VipDataPref pref = getPref();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("banner");
        stringBuilder.append(this.mUserId);
        pref.setString(stringBuilder.toString(), bannerJson);
    }

    private void loadBannerData() {
        if (this.mUserId > 0) {
            String bannerJson = getPref();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("banner");
            stringBuilder.append(this.mUserId);
            List list = JsonParser.parseJsonArrayAsList(bannerJson.getString(stringBuilder.toString()), VipBanner.class);
            Utils.log("VipPortraitView.loadBannerData, list = %s", Arrays.toString(list.toArray()));
            if (Utils.hasData(list)) {
                setBanners(list);
            }
        }
    }

    private void changeModel(int newModel) {
        if (this.mShowModel != newModel) {
            this.mShowModel = newModel;
            removeAllViews();
            initView();
            loadData();
        }
    }

    private void loadData() {
        Utils.log("loadData", new Object[0]);
        setAccountData();
        loadBannerData();
        setVipLevel(this.mUserInfo);
        setSignature(this.mUserSign);
        setCustomButton(this.mActionIcon, this.mActionClick);
        setAchievements(this.mAchievementList);
    }

    private void initView() {
        Utils.log("initView", new Object[0]);
        inflate(getContext(), LayoutId[this.mShowModel], this);
        this.mFrame = findViewById(R.id.vip_id_frame);
        this.mFrame.setOnClickListener(this.mAvatarClick);
        this.mAvatar = (ImageView) findViewById(R.id.vip_id_avatar);
        this.mTitle = (TextView) findViewById(R.id.vip_id_title);
        this.mTitle.setVisibility(8);
        this.mName = (TextView) findViewById(R.id.vip_id_name);
        this.mIdView = (TextView) findViewById(R.id.vip_id_user_id);
        this.mBadge = (ImageView) findViewById(R.id.vip_id_badge);
        this.mSignGroup = findViewById(R.id.vip_id_sign_group);
        this.mSignGroup.setOnClickListener(this.mSignClick);
        this.mSign = (TextView) findViewById(R.id.vip_id_sign);
        this.mAchievements = (LinearLayout) findViewById(R.id.vip_id_achievements);
        this.mAction = (ImageView) findViewById(R.id.vip_id_custom_action);
        this.mArrow = findViewById(R.id.vip_id_arrow);
        setArrowStyle(this.mArrowStyle);
        this.mLockIcon = getContext().getResources().getDrawable(R.drawable.vip_icon_default_achievement);
        initBanner();
    }

    private void initBanner() {
        this.mBannerGroup = findViewById(R.id.vip_id_banner_group);
        this.mBanner = (LinearLayout) findViewById(R.id.vip_id_banner);
    }

    private void clearVipInfo() {
        Utils.log("clearVipInfo", new Object[0]);
        setVipLevel(null);
        setAchievements(null);
        setBanners(null);
    }

    private void setVipLevel(VipUserInfo user) {
        Utils.log("setVipLevel", new Object[0]);
        super.setOnClickListener(this.mBackgroundClick);
        if (this.mFrame != null) {
            if (user == null && this.mUserInfo != null) {
                Utils.log("setVipLevel, hide views of vip frame and level", new Object[0]);
                this.mBadge.setImageBitmap(null);
            } else if (user != null && user.level > 0 && (this.mUserInfo == null || this.mUserInfo.level != user.level || this.mBadge.getDrawable() == null)) {
                Utils.log("setVipLevel, level = %d", Integer.valueOf(user.level));
                ImageDownloader.loadImage(getContext(), String.format(VipConstants.LEVEL_IMG, new Object[]{Integer.valueOf(user.level)}), VipService.VIP_LEVEL_ICON, this.mBadge);
            }
        }
        this.mUserInfo = user;
    }

    private void setAccountData() {
        long time = System.currentTimeMillis();
        Account account = this.mExtAccount != null ? this.mExtAccount : ExtraAccountManager.getXiaomiAccount(getContext());
        Utils.log("setAccountData, account = %s", account);
        if (!(this.mName == null || this.mIdView == null)) {
            AccountManager am = AccountManager.get(getContext());
            if (account != null) {
                this.mUserId = TextUtils.isDigitsOnly(account.name) ? Long.valueOf(account.name).longValue() : 0;
                this.mFrame.setOnClickListener(this.mAvatarClick);
                super.setOnClickListener(this.mBackgroundClick);
                String oldId = this.mIdView.getText().toString();
                if (TextUtils.isEmpty(oldId) || !oldId.equals(account.name)) {
                    Utils.log("setAccountData, data is changed", new Object[0]);
                    this.mIdView.setText(account.name);
                }
                String name = this.mName.getText().toString();
                String userName = am.getUserData(account, VipConstants.ACCOUNT_USER_NAME);
                Utils.log("setAccountData, userName = %s", userName);
                if (TextUtils.isEmpty(name) || !name.equals(userName)) {
                    this.mName.setText(TextUtils.isEmpty(userName) ? account.name : userName);
                }
            } else {
                Utils.log("setAccountData, user isn't signed in", new Object[0]);
                this.mName.setText(R.string.vip_not_login);
                this.mIdView.setText(R.string.vip_login);
                this.mFrame.setOnClickListener(this.mAccountWelcomeClick);
                super.setOnClickListener(this.mAccountWelcomeClick);
                clearVipInfo();
            }
            loadAvatarFile(account, am);
        }
        Utils.log("setAccountData end, elapsed %d", Long.valueOf(System.currentTimeMillis() - time));
    }

    private void showAchievement(boolean show) {
        this.mAchievements.setVisibility(show ? 0 : 8);
    }

    private static void drawAchievementLock(LinearLayout container, Drawable lockIcon, int size) {
        if (lockIcon != null) {
            int iconCount = container.getChildCount();
            for (int i = 0; i < iconCount; i++) {
                View iconView = container.getChildAt(i);
                Object tag = iconView.getTag();
                if ((tag instanceof VipAchievement) && !((VipAchievement) tag).isOwned) {
                    addIconCover(iconView, size, lockIcon);
                }
            }
        }
    }

    private static void addIconCover(View iconView, int size, Drawable lockIcon) {
        ImageView cover = (ImageView) iconView.findViewById(R.id.vip_id_achieve_cover);
        if (cover != null) {
            LayoutParams coverLp = (LayoutParams) cover.getLayoutParams();
            coverLp.width = size;
            coverLp.height = size;
            cover.setImageDrawable(lockIcon);
        }
    }

    private void setAchievements(List<VipAchievement> infoList) {
        Utils.log("setAchievements", new Object[0]);
        if (this.mAchievements != null) {
            int viewCount = this.mAchievements.getChildCount();
            if (!Utils.hasData((List) infoList)) {
                if (viewCount > 0) {
                    Utils.log("setAchievements, no achievement, remove all views", new Object[0]);
                    this.mAchievements.removeAllViews();
                }
                showAchievement(false);
            } else if ((isSameList(this.mAchievementList, infoList, this.mCmpVipAchievement) ^ true) || viewCount == 0) {
                Utils.log("setAchievements, set achievement list", new Object[0]);
                this.mAchievements.removeAllViews();
                showAchievement(true);
                addAchievementIconToLinearLayout(this.mAchievements, infoList, getAchievementIconSize());
                this.mAchievements.requestLayout();
            }
        }
        this.mAchievementList = infoList;
    }

    private static int getAchievementCount(List<VipAchievement> list) {
        if (list == null) {
            return 0;
        }
        return Math.min(list.size(), 4);
    }

    private void addAchievementIconToLinearLayout(LinearLayout container, List<VipAchievement> infoList, int size) {
        addAchievementIconToLinearLayout(container, infoList, this.mLockIcon, this.mShowModel, size, getWidth());
    }

    private static void addAchievementIconToLinearLayout(LinearLayout container, List<VipAchievement> infoList, Drawable lockIcon, int showModel, int size, int maxWidth) {
        int margin;
        int count = getAchievementCount(infoList);
        int maxIndex = count - 1;
        Context ctx = container.getContext();
        if (showModel == 0) {
            margin = ctx.getResources().getDimensionPixelOffset(R.dimen.vip_margin_4);
        } else {
            margin = ((maxWidth - (ctx.getResources().getDimensionPixelOffset(R.dimen.vip_margin_8) * 2)) - (size * count)) / maxIndex;
        }
        int i = 0;
        while (i < count) {
            addAchievementIcon(container, (VipAchievement) infoList.get(i), showModel, size, i == maxIndex ? 0 : margin);
            i++;
        }
        drawAchievementLock(container, lockIcon, size);
    }

    private int getAchievementIconSize() {
        return getAchievementIconSize(getContext(), this.mShowModel);
    }

    private static int getAchievementIconSize(Context ctx, int model) {
        return ctx.getResources().getDimensionPixelSize(BadgeIconSize[model]);
    }

    private String getBannerTypeName(long bannerId) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("banner");
        stringBuilder.append(String.valueOf(bannerId));
        return stringBuilder.toString();
    }

    private void setBanners(List<VipBanner> bannerList) {
        if (this.mBanner != null) {
            if (this.mShowBanner && Utils.hasData((List) bannerList)) {
                this.mBannerGroup.setVisibility(0);
                int viewCount = this.mBanner.getChildCount();
                if (viewCount == 0 || !isSameList(this.mBannerList, bannerList, this.mCmpVipBanner)) {
                    setBannerView(bannerList, viewCount);
                }
                this.mBanner.requestLayout();
            } else {
                this.mBannerGroup.setVisibility(8);
            }
        }
        this.mBannerList = bannerList;
    }

    private void setBannerView(List<VipBanner> bannerList, int viewCount) {
        int count = Math.min(2, bannerList.size());
        int i = 0;
        int i2;
        if (count > viewCount) {
            for (i2 = 0; i2 < count - viewCount; i2++) {
                View bannerView = inflate(getContext(), R.layout.vip_banner, null);
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-1, -1);
                lp.weight = 1.0f;
                this.mBanner.addView(bannerView, lp);
            }
        } else if (viewCount > count) {
            for (i2 = 0; i2 < viewCount - count; i2++) {
                this.mBanner.removeViewAt(i2);
            }
        }
        while (i < count) {
            setBannerViewData(this.mBanner.getChildAt(i), (VipBanner) bannerList.get(i));
            i++;
        }
    }

    private void setBannerViewData(View bannerView, final VipBanner banner) {
        ImageView bannerIcon = (ImageView) bannerView.findViewById(R.id.vip_id_banner_icon);
        if (TextUtils.isEmpty(banner.icon) || !Utils.isStringUri(banner.icon)) {
            bannerIcon.setImageResource(R.drawable.vip_icon_chalice);
        } else {
            ImageDownloader.loadImage(getContext(), banner.icon, getBannerTypeName(banner.id), bannerIcon);
        }
        ((TextView) bannerView.findViewById(R.id.vip_id_banner_name)).setText(banner.name);
        TextView infoView = (TextView) bannerView.findViewById(R.id.vip_id_banner_info);
        if (TextUtils.isEmpty(banner.info)) {
            infoView.setVisibility(8);
        } else {
            infoView.setText(banner.info);
        }
        Utils.log("setBannerViewData, banner = %s", banner);
        if (!TextUtils.isEmpty(banner.action)) {
            OnClickListener bannerClick = new OnClickListener() {
                public void onClick(View v) {
                    Utils.startActivity(VipPortraitView.this.getContext(), banner.action, null, banner.extraParams);
                }
            };
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(STATISTIC_BANNER);
            stringBuilder.append(banner.id);
            bannerView.setOnClickListener(new ClickListenerWrapper(stringBuilder.toString(), bannerClick));
        }
    }

    private void loadAvatarFile(Account account, AccountManager am) {
        Utils.log("loadAvatarFile, account = %s", account);
        if (this.mAvatar == null) {
            return;
        }
        if (account == null) {
            this.mAvatar.setImageResource(R.drawable.vip_default_avatar);
            return;
        }
        String avatarUrl = am.getUserData(account, VipConstants.ACCOUNT_AVATAR_URL);
        String fileName = am.getUserData(account, VipConstants.ACCOUNT_AVATAR_FILE_NAME);
        Utils.log("loadAvatarFile, avatarUrl = %s, fileName = %s", avatarUrl, fileName);
        if (TextUtils.isEmpty(fileName)) {
            this.mAvatar.setImageResource(R.drawable.vip_default_avatar);
            return;
        }
        ImageDownloader.loadImage(getContext(), avatarUrl, fileName.replace(account.name, Utils.md5(account.name)), this.mAvatar, true);
    }

    private static void addAchievementIcon(LinearLayout container, VipAchievement info, int showModel, int size, int margin) {
        r1 = new Object[3];
        int i = 0;
        r1[0] = Long.valueOf(info.id);
        r1[1] = info.name;
        r1[2] = info.url;
        Utils.log("addAchievementIcon, info.badgeId = %d, info.name = %s, info.url = %s", r1);
        Context ctx = container.getContext();
        View achievementView = inflate(ctx, R.layout.vip_achievement_icon, null);
        achievementView.setTag(info);
        ImageView iconView = (ImageView) achievementView.findViewById(R.id.vip_id_achieve_icon);
        LayoutParams iconLp = (LayoutParams) iconView.getLayoutParams();
        iconLp.width = size;
        iconLp.height = size;
        ImageDownloader.loadImage(ctx, info.url, String.valueOf(info.id), iconView);
        TextView nameView = (TextView) achievementView.findViewById(R.id.vip_id_achieve_name);
        if (showModel == 0) {
            i = 8;
        }
        nameView.setVisibility(i);
        nameView.setText(info.name);
        addViewToAchievements(container, achievementView, -1, margin);
    }

    private static void addViewToAchievements(LinearLayout container, View view, int size, int margin) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(-2, -2);
        lp.setMarginEnd(margin);
        if (size != -1) {
            lp.width = size;
            lp.height = size;
        }
        container.addView(view, lp);
    }
}
