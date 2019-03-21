package com.miui.gallery.video.editor.ui;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ScreenUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.TextStyle;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.adapter.WatermarkRecyclerViewAdapter;
import com.miui.gallery.video.editor.factory.WaterMartFactory;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager.ILoadAssetTemplate;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager.ILoadWaterMarkListener;
import com.miui.gallery.video.editor.manager.WaterMarkManager;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.VedioEditorModuleAdapter;
import com.miui.gallery.video.editor.model.VideoEditorBaseLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.net.VideoEditorResourceRequest;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.ItemSelectChangeListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import miui.view.animation.CubicEaseOutInterpolator;

public class WaterMarkFragment extends MenuFragment implements OnClickListener {
    private final int AUTO_TEXT_WATER_MARK_INDEX = 1;
    private WatermarkRecyclerViewAdapter mAdapter;
    private TextView mAllActionButton;
    private EditText mAutoText;
    private TextStyle mDownloadingTextStyle;
    private TextView mEndActionButton;
    private String mInputText = "";
    private boolean mIsKeyboardShowing = false;
    private ImageView mIvCancel;
    private ImageView mIvOk;
    private TextStyle mLastSelectedTextStyle;
    private LinearLayoutManager mLinearLayoutManager;
    private OnGlobalLayoutListener mOnGlobalLayoutListener = new OnGlobalLayoutListener() {
        public void onGlobalLayout() {
            boolean z = true;
            Log.d("WaterMarkFragment", "---onGlobalLayout start---");
            View view = WaterMarkFragment.this.mTextRoot.getRootView();
            int screenHeight = ScreenUtils.getExactScreenHeight(WaterMarkFragment.this.getActivity());
            int displayHight = view.getHeight();
            int[] location = new int[2];
            view.getLocationOnScreen(location);
            int keyboardHeight = (screenHeight - displayHight) - location[1];
            if (!WaterMarkFragment.this.mIsKeyboardShowing && keyboardHeight > 0) {
                Log.d("WaterMarkFragment", "soft keyboard start to show!");
                WaterMarkFragment.this.mIsKeyboardShowing = true;
                WaterMarkFragment.this.mTextAppearAnimator.start();
            }
            if (keyboardHeight == 0 && WaterMarkFragment.this.mIsKeyboardShowing) {
                Log.d("WaterMarkFragment", "soft keyboard start to dismiss!");
                WaterMarkFragment.this.dismissTextPopWindow();
                WaterMarkFragment waterMarkFragment = WaterMarkFragment.this;
                if (WaterMarkFragment.this.applyPlay()) {
                    z = false;
                }
                waterMarkFragment.mIsKeyboardShowing = z;
            }
        }
    };
    private final long mPopWindowEnterAnimTime = 280;
    private int mSavedSelectedWaterMarkIndex;
    private TextStyle mSelectedTextStyle;
    private int mSelectedTextTime = 0;
    private SingleChoiceRecycleView mSingleChoiceRecycleView;
    private TextView mStartActionButton;
    private ObjectAnimator mTextAppearAnimator;
    private ImageView mTextCancel;
    private boolean mTextEditable = false;
    private PopupWindow mTextPopWindow;
    private View mTextRoot;
    private ImageView mTextSave;
    private ArrayList<TextStyle> mTextStyles = new ArrayList();
    private VideoEditorResourceRequest mVideoEditorResourceRequest;
    private WaterMarkManager mWaterMarkManager;

    private class MyTextItemSelectChangeListener implements ItemSelectChangeListener {
        private MyTextItemSelectChangeListener() {
        }

