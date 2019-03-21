package com.miui.gallery.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.baby.BabyInfo;
import com.miui.gallery.provider.FaceManager;
import com.miui.gallery.provider.deprecated.ThumbnailInfo;
import com.miui.gallery.share.AlbumShareOperations;
import com.miui.gallery.share.AlbumShareOperations.SharerInfo;
import com.miui.gallery.share.AlbumShareUIManager;
import com.miui.gallery.share.AlbumShareUIManager.OnCompletionListener;
import com.miui.gallery.share.Path;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.ui.BabyAlbumDetailFaceHeaderItem;
import com.miui.gallery.ui.BabyAlbumDetailGridHeaderItem;
import com.miui.gallery.util.CropUtil;
import com.miui.gallery.util.baby.FindFace2CreateBabyAlbum;

public class BabyAlbumDetailTimeLineAdapter extends AlbumDetailTimeLineAdapter {
    private FaceHeaderHelper mFaceHeaderHelper = new FaceHeaderHelper();

    class FaceHeaderHelper {
        private String TAG = "FaceHeaderHelper";
        private long mBabyAlbumLocalId;
        private String mBabyAlbumPeopleServerId;
        private BabyInfo mBabyInfo;
        private int mBirthdayDay;
        private int mBirthdayMonth;
        private int mBirthdayYear;
        BabyAlbumDetailFaceHeaderItem mFaceHeaderItem;
        private String mSharerInfoStr;
        private ThumbnailInfo mThumbnailInfo;

        FaceHeaderHelper() {
        }

        private void gotoBabyInfoSettingPage(boolean isOtherShared) {
            FindFace2CreateBabyAlbum.gotoBabyAlbumInfoPage((Activity) BabyAlbumDetailTimeLineAdapter.this.mContext, this.mThumbnailInfo, this.mBabyInfo, this.mBabyAlbumLocalId, CropUtil.circleBitmap(getFaceImage()), isOtherShared);
        }

        private void setBirthdayYearMonthDay() {
            int[] days = BabyInfo.splitBirthDay(this.mBabyInfo);
            if (days != null) {
                this.mBirthdayYear = days[0];
                this.mBirthdayMonth = days[1];
                this.mBirthdayDay = days[2];
            }
        }

        private void setBirthday() {
            String age = getAge(System.currentTimeMillis());
            if (!TextUtils.isEmpty(age)) {
                this.mFaceHeaderItem.setAge(age);
            }
        }

        private String getAge(long toThisDay) {
            String lang = GalleryApp.sGetAndroidContext().getResources().getConfiguration().locale.getCountry();
            if ((!"cn".equalsIgnoreCase(lang) && !"en".equalsIgnoreCase(lang) && !"us".equalsIgnoreCase(lang)) || this.mBirthdayDay == 0) {
                return "";
            }
            int[] ageArr = BabyInfo.getAge(toThisDay, this.mBirthdayYear, this.mBirthdayMonth, this.mBirthdayDay);
            int diffYear = ageArr[0];
            if (diffYear < 0) {
                return "";
            }
            int diffMonth = ageArr[1];
            int diffDay = ageArr[2];
            if (!"cn".equalsIgnoreCase(lang)) {
                Resources res = GalleryApp.sGetAndroidContext().getResources();
                String year = res.getQuantityString(R.plurals.age_year, diffYear, new Object[]{Integer.valueOf(diffYear)});
                String day = res.getQuantityString(R.plurals.age_day, diffDay, new Object[]{Integer.valueOf(diffDay)});
                String month = res.getQuantityString(R.plurals.age_month, diffMonth, new Object[]{Integer.valueOf(diffMonth)});
                String space = " ";
                if (diffYear != 0 && diffMonth != 0 && diffDay != 0) {
                    return year + space + month + space + day;
                }
                if (diffYear != 0 && diffMonth != 0 && diffDay == 0) {
                    return year + space + month;
                }
                if (diffYear != 0 && diffMonth == 0 && diffDay == 0) {
                    return year;
                }
                if (diffYear == 0 && diffMonth == 0 && diffDay != 0) {
                    return diffDay == 0 ? (diffDay + 1) + " day" : (diffDay + 1) + " days";
                } else {
                    if (diffYear == 0 && diffMonth != 0 && diffDay == 0) {
                        return month;
                    }
                    if (diffYear != 0 && diffMonth == 0 && diffDay != 0) {
                        return year + space + day;
                    }
                    if (diffYear == 0 && diffMonth != 0 && diffDay != 0) {
                        return month + space + day;
                    }
                    if (diffYear == 0 && diffMonth == 0 && diffDay == 0) {
                        return " first day";
                    }
                    return null;
                }
            } else if (diffYear != 0 && diffMonth != 0 && diffDay != 0) {
                return diffYear + "岁" + diffMonth + "个月" + diffDay + "天";
            } else {
                if (diffYear != 0 && diffMonth != 0 && diffDay == 0) {
                    return diffYear + "岁" + diffMonth + "个月";
                }
                if (diffYear != 0 && diffMonth == 0 && diffDay == 0) {
                    return diffYear + "岁生日";
                }
                if (diffYear == 0 && diffMonth == 0 && diffDay != 0) {
                    return "第" + (diffDay + 1) + "天";
                }
                if (diffYear == 0 && diffMonth != 0 && diffDay == 0) {
                    return diffMonth + "个月";
                }
                if (diffYear != 0 && diffMonth == 0 && diffDay != 0) {
                    return diffYear + "岁零" + diffDay + "天";
                }
                if (diffYear == 0 && diffMonth != 0 && diffDay != 0) {
                    return diffMonth + "个月" + diffDay + "天";
                }
                if (diffYear == 0 && diffMonth == 0 && diffDay == 0) {
                    return "出生第一天";
                }
                return null;
            }
        }

