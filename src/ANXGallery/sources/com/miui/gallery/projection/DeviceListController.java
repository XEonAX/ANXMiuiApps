package com.miui.gallery.projection;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import miui.R;
import miui.app.AlertDialog;
import miui.app.AlertDialog.Builder;
import miui.app.ProgressDialog;

public class DeviceListController implements OnClickListener {
    public static String MOBILE_NAME;
    private int mActiveDeviceIndex = -1;
    private Activity mActivity;
    private DeviceSelectorAdapter mDeviceAdapter;
    private ArrayList<String> mDeviceList = new ArrayList();
    private AlertDialog mDeviceListDialog;
    private AlertDialog mDeviceNotFoundDialog;
    private ProgressDialog mDeviceScanDialog;
    private OnItemClickListener mItemClickListener;
    private AtomicBoolean mNeedShowDeviceList = new AtomicBoolean(false);
    private Runnable mScanTimeoutRunnable = new Runnable() {
        public void run() {
            DeviceListController.this.dismissSafely(DeviceListController.this.mDeviceScanDialog);
            if (!DeviceListController.this.hasAirkanDevice()) {
                DeviceListController.this.showDeviceNotFoundDialog();
            }
        }
    };

    private static class DeviceSelectorAdapter extends BaseAdapter {
        private ArrayList<String> mDeviceList;
        private LayoutInflater mLayoutInflater;

        public DeviceSelectorAdapter(Context context, ArrayList<String> deviceList) {
            this.mDeviceList = deviceList;
            this.mLayoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public int getCount() {
            return this.mDeviceList != null ? this.mDeviceList.size() : 0;
        }

        public String getItem(int position) {
            return (this.mDeviceList == null || position >= this.mDeviceList.size()) ? null : (String) this.mDeviceList.get(position);
        }

        public long getItemId(int position) {
            return (long) position;
        }

        public View getView(int position, View convertView, ViewGroup parent) {
            if (convertView == null) {
                convertView = this.mLayoutInflater.inflate(R.layout.select_dialog_singlechoice, parent, false);
            }
            ((TextView) convertView.findViewById(16908308)).setText(getItem(position));
            return convertView;
        }
    }

    public interface OnItemClickListener {
        void onItemClicked(String str);
    }

    public DeviceListController(Activity activity) {
        this.mActivity = activity;
        MOBILE_NAME = activity.getString(com.miui.gallery.R.string.projection_local_mobile);
    }

    public void setOnItemClickListener(OnItemClickListener listener) {
        this.mItemClickListener = listener;
    }

    public synchronized boolean hasAirkanDevice() {
        return this.mDeviceList.size() > 0;
    }

    public synchronized void addNewDevice(String deviceName, boolean isActive) {
        ThreadManager.getMainHandler().removeCallbacks(this.mScanTimeoutRunnable);
        if (!this.mDeviceList.contains(deviceName)) {
            this.mDeviceList.add(deviceName);
            if (this.mDeviceScanDialog != null && this.mDeviceScanDialog.isShowing()) {
                this.mDeviceScanDialog.dismiss();
            }
            if (isActive) {
                this.mActiveDeviceIndex = this.mDeviceList.size() - 1;
            }
            invalidate();
        }
    }

