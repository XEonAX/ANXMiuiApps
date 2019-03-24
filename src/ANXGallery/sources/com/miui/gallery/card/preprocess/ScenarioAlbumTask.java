package com.miui.gallery.card.preprocess;

import android.accounts.Account;
import android.net.Uri;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.assistant.process.BaseImageTask;
import com.miui.gallery.card.Card;
import com.miui.gallery.card.Card.Builder;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.Scenario;
import com.miui.gallery.card.scenario.ScenarioTrigger;
import com.miui.gallery.cloud.GalleryCloudSyncTagUtils;
import com.miui.gallery.cloud.card.SyncCardFromServer;
import com.miui.gallery.cloud.card.model.CardInfo;
import com.miui.gallery.cloud.card.model.CardInfoList;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.preference.GalleryPreferences.Sync;
import com.miui.gallery.sdk.download.DownloadType;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryDateUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SyncUtil;
import com.xiaomi.micloudsdk.request.utils.CloudUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import miui.mipub.MipubStat;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.util.PlayerActions.Out;
import org.json.JSONObject;

public class ScenarioAlbumTask extends ScenarioTask {

    public enum CardResult {
        CREATED,
        INPUT_ERROR,
        HAVE_UNPROCESSED_IMAGES,
        DUPLICATED,
        NO_ENOUGH_IMAGE,
        IMAGE_PROCESS_FAIL
    }

    public ScenarioAlbumTask(int type) {
        super(type);
    }

    public DownloadType onGetImageDownloadType() {
        return DownloadType.MICRO;
    }

    public boolean onProcess(JSONObject data, long recordId) throws Exception {
        Record record = (Record) GalleryEntityManager.getInstance().find(Record.class, recordId);
        if (record != null) {
            if (isCancelled()) {
                Log.d("ScenarioAlbumTask", "task is cancelled");
            } else if (Sync.getPowerCanSync() || Sync.getIsPlugged()) {
                Log.d("ScenarioAlbumTask", "power meet requirements，start generate card");
                generateCard(data, record, true);
            } else {
                Log.d("ScenarioAlbumTask", "power do not meet requirements，try generate card without processing images");
                if (generateCard(data, record, false) == CardResult.HAVE_UNPROCESSED_IMAGES) {
                    Log.d("ScenarioAlbumTask", "generate card without processing images failed , schedule charging task");
                    ScenarioTask.post(10, String.valueOf(record.getId()), record.getId());
                }
            }
        }
        return false;
    }

    private void updateRecord(Record record, boolean created) {
        if (record != null) {
            record.setState(created ? 2 : 3);
            GalleryEntityManager.getInstance().update(record);
        }
    }

    private void statScenarioCreateFailed() {
        HashMap<String, String> params = new HashMap();
        params.put(FirewallLog.REASON, "No enough image");
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_card_create_failed", params);
    }

