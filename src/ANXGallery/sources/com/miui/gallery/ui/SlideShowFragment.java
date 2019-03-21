package com.miui.gallery.ui;

import android.app.LoaderManager.LoaderCallbacks;
import android.content.Loader;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.activity.BaseActivity;
import com.miui.gallery.adapter.SlideShowAdapter;
import com.miui.gallery.adapter.SlideShowAdapter.ShowItem;
import com.miui.gallery.loader.PhotoLoaderManager;
import com.miui.gallery.model.BaseDataItem;
import com.miui.gallery.model.BaseDataSet;
import com.miui.gallery.model.ImageLoadParams;
import com.miui.gallery.preference.GalleryPreferences.SlideShow;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureListener;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SystemUiUtil;
import com.miui.gallery.widget.SlideShowView;
import com.nexstreaming.nexeditorsdk.nexProject;

public class SlideShowFragment extends BaseFragment {
    private SlideShowAdapter mAdapter;
    private int mLoadDuration = nexProject.kAutoThemeTransitionDuration;
    private SlideLoaderCallBack mLoaderCallBack;
    private Handler mSlideHandler = new Handler() {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    SlideShowFragment.this.loadNextBitmap();
                    return;
                case 2:
                    SlideShowFragment.this.showPendingItem(msg.obj == null ? null : (ShowItem) msg.obj);
                    return;
                default:
                    return;
            }
        }
    };
    private SlideShowView mSlideView;

    private class SlideLoaderCallBack implements LoaderCallbacks {
        private SlideLoaderCallBack() {
        }

        /* synthetic */ SlideLoaderCallBack(SlideShowFragment x0, AnonymousClass1 x1) {
            this();
        }

        public Loader onCreateLoader(int id, Bundle args) {
            return PhotoLoaderManager.getInstance().getPhotoDataSet(SlideShowFragment.this.getActivity(), Uri.parse(args.getString("photo_uri")), args);
        }

        public void onLoadFinished(Loader loader, Object data) {
            int index;
            BaseDataSet set = (BaseDataSet) data;
            if (SlideShowFragment.this.mAdapter.getShowIndex() == 0) {
                index = SlideShowFragment.this.getArguments().getInt("photo_init_position", 0);
            } else {
                index = SlideShowFragment.this.mAdapter.getShowIndex();
            }
            SlideShowFragment.this.mAdapter.changeDataSet(set, index);
        }

        public void onLoaderReset(Loader loader) {
        }
    }

    public static void showSlideShowFragment(BaseActivity activity, Bundle arguments) {
        SlideShowFragment fragment = new SlideShowFragment();
        fragment.setArguments(arguments);
        activity.startFragment(fragment, null, true, false);
    }

    public View onInflateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.slide_show_page, container, false);
        this.mSlideView = (SlideShowView) view.findViewById(R.id.slide);
        this.mAdapter = new SlideShowAdapter((ImageLoadParams) getArguments().getParcelable("photo_transition_data"), getArguments().getInt("photo_init_position", 0));
        this.mSlideView.setSlideDuration(getSlideDuration());
        this.mSlideView.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                if (event.getAction() == 1 && SlideShowFragment.this.isResumed()) {
                    SlideShowFragment.this.finish();
                }
                return true;
            }
        });
        return view;
    }

    protected int getThemeRes() {
        return 0;
    }

    private int getSlideDuration() {
        int slideDuration = Math.max(3500, SlideShow.getSlideShowInterval() * 1000);
        this.mLoadDuration = slideDuration - 500;
        return slideDuration;
    }

    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        this.mLoaderCallBack = new SlideLoaderCallBack(this, null);
        getLoaderManager().initLoader("SlideShowFragment".hashCode(), getArguments(), this.mLoaderCallBack);
    }

    public void onStart() {
        super.onStart();
        if (this.mActivity.getWindow() != null) {
            this.mActivity.getWindow().addFlags(128);
        }
        this.mAdapter.resume();
        loadNextBitmap();
    }

    public void onPause() {
        super.onPause();
        SystemUiUtil.showSystemBars(getActivity().getWindow().getDecorView());
    }

    public void onResume() {
        super.onResume();
        SystemUiUtil.hideSystemBars(getActivity().getWindow().getDecorView());
    }

    public void onStop() {
        super.onStop();
        if (this.mActivity.getWindow() != null) {
            this.mActivity.getWindow().clearFlags(128);
        }
        this.mAdapter.pause();
        this.mSlideView.release();
        this.mSlideHandler.removeCallbacksAndMessages(null);
    }

    public String getPageName() {
        return "slide_show";
    }

    private void showPendingItem(ShowItem item) {
        if (item != null && item.isValid()) {
            this.mSlideView.next(item.getBitmap(), 0);
            setResult(item);
            this.mSlideHandler.sendEmptyMessageDelayed(1, (long) this.mLoadDuration);
        } else if (isAdded() && isResumed()) {
            finish();
        }
    }

    private void setResult(ShowItem item) {
        Log.i("SlideShowFragment", "setResult %d", Integer.valueOf(item.getIndex()));
        BaseDataItem dataItem = this.mAdapter.getBaseDataItem(item.getIndex());
        if (dataItem != null) {
            getArguments().putParcelable("photo_transition_data", new ImageLoadParams(dataItem.getKey(), dataItem.getPathDisplayBetter(), ThumbConfig.get().sMicroTargetSize, null, item.getIndex(), dataItem.getMimeType(), dataItem.getSecretKey(), -1));
        }
        getArguments().putInt("photo_init_position", item.getIndex());
        getArguments().putInt("photo_count", this.mAdapter.getCount());
    }

    private void loadNextBitmap() {
        this.mAdapter.nextBitmap(new FutureListener<ShowItem>() {
            public void onFutureDone(Future<ShowItem> future) {
                if (!future.isCancelled()) {
                    SlideShowFragment.this.mSlideHandler.obtainMessage(2, future.get()).sendToTarget();
                }
            }
        });
    }
}
