package com.miui.gallery.ui;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.DecelerateInterpolator;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.activity.facebaby.FacePageActivity;
import com.miui.gallery.cloud.peopleface.PeopleFace;
import com.miui.gallery.data.CacheOfAllFacesInOnePhoto;
import com.miui.gallery.data.CacheOfAllFacesInOnePhoto.PhotoViewProvider;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.CloudItem;
import com.miui.gallery.model.PeopleContactInfo;
import com.miui.gallery.provider.deprecated.NormalPeopleFaceMediaSet;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.ui.PhotoPageItem.TransitionListener;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceAlbumHandlerListener;
import com.miui.gallery.ui.renameface.FaceAlbumHandlerBase.FaceFolderItem;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler;
import com.miui.gallery.ui.renameface.FaceAlbumRenameHandler.ConfirmListener;
import com.miui.gallery.ui.renameface.InputFaceNameFragment;
import com.miui.gallery.ui.renameface.RemoveFromFaceAlbumHandler;
import com.miui.gallery.util.photoview.ItemViewInfo;
import com.miui.gallery.util.photoview.PhotoPageDataCache;
import java.util.ArrayList;
import java.util.Iterator;

public class PhotoPageFaceItem extends PhotoPageItem implements PhotoViewProvider {
    private FaceHandler mFaceHandler;
    private FaceHighLightManager mFaceHighLightManager;
    private FaceNameLabelsManager mFaceNameLablesManager;

    private class FaceHandler {
        PeopleFace mCurrentFace;
        FaceAlbumRenameHandler mFaceAlbumRenameHandler;
        RemoveFromFaceAlbumHandler mRemoveFromFaceAlbumHandler;
        private FaceAlbumHandlerListener mRemoveFromFaceAlbumListener;

        private FaceHandler() {
            this.mRemoveFromFaceAlbumListener = new FaceAlbumHandlerListener() {
                public void onGetFolderItem(FaceFolderItem folderItem) {
                    doRemove(folderItem);
                }

                private void doRemove(FaceFolderItem folderItem) {
                    NormalPeopleFaceMediaSet.doMoveFacesToAnother(folderItem, new long[]{Long.parseLong(FaceHandler.this.mCurrentFace._id)});
                    CacheOfAllFacesInOnePhoto.getInstance().clearCache();
                    if (PhotoPageFaceItem.this.mPhotoPageInteractionListener != null) {
                        PhotoPageFaceItem.this.mPhotoPageInteractionListener.notifyDataChanged();
                    }
                }
            };
        }

        public boolean shouldShow() {
            return false;
        }