    public synchronized boolean refreshDevices(ArrayList<String> devices, String curDevice) {
        boolean toggleActive;
        int i;
        boolean[] findInOldDeviceList = new boolean[devices.size()];
        for (i = 0; i < devices.size(); i++) {
            findInOldDeviceList[i] = false;
        }
        for (i = 0; i < this.mDeviceList.size(); i++) {
            String item = (String) this.mDeviceList.get(i);
            boolean shouldRemoveDevice = true;
            for (int newIndex = 0; newIndex < devices.size(); newIndex++) {
                if (TextUtils.equals(item, (CharSequence) devices.get(newIndex))) {
                    findInOldDeviceList[newIndex] = true;
                    shouldRemoveDevice = false;
                    break;
                }
            }
            if (shouldRemoveDevice) {
                removeDevice(item);
            }
        }
        toggleActive = false;
        for (i = 0; i < devices.size(); i++) {
            if (!findInOldDeviceList[i]) {
                boolean isActive = TextUtils.equals((CharSequence) devices.get(i), curDevice);
                addNewDevice((String) devices.get(i), isActive);
                if (isActive) {
                    toggleActive = true;
                }
            }
        }
        if (curDevice != null) {
            int index = this.mDeviceList.indexOf(curDevice);
            if (!(index == -1 || this.mActiveDeviceIndex == index)) {
                this.mActiveDeviceIndex = index;
            }
        } else if (isActive()) {
            this.mActiveDeviceIndex = -1;
            toggleActive = true;
        }
        return toggleActive;
    }

    public synchronized boolean removeDevice(String deviceName) {
        boolean ret;
        int deviceCount = this.mDeviceList.size();
        ret = false;
        int index = 0;
        while (index < deviceCount) {
            if (((String) this.mDeviceList.get(index)).equals(deviceName)) {
                this.mDeviceList.remove(deviceName);
                if (this.mActiveDeviceIndex == index) {
                    this.mActiveDeviceIndex = -1;
                    ret = true;
                }
                invalidate();
            } else {
                index++;
            }
        }
        return ret;
    }

    public void removeActive() {
        if (this.mActiveDeviceIndex != -1) {
            Log.v("grap_device_bar", "~~~~remove the active for device");
            this.mActiveDeviceIndex = -1;
        }
    }

