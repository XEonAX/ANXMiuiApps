package com.miui.gallery.activity;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.miui.gallery.R;
import com.miui.gallery.cloudcontrol.CloudControlManager;
import com.miui.gallery.cloudcontrol.FeatureProfile.Status;
import com.miui.gallery.cloudcontrol.FeatureStatusObserver;
import com.miui.gallery.preference.GalleryPreferences.FeatureRedDot;
import com.miui.gallery.provider.GalleryContract.Common;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.ActionURIHandler;
import com.miui.gallery.util.IntentUtil;
import com.miui.gallery.util.MovieLibraryLoaderHelper;
import com.miui.gallery.util.MovieLibraryLoaderHelper.DownloadStateListener;
import com.miui.gallery.util.PhotoMovieEntranceUtils;
import com.miui.gallery.util.PrintInstallHelper;
import com.miui.gallery.util.PrintInstallHelper.InstallStateListener;
import com.miui.gallery.util.SyncUtil;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.util.deviceprovider.ApplicationHelper;
import com.miui.gallery.widget.menu.ImmersionMenu;
import com.miui.gallery.widget.menu.ImmersionMenuItem;
import com.miui.gallery.widget.menu.ImmersionMenuListener;
import com.miui.gallery.widget.menu.PhoneImmersionMenu;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import miui.yellowpage.YellowPageContract.Settings;
import miui.yellowpage.YellowPageStatistic.Display;

public class HomePageImmersionMenuHelper implements ImmersionMenuListener {
    private Context mContext;
    private String mCurrentPage;
    private Map<Integer, FeatureInfo> mFeatureItemsMap = new HashMap();
    private boolean mHasRedDotItem;
    private InstallStateListener mInstallStateListener;
    private MenuItemsCheckListener mMenuItemsCheckListener;
    private DownloadStateListener mMovieDownloadStateListener;
    private PhoneImmersionMenu mPhoneImmersionMenu;
    private PrintStatusObserver mPrintStatusObserver;

    public interface MenuItemsCheckListener {
        void onMenuItemsChecked(boolean z);
    }

    private class FeatureInfo {
        public String mFeatureName;
        private boolean mIsPushValid;
        private boolean mIsUpdate;

        public FeatureInfo(String featureName, boolean isUpdate, boolean isPushValid) {
            this.mFeatureName = featureName;
            this.mIsUpdate = isUpdate;
            this.mIsPushValid = isPushValid;
            if (!FeatureRedDot.isUpdateFeatureStated(featureName)) {
                Map param = new HashMap();
                param.put("featureName", featureName);
                BaseSamplingStatHelper.recordCountEvent("feature_red_dot", "new_feature", param);
                FeatureRedDot.setUpdateFeatureStated(featureName, true);
            }
        }

        public void setFeatureUsed() {
            FeatureRedDot.setUpdateFeatureUsed(this.mFeatureName, true);
            if (FeatureRedDot.isFeatureRedDotValid(this.mFeatureName, System.currentTimeMillis())) {
                FeatureRedDot.setFeatureRedDotValidTime(this.mFeatureName, 0, 0);
            }
        }

        public boolean needRedDot() {
            return (this.mIsUpdate && !FeatureRedDot.hasUpdateFeatureUsed(this.mFeatureName)) || (this.mIsPushValid && FeatureRedDot.isFeatureRedDotValid(this.mFeatureName, System.currentTimeMillis()));
        }
    }

    private class PrintStatusObserver implements FeatureStatusObserver {
        private PrintStatusObserver() {
        }

        /* synthetic */ PrintStatusObserver(HomePageImmersionMenuHelper x0, AnonymousClass1 x1) {
            this();
        }

        public void onStatusChange(String featureName, Status oldStatus, Status newStatus) {
            if ("photo-print".equals(featureName)) {
                HomePageImmersionMenuHelper.this.onPrintStatueChanged(newStatus);
            }
        }
    }

    public HomePageImmersionMenuHelper(Context context) {
        this.mContext = context;
        this.mPhoneImmersionMenu = new PhoneImmersionMenu(context, this);
        registerPrintStatusObserver();
    }