        protected Bitmap getFaceImage() {
            return this.mFaceHeaderItem.getHeadFacePic();
        }

        protected void setFaceImage() {
            final ThumbnailInfo thumbnailInfo = this.mThumbnailInfo;
            if (BabyAlbumDetailTimeLineAdapter.this.isOtherShareAlbum()) {
                if (TextUtils.isEmpty(this.mBabyAlbumPeopleServerId)) {
                    ThreadManager.getMiscPool().submit(new Job<String>() {
                        public String run(JobContext jc) {
                            return thumbnailInfo.getFaceInfo(BabyAlbumDetailTimeLineAdapter.this.isOtherShareAlbum());
                        }
                    }, new FutureListener<String>() {
                        public void onFutureDone(Future<String> future) {
                            final String path = (String) future.get();
                            ThreadManager.getMainHandler().post(new Runnable() {
                                public void run() {
                                    if (!TextUtils.isEmpty(path)) {
                                        FaceHeaderHelper.this.bindFaceImageFromPath(path, thumbnailInfo);
                                    } else if (TextUtils.isEmpty(FaceHeaderHelper.this.mSharerInfoStr)) {
                                        FaceHeaderHelper.this.setFaceImageFromByFirstGetSharerInfo();
                                    } else {
                                        FaceHeaderHelper.this.setFaceImageFromSharerInfo(FaceHeaderHelper.this.mSharerInfoStr);
                                    }
                                }
                            });
                        }
                    });
                } else {
                    setFaceImageFromFaceAlbumCover(this.mBabyAlbumPeopleServerId);
                }
            } else if (thumbnailInfo != null) {
                ThreadManager.getMiscPool().submit(new Job<String>() {
                    public String run(JobContext jc) {
                        return thumbnailInfo.getFaceInfo(BabyAlbumDetailTimeLineAdapter.this.isOtherShareAlbum());
                    }
                }, new FutureListener<String>() {
                    public void onFutureDone(Future<String> future) {
                        final String path = (String) future.get();
                        ThreadManager.getMainHandler().post(new Runnable() {
                            public void run() {
                                if (TextUtils.isEmpty(path)) {
                                    FaceHeaderHelper.this.setFaceImageFromFaceAlbumCover(FaceHeaderHelper.this.mBabyAlbumPeopleServerId);
                                } else {
                                    FaceHeaderHelper.this.bindFaceImageFromPath(path, thumbnailInfo);
                                }
                            }
                        });
                    }
                });
            } else {
                setFaceImageFromFaceAlbumCover(this.mBabyAlbumPeopleServerId);
            }
        }