    public CardResult generateCard(JSONObject data, Record record, boolean processImages) {
        if (record == null) {
            return CardResult.INPUT_ERROR;
        }
        Scenario scenario = new ScenarioTrigger().getScenarioById(record.getScenarioId());
        if (scenario == null) {
            updateRecord(record, false);
            return CardResult.INPUT_ERROR;
        }
        Log.d("ScenarioAlbumTask", "ScenarioAlbumTask %d begin!", Integer.valueOf(scenario.getScenarioId()));
        List<MediaFeatureItem> mediaFeatureItems = BaseImageTask.queryMediaItemByIds(record.getMediaIds());
        if (BaseMiscUtil.isValid(mediaFeatureItems)) {
            Log.d("ScenarioAlbumTask", "media count:" + mediaFeatureItems.size());
            List<MediaFeatureItem> unProcessedMediaFeatureItems = CardUtil.getUnProcessedMediaItems(mediaFeatureItems);
            if (BaseMiscUtil.isValid(unProcessedMediaFeatureItems) && !processImages) {
                return CardResult.HAVE_UNPROCESSED_IMAGES;
            }
            if (processImages(data, unProcessedMediaFeatureItems, false, true)) {
                Log.w("ScenarioAlbumTask", "process %d images success", Integer.valueOf(unProcessedMediaFeatureItems.size()));
                CardUtil.bindImageFeatures(mediaFeatureItems);
                List<MediaFeatureItem> selectImages = BaseImageTask.getSelectedImages(mediaFeatureItems);
                int minSelectedImageCount = scenario.getMinSelectedImageCount();
                int maxSelectedImageCount = scenario.getMaxSelectedImageCount();
                if (selectImages == null || selectImages.size() < minSelectedImageCount) {
                    Log.d("ScenarioAlbumTask", "no enough selected Images from row images");
                    updateRecord(record, false);
                    statScenarioCreateFailed();
                    return CardResult.NO_ENOUGH_IMAGE;
                }
                String str;
                if (selectImages.size() > maxSelectedImageCount) {
                    Collections.sort(selectImages);
                    while (selectImages.size() > maxSelectedImageCount) {
                        selectImages.remove(maxSelectedImageCount);
                    }
                }
                Uri detailUrl = CardUtil.getAlbumUri(Out.KEY_ALBUM);
                Builder imageUri = new Builder(GalleryApp.sGetAndroidContext()).setTitle(scenario.generateTitle(record, selectImages)).setDescription(scenario.generateDescription(record, selectImages)).setDeletable(scenario.isDeletable()).setType(0).setImageUri(null);
                if (detailUrl == null) {
                    str = null;
                } else {
                    str = detailUrl.toString();
                }
                Card card = imageUri.setDetailUrl(str).setUniqueKey(record.getUniqueKey()).setAllMediaSha1s(CardUtil.getSha1sFromImages(mediaFeatureItems)).setSelectedMediaSha1s(CardUtil.getSha1sFromImages(selectImages)).setCoverMediaFeatureItems(CardUtil.getCardCovers(selectImages)).setScenarioId(record.getScenarioId()).setCreateBy(0).setValidStartTime(0).setValidEndTime(Long.MAX_VALUE).build();
                List<Card> existCardList = GalleryEntityManager.getInstance().query(Card.class, "ignored = 0 AND scenarioId = " + record.getScenarioId() + " AND " + "createTime" + " > " + (System.currentTimeMillis() - MipubStat.STAT_EXPIRY_DATA), null, "createTime desc", null);
                if (BaseMiscUtil.isValid(existCardList)) {
                    for (Card cardLocal : existCardList) {
                        if (CardUtil.isDuplicated(card, cardLocal)) {
                            updateRecord(record, false);
                            return CardResult.DUPLICATED;
                        }
                    }
                }
                Account account = CloudUtils.getXiaomiAccount();
                if (account != null) {
                    CardInfoList cardInfoList = new SyncCardFromServer(account).getCardInfoList(GalleryCloudSyncTagUtils.getCardSyncTag(account), GalleryCloudSyncTagUtils.getCardSyncInfo(account), 10);
                    if (cardInfoList != null) {
                        List<CardInfo> cardInfos = cardInfoList.getGalleryCards();
                        if (BaseMiscUtil.isValid(cardInfos)) {
                            for (CardInfo cardInfo : cardInfos) {
                                if (cardInfo != null && !cardInfo.isStatusDelete() && CardUtil.isDuplicated(card, cardInfo)) {
                                    Log.e("ScenarioAlbumTask", "Create a local card duplicated with server");
                                    updateRecord(record, false);
                                    SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
                                    return CardResult.DUPLICATED;
                                }
                            }
                        }
                    }
                }
                CardManager.getInstance().add(card, true);
                Log.d("ScenarioAlbumTask", "Card generated");
                HashMap<String, String> params = new HashMap();
                params.put("scenario_id", String.valueOf(scenario.getScenarioId()));
                long lastCardCreateTime = CardUtil.getLastCardCreateTime();
                if (lastCardCreateTime > 0) {
                    HashMap<String, String> hashMap = params;
                    hashMap.put("date_interval_with_last_card", String.valueOf(GalleryDateUtils.daysBetween(lastCardCreateTime, System.currentTimeMillis())));
                }
                BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_card_created_success", params);
                updateRecord(record, true);
                return CardResult.CREATED;
            }
            Log.w("ScenarioAlbumTask", "process images failed");
            return CardResult.IMAGE_PROCESS_FAIL;
        }
        Log.d("ScenarioAlbumTask", "no media item found");
        updateRecord(record, false);
        statScenarioCreateFailed();
        return CardResult.INPUT_ERROR;
    }
}