    public void onCreateImmersionMenu(final ImmersionMenu menu) {
        if (this.mContext != null) {
            menu.add(R.id.menu_collage, this.mContext.getString(R.string.home_menu_collage)).setIconResource(R.drawable.home_menu_collage);
            registerFeature(R.id.menu_collage, "collage", true, false);
            if (PhotoMovieEntranceUtils.isPhotoMovieAvailable()) {
                final ImmersionMenuItem photoMovieItem = menu.add(R.id.menu_photo_movie, this.mContext.getString(R.string.home_menu_photo_movie)).setIconResource(R.drawable.home_menu_photo_movie);
                registerFeature(R.id.menu_photo_movie, "photo_movie", true, false);
                this.mMovieDownloadStateListener = new DownloadStateListener() {
                    public void onDownloading() {
                        photoMovieItem.setRemainWhenClick(true);
                        photoMovieItem.setInformation((int) R.string.photo_movie_menu_loading);
                        HomePageImmersionMenuHelper.this.updateImmersionMenu(menu);
                    }

                    public void onFinish(boolean isSuccess, int errorCode) {
                        photoMovieItem.setRemainWhenClick(false);
                        photoMovieItem.setInformation(null);
                        HomePageImmersionMenuHelper.this.updateImmersionMenu(menu);
                    }
                };
                MovieLibraryLoaderHelper.getInstance().addDownloadStateListener(this.mMovieDownloadStateListener);
            }
            menu.add(R.id.menu_cleaner, this.mContext.getString(R.string.home_menu_cleaner)).setIconResource(R.drawable.home_menu_cleaner);
            registerFeature(R.id.menu_cleaner, "photo_cleaner", true, false);
            ImmersionMenuItem trashBinItem = menu.add(R.id.trash_bin, this.mContext.getString(R.string.trash_bin)).setIconResource(R.drawable.home_menu_trash_bin);
            registerFeature(R.id.trash_bin, "trash_bin", false, false);
            setMenuVisibility(trashBinItem, isTrashBinEnable());
            final ImmersionMenuItem photoPrintItem = menu.add(R.id.menu_photo_print, this.mContext.getString(R.string.home_menu_print)).setIconResource(R.drawable.home_menu_print);
            registerFeature(R.id.menu_photo_print, "photo_print", true, true);
            photoPrintItem.setVisible(PrintInstallHelper.getInstance().isPhotoPrintEnable());
            this.mInstallStateListener = new InstallStateListener() {
                public void onInstallLimited() {
                    ToastUtils.makeText(HomePageImmersionMenuHelper.this.mContext, (int) R.string.try_again_later);
                }

                public void onInstalling() {
                    photoPrintItem.setRemainWhenClick(true);
                    photoPrintItem.setInformation((int) R.string.photo_print_menu_loading);
                    HomePageImmersionMenuHelper.this.updateImmersionMenu(menu);
                }

                public void onFinish(boolean isSuccess, int errorCode, int failReason) {
                    if (isSuccess) {
                        ToastUtils.makeText(HomePageImmersionMenuHelper.this.mContext, (int) R.string.photo_print_package_finish);
                    } else {
                        int failReasonMsg = PrintInstallHelper.getFailReasonMsg(errorCode, failReason);
                        if (failReasonMsg != 0) {
                            ToastUtils.makeText(HomePageImmersionMenuHelper.this.mContext, failReasonMsg);
                        }
                    }
                    photoPrintItem.setRemainWhenClick(false);
                    photoPrintItem.setInformation(null);
                    HomePageImmersionMenuHelper.this.updateImmersionMenu(menu);
                }
            };
            PrintInstallHelper.getInstance().addInstallStateListener(this.mInstallStateListener);
            menu.add(R.id.menu_settings, this.mContext.getString(R.string.gallery_setting)).setIconResource(R.drawable.home_menu_settings);
            registerFeature(R.id.menu_settings, Settings.DIRECTORY, false, false);
        }
    }

    public boolean onPrepareImmersionMenu(ImmersionMenu menu) {
        if (this.mContext == null) {
            return false;
        }
        boolean change = setMenuVisibility(menu.findItem(R.id.trash_bin), isTrashBinEnable());
        boolean isPhotoPrintVisible = PrintInstallHelper.getInstance().isPhotoPrintEnable();
        change |= setMenuVisibility(menu.findItem(R.id.menu_photo_print), isPhotoPrintVisible);
        if (!isPhotoPrintVisible) {
            return change;
        }
        BaseSamplingStatHelper.recordStringPropertyEvent("photo_print", "photo_print_menu_displayed", "true");
        return change;
    }

    public void onImmersionMenuSelected(ImmersionMenu menu, ImmersionMenuItem item) {
        if (this.mContext != null) {
            int itemId = item.getItemId();
            FeatureInfo featureInfo = (FeatureInfo) this.mFeatureItemsMap.get(Integer.valueOf(itemId));
            if (featureInfo != null) {
                featureInfo.setFeatureUsed();
                Map param = new HashMap();
                param.put(String.format(Locale.US, "%s_redDotDisplayed", new Object[]{this.mCurrentPage}), Boolean.valueOf(this.mHasRedDotItem));
                BaseSamplingStatHelper.recordCountEvent("feature_red_dot", String.format(Locale.US, "%s_%s", new Object[]{"click_menu", featureInfo.mFeatureName}), param);
            }
            checkRedDotFeature();
            switch (itemId) {
                case R.id.menu_cleaner /*2131886095*/:
                    ActionURIHandler.handleUri((Activity) this.mContext, Common.URI_CLEANER_PAGE);
                    BaseSamplingStatHelper.recordCountEvent(Display.HOME, "home_page_menu_cleaner");
                    return;
                case R.id.menu_collage /*2131886096*/:
                    ActionURIHandler.handleUri((Activity) this.mContext, Common.URI_COLLAGE_PAGE);
                    BaseSamplingStatHelper.recordCountEvent(Display.HOME, "home_page_menu_collage");
                    return;
                case R.id.menu_photo_movie /*2131886097*/:
                    if (MovieLibraryLoaderHelper.getInstance().checkAbleOrDownload((Activity) this.mContext)) {
                        ActionURIHandler.handleUri((Activity) this.mContext, Common.URI_PHOTO_MOVIE);
                    }
                    BaseSamplingStatHelper.recordCountEvent(Display.HOME, "home_page_menu_photo_movie");
                    return;
                case R.id.menu_photo_print /*2131886098*/:
                    PrintInstallHelper.getInstance().start(this.mContext);
                    BaseSamplingStatHelper.recordCountEvent(Display.HOME, "home_page_menu_photo_print");
                    return;
                case R.id.menu_settings /*2131886099*/:
                    IntentUtil.enterGallerySetting(this.mContext);
                    return;
                case R.id.trash_bin /*2131886126*/:
                    IntentUtil.gotoTrashBin(this.mContext, "HomePageActivity");
                    return;
                default:
                    return;
            }
        }
    }

