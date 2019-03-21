package com.miui.gallery.assistant.process;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.ScenarioConstants;
import com.miui.gallery.cloud.control.BatteryMonitor;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.preference.GalleryPreferences.Assistant;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class ExistImageFeatureTask extends BaseImageTask {
    public ExistImageFeatureTask(int type) {
        super(type);
    }

    public DownloadType onGetImageDownloadType() {
        return DownloadType.MICRO;
    }

    public int getNetworkType() {
        return 0;
    }

    public boolean requireCharging() {
        return false;
    }

    public boolean requireDeviceIdle() {
        return true;
    }

    public boolean process(JSONObject data) throws Exception {
        recordImageFeatureTaskInterval();
        initPowerState(GalleryApp.sGetAndroidContext());
        if (Sync.getPowerCanSync() || Sync.getIsPlugged()) {
            Log.d(this.TAG, "Start process exist images");
            processInternal(data, 9, 2);
        } else {
            Log.e(this.TAG, "The power is weak and not charging,abort processing!");
            recordTriggerEvent("fail");
            PendingTaskManager.getInstance().postTask(9, null, ExistImageFeatureChargingTask.class.getSimpleName());
        }
        return false;
    }

    void processInternal(JSONObject data, int taskType, int hundredsCount) {
        if (hundredsCount <= 0) {
            hundredsCount = 1;
        }
        recordImageFeatureTaskInterval();
        recordTriggerEvent("success");
        int i = 0;
        while (i < hundredsCount) {
            List<MediaFeatureItem> toProcessImages = getToProcessImages(true);
            if (BaseMiscUtil.isValid(toProcessImages)) {
                Log.d(this.TAG, "process %d hundreds images，image batch count:%d", Integer.valueOf(i + 1), Integer.valueOf(toProcessImages.size()));
                if (processImages(data, toProcessImages, true, false) && toProcessImages.size() >= 100) {
                    i++;
                } else {
                    return;
                }
            }
            return;
        }
        if (taskType > 0) {
            Log.d(this.TAG, "Have more un processed images,schedule next FeatureTask");
            PendingTaskManager.getInstance().postTask(taskType, null, getClass().getSimpleName());
        }
    }

    private void initPowerState(Context context) {
        Intent intent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (intent != null) {
            Sync.setPowerCanSync(BatteryMonitor.isPowerCanSync(context, intent));
        }
    }

    protected List<MediaFeatureItem> getToProcessImages(boolean shouldHasLocalImage) {
        List<MediaFeatureItem> allImages = BaseImageTask.queryMediaItem(ScenarioConstants.ALL_IMAGE_BASE_SELECTION);
        List<Long> processedSuccessImages = getAllProcessedSuccessImages();
        List<MediaFeatureItem> toProcessImages = new ArrayList(100);
        if (BaseMiscUtil.isValid(allImages)) {
            for (MediaFeatureItem mediaFeatureItem : allImages) {
                if (!(processedSuccessImages.contains(Long.valueOf(mediaFeatureItem.getId())) || (shouldHasLocalImage && TextUtils.isEmpty(mediaFeatureItem.getImagePath())))) {
                    toProcessImages.add(mediaFeatureItem);
                    if (toProcessImages.size() == 100) {
                        break;
                    }
                }
            }
            Log.d(this.TAG, "Processing %d images!", Integer.valueOf(toProcessImages.size()));
            if (!toProcessImages.isEmpty()) {
                List<MediaFeatureItem> nearByImages = ImageFeatureManger.queryNearByMediaItems(((MediaFeatureItem) toProcessImages.get(0)).getDateTime());
                CardUtil.bindImageFeatures(nearByImages);
                toProcessImages.addAll(ImageFeatureManger.filterNearByImages(nearByImages));
                Log.d(this.TAG, "Processing %d images after add previous images!", Integer.valueOf(toProcessImages.size()));
            }
        }
        return toProcessImages;
    }

    private void recordTriggerEvent(String result) {
        Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
        params.put("Trigger_Date", DateUtils.getDateFormat(System.currentTimeMillis()));
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_schedule_exist_image_task_" + result, params);
    }

    void recordImageFeatureTaskInterval() {
        long lastImageFeatureTaskTime = Assistant.getLastImageFeatureTaskTime();
        long now = System.currentTimeMillis();
        if (lastImageFeatureTaskTime > 0) {
            Map<String, String> params = BaseSamplingStatHelper.generatorCommonParams();
            long days = Math.abs(now - lastImageFeatureTaskTime) / 86400000;
            if (days == 0) {
                BaseSamplingStatHelper.recordNumericPropertyEvent("assistant", "assistant_imagefeature_task_hours_interval", Math.abs(now - lastImageFeatureTaskTime) / 3600000);
            }
            BaseSamplingStatHelper.recordNumericPropertyEvent("assistant", "assistant_imagefeature_task_days_interval", days);
        }
        Assistant.setLastImageFeatureTaskTime(now);
    }
}
