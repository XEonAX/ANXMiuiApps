package com.miui.gallery.movie.ui.fragment;

import android.app.Activity;
import android.app.Dialog;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;
import com.miui.gallery.R;
import com.miui.gallery.movie.core.MovieManager;
import com.miui.gallery.movie.core.MovieManager.EncodeStateInterface;
import com.miui.gallery.movie.entity.MovieInfo;
import com.miui.gallery.movie.ui.listener.IShareDataCallback;
import com.miui.gallery.movie.utils.MovieStatUtils;
import com.miui.gallery.movie.utils.MovieStorage;
import com.miui.gallery.scanner.MediaScanner;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.MediaStoreUtils;
import com.miui.gallery.util.ToastUtils;
import com.miui.gallery.widget.GalleryDialogFragment;
import java.io.File;
import miui.app.ProgressDialog;

public class MovieSavingFragment extends GalleryDialogFragment {
    private long mLastBackPressedTime;
    private OnSavingFinishListener mOnSavingFinishListener;
    private ProgressDialog mProgressDialog;
    private IShareDataCallback mShareCallback;

    public interface OnSavingFinishListener {
        void onFinish(boolean z, boolean z2, String str);
    }

    public Dialog onCreateDialog(Bundle savedInstanceState) {
        this.mProgressDialog = new ProgressDialog(getActivity());
        this.mProgressDialog.setMessage(getResources().getString(R.string.movie_saving));
        this.mProgressDialog.setProgressStyle(1);
        this.mProgressDialog.setIndeterminate(false);
        this.mProgressDialog.setMax(100);
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setOnKeyListener(new OnKeyListener() {
            public boolean onKey(DialogInterface anInterface, int keyCode, KeyEvent event) {
                if (keyCode == 4 && event.getAction() == 0) {
                    return MovieSavingFragment.this.backPress();
                }
                return false;
            }
        });
        setCancelable(false);
        return this.mProgressDialog;
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        if (context instanceof IShareDataCallback) {
            this.mShareCallback = (IShareDataCallback) context;
        }
    }

    public void onDetach() {
        super.onDetach();
        this.mShareCallback = null;
        this.mOnSavingFinishListener = null;
    }

    public void setProgress(int progress) {
        this.mProgressDialog.setProgress(progress);
    }

    private boolean backPress() {
        long now = System.currentTimeMillis();
        if (now - this.mLastBackPressedTime > 3000) {
            this.mLastBackPressedTime = now;
            Toast.makeText(getActivity(), getString(R.string.movie_save_stop_tips), 0).show();
        } else {
            if (this.mShareCallback != null) {
                this.mShareCallback.cancelExport();
            }
            dismissSafely();
        }
        return true;
    }

    public void show(Activity activity, MovieManager movieManager, MovieInfo movieInfo, boolean isPreviewPager, OnSavingFinishListener onSavingFinishListener) {
        MovieStatUtils.statSaveClick(isPreviewPager, movieInfo);
        final Context context = activity.getApplicationContext();
        this.mOnSavingFinishListener = onSavingFinishListener;
        doSaving(context, activity.getFragmentManager(), movieManager, new OnSavingFinishListener() {
            public void onFinish(boolean success, boolean isCancel, String outFile) {
                if (success) {
                    if (MovieSavingFragment.this.mOnSavingFinishListener != null) {
                        MovieSavingFragment.this.mOnSavingFinishListener.onFinish(success, isCancel, outFile);
                    }
                    ToastUtils.makeText(context, (int) R.string.movie_save_successfully, 0);
                } else if (!isCancel) {
                    ToastUtils.makeText(context, (int) R.string.movie_save_failed, 0);
                }
                MovieStatUtils.statSaveResult(success ? "0" : "-1");
            }
        });
    }

    public void showAndShare(Activity activity, MovieManager movieManager, MovieInfo movieInfo) {
        MovieStatUtils.statShareClick(movieInfo);
        final Context context = activity.getApplicationContext();
        doSaving(context, activity.getFragmentManager(), movieManager, new OnSavingFinishListener() {
            public void onFinish(boolean success, boolean isCancel, String outFile) {
                if (success) {
                    ToastUtils.makeText(context, (int) R.string.movie_save_successfully, 0);
                    if (MovieSavingFragment.this.mShareCallback != null) {
                        MovieSavingFragment.this.mShareCallback.handleShareEvent(outFile);
                    }
                } else if (!isCancel) {
                    ToastUtils.makeText(context, (int) R.string.movie_save_failed, 0);
                }
            }
        });
    }

    private void doSaving(Context context, FragmentManager fragmentManager, MovieManager movieManager, OnSavingFinishListener onSavingFinishListener) {
        final String tempFilePath = MovieStorage.getTempFilePath();
        final FragmentManager fragmentManager2 = fragmentManager;
        final Context context2 = context;
        final OnSavingFinishListener onSavingFinishListener2 = onSavingFinishListener;
        movieManager.export(tempFilePath, new EncodeStateInterface() {
            public void onEncodeStart() {
                Log.d("MovieSavingFragment", "save start");
                if (!MovieSavingFragment.this.isAdded()) {
                    MovieSavingFragment.this.showAllowingStateLoss(fragmentManager2, "MovieSavingFragment");
                }
            }

            public void onEncodeProgress(int progress) {
                MovieSavingFragment.this.setProgress(progress);
            }

            public void onEncodeEnd(final boolean success, final boolean isCancel, int errorCode) {
                Log.d("MovieSavingFragment", "save result: %b,code: %d,path: %s", Boolean.valueOf(success), Integer.valueOf(errorCode), tempFilePath);
                if (success) {
                    ThreadManager.getMiscPool().submit(new Job<String>() {
                        public String run(JobContext jc) {
                            String outFilePath = MovieStorage.getOutputMediaFilePath();
                            FileUtils.move(new File(tempFilePath), new File(outFilePath));
                            MediaScanner.scanSingleFile(context2, outFilePath);
                            MediaStoreUtils.insert(context2, outFilePath, 2);
                            return outFilePath;
                        }
                    }, new FutureHandler<String>() {
                        public void onPostExecute(Future<String> future) {
                            MovieSavingFragment.this.dismissSafely();
                            if (onSavingFinishListener2 != null) {
                                onSavingFinishListener2.onFinish(success, isCancel, (String) future.get());
                            }
                        }
                    });
                    return;
                }
                MovieSavingFragment.this.dismissSafely();
                if (onSavingFinishListener2 != null) {
                    onSavingFinishListener2.onFinish(success, isCancel, null);
                }
            }
        });
    }
}