    private boolean isTrashBinEnable() {
        return ApplicationHelper.isCloudTrashBinFeatureOpen() && SyncUtil.existXiaomiAccount(this.mContext);
    }

    private void registerFeature(int menuId, String featureName, boolean isUpdateFeature, boolean isPushValid) {
        this.mFeatureItemsMap.put(Integer.valueOf(menuId), new FeatureInfo(featureName, isUpdateFeature, isPushValid));
    }

    public void checkRedDotFeature() {
        if (this.mPhoneImmersionMenu != null) {
            ImmersionMenu menu = this.mPhoneImmersionMenu.getImmersionMenu();
            if (menu != null) {
                this.mHasRedDotItem = false;
                for (Entry entry : this.mFeatureItemsMap.entrySet()) {
                    boolean needRedDot;
                    FeatureInfo featureInfo = (FeatureInfo) entry.getValue();
                    ImmersionMenuItem item = menu.findItem(((Integer) entry.getKey()).intValue());
                    if (featureInfo.needRedDot() && item.isVisible()) {
                        needRedDot = true;
                    } else {
                        needRedDot = false;
                    }
                    this.mHasRedDotItem |= needRedDot;
                    item.setIsRedDotDisplayed(needRedDot);
                }
                if (this.mMenuItemsCheckListener != null) {
                    this.mMenuItemsCheckListener.onMenuItemsChecked(this.mHasRedDotItem);
                }
                updateImmersionMenu(menu);
            }
        }
    }

    public void showImmersionMenu(View anchor, String page) {
        if (this.mPhoneImmersionMenu != null) {
            this.mPhoneImmersionMenu.show(anchor, null);
        }
        this.mCurrentPage = page;
        Map param = new HashMap();
        param.put(String.format(Locale.US, "%s_redDotDisplayed", new Object[]{this.mCurrentPage}), Boolean.valueOf(this.mHasRedDotItem));
        BaseSamplingStatHelper.recordCountEvent("feature_red_dot", "show_immersion_menu", param);
    }

    public void updateImmersionMenu(ImmersionMenu menu) {
        if (this.mPhoneImmersionMenu != null) {
            this.mPhoneImmersionMenu.update(menu);
        }
    }

    public void onActivityDestroy() {
        if (this.mPhoneImmersionMenu != null && this.mPhoneImmersionMenu.isShowing()) {
            this.mPhoneImmersionMenu.dismiss();
        }
        PrintInstallHelper.getInstance().removeInstallStateListener(this.mInstallStateListener);
        MovieLibraryLoaderHelper.getInstance().removeDownloadStateListener(this.mMovieDownloadStateListener);
        unregisterPrintStatusObserver();
    }

    public void registerMenuItemsCheckListener(MenuItemsCheckListener listener) {
        this.mMenuItemsCheckListener = listener;
    }

    private void registerPrintStatusObserver() {
        this.mPrintStatusObserver = new PrintStatusObserver(this, null);
        onPrintStatueChanged(CloudControlManager.getInstance().registerStatusObserver("photo-print", this.mPrintStatusObserver));
    }

    private void unregisterPrintStatusObserver() {
        if (this.mPrintStatusObserver != null) {
            CloudControlManager.getInstance().unregisterStatusObserver("photo-print", this.mPrintStatusObserver);
        }
    }

    private boolean setMenuVisibility(int menuId, boolean visibility) {
        if (this.mPhoneImmersionMenu == null) {
            return false;
        }
        ImmersionMenu menu = this.mPhoneImmersionMenu.getImmersionMenu();
        if (menu != null) {
            return setMenuVisibility(menu.findItem(menuId), visibility);
        }
        return false;
    }

    private boolean setMenuVisibility(ImmersionMenuItem item, boolean visibility) {
        if (item == null || item.isVisible() == visibility) {
            return false;
        }
        item.setVisible(visibility);
        checkRedDotFeature();
        return true;
    }

    private void onPrintStatueChanged(Status newStatus) {
        if (PrintInstallHelper.getInstance().isPhotoPrintEnable()) {
            setMenuVisibility((int) R.id.menu_photo_print, true);
            BaseSamplingStatHelper.recordStringPropertyEvent("photo_print", "photo_print_enable", "true");
        }
    }
}
