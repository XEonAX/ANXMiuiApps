package com.miui.gallery.movie.ui.fragment;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Fragment;
import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.ScrollControlLinearLayoutManager;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.entity.AudioResource;
import com.miui.gallery.movie.entity.ImageEntity;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.entity.MovieResource;
import com.miui.gallery.movie.entity.TemplateResource;
import com.miui.gallery.movie.net.AudioResourceRequest;
import com.miui.gallery.movie.net.TemplateResourceRequest;
import com.miui.gallery.movie.ui.activity.MovieStoryPickActivity;
import com.miui.gallery.movie.ui.adapter.AudioAdapter;
import com.miui.gallery.movie.ui.adapter.BaseAdapter;
import com.miui.gallery.movie.ui.adapter.BaseAdapter.BaseHolder;
import com.miui.gallery.movie.ui.adapter.BaseAdapter.ItemSelectChangeListener;
import com.miui.gallery.movie.ui.adapter.EditAdapter;
import com.miui.gallery.movie.ui.adapter.EditAdapter.OnActionListener;
import com.miui.gallery.movie.ui.adapter.TemplateAdapter;
import com.miui.gallery.movie.ui.factory.AudioFactory;
import com.miui.gallery.movie.ui.factory.TemplateFactory;
import com.miui.gallery.movie.ui.listener.MenuActivityListener;
import com.miui.gallery.movie.ui.listener.MenuFragmentListener;
import com.miui.gallery.movie.ui.listener.MovieDownloadListener;
import com.miui.gallery.movie.ui.listener.SingleClickListener;
import com.miui.gallery.movie.utils.ConvertFilepathUtil;
import com.miui.gallery.movie.utils.MovieDownloadManager;
import com.miui.gallery.movie.utils.MovieStatUtils;
import com.miui.gallery.movie.utils.MovieUtils;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import java.util.ArrayList;
import java.util.List;
import miui.util.PlayerActions;
import miui.view.animation.QuarticEaseOutInterpolator;