        public void notifyChanged() {
            if (PhotoPageFaceItem.this.isAttachedToWindow()) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        PhotoPageFaceItem.this.bindFaceAnymore(PhotoPageFaceItem.this.mDataItem);
                    }
                });
            }
        }

        public String getRecommendFaceId() {
            return PhotoPageDataCache.getInstance().getString("recommend_face_id", null);
        }

        public void exit() {
            ((Activity) PhotoPageFaceItem.this.getContext()).onBackPressed();
        }

        public void renameFace(PeopleFace face) {
            this.mFaceAlbumRenameHandler = new FaceAlbumRenameHandler((Activity) PhotoPageFaceItem.this.getContext(), new NormalPeopleFaceMediaSet(Long.parseLong(face.localGroupId), face.groupId, face.peopleName), new ConfirmListener() {
                public void onConfirm(String newName, boolean merge) {
                    CacheOfAllFacesInOnePhoto.getInstance().clearCache();
                    if (PhotoPageFaceItem.this.mPhotoPageInteractionListener != null) {
                        PhotoPageFaceItem.this.mPhotoPageInteractionListener.notifyDataChanged();
                    }
                }
            }, !PeopleContactInfo.isUnKnownRelation(face.relationType));
            this.mFaceAlbumRenameHandler.show();
        }

        public void removeFace(PeopleFace face) {
            this.mRemoveFromFaceAlbumHandler = new RemoveFromFaceAlbumHandler((Activity) PhotoPageFaceItem.this.getContext(), new NormalPeopleFaceMediaSet(Long.parseLong(face.localGroupId), face.groupId, face.peopleName), this.mRemoveFromFaceAlbumListener);
            this.mCurrentFace = face;
            this.mRemoveFromFaceAlbumHandler.show();
        }
    }

    private class FaceHighLightManager implements OnClickListener {
        private boolean isAnimatorStarted;
        private boolean isExiting;
        private ValueAnimator mAnimator;
        private float mCurrentAlpha;
        private int mCurrentRadius;
        private int mCurrentX;
        private int mCurrentY;
        private float mExitAlpha;
        private int mOrientation;
        private Paint mPaint;
        private PeopleFace mPeopleFace;
        private int mStartRadius;
        private int mStartX;
        private int mStartY;
        private int mTargetRadius;
        private int mTargetX;
        private int mTargetY;
        private PorterDuffXfermode mXfermode;

        private FaceHighLightManager() {
            this.mOrientation = 0;
            this.mExitAlpha = 1.0f;
            this.isAnimatorStarted = false;
            this.isExiting = false;
            this.mPaint = new Paint();
            this.mXfermode = new PorterDuffXfermode(Mode.DST_OUT);
        }

        protected void bindViewAndData(CloudItem item, ArrayList<PeopleFace> faces) {
            if (isVisible() && !this.isAnimatorStarted) {
                PhotoPageFaceItem.this.setOnClickListener(this);
                if (item != null && !TextUtils.isEmpty(item.getServerId()) && faces != null) {
                    this.mOrientation = item.getOrientation();
                    Iterator it = faces.iterator();
                    while (it.hasNext()) {
                        PeopleFace face = (PeopleFace) it.next();
                        if (PhotoPageFaceItem.this.mFaceHandler.getRecommendFaceId().equals(face.serverId)) {
                            this.mPeopleFace = face;
                            initTargetValues();
                            PhotoPageFaceItem.this.invalidate();
                            return;
                        }
                    }
                }
            }
        }

        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            if (changed && !this.isAnimatorStarted) {
                int width = PhotoPageFaceItem.this.getWidth();
                int height = PhotoPageFaceItem.this.getHeight();
                int radius = (int) (Math.sqrt(Math.pow((double) width, 2.0d) + Math.pow((double) height, 2.0d)) / 2.0d);
                int i = width / 2;
                this.mStartX = i;
                this.mCurrentX = i;
                i = height / 2;
                this.mStartY = i;
                this.mCurrentY = i;
                this.mStartRadius = radius;
                this.mCurrentRadius = radius;
            }
        }

        private void initTargetValues() {
            if (this.mPeopleFace != null) {
                RectF size = PhotoPageFaceItem.this.mPhotoView.getDrawableSize();
                if (size.width() != 0.0f && size.height() != 0.0f) {
                    RectF faceRect = PhotoPageFaceItem.getFaceRect(size.width(), size.height(), this.mPeopleFace, this.mOrientation);
                    PhotoPageFaceItem.this.mPhotoView.getBaseMatrix().mapRect(faceRect);
                    this.mTargetRadius = (int) Math.max(faceRect.width(), faceRect.height());
                    this.mTargetX = (int) faceRect.centerX();
                    this.mTargetY = (int) faceRect.centerY();
                }
            }
        }

        public final void onMatrixChanged() {
            if (isVisible()) {
                initTargetValues();
                PhotoPageFaceItem.this.invalidate();
            }
        }

        protected void onDraw(Canvas canvas) {
            if (this.mPeopleFace != null && this.mTargetRadius > 0) {
                if (!this.isAnimatorStarted) {
                    this.mAnimator = new ValueAnimator();
                    this.mAnimator.setFloatValues(new float[]{this.mCurrentAlpha, 0.5f});
                    this.mAnimator.setDuration(400);
                    this.mAnimator.setInterpolator(new DecelerateInterpolator(1.5f));
                    this.mAnimator.addUpdateListener(new AnimatorUpdateListener() {
                        public void onAnimationUpdate(ValueAnimator animation) {
                            FaceHighLightManager.this.mCurrentAlpha = ((Float) animation.getAnimatedValue()).floatValue();
                            float factor = FaceHighLightManager.this.mCurrentAlpha / 0.5f;
                            if (FaceHighLightManager.this.isExiting()) {
                                FaceHighLightManager.this.mCurrentAlpha = FaceHighLightManager.this.mCurrentAlpha / 2.0f;
                                FaceHighLightManager.this.mExitAlpha = ((double) factor) > 0.875d ? 1.0f : factor / 0.875f;
                            } else {
                                FaceHighLightManager.this.mCurrentX = (int) ((((float) (FaceHighLightManager.this.mTargetX - FaceHighLightManager.this.mStartX)) * factor) + ((float) FaceHighLightManager.this.mStartX));
                                FaceHighLightManager.this.mCurrentY = (int) ((((float) (FaceHighLightManager.this.mTargetY - FaceHighLightManager.this.mStartY)) * factor) + ((float) FaceHighLightManager.this.mStartY));
                                FaceHighLightManager.this.mCurrentRadius = (int) ((((float) (FaceHighLightManager.this.mTargetRadius - FaceHighLightManager.this.mStartRadius)) * factor) + ((float) FaceHighLightManager.this.mStartRadius));
                            }
                            PhotoPageFaceItem.this.invalidate();
                        }
                    });
                    this.mAnimator.start();
                    this.isAnimatorStarted = true;
                }
                int saveCount = canvas.saveLayerAlpha(0.0f, 0.0f, (float) canvas.getWidth(), (float) canvas.getHeight(), (int) (this.mCurrentAlpha * 255.0f), 31);
                if (isExiting()) {
                    canvas.setMatrix(PhotoPageFaceItem.this.mPhotoView.getSuppMatrix());
                    Drawable drawable = PhotoPageFaceItem.this.mPhotoView.getDrawable();
                    if (drawable != null) {
                        drawable.setAlpha((int) (this.mExitAlpha * 255.0f));
                    }
                }
                this.mPaint.setAntiAlias(true);
                this.mPaint.setColor(-16777216);
                canvas.drawPaint(this.mPaint);
                this.mPaint.setXfermode(this.mXfermode);
                canvas.drawCircle((float) this.mCurrentX, (float) this.mCurrentY, (float) this.mCurrentRadius, this.mPaint);
                this.mPaint.setXfermode(null);
                canvas.restoreToCount(saveCount);
            }
        }

        protected boolean isVisible() {
            return (PhotoPageFaceItem.this.mFaceHandler == null || PhotoPageFaceItem.this.mFaceHandler.getRecommendFaceId() == null) ? false : true;
        }

        public void onClick(View v) {
            if (PhotoPageFaceItem.this.mFaceHandler != null) {
                PhotoPageFaceItem.this.mFaceHandler.exit();
            }
        }

        protected boolean isExiting() {
            return this.isExiting;
        }

        protected boolean onExiting() {
            if (!(!this.isAnimatorStarted || this.mAnimator == null || this.isExiting)) {
                if (this.mAnimator.isStarted()) {
                    this.mAnimator.pause();
                }
                this.mAnimator.setDuration(200);
                this.mAnimator.reverse();
                this.mAnimator.resume();
                this.isExiting = true;
            }
            return this.isExiting;
        }

        protected void onDestroy() {
            this.mTargetRadius = 0;
            this.mPeopleFace = null;
            this.isAnimatorStarted = false;
            this.isExiting = false;
            this.mExitAlpha = 1.0f;
            if (this.mAnimator != null && this.mAnimator.isRunning()) {
                this.mAnimator.end();
            }
        }
    }

    private class FaceNameLabelsManager {
        private ArrayList<View> mLables;
        private ArrayList<PeopleFace> mLastFaces;
        private int mOrientation;

        private FaceNameLabelsManager() {
            this.mLables = new ArrayList();
            this.mLastFaces = new ArrayList();
            this.mOrientation = 0;
        }

        private void bindViewAndData(final CloudItem item, ArrayList<PeopleFace> faces) {
            if (!isVisible()) {
                removeFacelabel();
            } else if (item == null || TextUtils.isEmpty(item.getServerId())) {
                removeFacelabel();
            } else if (faces != null && !notChangedFaces(faces)) {
                this.mOrientation = item.getOrientation();
                removeFacelabel();
                this.mLastFaces = (ArrayList) faces.clone();
                Iterator it = faces.iterator();
                while (it.hasNext()) {
                    CharSequence string;
                    final PeopleFace face = (PeopleFace) it.next();
                    TextView view = new TextView(PhotoPageFaceItem.this.mPhotoView.getContext());
                    if (TextUtils.isEmpty(face.peopleName)) {
                        string = PhotoPageFaceItem.this.mPhotoView.getContext().getString(R.string.who_is_this);
                    } else {
                        string = face.peopleName;
                    }
                    view.setText(string);
                    view.setTag(R.id.face_info, face);
                    view.setGravity(17);
                    view.setTextSize(0, (float) PhotoPageFaceItem.this.mPhotoView.getContext().getResources().getDimensionPixelSize(R.dimen.face_label_font_size));
                    view.setTextColor(PhotoPageFaceItem.this.getResources().getColor(R.color.white_80_transparent));
                    view.setBackgroundResource(R.drawable.face_tag);
                    PhotoPageFaceItem.this.addView(view, new LayoutParams(-2, -2));
                    view.setOnClickListener(new OnClickListener() {
                        public void onClick(View v) {
                            if (!TextUtils.isEmpty(face.peopleName)) {
                                FaceNameLabelsManager.this.showMenuDialog((PeopleFace) v.getTag(R.id.face_info), item);
                            } else if (PhotoPageFaceItem.this.mFaceHandler != null) {
                                PhotoPageFaceItem.this.mFaceHandler.renameFace(face);
                            }
                        }
                    });
                    this.mLables.add(view);
                }
            }
        }

        public final void onMatrixChanged(RectF rect) {
            if (isVisible()) {
                onLayout(true, (int) rect.left, (int) rect.top, (int) rect.right, (int) rect.bottom);
                PhotoPageFaceItem.this.invalidate();
                return;
            }
            removeFacelabel();
        }

        private boolean notChangedFaces(ArrayList<PeopleFace> faces) {
            if (faces.size() == this.mLastFaces.size()) {
                int i = 0;
                while (i < faces.size() && ((PeopleFace) faces.get(i)).equalMainInfoWith((PeopleFace) this.mLastFaces.get(i))) {
                    i++;
                }
                if (i == faces.size()) {
                    return true;
                }
            }
            return false;
        }

        private void removeFacelabel() {
            if (this.mLables.size() > 0) {
                Iterator it = this.mLables.iterator();
                while (it.hasNext()) {
                    PhotoPageFaceItem.this.removeView((View) it.next());
                }
                this.mLables.clear();
            }
            this.mLastFaces.clear();
        }

        private void onLayout(boolean changed, int l, int t, int r, int b) {
            RectF size = PhotoPageFaceItem.this.mPhotoView.getDrawableSize();
            if (size.width() != 0.0f && size.height() != 0.0f) {
                Iterator it = this.mLables.iterator();
                while (it.hasNext()) {
                    View label = (View) it.next();
                    RectF faceRect = PhotoPageFaceItem.getFaceRect(size.width(), size.height(), (PeopleFace) label.getTag(R.id.face_info), this.mOrientation);
                    PhotoPageFaceItem.this.mPhotoView.getAbsoluteRect(faceRect);
                    int labelX = ((((int) faceRect.left) + ((int) faceRect.right)) / 2) - (label.getMeasuredWidth() / 2);
                    int labelY = (((int) faceRect.top) - label.getMeasuredHeight()) - 20;
                    label.layout(labelX, labelY, label.getMeasuredWidth() + labelX, label.getMeasuredHeight() + labelY);
                }
            }
        }

        private void showMenuDialog(final PeopleFace face, BaseDataItem item) {
            String[] items = new String[2];
            items[0] = PhotoPageFaceItem.this.mPhotoView.getContext().getString(R.string.view_face_album);
            items[1] = PhotoPageFaceItem.this.mPhotoView.getContext().getString(R.string.operation_remove_from_face_album, new Object[]{face.peopleName});
            new Builder(PhotoPageFaceItem.this.mPhotoView.getContext()).setSingleChoiceItems(items, -1, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialog, int which) {
                    dialog.dismiss();
                    switch (which) {
                        case 0:
                            FaceNameLabelsManager.this.viewAlbum(face);
                            return;
                        case 1:
                            if (PhotoPageFaceItem.this.mFaceHandler != null) {
                                PhotoPageFaceItem.this.mFaceHandler.removeFace(face);
                                return;
                            }
                            return;
                        default:
                            throw new IllegalStateException("unknown item clicked: " + which);
                    }
                }
            }).create().show();
        }

        private void viewAlbum(PeopleFace face) {
            Intent intent = new Intent();
            String peopleId = face.groupId;
            String peopleLocalId = face.localGroupId;
            intent.putExtra("server_id_of_album", peopleId);
            intent.putExtra("local_id_of_album", peopleLocalId);
            intent.putExtra("album_name", face.peopleName);
            intent.setClass(PhotoPageFaceItem.this.mPhotoView.getContext(), FacePageActivity.class);
            PhotoPageFaceItem.this.mPhotoView.getContext().startActivity(intent);
        }

        private boolean isVisible() {
            return (PhotoPageFaceItem.this.mFaceHandler == null || !PhotoPageFaceItem.this.mFaceHandler.shouldShow() || PhotoPageFaceItem.this.isCheckInAction()) ? false : true;
        }
    }

    public PhotoPageFaceItem(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mFaceNameLablesManager = new FaceNameLabelsManager();
        this.mFaceHighLightManager = new FaceHighLightManager();
        this.mFaceHandler = new FaceHandler();
    }

    private void bindFaceAnymore(BaseDataItem item) {
        CloudItem cloudItem = (CloudItem) item;
        ArrayList<PeopleFace> faces = null;
        if (!((!this.mFaceHighLightManager.isVisible() && !this.mFaceNameLablesManager.isVisible()) || item == null || TextUtils.isEmpty(cloudItem.getServerId()))) {
            faces = CacheOfAllFacesInOnePhoto.getInstance().requestFacesOfThePhoto(this, cloudItem.getServerId());
        }
        this.mFaceNameLablesManager.bindViewAndData(cloudItem, faces);
        this.mFaceHighLightManager.bindViewAndData(cloudItem, faces);
    }

    protected void doOnMatrixChanged(RectF rect) {
        super.doOnMatrixChanged(rect);
        if (this.mFaceNameLablesManager != null) {
            this.mFaceNameLablesManager.onMatrixChanged(rect);
        }
        if (this.mFaceHighLightManager != null) {
            this.mFaceHighLightManager.onMatrixChanged();
        }
    }

    public void swapItem(BaseDataItem item) {
        super.swapItem(item);
        bindFaceAnymore(item);
    }

    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        super.onLayout(changed, l, t, r, b);
        if (this.mFaceNameLablesManager.isVisible()) {
            this.mFaceNameLablesManager.onLayout(changed, l, t, r, b);
        }
        if (this.mFaceHighLightManager.isVisible()) {
            this.mFaceHighLightManager.onLayout(changed, l, t, r, b);
        }
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.mFaceHighLightManager.isVisible()) {
            this.mFaceHighLightManager.onDraw(canvas);
        }
    }

    public void onInvalidated() {
        if (this.mFaceHandler != null) {
            this.mFaceHandler.notifyChanged();
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mFaceHighLightManager != null) {
            this.mFaceHighLightManager.onDestroy();
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent ev) {
        if (this.mFaceHighLightManager.isVisible()) {
            return true;
        }
        return super.onInterceptTouchEvent(ev);
    }

    public void animExit(ItemViewInfo exitInfo, TransitionListener listener) {
        if (this.mFaceHighLightManager.isVisible() && !this.mFaceHighLightManager.isExiting()) {
            this.mFaceHighLightManager.onExiting();
        }
        super.animExit(exitInfo, listener);
    }

    private boolean isCheckInAction() {
        return this.mCheckManager.inAction();
    }

    /* JADX WARNING: Missing block: B:2:0x0014, code:
            if (r12 == false) goto L_0x001c;
     */
    /* JADX WARNING: Missing block: B:3:0x0016, code:
            r8 = (1.0d - r8) - r6;
     */
    /* JADX WARNING: Missing block: B:4:0x001c, code:
            r14 = (float) (((double) r20) * r8);
            r15 = (float) (((double) r21) * r10);
     */
    /* JADX WARNING: Missing block: B:5:0x0051, code:
            return new android.graphics.RectF(r14, r15, r14 + ((float) (((double) r20) * r6)), r15 + ((float) (((double) r21) * r2)));
     */
    /* JADX WARNING: Missing block: B:8:0x0055, code:
            r8 = (1.0d - r22.faceYScale) - r22.faceHScale;
            r10 = r22.faceXScale;
            r6 = r22.faceHScale;
            r2 = r22.faceWScale;
     */
    /* JADX WARNING: Missing block: B:10:0x0075, code:
            r8 = (1.0d - r22.faceXScale) - r22.faceWScale;
            r10 = (1.0d - r22.faceYScale) - r22.faceHScale;
     */
    /* JADX WARNING: Missing block: B:12:0x009c, code:
            r8 = r22.faceYScale;
            r10 = (1.0d - r22.faceXScale) - r22.faceWScale;
            r6 = r22.faceHScale;
            r2 = r22.faceWScale;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static RectF getFaceRect(float imageWidth, float imageHeight, PeopleFace faceInfo, int orientation) {
        double faceXScale = faceInfo.faceXScale;
        double faceYScale = faceInfo.faceYScale;
        double faceWScale = faceInfo.faceWScale;
        double faceHScale = faceInfo.faceHScale;
        boolean isFlip = false;
        switch (orientation) {
            case 2:
                isFlip = true;
                break;
            case 3:
                break;
            case 4:
                isFlip = true;
                break;
            case 5:
                isFlip = true;
                break;
            case 6:
                break;
            case 7:
                isFlip = true;
                break;
            case 8:
                break;
        }
    }

    public void onActionBarVisibleChanged(Boolean visible, int actionBarHeight) {
        super.onActionBarVisibleChanged(visible, actionBarHeight);
        bindFaceAnymore(this.mDataItem);
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        switch (requestCode) {
            case 16:
                PeopleContactInfo contact = null;
                if (data != null && resultCode == -1) {
                    contact = InputFaceNameFragment.getContactInfo(getContext(), data);
                }
                if (this.mFaceHandler.mFaceAlbumRenameHandler != null) {
                    this.mFaceHandler.mFaceAlbumRenameHandler.finishWhenGetContact(contact);
                    break;
                }
                break;
            case 17:
                PeopleContactInfo contact1 = null;
                if (data != null && resultCode == -1) {
                    contact1 = InputFaceNameFragment.getContactInfo(getContext(), data);
                }
                if (this.mFaceHandler.mRemoveFromFaceAlbumHandler != null) {
                    this.mFaceHandler.mRemoveFromFaceAlbumHandler.finishWhenGetContact(contact1);
                    break;
                }
                break;
        }
        super.onActivityResult(requestCode, resultCode, data);
    }
}
