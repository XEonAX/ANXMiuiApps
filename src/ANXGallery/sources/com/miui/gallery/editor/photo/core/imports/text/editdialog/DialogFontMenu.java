package com.miui.gallery.editor.photo.core.imports.text.editdialog;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.core.imports.text.TextFontConfig;
import com.miui.gallery.editor.photo.core.imports.text.TextFragment.DialogStatusData;
import com.miui.gallery.editor.photo.core.imports.text.editdialog.TextEditDialog.ConfigChangeListener;
import com.miui.gallery.editor.photo.core.imports.text.typeface.DownloadCallback;
import com.miui.gallery.editor.photo.core.imports.text.typeface.FontDownloadManager;
import com.miui.gallery.editor.photo.core.imports.text.typeface.FontResourceRequest;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TextStyle;
import com.miui.gallery.editor.photo.core.imports.text.typeface.TypeFaceAdapter;
import com.miui.gallery.editor.photo.core.imports.text.utils.TextTools;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.net.base.ErrorCode;
import com.miui.gallery.net.base.ResponseListener;
import com.miui.gallery.threadpool.Future;
import com.miui.gallery.threadpool.FutureHandler;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.FileUtils;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class DialogFontMenu extends DialogSubMenu<ConfigChangeListener, DialogStatusData> {
    private TextStyle mCurrentTextStyle;
    private FontDownloadManager mFontDownloadManager;
    private FontResourceRequest mFontRequest;
    private DialogStatusData mInitializeData;
    private SimpleRecyclerView mRecyclerView;
    private List<TextStyle> mTextStyles;
    private TypeFaceAdapter mTypeFaceAdapter;
    private boolean mTypeFaceInited = false;
    private ViewGroup mWholeView;

    DialogFontMenu(Context context, ViewGroup parent, ConfigChangeListener configChangeListener) {
        super(context, parent, R.string.text_edit_dialog_font, R.drawable.text_edit_dialog_tab_icon_font);
        this.mListener = configChangeListener;
    }

    ViewGroup initSubMenuView(Context context, ViewGroup parent) {
        this.mWholeView = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.text_edit_dialog_options_font_panel, parent, false);
        this.mRecyclerView = (SimpleRecyclerView) this.mWholeView.findViewById(R.id.text_edit_dialog_tab_font_recycler);
        TextFontConfig.init(context);
        initTypeFace();
        this.mTypeFaceAdapter = new TypeFaceAdapter(context, this.mTextStyles);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(context));
        this.mRecyclerView.setAdapter(this.mTypeFaceAdapter);
        this.mTypeFaceAdapter.setOnItemClickListener(new OnItemClickListener() {
            public boolean OnItemClick(RecyclerView recyclerView, View child, int position) {
                DialogFontMenu.this.mCurrentTextStyle = (TextStyle) DialogFontMenu.this.mTextStyles.get(position);
                if (DialogFontMenu.this.mCurrentTextStyle.isLocal()) {
                    DialogFontMenu.this.mTypeFaceAdapter.setSelection(position);
                    DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
                    if (DialogFontMenu.this.mListener != null) {
                        ((ConfigChangeListener) DialogFontMenu.this.mListener).onTypefaceChange(DialogFontMenu.this.mCurrentTextStyle);
                    }
                } else if (DialogFontMenu.this.mCurrentTextStyle.isExtra()) {
                    if (DialogFontMenu.this.mCurrentTextStyle.isNeedDownload()) {
                        DialogFontMenu.this.downloadResource(child.getContext(), DialogFontMenu.this.mCurrentTextStyle);
                    } else if (DialogFontMenu.this.mCurrentTextStyle.isDownloaded()) {
                        DialogFontMenu.this.mTypeFaceAdapter.setSelection(position);
                        DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
                        if (DialogFontMenu.this.mListener != null) {
                            ((ConfigChangeListener) DialogFontMenu.this.mListener).onTypefaceChange(DialogFontMenu.this.mCurrentTextStyle);
                        }
                    }
                }
                return true;
            }
        });
        return this.mWholeView;
    }

    private void downloadResource(Context context, final TextStyle textStyle) {
        if (this.mFontDownloadManager == null) {
            this.mFontDownloadManager = new FontDownloadManager();
        }
        this.mFontDownloadManager.downloadFontResource(context, textStyle, new DownloadCallback() {
            public void onCompleted(boolean success) {
                Log.d("DialogFontMenu", "%s download is : %s", textStyle.getText(), Boolean.valueOf(success));
                if (success) {
                    ThreadManager.getMiscPool().submit(new Job<Object>() {
                        public Object run(JobContext jc) {
                            String path = textStyle.getFilePath();
                            if (FileUtils.isFileExist(path)) {
                                textStyle.setTypeFace(Typeface.createFromFile(path));
                            }
                            return null;
                        }
                    }, new FutureHandler<Object>() {
                        public void onPostExecute(Future<Object> future) {
                            textStyle.setState(0);
                            DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
                        }
                    });
                    return;
                }
                textStyle.setState(20);
                DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
            }

            public void onStart() {
                textStyle.setState(18);
                DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
            }
        });
    }

    public void initializeData(DialogStatusData initializeData) {
        this.mInitializeData = initializeData;
        if (this.mTypeFaceInited && initializeData != null) {
            Typeface typeface = initializeData.textStyle == null ? Typeface.DEFAULT : initializeData.textStyle.getTypeFace();
            if (this.mTypeFaceAdapter != null) {
                for (int i = 0; i < this.mTextStyles.size(); i++) {
                    if (isEquals(typeface, ((TextStyle) this.mTextStyles.get(i)).getTypeFace())) {
                        this.mTypeFaceAdapter.setSelection(i);
                        this.mTypeFaceAdapter.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    private void initTypeFace() {
        if (this.mTextStyles == null) {
            this.mTextStyles = new ArrayList();
        }
        if (this.mTextStyles.isEmpty()) {
            loadResourceData();
        }
    }

    private void loadResourceData() {
        if (TextTools.isZhCNLanguage()) {
            Log.d("DialogFontMenu", "loadResourceData start.");
            final long startTime = System.currentTimeMillis();
            this.mFontRequest = new FontResourceRequest();
            this.mFontRequest.execute(new ResponseListener() {
                public void onResponse(Object... response) {
                    Log.d("DialogFontMenu", "loadResourceData success, use time %s  ms", Long.valueOf(System.currentTimeMillis() - startTime));
                    List<TextStyle> list = response[0];
                    if (BaseMiscUtil.isValid(list)) {
                        DialogFontMenu.this.mTextStyles.clear();
                        DialogFontMenu.this.mTextStyles.addAll(list);
                        Collections.sort(DialogFontMenu.this.mTextStyles);
                        TextTools.checkResourceExist(DialogFontMenu.this.mTextStyles);
                        ThreadManager.runOnMainThread(new Runnable() {
                            public void run() {
                                DialogFontMenu.this.mTypeFaceInited = true;
                                DialogFontMenu.this.initializeData(DialogFontMenu.this.mInitializeData);
                            }
                        });
                    }
                }

                public void onResponseError(ErrorCode errorCode, String errorMessage, Object responseData) {
                    Log.d("DialogFontMenu", "loadResourceData error: %s, errorCode: %d", errorMessage, errorCode);
                    DialogFontMenu.this.mTextStyles.add(TextStyle.getLocalTextStyle());
                    TextTools.checkResourceExist(DialogFontMenu.this.mTextStyles);
                    ThreadManager.runOnMainThread(new Runnable() {
                        public void run() {
                            if (DialogFontMenu.this.mTypeFaceAdapter != null) {
                                DialogFontMenu.this.mTypeFaceAdapter.notifyDataSetChanged();
                            }
                        }
                    });
                }
            });
            return;
        }
        this.mTextStyles.add(TextStyle.getLocalTextStyle());
        TextTools.checkResourceExist(this.mTextStyles);
        if (this.mTypeFaceAdapter != null) {
            this.mTypeFaceAdapter.notifyDataSetChanged();
        }
    }

    public void release() {
        if (this.mFontRequest != null) {
            this.mFontRequest.cancel();
        }
        if (this.mFontDownloadManager != null) {
            this.mFontDownloadManager.cancelAll();
        }
        if (BaseMiscUtil.isValid(this.mTextStyles)) {
            for (TextStyle textStyle : this.mTextStyles) {
                if (textStyle != null) {
                    if (textStyle.isDownloading()) {
                        textStyle.setState(20);
                    }
                } else {
                    return;
                }
            }
        }
    }

    private boolean isEquals(Typeface a, Typeface b) {
        return (a == null && b == null) || (a != null && a.equals(b));
    }
}