public class MovieEditorMenuFragment extends Fragment implements MenuActivityListener {
    private AudioAdapter mAudioAdapter;
    private AudioResourceRequest mAudioResourceRequest;
    private Context mContext;
    private int mCurrentTabPos;
    private boolean mDeleteClicked;
    private RadioGroup mDurationRadioGroup;
    private EditAdapter mEditAdapter;
    private Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    MovieEditorMenuFragment.this.mTemplateAdapter.notifyItemRangeChanged(0, MovieEditorMenuFragment.this.mTemplateAdapter.getItemCount(), new Object());
                    Log.i("MovieEditorMenuFragment", "MSG_NOTIFY_TEMPLATE_ITEM");
                    break;
                case 2:
                    MovieEditorMenuFragment.this.mTemplateAdapter.setSelectedItemPositionWithoutNotify(msg.arg1);
                    MovieEditorMenuFragment.this.mTemplateAdapter.notifyDataSetChanged();
                    break;
                case 3:
                    MovieEditorMenuFragment.this.mAudioAdapter.notifyItemRangeChanged(0, MovieEditorMenuFragment.this.mAudioAdapter.getItemCount(), new Object());
                    Log.i("MovieEditorMenuFragment", "MSG_NOTIFY_AUDIO_ITEM");
                    break;
                case 4:
                    MovieEditorMenuFragment.this.mAudioAdapter.notifyDataSetChanged();
                    break;
            }
            super.handleMessage(msg);
        }
    };
    private boolean mIsShortVideo;
    private MenuFragmentListener mMenuFragmentListener;
    private MovieInfo mMovieInfo;
    private MovieManager mMovieManager;
    private SimpleRecyclerView[] mRecyclerViews;
    private SingleClickListener mSingleClickListener = new SingleClickListener() {
        protected void onSingleClick(View v) {
            switch (v.getId()) {
                case R.id.btn_movie_return /*2131886539*/:
                    MovieEditorMenuFragment.this.mMenuFragmentListener.returnClick();
                    return;
                case R.id.btn_movie_save /*2131886543*/:
                    MovieEditorMenuFragment.this.mMenuFragmentListener.export(false);
                    return;
                default:
                    return;
            }
        }
    };
    private long mStoryMovieCardId;
    private TemplateAdapter mTemplateAdapter;
    private TemplateResourceRequest mTemplateResourceRequest;
    private ViewPager mViewPager;

    private class ControllerPagerAdapter extends PagerAdapter {
        private List<BaseAdapter> mAdapters = new ArrayList(3);

        public ControllerPagerAdapter() {
            this.mAdapters.add(MovieEditorMenuFragment.this.mTemplateAdapter);
            this.mAdapters.add(MovieEditorMenuFragment.this.mAudioAdapter);
            this.mAdapters.add(MovieEditorMenuFragment.this.mEditAdapter);
        }

        public int getCount() {
            return this.mAdapters.size();
        }

        public boolean isViewFromObject(View view, Object object) {
            return object == view;
        }

        public Object instantiateItem(ViewGroup container, int position) {
            int i = 0;
            SimpleRecyclerView recycleView = MovieEditorMenuFragment.this.mRecyclerViews[position];
            if (recycleView == null) {
                recycleView = new SimpleRecyclerView(container.getContext());
                LinearLayoutManager linearLayoutManager = new ScrollControlLinearLayoutManager(MovieEditorMenuFragment.this.mContext);
                linearLayoutManager.setOrientation(0);
                recycleView.setLayoutManager(linearLayoutManager);
                int leftMargin = (int) MovieEditorMenuFragment.this.getResources().getDimension(R.dimen.movie_rv_left);
                if (position == 0) {
                    ((BaseAdapter) this.mAdapters.get(position)).setItemSelectChangeListener(new MyTemplateItemSelectChangeListener(MovieEditorMenuFragment.this, null));
                    HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recycleView);
                } else if (position == 1) {
                    ((BaseAdapter) this.mAdapters.get(position)).setItemSelectChangeListener(new MyAudioItemSelectChangeListener(MovieEditorMenuFragment.this, null));
                    HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recycleView);
                } else if (position == 2) {
                    ((BaseAdapter) this.mAdapters.get(position)).setItemSelectChangeListener(new MyEditItemSelectChangeListener(MovieEditorMenuFragment.this, null));
                    HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recycleView, MovieEditorMenuFragment.this.mEditAdapter.getCallback());
                    recycleView.setItemAnimator(new DefaultItemAnimator());
                    leftMargin = (int) MovieEditorMenuFragment.this.getResources().getDimension(R.dimen.movie_rv_editor_left);
                }
                MovieEditorMenuFragment.this.mRecyclerViews[position] = recycleView;
                recycleView.addItemDecoration(new BlankDivider(leftMargin, 0, 0, 0, 0, 0));
                recycleView.setAdapter((Adapter) this.mAdapters.get(position));
                if (MovieEditorMenuFragment.this.mCurrentTabPos != position) {
                    i = 4;
                }
                recycleView.setVisibility(i);
            }
            container.addView(recycleView, new LayoutParams(-1, -1));
            return recycleView;
        }

        public void destroyItem(ViewGroup container, int position, Object object) {
            container.removeView(MovieEditorMenuFragment.this.mRecyclerViews[position]);
        }
    }

    private class MyAudioItemSelectChangeListener implements ItemSelectChangeListener {
        private MyAudioItemSelectChangeListener() {
        }

        /* synthetic */ MyAudioItemSelectChangeListener(MovieEditorMenuFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(RecyclerView parent, BaseHolder holder, int position, boolean isChanged) {
            AudioResource data = (AudioResource) MovieEditorMenuFragment.this.mAudioAdapter.getItemData(position);
            if (data == null) {
                return false;
            }
            if (data.getResType() == 2) {
                Intent intent = new Intent();
                intent.setType("audio/*");
                intent.setAction("android.intent.action.GET_CONTENT");
                intent.setPackage(PlayerActions.BROADCAST_PREFIX);
                try {
                    MovieEditorMenuFragment.this.startActivityForResult(intent, 1000);
                    return false;
                } catch (ActivityNotFoundException e) {
                    Log.e("MovieEditorMenuFragment", "com.miui.player not found,try all picker");
                    try {
                        Intent intent2 = new Intent();
                        try {
                            intent2.setType("audio/*");
                            intent2.setAction("android.intent.action.GET_CONTENT");
                            MovieEditorMenuFragment.this.startActivityForResult(intent2, 1000);
                            intent = intent2;
                            return false;
                        } catch (ActivityNotFoundException e2) {
                            intent = intent2;
                            Log.e("MovieEditorMenuFragment", "picker not found");
                            return false;
                        }
                    } catch (ActivityNotFoundException e3) {
                        Log.e("MovieEditorMenuFragment", "picker not found");
                        return false;
                    }
                }
            } else if (!isChanged) {
                return false;
            } else {
                int state = data.getDownloadState();
                if (state == 17 || state == 0) {
                    ScrollControlLinearLayoutManager.onItemClick(parent, position);
                    MovieEditorMenuFragment.this.mMovieInfo.audio = data.nameKey;
                    MovieEditorMenuFragment.this.mMovieManager.setAudio(data);
                    MovieStatUtils.statItemChoose(data);
                    MovieEditorMenuFragment.this.resetMovieShareData();
                    return true;
                } else if (state != 19 && state != 20) {
                    return false;
                } else {
                    MovieEditorMenuFragment.this.downloadResource(data, position);
                    return false;
                }
            }
        }
    }

    private class MyEditItemSelectChangeListener implements ItemSelectChangeListener {
        private MyEditItemSelectChangeListener() {
        }

        /* synthetic */ MyEditItemSelectChangeListener(MovieEditorMenuFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(RecyclerView parent, BaseHolder holder, int position, boolean isChanged) {
            if (MovieEditorMenuFragment.this.mEditAdapter.isAddItem(position)) {
                Intent intent;
                if (MovieEditorMenuFragment.this.mMovieInfo.isFromStory) {
                    if (MovieEditorMenuFragment.this.mDeleteClicked) {
                        MovieEditorMenuFragment.this.mMenuFragmentListener.updateStorySha1Data();
                        MovieEditorMenuFragment.this.mDeleteClicked = false;
                    }
                    intent = new Intent(MovieEditorMenuFragment.this.getActivity(), MovieStoryPickActivity.class);
                    intent.putExtra("card_id", MovieEditorMenuFragment.this.mStoryMovieCardId);
                    intent.putStringArrayListExtra("pick_sha1", MovieEditorMenuFragment.this.mMenuFragmentListener.getStoryMovieSha1());
                    intent.putExtra("pick-upper-bound", 20);
                    intent.putExtra("pick-lower-bound", 3);
                    MovieEditorMenuFragment.this.startActivityForResult(intent, 1);
                } else if (MovieEditorMenuFragment.this.mEditAdapter.getListSize() >= 20) {
                    ToastUtils.makeText(MovieEditorMenuFragment.this.getActivity(), (int) R.string.movie_add_disable);
                } else {
                    intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.setType("image/*");
                    intent.putExtra("pick-upper-bound", 20 - MovieEditorMenuFragment.this.mEditAdapter.getList().size());
                    intent.setPackage("com.miui.gallery");
                    MovieEditorMenuFragment.this.startActivityForResult(intent, 7);
                }
            } else if (isChanged) {
                ScrollControlLinearLayoutManager.onItemClick(parent, position);
                MovieEditorMenuFragment.this.mMenuFragmentListener.seekToIndex(position);
                MovieEditorMenuFragment.this.mMenuFragmentListener.setDeleteVisible(true);
                return true;
            }
            return false;
        }
    }

    private class MyTemplateItemSelectChangeListener implements ItemSelectChangeListener {
        private MyTemplateItemSelectChangeListener() {
        }

        /* synthetic */ MyTemplateItemSelectChangeListener(MovieEditorMenuFragment x0, AnonymousClass1 x1) {
            this();
        }

        public boolean onItemSelect(RecyclerView parent, BaseHolder holder, int position, boolean isChanged) {
            if (!isChanged) {
                return false;
            }
            TemplateResource data = (TemplateResource) MovieEditorMenuFragment.this.mTemplateAdapter.getItemData(position);
            int state = data.getDownloadState();
            if (state == 17 || state == 0) {
                ScrollControlLinearLayoutManager.onItemClick(parent, position);
                MovieEditorMenuFragment.this.mAudioAdapter.setSelectedItemPosition(-1);
                MovieStatUtils.statItemChoose(data);
                MovieEditorMenuFragment.this.mMovieInfo.template = data.nameKey;
                MovieEditorMenuFragment.this.mMovieManager.setTemplate(data);
                MovieEditorMenuFragment.this.resetMovieShareData();
                MovieEditorMenuFragment.this.mMenuFragmentListener.showLoadingView();
                return true;
            } else if (state != 19 && state != 20) {
                return false;
            } else {
                MovieEditorMenuFragment.this.downloadResource(data, position);
                return false;
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        long j = 0;
        super.onCreate(savedInstanceState);
        if (this.mMovieInfo.isFromStory) {
            Bundle args = getArguments();
            if (args != null) {
                j = args.getLong("card_id", 0);
            }
            this.mStoryMovieCardId = j;
        }
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.movie_fragment_editor, container, false);
        initView(view);
        return view;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof MenuFragmentListener) {
            this.mMenuFragmentListener = (MenuFragmentListener) context;
            this.mMovieManager = this.mMenuFragmentListener.getMovieManager();
            this.mMovieInfo = this.mMenuFragmentListener.getMovieInfo();
        }
    }

    private void initView(View view) {
        this.mContext = view.getContext();
        this.mTemplateAdapter = new TemplateAdapter(this.mContext);
        this.mTemplateAdapter.setList(TemplateFactory.getLocalTemplateEntities());
        this.mRecyclerViews = new SimpleRecyclerView[3];
        this.mAudioAdapter = new AudioAdapter(this.mContext);
        this.mAudioAdapter.setList(AudioFactory.getAllLocalAudios());
        this.mEditAdapter = new EditAdapter(this.mContext);
        refreshEditAdapter();
        this.mEditAdapter.setOnActionListener(new OnActionListener() {
            public void onMove(int fromPos, int toPos) {
                MovieStatUtils.statEditorMove(MovieEditorMenuFragment.this.mMovieInfo.imageList.size());
                MovieEditorMenuFragment.this.mMovieManager.moveImage(fromPos, toPos);
            }
        });
        this.mViewPager = (ViewPager) view.findViewById(R.id.view_pager);
        this.mViewPager.setAdapter(new ControllerPagerAdapter());
        ((RadioGroup) view.findViewById(R.id.radio_group_controller)).setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup radioGroup, int checkedId) {
                boolean z = true;
                int i = 0;
                if (checkedId == R.id.radio_button_template) {
                    MovieEditorMenuFragment.this.onTabSelect(0);
                } else if (checkedId == R.id.radio_button_music) {
                    MovieEditorMenuFragment.this.onTabSelect(1);
                } else if (checkedId == R.id.radio_button_edit) {
                    MovieEditorMenuFragment.this.onTabSelect(2);
                }
                MenuFragmentListener access$300 = MovieEditorMenuFragment.this.mMenuFragmentListener;
                if (checkedId != R.id.radio_button_edit) {
                    z = false;
                }
                access$300.setShowDeleteMode(z);
                RadioGroup access$400 = MovieEditorMenuFragment.this.mDurationRadioGroup;
                if (checkedId != R.id.radio_button_template) {
                    i = 4;
                }
                access$400.setVisibility(i);
            }
        });
        this.mDurationRadioGroup = (RadioGroup) view.findViewById(R.id.duration_group_controller);
        this.mDurationRadioGroup.check(this.mMovieInfo.isShortVideo ? R.id.radio_button_video_short : R.id.radio_button_video_long);
        this.mDurationRadioGroup.setOnCheckedChangeListener(new OnCheckedChangeListener() {
            public void onCheckedChanged(RadioGroup radioGroup, int checkedId) {
                if (checkedId == R.id.radio_button_video_short) {
                    if (!MovieEditorMenuFragment.this.mIsShortVideo) {
                        MovieStatUtils.statDurationClick(MovieEditorMenuFragment.this.mMovieInfo, false, true);
                        MovieEditorMenuFragment.this.mIsShortVideo = true;
                        if (MovieEditorMenuFragment.this.mMovieInfo.changeToShortVideo()) {
                            MovieEditorMenuFragment.this.refreshEditAdapter();
                            MovieEditorMenuFragment.this.mMovieManager.resetImage(MovieEditorMenuFragment.this.mMovieInfo.imageList, true);
                        } else {
                            MovieEditorMenuFragment.this.mMovieManager.setIsShortVideo(true);
                        }
                        MovieEditorMenuFragment.this.mMovieManager.replay();
                        if (MovieEditorMenuFragment.this.mMovieInfo.isFromStory) {
                            MovieEditorMenuFragment.this.mMenuFragmentListener.updateStorySha1Data();
                        }
                    }
                } else if (checkedId == R.id.radio_button_video_long && MovieEditorMenuFragment.this.mIsShortVideo) {
                    MovieStatUtils.statDurationClick(MovieEditorMenuFragment.this.mMovieInfo, false, false);
                    MovieEditorMenuFragment.this.mIsShortVideo = false;
                    if (MovieEditorMenuFragment.this.mMovieInfo.backToLongVideo()) {
                        MovieEditorMenuFragment.this.refreshEditAdapter();
                        MovieEditorMenuFragment.this.mMovieManager.resetImage(MovieEditorMenuFragment.this.mMovieInfo.imageList, false);
                    } else {
                        MovieEditorMenuFragment.this.mMovieManager.setIsShortVideo(false);
                    }
                    MovieEditorMenuFragment.this.mMovieManager.replay();
                    if (MovieEditorMenuFragment.this.mMovieInfo.isFromStory) {
                        MovieEditorMenuFragment.this.mMenuFragmentListener.updateStorySha1Data();
                    }
                }
            }
        });
        onTabSelect(this.mCurrentTabPos);
        view.findViewById(R.id.btn_movie_save).setOnClickListener(this.mSingleClickListener);
        view.findViewById(R.id.btn_movie_return).setOnClickListener(this.mSingleClickListener);
        loadTemplate();
        loadAudio();
    }

    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!hidden) {
            if (this.mIsShortVideo != this.mMovieInfo.isShortVideo) {
                refreshEditAdapter();
                this.mDurationRadioGroup.check(this.mMovieInfo.isShortVideo ? R.id.radio_button_video_short : R.id.radio_button_video_long);
            }
            if (this.mDeleteClicked) {
                refreshEditAdapter();
                this.mDeleteClicked = false;
            }
        }
    }

    private void refreshEditAdapter() {
        this.mEditAdapter.setList(this.mMovieInfo.imageList);
        this.mEditAdapter.notifyDataSetChanged();
        this.mIsShortVideo = this.mMovieInfo.isShortVideo;
    }

    private void loadTemplate() {
        this.mTemplateResourceRequest = new TemplateResourceRequest();
        this.mTemplateResourceRequest.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                List<TemplateResource> list = response[0];
                MovieUtils.checkResourceExist(list);
                MovieEditorMenuFragment.this.refreshTemplate(list);
                String str = "MovieEditorMenuFragment";
                String str2 = "getTemplateList %d ";
                Object[] objArr = new Object[1];
                objArr[0] = Integer.valueOf(list == null ? -1 : list.size());
                Log.d(str, String.format(str2, objArr));
            }

            public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                MovieEditorMenuFragment.this.refreshTemplate(null);
                Log.e("MovieEditorMenuFragment", String.format("getTemplateList errorCode %d msg:%s", new Object[]{Integer.valueOf(errorCode.CODE), errorMessage}));
            }
        });
    }

    private void refreshTemplate(List<TemplateResource> list) {
        List<TemplateResource> templateResourceList = TemplateFactory.getLocalTemplateEntities();
        if (list != null) {
            templateResourceList.addAll(list);
        }
        this.mTemplateAdapter.setList(templateResourceList);
        if (!TextUtils.equals(this.mMovieInfo.template, "movieAssetsNormal")) {
            int selectTemplate = -1;
            int i = 0;
            while (i < templateResourceList.size()) {
                if (this.mMovieInfo.template != null && ((TemplateResource) templateResourceList.get(i)).pathKey != null && this.mMovieInfo.template.contains(((TemplateResource) templateResourceList.get(i)).pathKey)) {
                    selectTemplate = i;
                    ((TemplateResource) templateResourceList.get(i)).pathKey = this.mMovieInfo.template;
                    break;
                }
                i++;
            }
            Message.obtain(this.mHandler, 2, selectTemplate, 0).sendToTarget();
        }
    }

    private void loadAudio() {
        this.mAudioResourceRequest = new AudioResourceRequest();
        this.mAudioResourceRequest.execute(new ResponseListener() {
            public void onResponse(Object... response) {
                List<AudioResource> list = response[0];
                MovieUtils.checkResourceExist(list);
                MovieEditorMenuFragment.this.refreshAudio(list);
                String str = "MovieEditorMenuFragment";
                String str2 = "getAudioList %d ";
                Object[] objArr = new Object[1];
                objArr[0] = Integer.valueOf(list == null ? -1 : list.size());
                Log.d(str, String.format(str2, objArr));
            }

            public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                MovieEditorMenuFragment.this.refreshAudio(null);
                Log.e("MovieEditorMenuFragment", String.format("getAudioList errorCode %d msg:%s", new Object[]{Integer.valueOf(errorCode.CODE), errorMessage}));
            }
        });
    }

    private void refreshAudio(List<AudioResource> list) {
        List<AudioResource> audioResourceList = AudioFactory.getAllLocalAudios();
        if (list != null) {
            audioResourceList.addAll(1, list);
        }
        this.mAudioAdapter.setList(audioResourceList);
        this.mHandler.sendEmptyMessage(4);
    }

    private boolean checkChangeLongVideo() {
        if (this.mMovieInfo.imageList.size() <= 5 || !this.mMovieInfo.isShortVideo) {
            return false;
        }
        return true;
    }

    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        List<ImageEntity> imageList;
        if (requestCode == 7 && resultCode == -1) {
            imageList = MovieUtils.getImageFromClipData(this.mContext, data);
            this.mMovieInfo.imageList.addAll(imageList);
            if (checkChangeLongVideo()) {
                this.mMovieInfo.discardToLongVideo();
                this.mIsShortVideo = false;
                this.mDurationRadioGroup.check(R.id.radio_button_video_long);
                ToastUtils.makeText(this.mContext, (int) R.string.movie_change_to_long_video);
                this.mMovieManager.resetImage(this.mMovieInfo.imageList, false);
                this.mMovieManager.replay();
            } else {
                this.mMovieManager.addImage(imageList);
            }
            this.mEditAdapter.setList(this.mMovieInfo.imageList);
            this.mEditAdapter.notifyDataSetChanged();
            this.mEditAdapter.setSelectedItemPosition(-1);
            resetMovieShareData();
        } else if (requestCode == 1000 && resultCode == -1) {
            String soundFilePath;
            ClipData clipData = data.getClipData();
            if (clipData == null) {
                soundFilePath = ConvertFilepathUtil.getPath(getActivity(), data.getData());
            } else {
                soundFilePath = ConvertFilepathUtil.getPath(getActivity(), clipData.getItemAt(0).getUri());
            }
            if (!TextUtils.isEmpty(soundFilePath)) {
                if (this.mMovieManager.isSupportVideo(soundFilePath)) {
                    AudioResource audioResource = new AudioResource(soundFilePath);
                    this.mMovieInfo.audio = audioResource.nameKey;
                    this.mMovieManager.setAudio(audioResource);
                    this.mAudioAdapter.setSelectedItemPosition(this.mAudioAdapter.getItemCount() - 1);
                } else {
                    ToastUtils.makeText(getActivity(), (int) R.string.video_editor_unsupport_audio_file);
                }
            }
            resetMovieShareData();
        } else if (requestCode == 1 && resultCode == -1) {
            imageList = MovieUtils.getImageFromClipData(this.mContext, data);
            this.mMovieInfo.imageList.clear();
            this.mMovieInfo.imageList.addAll(imageList);
            if (this.mMovieInfo.imageList.size() > 5) {
                if (this.mIsShortVideo) {
                    ToastUtils.makeText(this.mContext, (int) R.string.movie_change_to_long_video);
                }
                this.mMovieInfo.discardToLongVideo();
                this.mDurationRadioGroup.check(R.id.radio_button_video_long);
                this.mMovieManager.resetImage(this.mMovieInfo.imageList, false);
            } else {
                this.mMovieInfo.discardToShortVideo();
                this.mMovieManager.resetImage(this.mMovieInfo.imageList, true);
            }
            refreshEditAdapter();
            this.mEditAdapter.setSelectedItemPosition(-1);
            resetMovieShareData();
            this.mMenuFragmentListener.updateStorySha1Data();
            this.mMovieManager.replay();
        }
    }

    public void onDeleteClick() {
        if (this.mEditAdapter.getItemCount() - 1 <= 3) {
            ToastUtils.makeText(this.mContext, (int) R.string.movie_delete_disable);
            return;
        }
        int deletePos = this.mEditAdapter.getSelectedItemPosition();
        if (deletePos >= 0 && deletePos < this.mMovieInfo.imageList.size()) {
            this.mMovieInfo.imageList.remove(deletePos);
            this.mMenuFragmentListener.getMovieManager().removeImageAtIndex(deletePos);
            this.mEditAdapter.setSelectedItemPosition(-1);
            this.mEditAdapter.notifyDataSetChanged();
            resetMovieShareData();
            this.mDeleteClicked = true;
        }
    }

    public void clearEditorAdapterSelected() {
        if (isAdded()) {
            this.mEditAdapter.setSelectedItemPosition(-1);
        }
    }

    public void onResumeClick() {
        this.mEditAdapter.setSelectedItemPosition(-1);
    }

    private void onTabSelect(int position) {
        boolean z = false;
        this.mCurrentTabPos = position;
        int i = 0;
        while (i < this.mRecyclerViews.length) {
            if (this.mRecyclerViews[i] != null) {
                this.mRecyclerViews[i].setVisibility(position == i ? 0 : 4);
            }
            i++;
        }
        this.mViewPager.setCurrentItem(position);
        ViewPager viewPager = this.mViewPager;
        if (position != 2) {
            z = true;
        }
        viewPager.setClipChildren(z);
    }

    private void downloadResource(final MovieResource data, final int position) {
        MovieDownloadManager.getInstance().downloadResourceWithCheck(getActivity(), data, new MovieDownloadListener() {
            public void onCompleted(boolean success) {
                MovieStatUtils.statDownloadResult(data, success);
                data.downloadState = success ? 0 : 20;
                if (!success) {
                    ToastUtils.makeText(MovieEditorMenuFragment.this.mContext, (int) R.string.movie_download_failed);
                }
                Message.obtain(MovieEditorMenuFragment.this.mHandler, data instanceof TemplateResource ? 1 : 3, position, 0).sendToTarget();
            }

            public void onStart() {
                MovieStatUtils.statDownload(data);
                data.downloadState = 18;
                Message.obtain(MovieEditorMenuFragment.this.mHandler, data instanceof TemplateResource ? 1 : 3, position, 0).sendToTarget();
            }
        });
    }

    private void resetMovieShareData() {
        if (this.mMenuFragmentListener != null) {
            this.mMenuFragmentListener.resetShareData();
        }
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mTemplateResourceRequest != null) {
            this.mTemplateResourceRequest.cancel();
        }
        if (this.mAudioResourceRequest != null) {
            this.mAudioResourceRequest.cancel();
        }
        MovieDownloadManager.getInstance().cancelAll();
    }

    public Animator onCreateAnimator(int transit, boolean enter, int nextAnim) {
        ObjectAnimator anim = new ObjectAnimator();
        int animalOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.movie_controller_height);
        PropertyValuesHolder y;
        if (enter) {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) animalOffset, 0.0f});
            anim.setValues(new PropertyValuesHolder[]{y});
            anim.setInterpolator(new QuarticEaseOutInterpolator());
            anim.setStartDelay((long) getResources().getInteger(R.integer.movie_editor_appear_delay));
            anim.setDuration((long) getResources().getInteger(R.integer.movie_editor_appear_duration));
            getView().setAlpha(0.0f);
            anim.addListener(new AnimatorListenerAdapter() {
                public void onAnimationStart(Animator animation) {
                    MovieEditorMenuFragment.this.getView().setAlpha(1.0f);
                }
            });
        } else {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, (float) animalOffset});
            anim.setValues(new PropertyValuesHolder[]{y});
            anim.setInterpolator(new QuarticEaseOutInterpolator());
            anim.setDuration((long) getResources().getInteger(R.integer.movie_editor_disappear_duration));
        }
        return anim;
    }
}
