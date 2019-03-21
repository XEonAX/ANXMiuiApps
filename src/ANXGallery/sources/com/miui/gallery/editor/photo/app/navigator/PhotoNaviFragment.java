package com.miui.gallery.editor.photo.app.navigator;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.R;
import com.miui.gallery.cloud.NetworkUtils;
import com.miui.gallery.editor.photo.app.AbstractNaviFragment;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.module.GalleryModuleManager;
import com.miui.gallery.module.GalleryModuleManager.ModuleLoadListener;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import java.util.List;

public class PhotoNaviFragment extends AbstractNaviFragment {
    private Adapter mAdapter;
    private Dialog mDialog;
    private SimpleRecyclerView mNavigator;
    private OnItemClickListener mOnItemSelectedListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            final NavigatorData navigatorData = (NavigatorData) PhotoNaviFragment.this.getNaviData().get(position);
            if (navigatorData.isPlugin) {
                GalleryModuleManager moduleManager = GalleryModuleManager.getInstance();
                if (!moduleManager.isModuleLoaded(navigatorData.pluginModuleName)) {
                    String effectName = PhotoNaviFragment.this.getString(navigatorData.name);
                    if (moduleManager.isModuleLoading(navigatorData.pluginModuleName)) {
                        ToastUtils.makeText(PhotoNaviFragment.this.getActivity(), PhotoNaviFragment.this.getString(R.string.photo_editor_navigator_module_downloading, new Object[]{effectName}));
                    } else if (!NetworkUtils.isNetworkConnected()) {
                        ToastUtils.makeText(PhotoNaviFragment.this.getActivity(), PhotoNaviFragment.this.getString(R.string.photo_editor_navigator_need_download, new Object[]{effectName}));
                    } else if (NetworkUtils.isActiveNetworkMetered()) {
                        PhotoNaviFragment.this.showDialog(PhotoNaviFragment.this.getString(R.string.photo_editor_navigator_download_network_metered_title), PhotoNaviFragment.this.getString(R.string.photo_editor_navigator_download_network_metered_msg, new Object[]{effectName}), R.string.photo_editor_navigator_module_download_now, R.string.photo_editor_navigator_module_download_wait_wlan, new OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                if (!GalleryModuleManager.getInstance().isModuleLoaded(navigatorData.pluginModuleName)) {
                                    PhotoNaviFragment.this.loadEffectModule(navigatorData, false, true);
                                }
                            }
                        }, null);
                    } else {
                        PhotoNaviFragment.this.loadEffectModule(navigatorData, false, true);
                        ToastUtils.makeText(PhotoNaviFragment.this.getActivity(), PhotoNaviFragment.this.getString(R.string.photo_editor_navigator_module_downloading, new Object[]{effectName}));
                    }
                    return true;
                }
            }
            PhotoNaviFragment.this.notifyNavigate(navigatorData.effect);
            return true;
        }
    };

    private static final class Adapter extends com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.Adapter<NavigatorHolder> {
        private List<NavigatorData> mNavigatorData;

        public Adapter(List<NavigatorData> data) {
            this.mNavigatorData = data;
        }

        public NavigatorHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return new NavigatorHolder(getInflater().inflate(R.layout.navigator_item, parent, false));
        }

        public void onBindViewHolder(NavigatorHolder holder, int position) {
            super.onBindViewHolder(holder, position);
            holder.bind((NavigatorData) this.mNavigatorData.get(position));
        }

        public int getItemCount() {
            return this.mNavigatorData.size();
        }
    }

    private static class EffectModuleLoadListener implements ModuleLoadListener {
        private NavigatorData mNavigatorData;
        private boolean mNotifyResult;

        public EffectModuleLoadListener(NavigatorData navigatorData, boolean notifyResult) {
            this.mNavigatorData = navigatorData;
            this.mNotifyResult = notifyResult;
        }

        public void onLoadSuccess() {
            Log.d("PhotoNaviFragment", "Module %s load success", this.mNavigatorData.pluginModuleName);
        }

        public void onLoadFailed() {
            Log.w("PhotoNaviFragment", "Module %s load failed. Notify result %s", this.mNavigatorData.pluginModuleName, Boolean.valueOf(this.mNotifyResult));
            if (this.mNotifyResult) {
                Context context = GalleryApp.sGetAndroidContext();
                ToastUtils.makeText(context, context.getResources().getString(R.string.photo_editor_navigator_module_download_failed, new Object[]{context.getResources().getString(this.mNavigatorData.name)}));
            }
        }
    }

    private static final class NavigatorHolder extends ViewHolder {
        private TextView mView;

        public NavigatorHolder(View itemView) {
            super(itemView);
            this.mView = (TextView) itemView.findViewById(R.id.label);
        }

        void bind(NavigatorData data) {
            this.mView.setCompoundDrawablesWithIntrinsicBounds(0, data.icon, 0, 0);
            this.mView.setText(data.name);
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        checkAndLoadEffectModule();
    }

    protected View onCreateNavigator(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.photo_navigator, container, false);
    }

    protected void onNavigatorCreated(View view, Bundle savedInstanceState) {
        super.onNavigatorCreated(view, savedInstanceState);
        this.mNavigator = (SimpleRecyclerView) view.findViewById(R.id.navigator);
        this.mAdapter = new Adapter(getNaviData());
        this.mNavigator.setAdapter(this.mAdapter);
        this.mAdapter.setOnItemClickListener(this.mOnItemSelectedListener);
        int hInterval = (int) getResources().getDimension(R.dimen.photo_editor_navigator_left_margin);
        this.mNavigator.addItemDecoration(new BlankDivider((int) getResources().getDimension(R.dimen.photo_editor_navigator_start_margin), hInterval, hInterval, 0, 0, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(this.mNavigator);
    }

    public void onDestroyView() {
        super.onDestroyView();
        getView().findViewById(R.id.export).setOnClickListener(null);
        getView().findViewById(R.id.discard).setOnClickListener(null);
    }

    public void onDestroy() {
        super.onDestroy();
        if (this.mDialog != null) {
            this.mDialog.dismiss();
            this.mDialog = null;
        }
    }

    private void showDialog(String title, String msg, int positiveButtonTextId, int negativeButtonTextId, OnClickListener positiveButtonListener, OnClickListener negativeButtonListener) {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
        }
        this.mDialog = new Builder(getActivity()).setTitle(title).setMessage(msg).setPositiveButton(positiveButtonTextId, positiveButtonListener).setNegativeButton(negativeButtonTextId, negativeButtonListener).create();
        this.mDialog.show();
    }

    private void checkAndLoadEffectModule() {
        GalleryModuleManager moduleManager = GalleryModuleManager.getInstance();
        for (NavigatorData navigatorData : getNaviData()) {
            if (navigatorData.isPlugin) {
                String moduleName = navigatorData.pluginModuleName;
                if (!(moduleManager.isModuleLoaded(moduleName) || moduleManager.isModuleLoading(moduleName))) {
                    boolean z = !NetworkUtils.isNetworkConnected() || NetworkUtils.isActiveNetworkMetered();
                    loadEffectModule(navigatorData, z, false);
                }
            }
        }
    }

    private void loadEffectModule(final NavigatorData navigatorData, final boolean localOnly, final boolean notifyResult) {
        ThreadManager.getMiscPool().submit(new Job<Object>() {
            public Object run(JobContext jc) {
                Log.d("PhotoNaviFragment", "Module %s load start", navigatorData.pluginModuleName);
                GalleryModuleManager.getInstance().loadModule(localOnly, new EffectModuleLoadListener(navigatorData, notifyResult), navigatorData.pluginModuleName);
                return null;
            }
        });
    }
}