        /* synthetic */ MyTextItemSelectChangeListener(WaterMarkFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(SingleChoiceRecyclerViewAdapter adapter, final int position, boolean isChanged) {
            if (WaterMarkFragment.this.hasOtherItemDownloading()) {
                return false;
            }
            WatermarkRecyclerViewAdapter textRecyclerViewAdapter = (WatermarkRecyclerViewAdapter) adapter;
            ScrollControlLinearLayoutManager.onItemClick(WaterMarkFragment.this.mSingleChoiceRecycleView, position);
            TextStyle style = textRecyclerViewAdapter.getTextStyle(position);
            if (style == null) {
                return false;
            }
            if (!isChanged && !style.isLocal()) {
                return false;
            }
            if (style.isNone()) {
                WaterMarkFragment.this.updateBottomBtnTitle(position);
                WaterMarkFragment.this.mTextEditable = false;
                WaterMarkFragment.this.mLastSelectedTextStyle = WaterMarkFragment.this.mSelectedTextStyle;
                WaterMarkFragment.this.mSelectedTextStyle = style;
                WaterMarkFragment.this.mVideoEditor.setAutoWaterMark("", WaterMarkFragment.this.mSelectedTextTime);
                WaterMarkFragment.this.mVideoEditor.setWarterMark(WaterMarkFragment.this.mSelectedTextTime, "");
                return WaterMarkFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                    public void onCompleted() {
                        WaterMarkFragment.this.mVideoEditor.play();
                        WaterMarkFragment.this.updateSelectedItemPosition(position);
                        WaterMarkFragment.this.recordEventWithEffectChanged();
                        WaterMarkFragment.this.updatePalyBtnView();
                    }
                });
            } else if (style.isExtra()) {
                WaterMarkFragment.this.mTextEditable = false;
                if (style.isDownloaded()) {
                    WaterMarkFragment.this.updateBottomBtnTitle(position);
                    WaterMarkFragment.this.updateBottomBtnState();
                    WaterMarkFragment.this.mLastSelectedTextStyle = WaterMarkFragment.this.mSelectedTextStyle;
                    WaterMarkFragment.this.mSelectedTextStyle = style;
                    WaterMarkFragment.this.mVideoEditor.setAutoWaterMark("", WaterMarkFragment.this.mSelectedTextTime);
                    WaterMarkFragment.this.mVideoEditor.setWarterMark(WaterMarkFragment.this.mSelectedTextTime, style.getTemplateId());
                    return WaterMarkFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                        public void onCompleted() {
                            WaterMarkFragment.this.mVideoEditor.play();
                            WaterMarkFragment.this.updateSelectedItemPosition(position);
                            WaterMarkFragment.this.recordEventWithEffectChanged();
                            WaterMarkFragment.this.updatePalyBtnView();
                        }
                    });
                }
                WaterMarkFragment.this.mIDownloadListener.downloadResourceWithCheck(style, position);
                WaterMarkFragment.this.mDownloadingTextStyle = style;
                return false;
            } else if (!style.isLocal()) {
                return false;
            } else {
                WaterMarkFragment.this.mLastSelectedTextStyle = WaterMarkFragment.this.mSelectedTextStyle;
                WaterMarkFragment.this.mSelectedTextStyle = style;
                if (TextUtils.isEmpty(WaterMarkFragment.this.mInputText)) {
                    WaterMarkFragment.this.showEditPopWindow();
                    WaterMarkFragment.this.showSoftInput();
                    WaterMarkFragment.this.mVideoEditor.pause();
                } else if (WaterMarkFragment.this.mTextEditable) {
                    WaterMarkFragment.this.showEditPopWindow();
                    WaterMarkFragment.this.showSoftInput();
                    WaterMarkFragment.this.mVideoEditor.pause();
                } else {
                    WaterMarkFragment.this.updateEffectInfo();
                    WaterMarkFragment.this.applyPlay();
                }
                WaterMarkFragment.this.updateBottomBtnState();
                return false;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mWaterMarkManager = new WaterMarkManager();
        loadResourceData();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.video_editor_fragment_text, container, false);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        this.mStartActionButton = (TextView) view.findViewById(R.id.video_editor_text_start);
        this.mEndActionButton = (TextView) view.findViewById(R.id.video_editor_text_end);
        this.mAllActionButton = (TextView) view.findViewById(R.id.video_editor_text_all);
        this.mIvCancel = (ImageView) view.findViewById(R.id.video_editor_cancel);
        this.mIvOk = (ImageView) view.findViewById(R.id.video_editor_ok);
        initRecylerView(view);
        updateBottomBtnState();
        initListener();
        initEditPopWindow();
        initEnterAnim();
    }

    private void initRecylerView(View view) {
        this.mSingleChoiceRecycleView = (SingleChoiceRecycleView) view.findViewById(R.id.recylerview);
        this.mLinearLayoutManager = new ScrollControlLinearLayoutManager(this.mContext, 0, false);
        this.mSingleChoiceRecycleView.setLayoutManager(this.mLinearLayoutManager);
        this.mAdapter = new WatermarkRecyclerViewAdapter(this.mContext, this.mTextStyles);
        this.mAdapter.setItemSelectChangeListener(new MyTextItemSelectChangeListener(this, null));
        this.mSingleChoiceRecycleView.setAdapter(this.mAdapter);
        this.mSingleChoiceRecycleView.addItemDecoration(new BlankDivider(getResources(), R.dimen.video_editor_text_dap, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mSingleChoiceRecycleView);
        this.mAdapter.setSelectedItemPosition(this.mSavedSelectedWaterMarkIndex);
        updateBottomBtnTitle(this.mSavedSelectedWaterMarkIndex);
    }

    private void initEditPopWindow() {
        this.mTextRoot = LayoutInflater.from(getActivity()).inflate(R.layout.video_editor_fragment_text_pop_window, null);
        this.mAutoText = (EditText) this.mTextRoot.findViewById(R.id.et_pop_window);
        this.mTextCancel = (ImageView) this.mTextRoot.findViewById(R.id.video_editor_btn_cancel);
        this.mTextSave = (ImageView) this.mTextRoot.findViewById(R.id.video_editor_btn_ok);
        this.mTextPopWindow = new PopupWindow(this.mTextRoot, -1, -1, true);
        this.mTextPopWindow.setFocusable(true);
        this.mTextPopWindow.setOutsideTouchable(true);
        this.mTextPopWindow.setBackgroundDrawable(new BitmapDrawable());
        this.mTextPopWindow.setSoftInputMode(16);
        this.mTextCancel.setOnClickListener(this);
        this.mTextSave.setOnClickListener(this);
    }

    private void updateBottomBtnState() {
        if (this.mSelectedTextTime == 0) {
            this.mStartActionButton.setSelected(true);
            this.mEndActionButton.setSelected(false);
            this.mAllActionButton.setSelected(false);
        } else if (this.mSelectedTextTime == 1) {
            this.mStartActionButton.setSelected(false);
            this.mEndActionButton.setSelected(true);
            this.mAllActionButton.setSelected(false);
        } else if (this.mSelectedTextTime == 2) {
            this.mStartActionButton.setSelected(false);
            this.mEndActionButton.setSelected(false);
            this.mAllActionButton.setSelected(true);
        }
    }

    private void initListener() {
        this.mStartActionButton.setOnClickListener(this);
        this.mEndActionButton.setOnClickListener(this);
        this.mAllActionButton.setOnClickListener(this);
        this.mIvCancel.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                WaterMarkFragment.this.doCancel();
            }
        });
        this.mIvOk.setOnClickListener(new OnClickListener() {
            public void onClick(View v) {
                WaterMarkFragment.this.doApply();
            }
        });
    }

    public void loadResourceData() {
        this.mModuleFactory = new WaterMartFactory();
        this.mVideoEditorResourceRequest = new VideoEditorResourceRequest(getEffectId(), this.mModuleFactory);
        this.mVideoEditorResourceRequest.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                WaterMarkFragment.this.refreshData(response[0]);
            }

            public void onResponseError(final ErrorCode errorCode, String errorMessage, Object responseData) {
                Log.d("WaterMarkFragment", "errorCode: %s", (Object) errorCode);
                ThreadManager.runOnMainThread(new Runnable() {
                    public void run() {
                        if (WaterMarkFragment.this.mTextStyles != null && WaterMarkFragment.this.mTextStyles.size() == 0) {
                            TextStyle textStyleNone = new TextStyle(R.drawable.video_editor_icon_water_mark_none, "ve_type_none");
                            TextStyle textStyleText = new TextStyle(R.drawable.video_editor_water_mark_text, "ve_type_local");
                            WaterMarkFragment.this.mTextStyles.add(textStyleNone);
                            WaterMarkFragment.this.mTextStyles.add(textStyleText);
                            if (WaterMarkFragment.this.mAdapter != null) {
                                WaterMarkFragment.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                        if (errorCode == ErrorCode.NETWORK_NOT_CONNECTED) {
                            ThreadManager.runOnMainThread(new Runnable() {
                                public void run() {
                                    ToastUtils.makeText(WaterMarkFragment.this.mContext, (int) R.string.video_editor_download_failed_for_notwork);
                                }
                            });
                        }
                    }
                });
            }
        });
    }

    private void refreshData(List<VideoEditorBaseLocalResource> list) {
        List<LocalResource> mList = this.mModuleFactory.getLocalTemplateEntities(this.mContext);
        if (list != null) {
            mList.addAll(list);
        }
        if (mList.size() > 0) {
            mList.add(1, new LocalResource(R.drawable.video_editor_water_mark_text, "ve_type_local"));
        }
        final ArrayList<TextStyle> styleArrayList = new ArrayList();
        styleArrayList.addAll(VedioEditorModuleAdapter.loadWaterMarks(mList));
        NexAssetTemplateManager.getInstance().loadWaterMarkTemplateList(new ILoadWaterMarkListener() {
            public void onFinished(String[] ids) {
                WaterMarkFragment.this.mWaterMarkManager.initDataWithTemplate(ids, styleArrayList);
                ThreadManager.runOnMainThread(new Runnable() {
                    public void run() {
                        WaterMarkFragment.this.mTextStyles.clear();
                        WaterMarkFragment.this.mTextStyles.addAll(styleArrayList);
                        if (WaterMarkFragment.this.mAdapter != null) {
                            WaterMarkFragment.this.mAdapter.notifyDataSetChanged();
                        }
                    }
                });
            }
        });
    }

    public void onPause() {
        super.onPause();
        hideSoftInput();
        this.mTextPopWindow.dismiss();
        this.mIsKeyboardShowing = false;
    }

    public List<String> getCurrentEffect() {
        if (this.mAdapter == null || this.mAdapter.getTextStyle(this.mAdapter.getSelectedItemPosition()) == null) {
            return null;
        }
        return Arrays.asList(new String[]{this.mAdapter.getTextStyle(this.mAdapter.getSelectedItemPosition()).getLabel()});
    }

    public boolean doApply() {
        if (this.mVideoEditor != null) {
            return this.mVideoEditor.apply(new OnCompletedListener() {
                public void onCompleted() {
                    if (WaterMarkFragment.this.mVideoEditor != null) {
                        WaterMarkFragment.this.mSavedSelectedWaterMarkIndex = WaterMarkFragment.this.mAdapter.getSelectedItemPosition();
                        WaterMarkFragment.this.mVideoEditor.saveEditState();
                        WaterMarkFragment.this.recordEventWithApply();
                        WaterMarkFragment.this.onExitMode();
                        WaterMarkFragment.this.mVideoEditor.play();
                    }
                }
            });
        }
        Log.d("WaterMarkFragment", "doApply: videoEditor is null.");
        return false;
    }

    public boolean doCancel() {
        if (this.mVideoEditor == null) {
            Log.d("WaterMarkFragment", "doCancel: videoEditor is null.");
            return false;
        }
        this.mVideoEditor.restoreEditState();
        return this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                if (WaterMarkFragment.this.mVideoEditor != null) {
                    WaterMarkFragment.this.mVideoEditor.play();
                    WaterMarkFragment.this.recordEventWithCancel();
                    WaterMarkFragment.this.onExitMode();
                }
            }
        });
    }

    public int getEffectId() {
        return R.id.video_editor_water_mark;
    }

    public void notifyDateSetChanged(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.notifyItemChanged(position, Integer.valueOf(1));
        }
    }

    public void onClick(View v) {
        if (v.getId() == R.id.video_editor_text_start) {
            this.mSelectedTextTime = 0;
            updateBottomBtnState();
            updateEffectInfo();
        } else if (v.getId() == R.id.video_editor_text_end) {
            this.mSelectedTextTime = 1;
            updateBottomBtnState();
            updateEffectInfo();
        } else if (v.getId() == R.id.video_editor_text_all) {
            this.mSelectedTextTime = 2;
            updateBottomBtnState();
            updateEffectInfo();
        } else if (v.getId() == R.id.video_editor_btn_ok) {
            this.mIsKeyboardShowing = false;
            this.mInputText = this.mAutoText.getText().toString();
            updateEffectInfo();
            hideSoftInput();
            dismissTextPopWindow();
        } else if (v.getId() == R.id.video_editor_btn_cancel) {
            this.mIsKeyboardShowing = false;
            updateEffectInfo();
            hideSoftInput();
            dismissTextPopWindow();
        }
        applyPlay();
    }

    private void dismissTextPopWindow() {
        this.mTextPopWindow.dismiss();
    }

    private void showEditPopWindow() {
        this.mTextRoot.getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        this.mTextPopWindow.showAtLocation(this.mSingleChoiceRecycleView, 51, 0, 0);
        this.mTextRoot.setAlpha(0.0f);
    }

    private void initEnterAnim() {
        if (this.mTextRoot != null) {
            this.mTextAppearAnimator = new ObjectAnimator();
            int distance = getResources().getDimensionPixelSize(R.dimen.video_editor_water_mark_in_distance);
            PropertyValuesHolder y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) distance, 0.0f});
            PropertyValuesHolder alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            this.mTextAppearAnimator.setValues(new PropertyValuesHolder[]{y, alpha});
            this.mTextAppearAnimator.setInterpolator(new CubicEaseOutInterpolator());
            this.mTextAppearAnimator.setDuration(280);
            this.mTextAppearAnimator.addListener(new AnimatorListener() {
                public void onAnimationStart(Animator animation) {
                    Log.d("WaterMarkFragment", "water mark popwinow appear animation start!");
                }

                public void onAnimationEnd(Animator animation) {
                    if (!TextUtils.isEmpty(WaterMarkFragment.this.mInputText)) {
                        WaterMarkFragment.this.mAutoText.setText(WaterMarkFragment.this.mInputText);
                        WaterMarkFragment.this.mAutoText.setSelection(WaterMarkFragment.this.mInputText.length());
                    }
                    Log.d("WaterMarkFragment", "water mark popwinow appear animation end!");
                }

                public void onAnimationCancel(Animator animation) {
                    Log.d("WaterMarkFragment", "water mark popwinow appear animation cancel!");
                }

                public void onAnimationRepeat(Animator animation) {
                }
            });
            this.mTextAppearAnimator.setTarget(this.mTextRoot);
        }
    }

    private void hideSoftInput() {
        if (this.mAutoText != null) {
            Context context = this.mAutoText.getContext();
            Context context2 = this.mContext;
            InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.hideSoftInputFromWindow(this.mAutoText.getWindowToken(), 0);
            }
        }
    }

    private void showSoftInput() {
        if (this.mAutoText != null) {
            this.mAutoText.requestFocus();
            this.mAutoText.requestFocusFromTouch();
            this.mAutoText.post(new Runnable() {
                public void run() {
                    Context context = WaterMarkFragment.this.mAutoText.getContext();
                    WaterMarkFragment.this.getActivity();
                    InputMethodManager inputMethodManager = (InputMethodManager) context.getSystemService("input_method");
                    if (inputMethodManager != null) {
                        inputMethodManager.showSoftInput(WaterMarkFragment.this.mAutoText, 0);
                    }
                }
            });
        }
    }

    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        this.mSavedSelectedWaterMarkIndex = this.mAdapter.getSelectedItemPosition();
    }

    private void updateWithInputNoText() {
        if (this.mAdapter != null) {
            int index = this.mAdapter.getSelectedItemPosition();
            if (this.mLastSelectedTextStyle == null || this.mLastSelectedTextStyle.isLocal()) {
                updateSelectedItemPosition(index);
                updateBottomBtnTitle(index);
                this.mVideoEditor.setAutoWaterMark("", this.mSelectedTextTime);
                return;
            }
            this.mSelectedTextStyle = this.mLastSelectedTextStyle;
            index = this.mTextStyles.indexOf(this.mSelectedTextStyle);
            updateSelectedItemPosition(index);
            updateBottomBtnTitle(index);
            this.mVideoEditor.setAutoWaterMark("", this.mSelectedTextTime);
            this.mVideoEditor.setWarterMark(this.mSelectedTextTime, this.mSelectedTextStyle.getTemplateId());
        }
    }

    private void updateEffectInfo() {
        if (this.mSelectedTextStyle == null) {
            return;
        }
        if (this.mSelectedTextStyle.isLocal()) {
            if (TextUtils.isEmpty(this.mInputText)) {
                updateWithInputNoText();
                return;
            }
            this.mVideoEditor.setWarterMark(this.mSelectedTextTime, "");
            this.mVideoEditor.setAutoWaterMark(this.mInputText, this.mSelectedTextTime);
            int index = this.mTextStyles.indexOf(this.mSelectedTextStyle);
            updateSelectedItemPosition(index);
            updateBottomBtnTitle(index);
            this.mTextEditable = true;
        } else if (this.mSelectedTextStyle.isNone()) {
            this.mVideoEditor.setAutoWaterMark("", this.mSelectedTextTime);
            this.mVideoEditor.setWarterMark(this.mSelectedTextTime, "");
        } else if (this.mSelectedTextStyle.isExtra() && this.mSelectedTextStyle.isDownloaded()) {
            this.mVideoEditor.setWarterMark(this.mSelectedTextTime, this.mSelectedTextStyle.getTemplateId());
        }
    }

    private boolean applyPlay() {
        return this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                WaterMarkFragment.this.mVideoEditor.play();
                WaterMarkFragment.this.recordEventWithEffectChanged();
                WaterMarkFragment.this.updatePalyBtnView();
            }
        });
    }

    private void updateSelectedItemPosition(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.setSelectedItemPosition(position);
            this.mAdapter.clearLastSelectedPostion();
        }
    }

    private boolean hasOtherItemDownloading() {
        if (this.mTextStyles != null && this.mTextStyles.size() > 0) {
            Iterator it = this.mTextStyles.iterator();
            while (it.hasNext()) {
                TextStyle textStyle = (TextStyle) it.next();
                if (textStyle != null && textStyle.isDownloading()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void onDownlaodCompleted(VideoEditorBaseModel data, final int position) {
        final TextStyle textStyle = (TextStyle) data;
        NexAssetTemplateManager.getInstance().installWaterMarkAssetPackageToSdk(textStyle.getAssetId(), new ILoadAssetTemplate() {
            public void onFail() {
                textStyle.setDownloadState(20);
                WaterMarkFragment.this.notifyDateSetChanged(position);
            }

            public void onSuccess() {
                NexAssetTemplateManager.getInstance().loadWaterMarkTemplateList(new ILoadWaterMarkListener() {
                    public void onFinished(String[] ids) {
                        WaterMarkFragment.this.mWaterMarkManager.updateDataWithTemplate(ids, textStyle);
                        WaterMarkFragment.this.notifyDateSetChanged(position);
                    }
                });
            }
        });
    }

    public void onDestroyView() {
        if (this.mDownloadingTextStyle != null && this.mDownloadingTextStyle.isDownloading()) {
            this.mDownloadingTextStyle.setDownloadState(20);
        }
        if (this.mAdapter != null) {
            this.mAdapter.setItemSelectChangeListener(null);
            this.mAdapter = null;
        }
        if (this.mVideoEditorResourceRequest != null) {
            this.mVideoEditorResourceRequest.cancel();
        }
        if (this.mTextRoot != null) {
            this.mTextRoot.getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        }
        if (this.mTextPopWindow != null) {
            this.mTextPopWindow.dismiss();
        }
        if (this.mTextAppearAnimator != null) {
            this.mTextAppearAnimator.removeAllListeners();
            this.mTextAppearAnimator.cancel();
        }
        this.mInputText = "";
        cancelRequest();
        super.onDestroyView();
    }

    private void updateBottomBtnTitle(int position) {
        if (position == 0 && this.mAllActionButton.isSelected()) {
            this.mAllActionButton.setSelected(false);
        }
        this.mAllActionButton.setText(position == 0 ? R.string.video_editor_watermark : R.string.video_editor_text_edit_all);
        this.mEndActionButton.setText(position == 0 ? "" : getString(R.string.video_editor_text_edit_end));
        this.mStartActionButton.setText(position == 0 ? "" : getString(R.string.video_editor_text_edit_start));
    }
}