    private void showDeviceListDialog() {
        int i = com.miui.gallery.R.string.projection_stop;
        if (activityAlive()) {
            if (this.mDeviceListDialog == null) {
                if (this.mDeviceAdapter == null) {
                    this.mDeviceAdapter = new DeviceSelectorAdapter(this.mActivity, this.mDeviceList);
                }
                Builder onCancelListener = new Builder(this.mActivity).setTitle(com.miui.gallery.R.string.projection_multi_title).setSingleChoiceItems(this.mDeviceAdapter, this.mActiveDeviceIndex, this).setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialog) {
                        DeviceListController.this.mNeedShowDeviceList.set(false);
                    }
                });
                if (!isActive()) {
                    i = com.miui.gallery.R.string.projection_cancel;
                }
                this.mDeviceListDialog = onCancelListener.setNegativeButton(i, new OnClickListener() {
                    public void onClick(DialogInterface dialog, int which) {
                        if (DeviceListController.this.isActive()) {
                            DeviceListController.this.switchTo(-1);
                        }
                    }
                }).create();
            } else {
                Button button = this.mDeviceListDialog.getButton(-2);
                if (!isActive()) {
                    i = com.miui.gallery.R.string.projection_cancel;
                }
                button.setText(i);
            }
            if (!this.mDeviceListDialog.isShowing()) {
                this.mDeviceListDialog.show();
            }
            ListView listView = this.mDeviceListDialog.getListView();
            listView.setItemChecked(this.mActiveDeviceIndex, true);
            listView.setSelection(this.mActiveDeviceIndex);
        }
    }

    private boolean isActive() {
        return this.mActiveDeviceIndex != -1;
    }

    private void showDeviceNotFoundDialog() {
        if (activityAlive()) {
            if (this.mDeviceNotFoundDialog == null) {
                this.mDeviceNotFoundDialog = new Builder(this.mActivity).setTitle(com.miui.gallery.R.string.cast_devices_unavailable_title).setMessage(com.miui.gallery.R.string.cast_devices_unavailable_desc).setCancelable(true).setPositiveButton(com.miui.gallery.R.string.have_known, null).setOnDismissListener(new OnDismissListener() {
                    public void onDismiss(DialogInterface dialog) {
                        DeviceListController.this.mNeedShowDeviceList.set(false);
                    }
                }).create();
            }
            this.mDeviceNotFoundDialog.show();
        }
    }

    public synchronized void show() {
        dismiss();
        this.mNeedShowDeviceList.set(true);
        if (BaseMiscUtil.isValid(this.mDeviceList)) {
            showDeviceListDialog();
        } else {
            if (!ConnectController.getInstance().isOpen()) {
                ConnectController.getInstance().open();
            }
            showScanDialog();
        }
    }

    private void showScanDialog() {
        if (activityAlive()) {
            if (this.mDeviceScanDialog == null) {
                this.mDeviceScanDialog = new ProgressDialog(this.mActivity);
                this.mDeviceScanDialog.setIndeterminate(true);
                this.mDeviceScanDialog.setMessage(this.mActivity.getString(com.miui.gallery.R.string.searching_cast_devices));
                this.mDeviceScanDialog.setCancelable(true);
                this.mDeviceScanDialog.setCanceledOnTouchOutside(false);
                this.mDeviceScanDialog.setOnCancelListener(new OnCancelListener() {
                    public void onCancel(DialogInterface dialog) {
                        ThreadManager.getMainHandler().removeCallbacks(DeviceListController.this.mScanTimeoutRunnable);
                        DeviceListController.this.mNeedShowDeviceList.set(false);
                    }
                });
            }
            this.mDeviceScanDialog.show();
            ThreadManager.getMainHandler().removeCallbacks(this.mScanTimeoutRunnable);
            ThreadManager.getMainHandler().postDelayed(this.mScanTimeoutRunnable, 5000);
        }
    }

    public synchronized void dismiss() {
        ThreadManager.getMainHandler().removeCallbacks(this.mScanTimeoutRunnable);
        this.mNeedShowDeviceList.set(false);
        dismissSafely(this.mDeviceScanDialog);
        dismissSafely(this.mDeviceListDialog);
        dismissSafely(this.mDeviceNotFoundDialog);
    }

    private void invalidate() {
        ThreadManager.getMainHandler().removeCallbacks(this.mScanTimeoutRunnable);
        ThreadManager.runOnMainThread(new Runnable() {
            public void run() {
                if (DeviceListController.this.mDeviceAdapter != null) {
                    DeviceListController.this.mDeviceAdapter.notifyDataSetChanged();
                }
                if (!DeviceListController.this.mNeedShowDeviceList.get()) {
                    return;
                }
                if (DeviceListController.this.hasAirkanDevice()) {
                    DeviceListController.this.dismissSafely(DeviceListController.this.mDeviceScanDialog);
                    DeviceListController.this.dismissSafely(DeviceListController.this.mDeviceNotFoundDialog);
                    DeviceListController.this.showDeviceListDialog();
                    return;
                }
                DeviceListController.this.dismissSafely(DeviceListController.this.mDeviceListDialog);
                if (DeviceListController.this.mDeviceNotFoundDialog == null || !DeviceListController.this.mDeviceNotFoundDialog.isShowing()) {
                    DeviceListController.this.showDeviceNotFoundDialog();
                }
            }
        });
    }

    public void onClick(DialogInterface dialog, int which) {
        switchTo(which);
    }

    private synchronized void switchTo(int which) {
        if (this.mItemClickListener != null) {
            if (which >= this.mDeviceList.size()) {
                dismissSafely(this.mDeviceListDialog);
            } else if (this.mActiveDeviceIndex == which) {
                dismissSafely(this.mDeviceListDialog);
            } else {
                this.mActiveDeviceIndex = which;
                this.mItemClickListener.onItemClicked(this.mActiveDeviceIndex == -1 ? MOBILE_NAME : (String) this.mDeviceList.get(this.mActiveDeviceIndex));
            }
        }
    }

    private boolean activityAlive() {
        return (this.mActivity == null || this.mActivity.isDestroyed() || this.mActivity.isFinishing()) ? false : true;
    }

    private void dismissSafely(Dialog dialog) {
        if (dialog != null && dialog.isShowing()) {
            dialog.dismiss();
        }
    }
}