        private void bindFaceImageFromPath(String path, ThumbnailInfo thumbnailInfo) {
            if (thumbnailInfo.getFaceRegion() != null) {
                this.mFaceHeaderItem.bindHeadFacePic(path, thumbnailInfo.getFaceRegion());
            } else {
                this.mFaceHeaderItem.bindHeadFacePicFromNet(path, thumbnailInfo.getFaceRegionFromFaceInfo());
            }
        }

        private void setFaceImageFromByFirstGetSharerInfo() {
            AlbumShareUIManager.updateInvitationAsync(new Path(this.mBabyAlbumLocalId, true, true), new OnCompletionListener<Path, String>() {
                public void onCompletion(Path key, String data, int errorCode, boolean cancel) {
                    if (cancel) {
                        Log.i(FaceHeaderHelper.this.TAG, "updateInvitationAsync cancelled");
                    } else if (errorCode == 0) {
                        ThreadManager.getMiscPool().submit(new Job<String>() {
                            public String run(JobContext jc) {
                                return FaceManager.querySharerInfoOfBabyAlbum(String.valueOf(FaceHeaderHelper.this.mBabyAlbumLocalId));
                            }
                        }, new FutureListener<String>() {
                            public void onFutureDone(Future<String> future) {
                                final String sharerInfoStr = (String) future.get();
                                if (!TextUtils.isEmpty(sharerInfoStr)) {
                                    ThreadManager.getMainHandler().post(new Runnable() {
                                        public void run() {
                                            FaceHeaderHelper.this.setFaceImageFromSharerInfo(sharerInfoStr);
                                        }
                                    });
                                }
                            }
                        });
                    } else {
                        Log.i(FaceHeaderHelper.this.TAG, "updateInvitationAsync error, errorCode=" + errorCode);
                    }
                }
            });
        }

        private void setFaceImageFromSharerInfo(String sharerInfoStr) {
            if (!TextUtils.isEmpty(sharerInfoStr)) {
                SharerInfo sharerInfo = AlbumShareOperations.parseSharerInfo(sharerInfoStr);
                if (sharerInfo == null || TextUtils.isEmpty(sharerInfo.mThumbnailUrl)) {
                    Log.e(this.TAG, "illegal SharerInfo: " + sharerInfoStr);
                } else if (!TextUtils.isEmpty(sharerInfo.mThumbnailUrl)) {
                    this.mFaceHeaderItem.bindHeadFacePicFromNet(sharerInfo.mThumbnailUrl, sharerInfo.mFaceRelativePos);
                }
            }
        }

        private void setFaceImageFromFaceAlbumCover(String peopleServerId) {
            RectF[] faceRegion = new RectF[1];
            this.mFaceHeaderItem.bindHeadFacePic(FaceManager.queryCoverImageOfOnePerson(peopleServerId, faceRegion), faceRegion[0]);
        }

        private void setBackgroundByPathOrUri(String path, Uri downloadUri) {
            BabyAlbumDetailTimeLineAdapter.this.mFaceHeaderHelper.mFaceHeaderItem.bindHeaderBackgroundPic(path, downloadUri, BabyAlbumDetailTimeLineAdapter.this.mDisplayImageOptionBuilder.loadFromMicroCache(false).build());
        }

        private boolean bindBackgroundByThumbnail() {
            if (this.mThumbnailInfo != null) {
                String bg = this.mThumbnailInfo.getBgPath();
                if (!TextUtils.isEmpty(bg)) {
                    setBackgroundByPathOrUri(bg, null);
                    return true;
                }
            }
            return false;
        }

        private void bindBackgroundByCursor(Cursor cursor) {
            if (cursor != null && !cursor.isAfterLast()) {
                String microThumb = cursor.getString(1);
                String filePath = cursor.getString(2);
                String thumbnail = cursor.getString(14);
                if (!TextUtils.isEmpty(filePath)) {
                    microThumb = filePath;
                } else if (!TextUtils.isEmpty(thumbnail)) {
                    microThumb = thumbnail;
                }
                setBackgroundByPathOrUri(microThumb, BaseAdapter.getDownloadUri(cursor, 12, 0));
            }
        }

