package com.miui.gallery.video.editor.ui;

import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.SmartEffect;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.adapter.SmartEffectRecyclerViewAdapter;
import com.miui.gallery.video.editor.factory.SmartEffectFactory;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager.ICheckExpiredAssetListener;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager.ILoadAssetTemplate;
import com.miui.gallery.video.editor.manager.NexAssetTemplateManager.ILoadSmartEffectListener;
import com.miui.gallery.video.editor.manager.SmartEffectManager;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.VedioEditorModuleAdapter;
import com.miui.gallery.video.editor.model.VideoEditorBaseLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.net.VideoEditorResourceRequest;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.video.editor.widget.EffectActionBar;
import com.miui.gallery.video.editor.widget.EffectActionBar.ActionListener;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.ItemSelectChangeListener;
import com.nexstreaming.nexeditorsdk.nexTemplateManager.Template;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class SmartEffectFragment extends MenuFragment {
    private final String TAG = "SmartEffectFragment";
    private SmartEffectRecyclerViewAdapter mAdapter;
    private EffectActionBar mBottomBar;
    private SmartEffect mDownloadingSmartEffect;
    private LinearLayout mLayout;
    private LinearLayoutManager mLinearLayoutManager;
    private int mSavedSelectedSmartEffectIndex;
    private SingleChoiceRecycleView mSingleChoiceRecycleView;
    private SmartEffectManager mSmartEffectManager;
    private ArrayList<SmartEffect> mSmartEffects = new ArrayList();
    private Toast mToast;
    private VideoEditorResourceRequest mVideoEditorResourceRequest;
    private int mVideoTotalTime;

    private class SmartEffectItemSelectChangeListener implements ItemSelectChangeListener {
        private SmartEffectItemSelectChangeListener() {
        }

        /* synthetic */ SmartEffectItemSelectChangeListener(SmartEffectFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(SingleChoiceRecyclerViewAdapter adapter, int position, boolean isChanged) {
            if (SmartEffectFragment.this.hasOtherItemDownloading() || !isChanged) {
                return false;
            }
            ScrollControlLinearLayoutManager.onItemClick(SmartEffectFragment.this.mSingleChoiceRecycleView, position);
            SmartEffect smartEffect = ((SmartEffectRecyclerViewAdapter) adapter).getSmartEffect(position);
            if (smartEffect == null) {
                return false;
            }
            if (smartEffect.isNone()) {
                SmartEffectFragment.this.updateSelectedItemPosition(position);
                SmartEffectFragment.this.mVideoEditor.setSmartEffectTemplate(smartEffect);
                return SmartEffectFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                    public void onCompleted() {
                        SmartEffectFragment.this.mVideoEditor.play();
                        SmartEffectFragment.this.recordEventWithEffectChanged();
                        SmartEffectFragment.this.updatePalyBtnView();
                    }
                });
            } else if (!smartEffect.isExtra()) {
                return false;
            } else {
                if (smartEffect.isDownloaded()) {
                    if (SmartEffectFragment.this.mToast != null) {
                        SmartEffectFragment.this.mToast.cancel();
                    }
                    int offsetdY = SmartEffectFragment.this.getResources().getDimensionPixelSize(R.dimen.video_editor_video_smart_effect_toast_gap);
                    if (SmartEffectFragment.this.mVideoTotalTime < smartEffect.getShortTime()) {
                        SmartEffectFragment.this.mToast = Toast.makeText(SmartEffectFragment.this.mContext, R.string.video_editor_smart_effect_time_limit_txt_6, 0);
                        SmartEffectFragment.this.mToast.setGravity(80, 0, SmartEffectFragment.this.mLayout.getHeight() - offsetdY);
                        SmartEffectFragment.this.mToast.show();
                        return false;
                    }
                    if (smartEffect.isHasSpeedChange() && !SmartEffectFragment.this.isHighFrames()) {
                        SmartEffectFragment.this.mToast = Toast.makeText(SmartEffectFragment.this.mContext, R.string.video_editor_smart_effect_high_iframes_text, 0);
                        SmartEffectFragment.this.mToast.setGravity(80, 0, SmartEffectFragment.this.mLayout.getHeight() - offsetdY);
                        SmartEffectFragment.this.mToast.show();
                    } else if (SmartEffectFragment.this.mVideoTotalTime > smartEffect.getLongTime() && smartEffect.isLimitSixtySeconds()) {
                        SmartEffectFragment.this.mToast = Toast.makeText(SmartEffectFragment.this.mContext, R.string.video_editor_smart_effect_time_limit_txt_60, 0);
                        SmartEffectFragment.this.mToast.setGravity(80, 0, SmartEffectFragment.this.mLayout.getHeight() - offsetdY);
                        SmartEffectFragment.this.mToast.show();
                    } else if (SmartEffectFragment.this.mVideoTotalTime > smartEffect.getLongTime() && smartEffect.isLimitFourtySeconds()) {
                        SmartEffectFragment.this.mToast = Toast.makeText(SmartEffectFragment.this.mContext, R.string.video_editor_smart_effect_time_limit_txt_40, 0);
                        SmartEffectFragment.this.mToast.setGravity(80, 0, SmartEffectFragment.this.mLayout.getHeight() - offsetdY);
                        SmartEffectFragment.this.mToast.show();
                    }
                    SmartEffectFragment.this.updateSelectedItemPosition(position);
                    SmartEffectFragment.this.mVideoEditor.setSmartEffectTemplate(smartEffect);
                    return SmartEffectFragment.this.mVideoEditor.apply(new OnCompletedListener() {
                        public void onCompleted() {
                            SmartEffectFragment.this.mVideoEditor.play();
                            SmartEffectFragment.this.recordEventWithEffectChanged();
                            SmartEffectFragment.this.updatePalyBtnView();
                        }
                    });
                }
                SmartEffectFragment.this.mIDownloadListener.downloadResourceWithCheck(smartEffect, position);
                SmartEffectFragment.this.mDownloadingSmartEffect = smartEffect;
                return false;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        this.mSmartEffectManager = new SmartEffectManager();
        loadResourceData();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.video_editor_fragment_smart_effect, container, false);
        this.mBottomBar = (EffectActionBar) view.findViewById(R.id.video_editor_effect_action_bar);
        this.mLayout = (LinearLayout) view.findViewById(R.id.area_smart_effect);
        this.mBottomBar.setTitle(this.mContext.getResources().getString(R.string.video_editor_intelligent_special_effect));
        this.mVideoTotalTime = this.mVideoEditor.getProjectTotalTime();
        initRecylerView(view);
        initListener();
        return view;
    }

    private void initRecylerView(View view) {
        this.mSingleChoiceRecycleView = (SingleChoiceRecycleView) view.findViewById(R.id.recylerview);
        this.mLinearLayoutManager = new ScrollControlLinearLayoutManager(this.mContext, 0, false);
        this.mSingleChoiceRecycleView.setLayoutManager(this.mLinearLayoutManager);
        this.mSingleChoiceRecycleView.addItemDecoration(new BlankDivider(getResources(), R.dimen.video_editor_smart_effect_recylerview_gap, 0));
        this.mAdapter = new SmartEffectRecyclerViewAdapter(this.mContext, this.mSmartEffects);
        this.mAdapter.setItemSelectChangeListener(new SmartEffectItemSelectChangeListener(this, null));
        this.mSingleChoiceRecycleView.setAdapter(this.mAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mSingleChoiceRecycleView);
        this.mAdapter.setSelectedItemPosition(this.mSavedSelectedSmartEffectIndex);
    }

    private void initListener() {
        this.mBottomBar.setActionListener(new ActionListener() {
            public void onCancelAction() {
                SmartEffectFragment.this.doCancel();
            }

            public void onApplyAction() {
                SmartEffectFragment.this.doApply();
            }
        });
    }

    public List<String> getCurrentEffect() {
        if (this.mAdapter == null || this.mAdapter.getSmartEffect(this.mAdapter.getSelectedItemPosition()) == null) {
            return null;
        }
        return Arrays.asList(new String[]{this.mAdapter.getSmartEffect(this.mAdapter.getSelectedItemPosition()).getLabel()});
    }

    public boolean doApply() {
        if (this.mVideoEditor == null) {
            Log.d("SmartEffectFragment", "doApply: videoEditor is null.");
            return false;
        }
        this.mVideoEditor.saveEditState();
        this.mSavedSelectedSmartEffectIndex = this.mAdapter.getSelectedItemPosition();
        recordEventWithApply();
        onExitMode();
        return true;
    }

    public boolean doCancel() {
        if (this.mVideoEditor == null) {
            Log.d("SmartEffectFragment", "doCancel: videoEditor is null.");
            return false;
        }
        this.mVideoEditor.restoreEditState();
        return this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                if (SmartEffectFragment.this.mVideoEditor != null) {
                    SmartEffectFragment.this.mVideoEditor.play();
                    SmartEffectFragment.this.recordEventWithCancel();
                    SmartEffectFragment.this.onExitMode();
                }
            }
        });
    }

    public int getEffectId() {
        return R.id.video_editor_smart_effect;
    }

    public void loadResourceData() {
        this.mModuleFactory = new SmartEffectFactory();
        this.mVideoEditorResourceRequest = new VideoEditorResourceRequest(getEffectId(), this.mModuleFactory);
        this.mVideoEditorResourceRequest.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                SmartEffectFragment.this.refreshData(response[0]);
            }

            public void onResponseError(final ErrorCode errorCode, String errorMessage, Object responseData) {
                Log.d("SmartEffectFragment", "errorCode: %s", (Object) errorCode);
                ThreadManager.runOnMainThread(new Runnable() {
                    public void run() {
                        if (SmartEffectFragment.this.mSmartEffects != null && SmartEffectFragment.this.mSmartEffects.size() == 0) {
                            SmartEffectFragment.this.mSmartEffects.add(new SmartEffect("smart_effect_none", R.drawable.video_editor_icon_smart_effect_none, "ve_type_none", false));
                            if (SmartEffectFragment.this.mAdapter != null) {
                                SmartEffectFragment.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                        if (errorCode == ErrorCode.NETWORK_NOT_CONNECTED) {
                            ThreadManager.runOnMainThread(new Runnable() {
                                public void run() {
                                    ToastUtils.makeText(SmartEffectFragment.this.mContext, (int) R.string.video_editor_download_failed_for_notwork);
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
        final ArrayList<SmartEffect> effectArrayList = new ArrayList();
        effectArrayList.addAll(VedioEditorModuleAdapter.loadSmartEffects(mList));
        NexAssetTemplateManager.getInstance().checkExpiredAsset(new ICheckExpiredAssetListener() {
            public void onFinished(List<Template> templates) {
                SmartEffectFragment.this.mSmartEffectManager.initDataWithTemplate(templates, effectArrayList);
                ThreadManager.runOnMainThread(new Runnable() {
                    public void run() {
                        SmartEffectFragment.this.mSmartEffects.clear();
                        SmartEffectFragment.this.mSmartEffects.addAll(effectArrayList);
                        if (SmartEffectFragment.this.mAdapter != null) {
                            SmartEffectFragment.this.mAdapter.notifyDataSetChanged();
                        }
                    }
                });
            }
        });
    }

    private boolean hasOtherItemDownloading() {
        if (this.mSmartEffects != null && this.mSmartEffects.size() > 0) {
            Iterator it = this.mSmartEffects.iterator();
            while (it.hasNext()) {
                SmartEffect data = (SmartEffect) it.next();
                if (data != null && data.isDownloading()) {
                    return true;
                }
            }
        }
        return false;
    }

    private void updateSelectedItemPosition(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.setSelectedItemPosition(position);
            this.mAdapter.clearLastSelectedPostion();
        }
    }

    public void notifyDateSetChanged(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.notifyItemChanged(position, Integer.valueOf(1));
        }
    }

    public void onDownlaodCompleted(VideoEditorBaseModel data, final int position) {
        final SmartEffect smartEffect = (SmartEffect) data;
        NexAssetTemplateManager.getInstance().installSmartEffectAssetPackageToSdk(smartEffect.getAssetId(), new ILoadAssetTemplate() {
            public void onFail() {
                smartEffect.setDownloadState(20);
                SmartEffectFragment.this.notifyDateSetChanged(position);
            }

            public void onSuccess() {
                NexAssetTemplateManager.getInstance().loadSmartEffectTemplateList(new ILoadSmartEffectListener() {
                    public void onFinished(final List<Template> templates) {
                        ThreadManager.runOnMainThread(new Runnable() {
                            public void run() {
                                SmartEffectFragment.this.mSmartEffectManager.updateDataWithTemplate(templates, smartEffect);
                                SmartEffectFragment.this.notifyDateSetChanged(position);
                            }
                        });
                    }
                });
            }
        });
    }

    public void onDestroyView() {
        super.onDestroyView();
        if (this.mDownloadingSmartEffect != null && this.mDownloadingSmartEffect.isDownloading()) {
            this.mDownloadingSmartEffect.setDownloadState(20);
        }
        if (this.mToast != null) {
            this.mToast.cancel();
        }
        if (this.mAdapter != null) {
            this.mAdapter.setItemSelectChangeListener(null);
            this.mAdapter = null;
        }
        if (this.mBottomBar != null) {
            this.mBottomBar.setActionListener(null);
        }
        if (this.mVideoEditorResourceRequest != null) {
            this.mVideoEditorResourceRequest.cancel();
        }
        cancelRequest();
    }

    public boolean isHighFrames() {
        if (this.mVideoEditor == null || this.mVideoEditor.getVideoFrames() < 100) {
            return false;
        }
        return true;
    }
}
