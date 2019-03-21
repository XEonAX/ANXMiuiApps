package com.miui.gallery.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.miui.gallery.Config.ThumbConfig;
import com.miui.gallery.R;
import com.miui.gallery.discovery.DiscoveryMessageManager;
import com.miui.gallery.discovery.RecentDiscoveryMessageOperator.RecentMessageDetail;
import com.miui.gallery.model.DiscoveryMessage;
import com.miui.gallery.model.DiscoveryMessage.BaseMessageDetail;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.ui.HomePageTopBarController.HomePageBar;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import com.miui.gallery.widget.PanelItemLayout;
import com.miui.gallery.widget.PanelManager;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import com.nostra13.universalimageloader.core.imageaware.ImageAware;
import com.nostra13.universalimageloader.core.imageaware.ImageViewAware;
import java.util.HashMap;
import java.util.List;

public class DiscoveryBar extends HomePageBar implements OnClickListener {
    private boolean mDiscoveryMessageClicked;
    private boolean mDiscoveryMessageShown;
    private List<DiscoveryMessage> mMessages;
    private PanelItemLayout mPanelItem;

    public DiscoveryBar(Context context, int priority, PanelManager manager) {
        super(context, priority, manager);
    }

    private void ensureView() {
        if (this.mPanelItem == null) {
            this.mPanelItem = new PanelItemLayout(getContext());
            this.mPanelItem.setOnClickListener(this);
        }
    }

    private boolean autoShowBar() {
        return true;
    }

    public void setMessage(List<DiscoveryMessage> messages) {
        this.mMessages = messages;
        if (BaseMiscUtil.isValid(messages)) {
            DiscoveryMessage message = (DiscoveryMessage) messages.get(0);
            String messageText = message.getMessage();
            String[] thumbPaths = null;
            BaseMessageDetail messageDetail = message.getMessageDetail();
            if (messageDetail instanceof RecentMessageDetail) {
                thumbPaths = ((RecentMessageDetail) messageDetail).getThumbUrls();
            }
            bindView(messageText, thumbPaths, ThumbConfig.MICRO_THUMB_DISPLAY_IMAGE_OPTIONS_DEFAULT);
            this.mPanelManager.addItem(this, autoShowBar());
            this.mDiscoveryMessageShown = true;
            return;
        }
        this.mPanelManager.removeItem(this, false);
    }

    private void bindView(String message, String[] thumbPaths, DisplayImageOptions displayImageOptions) {
        ensureView();
        PanelItemLayout panelItemLayout = this.mPanelItem;
        if (message == null) {
            message = "";
        }
        panelItemLayout.setTitle(message);
        this.mPanelItem.clearDetails();
        if (thumbPaths != null && thumbPaths.length > 0) {
            for (String bindImage : thumbPaths) {
                bindImage(new ImageViewAware((ImageView) this.mPanelItem.addDetail((int) R.layout.message_thumb_item)), bindImage, displayImageOptions);
            }
        }
    }

    private void bindImage(ImageViewAware imageViewAware, String localPath, DisplayImageOptions displayImageOptions) {
        ImageLoader.getInstance().displayImage(Scheme.FILE.wrap(localPath), (ImageAware) imageViewAware, displayImageOptions);
    }

    public View getView() {
        ensureView();
        return this.mPanelItem.getView();
    }

    public void onResume() {
    }

    public void onPause() {
    }

    public void onDestroy() {
        recordMessageClickStatus();
    }

    private void recordMessageClickStatus() {
        if (this.mDiscoveryMessageShown) {
            HashMap<String, String> params = new HashMap();
            params.put("is_message_clicked", String.valueOf(this.mDiscoveryMessageClicked));
            BaseSamplingStatHelper.recordCountEvent("quickly_discovery", "quickly_discovery_message_click_status", params);
        }
    }

    private DiscoveryMessage getFirstMessage() {
        if (BaseMiscUtil.isValid(this.mMessages)) {
            return (DiscoveryMessage) this.mMessages.get(0);
        }
        return null;
    }

    public void onClick(View v) {
        DiscoveryMessage message = getFirstMessage();
        if (message != null) {
            try {
                Intent clickIntent = new Intent("android.intent.action.VIEW");
                Uri dataUri = Uri.parse(message.getActionUri());
                if (message.getType() == 1) {
                    clickIntent.setPackage(getContext().getPackageName());
                    dataUri = dataUri.buildUpon().appendQueryParameter("source", "home_page").build();
                }
                clickIntent.setData(dataUri);
                getContext().startActivity(clickIntent);
            } catch (Exception e) {
                Log.e("DiscoveryBar", "Wrong intent action uri: %s", message.getActionUri());
                e.printStackTrace();
            }
            DiscoveryMessageManager.getInstance().markAsReadAsync(getContext(), message);
            recordMessageClickedTime(message);
            this.mDiscoveryMessageClicked = true;
        }
    }

    private String formatMessageClickTime(long msgUpdateTime) {
        long minutes = (System.currentTimeMillis() - msgUpdateTime) / 60000;
        if (minutes < 1) {
            return "< 1 minute";
        }
        if (minutes <= 3) {
            return "1-3 minutes";
        }
        if (minutes <= 10) {
            return "4-10 minutes";
        }
        return "> 10 minutes";
    }

    private void recordMessageClickedTime(DiscoveryMessage message) {
        HashMap<String, String> params = new HashMap();
        params.put("message_click_time", formatMessageClickTime(message.getUpdateTime()));
        BaseSamplingStatHelper.recordCountEvent("quickly_discovery", "quickly_discovery_message_click_time", params);
    }
}
