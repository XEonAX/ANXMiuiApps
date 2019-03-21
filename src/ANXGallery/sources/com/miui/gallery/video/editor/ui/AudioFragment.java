package com.miui.gallery.video.editor.ui;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.video.editor.LocalAudio;
import com.miui.gallery.video.editor.VideoEditor.OnCompletedListener;
import com.miui.gallery.video.editor.adapter.AudioRecyclerViewAdapter;
import com.miui.gallery.video.editor.factory.AudioFactory;
import com.miui.gallery.video.editor.model.LocalResource;
import com.miui.gallery.video.editor.model.VedioEditorModuleAdapter;
import com.miui.gallery.video.editor.model.VideoEditorBaseLocalResource;
import com.miui.gallery.video.editor.model.VideoEditorBaseModel;
import com.miui.gallery.video.editor.net.VideoEditorResourceRequest;
import com.miui.gallery.video.editor.ui.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.video.editor.util.ConvertFilepathUtil;
import com.miui.gallery.video.editor.widget.EffectActionBar;
import com.miui.gallery.video.editor.widget.EffectActionBar.ActionListener;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter;
import com.miui.gallery.video.editor.widget.SingleChoiceRecycleView.SingleChoiceRecyclerViewAdapter.ItemSelectChangeListener;
import com.nexstreaming.nexeditorsdk.nexClip;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class AudioFragment extends MenuFragment {
    private AudioRecyclerViewAdapter mAdapter;
    private ArrayList<LocalAudio> mAudios = new ArrayList();
    private boolean mBgSoundEnable = true;
    private EffectActionBar mBottomBar;
    private LocalAudio mDowmloadingLocalAudio;
    private LinearLayoutManager mLinearLayoutManager;
    private int mSavedSelectedAudioIndex;
    private SingleChoiceRecycleView mSingleChoiceRecycleView;
    private VideoEditorResourceRequest mVideoEditorResourceRequest;
    private boolean mVoiceClicked = false;

    private class MyAudioItemSelectChangeListener implements ItemSelectChangeListener {
        private MyAudioItemSelectChangeListener() {
        }

        /* synthetic */ MyAudioItemSelectChangeListener(AudioFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(SingleChoiceRecyclerViewAdapter adapter, int position, boolean isChanged) {
            if (!AudioFragment.this.hasOtherItemDownloading()) {
                ScrollControlLinearLayoutManager.onItemClick(AudioFragment.this.mSingleChoiceRecycleView, position);
                LocalAudio localAudio = ((AudioRecyclerViewAdapter) adapter).getAuido(position);
                if (localAudio != null) {
                    if (localAudio.isCustom()) {
                        Intent intent = new Intent();
                        intent.setType("audio/*");
                        intent.setAction("android.intent.action.GET_CONTENT");
                        intent.setPackage("com.miui.player");
                        try {
                            AudioFragment.this.startActivityForResult(intent, 1000);
                        } catch (ActivityNotFoundException e) {
                            Log.e("AudioFragment", "com.miui.player not found,try all picker");
                            try {
                                Intent intent2 = new Intent();
                                try {
                                    intent2.setType("audio/*");
                                    intent2.setAction("android.intent.action.GET_CONTENT");
                                    AudioFragment.this.startActivityForResult(intent2, 1000);
                                    intent = intent2;
                                } catch (ActivityNotFoundException e2) {
                                    intent = intent2;
                                    Log.e("AudioFragment", "picker not found");
                                    AudioFragment.this.updateSelectedItemPosition(position);
                                    return false;
                                }
                            } catch (ActivityNotFoundException e3) {
                                Log.e("AudioFragment", "picker not found");
                                AudioFragment.this.updateSelectedItemPosition(position);
                                return false;
                            }
                        }
                        AudioFragment.this.updateSelectedItemPosition(position);
                    } else if (localAudio.isNone() && isChanged) {
                        AudioFragment.this.updateSelectedItemPosition(position);
                        AudioFragment.this.successProcess(localAudio);
                    } else if (localAudio.isExtra() && isChanged) {
                        if (localAudio.isDownloaded()) {
                            AudioFragment.this.updateSelectedItemPosition(position);
                            AudioFragment.this.successProcess(localAudio);
                        } else {
                            AudioFragment.this.mIDownloadListener.downloadResourceWithCheck(localAudio, position);
                            AudioFragment.this.mDowmloadingLocalAudio = localAudio;
                        }
                    }
                }
            }
            return false;
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        loadResourceData();
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.video_editor_fragment_audio, container, false);
        initRecylerView(view);
        this.mBottomBar = (EffectActionBar) view.findViewById(R.id.video_editor_effect_action_bar);
        this.mBottomBar.setTitle(this.mContext.getResources().getString(R.string.video_editor_audio));
        updateAudioVoiceView(this.mBgSoundEnable);
        initListener();
        return view;
    }

    private void initRecylerView(View view) {
        this.mSingleChoiceRecycleView = (SingleChoiceRecycleView) view.findViewById(R.id.recylerview);
        this.mLinearLayoutManager = new ScrollControlLinearLayoutManager(this.mContext, 0, false);
        this.mSingleChoiceRecycleView.setLayoutManager(this.mLinearLayoutManager);
        this.mSingleChoiceRecycleView.addItemDecoration(new BlankDivider(getResources(), R.dimen.video_editor_audio_recylerview_gap, 0));
        this.mAdapter = new AudioRecyclerViewAdapter(this.mContext, this.mAudios);
        this.mAdapter.setItemSelectChangeListener(new MyAudioItemSelectChangeListener(this, null));
        this.mSingleChoiceRecycleView.setAdapter(this.mAdapter);
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mSingleChoiceRecycleView);
        this.mAdapter.setSelectedItemPosition(this.mSavedSelectedAudioIndex);
    }

    private void initListener() {
        this.mBottomBar.setActionListener(new ActionListener() {
            public void onCancelAction() {
                AudioFragment.this.doCancel();
            }

            public void onApplyAction() {
                AudioFragment.this.doApply();
            }
        });
    }

    public void updateVoiceState(boolean enable) {
        this.mBgSoundEnable = enable;
        this.mVideoEditor.setSourceAudioEnable(Boolean.valueOf(enable));
        this.mVoiceClicked = true;
        this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                AudioFragment.this.mVideoEditor.play();
                AudioFragment.this.updatePalyBtnView();
                AudioFragment.this.recordEventWithEffectChanged();
            }
        });
    }

    public void loadResourceData() {
        this.mModuleFactory = new AudioFactory();
        this.mVideoEditorResourceRequest = new VideoEditorResourceRequest(getEffectId(), this.mModuleFactory);
        this.mVideoEditorResourceRequest.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                AudioFragment.this.refreshData(response[0]);
            }

            public void onResponseError(final ErrorCode errorCode, String errorMessage, Object responseData) {
                Log.d("AudioFragment", "errorCode: %s", (Object) errorCode);
                ThreadManager.runOnMainThread(new Runnable() {
                    public void run() {
                        if (AudioFragment.this.mAudios != null && AudioFragment.this.mAudios.size() == 0) {
                            AudioFragment.this.mAudios.add(new LocalAudio("audio_none", R.drawable.vide_editor_icon_audio_none, "ve_type_none", false));
                            if (AudioFragment.this.mAdapter != null) {
                                AudioFragment.this.mAdapter.notifyDataSetChanged();
                            }
                        }
                        if (errorCode == ErrorCode.NETWORK_NOT_CONNECTED) {
                            ThreadManager.runOnMainThread(new Runnable() {
                                public void run() {
                                    ToastUtils.makeText(AudioFragment.this.mContext, (int) R.string.video_editor_download_failed_for_notwork);
                                }
                            });
                        }
                    }
                });
            }
        });
    }

    private void refreshData(List<VideoEditorBaseLocalResource> list) {
        List<VideoEditorBaseLocalResource> mNoneList = new ArrayList();
        List<VideoEditorBaseLocalResource> mExtraList = new ArrayList();
        List<VideoEditorBaseLocalResource> mCustomList = new ArrayList();
        for (VideoEditorBaseLocalResource data : list) {
            if (data != null) {
                if ("ve_type_none".equals(data.type)) {
                    mNoneList.add(data);
                } else if ("ve_type_extra".equals(data.type)) {
                    mExtraList.add(data);
                } else if ("ve_type_custom".equals(data.type)) {
                    mCustomList.add(data);
                }
            }
        }
        List<LocalResource> mList = this.mModuleFactory.getLocalTemplateEntities(this.mContext);
        if (list != null) {
            mList.addAll(mNoneList);
            mList.addAll(mExtraList);
            mList.addAll(mCustomList);
        }
        final ArrayList<LocalAudio> audioArrayList = new ArrayList();
        audioArrayList.addAll(VedioEditorModuleAdapter.loadAudioData(this.mModuleFactory, mList));
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                AudioFragment.this.mAudios.clear();
                AudioFragment.this.mAudios.addAll(audioArrayList);
                if (AudioFragment.this.mAdapter != null) {
                    AudioFragment.this.mAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    public List<String> getCurrentEffect() {
        if (this.mAdapter == null) {
            return null;
        }
        LocalAudio audio = this.mAdapter.getAuido(this.mAdapter.getSelectedItemPosition());
        if (audio == null) {
            return null;
        }
        String[] strArr;
        if (audio.isCustom()) {
            strArr = new String[2];
            strArr[0] = "custom";
            strArr[1] = this.mVideoEditor.isSourceAudioEnable() ? "source" : "mute";
            return Arrays.asList(strArr);
        } else if (!audio.isExtra()) {
            return null;
        } else {
            strArr = new String[2];
            strArr[0] = audio.getLabel();
            strArr[1] = this.mVideoEditor.isSourceAudioEnable() ? "source" : "mute";
            return Arrays.asList(strArr);
        }
    }

    public boolean doApply() {
        if (this.mVideoEditor == null) {
            Log.d("AudioFragment", "doApply: videoEditor is null.");
            return false;
        }
        this.mSavedSelectedAudioIndex = this.mAdapter.getSelectedItemPosition();
        this.mVideoEditor.saveEditState();
        recordEventWithApply();
        onExitMode();
        return true;
    }

    public boolean doCancel() {
        boolean z = false;
        if (this.mVideoEditor == null) {
            Log.d("AudioFragment", "doCancel: videoEditor is null.");
            return false;
        }
        if (this.mVoiceClicked) {
            if (!this.mBgSoundEnable) {
                z = true;
            }
            this.mBgSoundEnable = z;
        }
        this.mVideoEditor.restoreEditState();
        return this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                if (AudioFragment.this.mVideoEditor != null) {
                    AudioFragment.this.mVideoEditor.play();
                    AudioFragment.this.recordEventWithCancel();
                    AudioFragment.this.onExitMode();
                }
            }
        });
    }

    public int getEffectId() {
        return R.id.video_editor_audio;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1000 && resultCode == -1) {
            String m_soundfilepath;
            ClipData clipData = data.getClipData();
            if (clipData == null) {
                m_soundfilepath = ConvertFilepathUtil.getPath(getActivity(), data.getData());
            } else {
                m_soundfilepath = ConvertFilepathUtil.getPath(getActivity(), clipData.getItemAt(0).getUri());
            }
            if (!TextUtils.isEmpty(m_soundfilepath)) {
                if (nexClip.getSupportedClip(m_soundfilepath) != null) {
                    this.mVideoEditor.setBackgroundMusic(Scheme.FILE.wrap(m_soundfilepath));
                    this.mVideoEditor.apply(new OnCompletedListener() {
                        public void onCompleted() {
                            AudioFragment.this.mVideoEditor.play();
                            AudioFragment.this.recordEventWithEffectChanged();
                            AudioFragment.this.updatePalyBtnView();
                            if (AudioFragment.this.mAdapter != null) {
                                AudioFragment.this.updateSelectedItemPosition(AudioFragment.this.mAdapter.getItemCount() - 1);
                            }
                        }
                    });
                    return;
                }
                ToastUtils.makeText(getActivity(), (int) R.string.video_editor_unsupport_audio_file);
            }
        }
    }

    private void updateSelectedItemPosition(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.setSelectedItemPosition(position);
            this.mAdapter.clearLastSelectedPostion();
        }
    }

    private boolean hasOtherItemDownloading() {
        if (this.mAudios != null && this.mAudios.size() > 0) {
            Iterator it = this.mAudios.iterator();
            while (it.hasNext()) {
                LocalAudio data = (LocalAudio) it.next();
                if (data != null && data.isDownloading()) {
                    return true;
                }
            }
        }
        return false;
    }

    public void notifyDateSetChanged(int position) {
        if (this.mAdapter != null) {
            this.mAdapter.notifyItemChanged(position, Integer.valueOf(1));
        }
    }

    public void onDownlaodCompleted(VideoEditorBaseModel data, int position) {
        data.setDownloadState(0);
        notifyDateSetChanged(position);
    }

    private void successProcess(LocalAudio localAudio) {
        this.mVideoEditor.setBackgroundMusic(localAudio.getSrcPath());
        this.mVideoEditor.apply(new OnCompletedListener() {
            public void onCompleted() {
                AudioFragment.this.mVideoEditor.play();
                AudioFragment.this.recordEventWithEffectChanged();
                AudioFragment.this.updatePalyBtnView();
            }
        });
    }

    public void onDestroyView() {
        super.onDestroyView();
        updateAudioVoiceView(false);
        if (this.mDowmloadingLocalAudio != null && this.mDowmloadingLocalAudio.isDownloading()) {
            this.mDowmloadingLocalAudio.setDownloadState(20);
        }
        if (this.mAdapter != null) {
            this.mAdapter.setItemSelectChangeListener(null);
            this.mAdapter = null;
        }
        if (this.mBottomBar != null) {
            this.mBottomBar.removeListener();
        }
        if (this.mVideoEditorResourceRequest != null) {
            this.mVideoEditorResourceRequest.cancel();
        }
        this.mVoiceClicked = false;
        cancelRequest();
    }

    private void updateAudioVoiceView(boolean enable) {
        if (this.mCallback != null) {
            this.mCallback.updateAudioVoiceView(enable);
        }
    }
}