        private void bindBackgroundPicByPath(String path) {
            setBackgroundByPathOrUri(path, null);
        }
    }

    public BabyAlbumDetailTimeLineAdapter(Context context) {
        super(context);
    }

    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (convertView == null) {
            convertView = LayoutInflater.from(this.mContext).inflate(R.layout.baby_album_detail_grid_header_item, parent, false);
        }
        String location = null;
        if (!(this.mGroupStartLocations == null || this.mGroupStartPos == null)) {
            location = (String) this.mGroupStartLocations.get(position);
            position = ((Integer) this.mGroupStartPos.get(position)).intValue();
        }
        long createTime = ((Cursor) getItem(position)).getLong(5);
        ((BabyAlbumDetailGridHeaderItem) convertView).bindData(createTime, location, this.mFaceHeaderHelper.getAge(createTime));
        return convertView;
    }

    public void setFaceHeader(BabyInfo babyInfo, ThumbnailInfo thumbnailInfo, String sharerInfoStr, BabyAlbumDetailFaceHeaderItem faceHeader, View gotoPickHeaderBackgroundMaskView, OnClickListener l, final boolean isOtherShared) {
        setBabyInfoAndThumbnailInfo(babyInfo, thumbnailInfo, sharerInfoStr);
        this.mFaceHeaderHelper.mFaceHeaderItem = faceHeader;
        this.mFaceHeaderHelper.setFaceImage();
        this.mFaceHeaderHelper.setBirthday();
        this.mFaceHeaderHelper.mFaceHeaderItem.setOnFaceClickListener(new OnClickListener() {
            public void onClick(View v) {
                BabyAlbumDetailTimeLineAdapter.this.gotoBabyInfoSettingPage(isOtherShared);
                BaseSamplingStatHelper.recordCountEvent("baby", "baby_edit_baby_info");
            }
        });
        this.mFaceHeaderHelper.mFaceHeaderItem.setOnBackgroundClickListener(l);
    }

    public void gotoBabyInfoSettingPage(boolean isOtherShared) {
        this.mFaceHeaderHelper.gotoBabyInfoSettingPage(isOtherShared);
    }

    public void setAlbumId(long localId) {
        this.mFaceHeaderHelper.mBabyAlbumLocalId = localId;
    }

    public void setPeopleServerId(String peopleServerId) {
        this.mFaceHeaderHelper.mBabyAlbumPeopleServerId = peopleServerId;
    }

    public void firstBindHeaderPic(Cursor cursor) {
        if (!this.mFaceHeaderHelper.bindBackgroundByThumbnail()) {
            this.mFaceHeaderHelper.bindBackgroundByCursor(cursor);
        }
    }

    public void rebindHeaderPic(String path) {
        this.mFaceHeaderHelper.bindBackgroundPicByPath(path);
    }

    public void resetBabyInfoAndThumbnailInfo(BabyInfo babyInfo, ThumbnailInfo thumbnailInfo) {
        setBabyInfoAndThumbnailInfo(babyInfo, thumbnailInfo, null);
        this.mFaceHeaderHelper.setFaceImage();
        this.mFaceHeaderHelper.setBirthday();
        notifyDataSetChanged();
    }

    public Bitmap getFaceImageOfFaceHeaderItem() {
        int iconSize = (int) this.mContext.getResources().getDimension(R.dimen.baby_timeline_quick_start_icon_size);
        return CropUtil.cropImage(this.mFaceHeaderHelper.getFaceImage(), iconSize, iconSize, false);
    }

    private void setBabyInfoAndThumbnailInfo(BabyInfo babyInfo, ThumbnailInfo thumbnailInfo, String sharerInfoStr) {
        if (babyInfo != null) {
            this.mFaceHeaderHelper.mBabyInfo = babyInfo;
        }
        if (thumbnailInfo != null) {
            this.mFaceHeaderHelper.mThumbnailInfo = thumbnailInfo;
        }
        if (!TextUtils.isEmpty(sharerInfoStr)) {
            this.mFaceHeaderHelper.mSharerInfoStr = sharerInfoStr;
        }
        this.mFaceHeaderHelper.setBirthdayYearMonthDay();
    }
}
