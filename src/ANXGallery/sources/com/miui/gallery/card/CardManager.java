package com.miui.gallery.card;

import android.database.Cursor;
import android.text.TextUtils;
import com.miui.gallery.GalleryApp;
import com.miui.gallery.assistant.manager.ImageFeatureManger;
import com.miui.gallery.assistant.model.ImageFeature;
import com.miui.gallery.assistant.model.MediaFeatureItem;
import com.miui.gallery.card.Card.Builder;
import com.miui.gallery.card.Card.CardExtraInfo;
import com.miui.gallery.card.scenario.DateUtils;
import com.miui.gallery.card.scenario.Record;
import com.miui.gallery.card.scenario.Record.UniqueKey;
import com.miui.gallery.card.scenario.ScenarioTrigger;
import com.miui.gallery.cloud.card.SyncCardToServer;
import com.miui.gallery.cloud.card.model.CardInfo;
import com.miui.gallery.cloudcontrol.CloudControlStrategyHelper;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy;
import com.miui.gallery.cloudcontrol.strategies.AssistantScenarioStrategy.ScenarioRule;
import com.miui.gallery.dao.GalleryEntityManager;
import com.miui.gallery.dao.base.Entity;
import com.miui.gallery.dao.base.EntityManager;
import com.miui.gallery.movie.utils.MovieBackgroundDownloadManager;
import com.miui.gallery.pendingtask.PendingTaskManager;
import com.miui.gallery.preference.GalleryPreferences.Assistant;
import com.miui.gallery.provider.GalleryContract.Media;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.threadpool.ThreadManager;
import com.miui.gallery.threadpool.ThreadPool.Job;
import com.miui.gallery.threadpool.ThreadPool.JobContext;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GalleryStatHelper;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.SafeDBUtil;
import com.miui.gallery.util.SafeDBUtil.QueryHandler;
import com.miui.gallery.util.SyncUtil;
import com.miui.internal.analytics.NormalPolicy;
import com.miui.internal.vip.VipConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import miui.provider.ExtraTelephony.FirewallLog;
import miui.util.PlayerActions.Out;

public class CardManager {
    public static final String[] CONVERT_PROJECTION = new String[]{"serverId", "sha1"};
    private static CardManager sInstance;
    private CardCache mCardCache;
    private final CardObserverHolder mObserverHolder = new CardObserverHolder();

    private class CardCache extends CopyOnWriteArrayList<Card> {
        private CardCache() {
        }

        /* synthetic */ CardCache(CardManager x0, AnonymousClass1 x1) {
            this();
        }

        public synchronized Card getCard(long cardId) {
            Card card;
            Iterator it = iterator();
            while (it.hasNext()) {
                card = (Card) it.next();
                if (card.getId() == cardId) {
                    break;
                }
            }
            card = null;
            return card;
        }

        public synchronized void removeCard(long cardId) {
            Iterator it = iterator();
            while (it.hasNext()) {
                Card card = (Card) it.next();
                if (card.getId() == cardId) {
                    remove(card);
                }
            }
        }

        public synchronized void updateCard(Card newCard) {
            int count = size();
            for (int i = 0; i < count; i++) {
                Card card = (Card) get(i);
                if (card != newCard && card.getId() == newCard.getId()) {
                    card.copyFrom(newCard);
                }
            }
        }

        public int findIndexOfCard(long id) {
            for (int i = 0; i < size(); i++) {
                if (((Card) get(i)).getId() == id) {
                    return i;
                }
            }
            return -1;
        }

        public int addCard(Card card) {
            if (contains(card)) {
                return -1;
            }
            int targetIndex = findIndexToInsert(card);
            if (targetIndex < 0 || targetIndex > size()) {
                return targetIndex;
            }
            add(targetIndex, card);
            return targetIndex;
        }

        public void addCards(Collection<? extends Card> cards) {
            if (BaseMiscUtil.isValid(cards)) {
                for (Card card : cards) {
                    if (!card.isIgnored()) {
                        addCard(card);
                    }
                }
            }
        }

        private int findIndexToInsert(Card card) {
            if (card == null) {
                return -1;
            }
            if (isEmpty()) {
                return 0;
            }
            int low = 0;
            int high = size() - 1;
            while (low <= high) {
                int mid = (low + high) >>> 1;
                int cmp = ((Card) get(mid)).compareTo(card);
                if (low == high) {
                    if (cmp < 0) {
                        return low + 1;
                    }
                    if (cmp > 0) {
                        return high;
                    }
                    return mid;
                } else if (cmp < 0) {
                    low = mid + 1;
                } else if (cmp <= 0) {
                    return mid;
                } else {
                    high = mid - 1;
                }
            }
            if (((Card) get(low)).compareTo(card) <= 0 && low < size()) {
                low++;
            }
            return low;
        }
    }

    public interface CardObserver {
        void onCardAdded(int i, Card card);

        void onCardDeleted(int i, Card card);

        void onCardUpdated(int i, Card card);
    }

    private static class CardObserverHolder implements CardObserver {
        final CopyOnWriteArraySet<CardObserver> observers;

        private CardObserverHolder() {
            this.observers = new CopyOnWriteArraySet();
        }

        /* synthetic */ CardObserverHolder(AnonymousClass1 x0) {
            this();
        }

        public void onCardAdded(int pos, Card card) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((CardObserver) it.next()).onCardAdded(pos, card);
            }
        }

        public void onCardDeleted(int pos, Card card) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((CardObserver) it.next()).onCardDeleted(pos, card);
            }
        }

        public void onCardUpdated(int pos, Card card) {
            Iterator it = this.observers.iterator();
            while (it.hasNext()) {
                ((CardObserver) it.next()).onCardUpdated(pos, card);
            }
        }
    }

    public static class ServerIdSha1Pair {
        final long serverId;
        final String sha1;

        public ServerIdSha1Pair(long serverId, String sha1) {
            this.serverId = serverId;
            this.sha1 = sha1;
        }

        public static List<Long> getServerIds(List<ServerIdSha1Pair> serverIdSha1Pairs) {
            if (!BaseMiscUtil.isValid(serverIdSha1Pairs)) {
                return null;
            }
            List<Long> arrayList = new ArrayList(serverIdSha1Pairs.size());
            for (ServerIdSha1Pair serverIdSha1Pair : serverIdSha1Pairs) {
                arrayList.add(Long.valueOf(serverIdSha1Pair.serverId));
            }
            return arrayList;
        }

        public static List<Long> getServerIdsOfCover(List<ServerIdSha1Pair> serverIdSha1Pairs, List<MediaFeatureItem> covers) {
            if (!BaseMiscUtil.isValid(serverIdSha1Pairs) || !BaseMiscUtil.isValid(covers)) {
                return null;
            }
            List<Long> arrayList = new ArrayList(covers.size());
            for (MediaFeatureItem mediaFeatureItem : covers) {
                for (ServerIdSha1Pair serverIdSha1Pair : serverIdSha1Pairs) {
                    if (TextUtils.equals(mediaFeatureItem.getSha1(), serverIdSha1Pair.sha1)) {
                        arrayList.add(Long.valueOf(serverIdSha1Pair.serverId));
                    }
                }
            }
            return arrayList;
        }
    }

    private CardManager() {
    }

    public static synchronized CardManager getInstance() {
        CardManager cardManager;
        synchronized (CardManager.class) {
            if (sInstance == null) {
                sInstance = new CardManager();
            }
            cardManager = sInstance;
        }
        return cardManager;
    }

    public void registerObserver(CardObserver observer) {
        this.mObserverHolder.observers.add(observer);
    }

    public void unregisterObserver(CardObserver observer) {
        this.mObserverHolder.observers.remove(observer);
    }

    public synchronized void add(Card card, boolean byLocal) {
        if (card != null) {
            if (!card.isEmpty()) {
                if (byLocal) {
                    card.setLocalFlag(0);
                    long now = DateUtils.getCurrentTimeMillis();
                    card.setCreateTime(now);
                    card.setUpdateTime(now);
                } else if (card.isIgnored()) {
                    card.setLocalFlag(2);
                } else if (card.getLocalFlag() != 4) {
                    card.setLocalFlag(3);
                }
                addInternal(card);
                Assistant.setHasCardEver();
                if (byLocal || card.getLocalFlag() != 3) {
                    SyncUtil.requestSync(GalleryApp.sGetAndroidContext());
                }
            }
        }
    }

    private synchronized void addInternal(final Card card) {
        if (card != null) {
            if (getCardByServerId(card.getServerId(), true) != null) {
                Log.e("CardManager", "Card %s exist in db, do not insert again!", card.getServerId());
            } else {
                boolean result = GalleryEntityManager.getInstance().insert((Entity) card);
                if (result) {
                    ThreadManager.getMainHandler().post(new Runnable() {
                        public void run() {
                            if (CardManager.this.mCardCache != null && !card.isIgnored() && card.isValid() && !card.isOutofDate()) {
                                int index = CardManager.this.mCardCache.addCard(card);
                                if (index >= 0) {
                                    CardManager.this.mObserverHolder.onCardAdded(index, card);
                                }
                            }
                        }
                    });
                }
                Log.d("CardManager", "add result %s", Boolean.valueOf(result));
            }
        }
    }

    public synchronized void delete(Card card, boolean byLocal) {
        if (card != null) {
            Log.d("CardManager", "delete card %s", Long.valueOf(card.getId()));
            if (!byLocal) {
                deleteInternal(card, false);
            } else if (card.getLocalFlag() == 0 || !card.isSyncable()) {
                deleteInternal(card, false);
            } else {
                card.setUpdateTime(System.currentTimeMillis());
                card.setLocalFlag(1);
                updateInternal(card);
                new SyncCardToServer().syncDeleteCard(card);
            }
        }
    }

    private synchronized void deleteInternal(final Card card, boolean deleteInDb) {
        if (card != null) {
            boolean result;
            if (deleteInDb) {
                result = GalleryEntityManager.getInstance().delete(card);
            } else {
                card.setLocalFlag(4);
                result = GalleryEntityManager.getInstance().update(card);
            }
            if (result) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        if (CardManager.this.mCardCache != null) {
                            int index = CardManager.this.mCardCache.findIndexOfCard(card.getId());
                            if (index >= 0) {
                                CardManager.this.mCardCache.removeCard(card.getId());
                                CardManager.this.mObserverHolder.onCardDeleted(index, card);
                            }
                        }
                    }
                });
            }
            Log.d("CardManager", "delete result %s", Boolean.valueOf(result));
        }
    }

    public void updateCard(final Card card) {
        if (card != null) {
            ThreadManager.getMiscPool().submit(new Job<Object>() {
                public Object run(JobContext jc) {
                    CardManager.this.update(card, true);
                    return null;
                }
            });
        }
    }

    public synchronized void update(Card card, boolean byLocal) {
        if (card != null) {
            Log.d("CardManager", "Update card id: %s,By local: %b", Long.valueOf(card.getId()), Boolean.valueOf(byLocal));
            if (card.isEmpty()) {
                delete(card, true);
                recordCardDeleteReason("updateCardEmpty");
            } else if (card.getId() < 0) {
                Log.e("CardManager", "Update a card with no card Id!");
            } else {
                if (byLocal) {
                    card.setUpdateTime(System.currentTimeMillis());
                    if (card.getLocalFlag() != 0) {
                        card.setLocalFlag(2);
                    }
                } else {
                    Card existCard = getCardByServerId(card.getServerId(), true);
                    if (existCard == null || existCard.getId() == card.getId() || !existCard.isValid()) {
                        card.setLocalFlag(3);
                    } else {
                        deleteInternal(card, true);
                        recordCardDeleteReason("localExistSameCard");
                    }
                }
                updateCardCoversIfNecessary(card);
                updateInternal(card);
                if (byLocal) {
                    new SyncCardToServer().syncModifyCard(card);
                }
            }
        }
    }

    private synchronized void updateInternal(final Card card) {
        if (card != null) {
            boolean result = GalleryEntityManager.getInstance().update(card);
            if (result) {
                ThreadManager.getMainHandler().post(new Runnable() {
                    public void run() {
                        if (CardManager.this.mCardCache != null) {
                            int index = CardManager.this.mCardCache.findIndexOfCard(card.getId());
                            if (index < 0) {
                                return;
                            }
                            if (card.isLocalDeleted()) {
                                CardManager.this.mCardCache.removeCard(card.getId());
                                CardManager.this.mObserverHolder.onCardDeleted(index, card);
                                return;
                            }
                            CardManager.this.mCardCache.updateCard(card);
                            CardManager.this.mObserverHolder.onCardUpdated(CardManager.this.mCardCache.findIndexOfCard(card.getId()), card);
                        }
                    }
                });
            }
            Log.d("CardManager", "update result %s", Boolean.valueOf(result));
        }
    }

    public List<Card> getLoadedCard() {
        return this.mCardCache;
    }

    public Card getCardByCardId(long cardId) {
        return this.mCardCache != null ? this.mCardCache.getCard(cardId) : null;
    }

    public synchronized List<Card> loadMoreCard() {
        List<Card> list;
        int start = 0;
        if (this.mCardCache != null) {
            start = this.mCardCache.size();
        }
        list = GalleryEntityManager.getInstance().query(Card.class, Card.BASE_UI_CARD_SELECTION, null, "createTime desc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(start), Integer.valueOf(20)}));
        if (this.mCardCache == null) {
            this.mCardCache = new CardCache(this, null);
        }
        if (!(list == null || list.isEmpty())) {
            this.mCardCache.addCards(list);
        }
        return list;
    }

    private void updateCardCoversIfNecessary(final Card card) {
        if (card.isCoversNeedRefresh()) {
            final List<String> cardSha1s = card.getSelectedMediaSha1s();
            if (cardSha1s != null && cardSha1s.size() > 0) {
                SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build(), MediaFeatureItem.MEDIA_PROJECTION, "(localGroupId!=-1000) AND " + String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", cardSha1s)}), null, "alias_create_time DESC", new QueryHandler<List<MediaFeatureItem>>() {
                    public List<MediaFeatureItem> handle(Cursor cursor) {
                        Map<String, ImageFeature> imageFeatureMap = CardManager.this.getImageFeatureMap(cardSha1s);
                        if (cursor != null) {
                            List<String> selectedMediaSha1s = new ArrayList(cursor.getCount());
                            List<MediaFeatureItem> newMediaFeatureItems = new ArrayList();
                            while (cursor.moveToNext()) {
                                try {
                                    MediaFeatureItem mediaFeatureItem = new MediaFeatureItem(cursor);
                                    selectedMediaSha1s.add(mediaFeatureItem.getSha1());
                                    mediaFeatureItem.setImageFeature((ImageFeature) imageFeatureMap.get(mediaFeatureItem.getSha1()));
                                    newMediaFeatureItems.add(mediaFeatureItem);
                                } finally {
                                    BaseMiscUtil.closeSilently(cursor);
                                }
                            }
                            Collections.sort(newMediaFeatureItems);
                            List<MediaFeatureItem> coverMediaFeatureItems = new ArrayList();
                            for (int i = 0; i < Math.min(5, newMediaFeatureItems.size()); i++) {
                                coverMediaFeatureItems.add(newMediaFeatureItems.get(i));
                            }
                            card.setSelectedMediaSha1s(selectedMediaSha1s, "updateCover");
                            if (CardUtil.isCoverMediaPathEmpty(coverMediaFeatureItems)) {
                                CardUtil.downloadCoverThumb(coverMediaFeatureItems);
                            }
                            card.setCoverMediaFeatureItems(coverMediaFeatureItems);
                        }
                        return null;
                    }
                });
            }
        } else if (CardUtil.isCoverMediaPathEmpty(card.getCoverMediaFeatureItems())) {
            CardUtil.downloadCoverThumb(card.getCoverMediaFeatureItems());
        }
    }

    private Map<String, ImageFeature> getImageFeatureMap(List<String> imageSha1s) {
        Map<String, ImageFeature> imageFeatureMap = new HashMap();
        if (imageSha1s != null) {
            List<ImageFeature> imageFeatureList = GalleryEntityManager.getInstance().query(ImageFeature.class, String.format("sha1 IN ('%s') ", new Object[]{TextUtils.join("','", imageSha1s)}), null, "score desc", null);
            if (BaseMiscUtil.isValid(imageFeatureList)) {
                for (ImageFeature imageFeature : imageFeatureList) {
                    imageFeatureMap.put(imageFeature.getSha1(), imageFeature);
                }
            }
        }
        return imageFeatureMap;
    }

    public synchronized void onAccountDelete() {
        Log.d("CardManager", "onAccountDelete");
        try {
            if (this.mCardCache != null) {
                this.mCardCache.clear();
            }
            GalleryEntityManager.getInstance().deleteAll(Card.class);
            GalleryEntityManager.getInstance().deleteAll(Record.class);
            GalleryEntityManager.getInstance().deleteAll(ImageFeature.class);
            GalleryEntityManager.getInstance().deleteAll(SyncTag.class);
            this.mObserverHolder.onCardDeleted(-1, null);
            List<Integer> taskTypeList = new ArrayList();
            taskTypeList.add(Integer.valueOf(2));
            taskTypeList.add(Integer.valueOf(6));
            for (Integer taskType : taskTypeList) {
                PendingTaskManager.getInstance().cancelAll(taskType.intValue());
            }
        } catch (Object e) {
            Log.e("CardManager", "onAccountDelete occur error.\n", e);
        }
        return;
    }

    public synchronized void triggerScenarios() {
        if (ImageFeatureManger.isStoryFunctionEnable()) {
            long lastRequestTime = Assistant.getLastTriggerTime();
            if (Math.abs(System.currentTimeMillis() - lastRequestTime) < 1800000 || DateUtils.getDateTime(lastRequestTime) == DateUtils.getDateTime(System.currentTimeMillis())) {
                Log.d("CardManager", "triggerScenarios too often");
            } else {
                try {
                    new ScenarioTrigger().trigger();
                    Assistant.setLastTriggerTime(System.currentTimeMillis());
                } catch (Object e) {
                    Log.e("CardManager", "trigger scenario occur error.\n", e);
                }
            }
        } else {
            Log.d("CardManager", "Card funtion disable");
        }
        return;
    }

    public void triggerGuaranteeScenarios(final boolean recordTriggerTime) {
        Log.d("CardManager", "Try trigger Guarantee Scenario");
        if (!ImageFeatureManger.isStoryFunctionEnable()) {
            Log.d("CardManager", "Card funtion disable");
        } else if (DateUtils.getDateTime(Assistant.getLastGuaranteeTriggerTime()) == DateUtils.getDateTime(System.currentTimeMillis())) {
            Log.d("CardManager", "triggerScenarios too often");
        } else {
            ThreadManager.getMiscPool().submit(new Job() {
                public Object run(JobContext jc) {
                    CardManager.this.triggerGuaranteeScenariosInternal(recordTriggerTime);
                    return null;
                }
            });
        }
    }

    private synchronized void triggerGuaranteeScenariosInternal(boolean recordTriggerTime) {
        if (BaseMiscUtil.isValid(GalleryEntityManager.getInstance().query(Card.class, "ignored = 0", null, null, String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)})))) {
            Log.d("CardManager", "Card exists,no need trigger guarantee card!");
        } else {
            try {
                new ScenarioTrigger().triggerGuaranteeScenario();
                if (recordTriggerTime) {
                    Assistant.setLastGuaranteeTriggerTime(System.currentTimeMillis());
                }
            } catch (Object e) {
                Log.e("CardManager", "trigger scenario occur error.\n", e);
            }
        }
        return;
    }

    public void updateCardFromServer(CardInfo cardInfo) {
        if (cardInfo != null) {
            Card existCard = getCardByServerId(cardInfo.getServerId(), true);
            if (existCard == null) {
                Card dupCard = getDuplicatedCard(cardInfo);
                if (dupCard == null) {
                    createNewCardFromServer(cardInfo);
                } else if (cardInfo.isStatusDelete()) {
                    delete(dupCard, false);
                    recordCardDeleteReason("serverDeleteDupCard");
                } else {
                    mergeCardFromServer(dupCard, cardInfo);
                }
            } else if (cardInfo.isStatusDelete()) {
                delete(existCard, false);
                recordCardDeleteReason("serverDeleteExistCard");
            } else if (!existCard.isLocalDeleted()) {
                updateCardFromServerInternal(existCard, cardInfo);
            }
        }
    }

    public Card createOperationCardFromServer(CardInfo cardInfo) {
        Card existCard = getCardByServerId(cardInfo.getServerId(), true);
        if (existCard == null) {
            return createNewCardFromServer(cardInfo);
        }
        return existCard;
    }

    private void mergeCardFromServer(Card card, CardInfo cardInfo) {
        if (card != null && cardInfo != null) {
            List<Long> allMediaServerIds;
            List<Long> mediaServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getMediaList();
            if (cardInfo.getMediaInfo() == null) {
                allMediaServerIds = null;
            } else {
                allMediaServerIds = cardInfo.getMediaInfo().getAllMediaList();
            }
            if (allMediaServerIds == null) {
                allMediaServerIds = mediaServerIds;
            }
            CardExtraInfo cardExtraInfo = (CardExtraInfo) GsonUtils.fromJson(cardInfo.getExtraInfo(), CardExtraInfo.class);
            card.setCreateTime(cardInfo.getSortTime());
            card.setUpdateTime(cardInfo.getUpdateTime());
            card.setCardExtraInfo(cardExtraInfo);
            card.setAllMediaSha1s(mergeSha1s(card.getAllMediaSha1s(), CardUtil.getSha1sByServerIds(allMediaServerIds)));
            card.setSelectedMediaSha1s(mergeSha1s(card.getSelectedMediaSha1s(), CardUtil.getSha1sByServerIds(mediaServerIds)), "mergeFromServerDupCard");
            card.setScenarioId(cardInfo.getScenarioId());
            card.setServerId(cardInfo.getServerId());
            card.setServerTag(cardInfo.getTag());
            card.setCreateBy(cardInfo.isAppCreate() ? 0 : 1);
            update(card, false);
        }
    }

    private List<String> mergeSha1s(List<String> sourceSha1s, List<String> mergedSha1s) {
        if (BaseMiscUtil.isValid(sourceSha1s) && BaseMiscUtil.isValid(mergedSha1s)) {
            for (String sha1 : mergedSha1s) {
                if (!sourceSha1s.contains(sha1)) {
                    sourceSha1s.add(sha1);
                }
            }
        }
        return sourceSha1s;
    }

    private Card getDuplicatedCard(CardInfo cardInfo) {
        if (cardInfo.isAppCreate()) {
            List<Card> list = GalleryEntityManager.getInstance().query(Card.class, "ignored = 0 AND scenarioId = " + cardInfo.getScenarioId() + " AND " + "createTime" + " > " + (System.currentTimeMillis() - VipConstants.DAY) + " AND " + "localFlag" + " = " + 0, null, "createTime desc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(1)}));
            if (BaseMiscUtil.isValid(list)) {
                Card card = (Card) list.get(0);
                if (CardUtil.isDuplicated(card, cardInfo)) {
                    return card;
                }
            }
        }
        return null;
    }

    private Card createNewCardFromServer(CardInfo cardInfo) {
        if (cardInfo == null) {
            return null;
        }
        boolean isOperationStoryCard = cardInfo.getScenarioId() == 11000;
        Builder cardBuilder = new Builder(GalleryApp.sGetAndroidContext()).setTitle(cardInfo.getTitle()).setDescription(cardInfo.getDescription()).setDeletable(true).setScenarioId(cardInfo.getScenarioId()).setServerId(cardInfo.getServerId()).setServerTag(cardInfo.getTag()).setCreateBy(cardInfo.isAppCreate() ? 0 : 1).setCreateTime(cardInfo.getSortTime()).setUpdateTime(cardInfo.getUpdateTime()).setValidStartTime(cardInfo.getValidStartDate()).setValidEndTime(cardInfo.getValidEndDate()).setTop(cardInfo.isTop());
        if (isOperationStoryCard) {
            cardBuilder.setOperationInfo(cardInfo.getOperationInfo()).setDetailUrl(CardUtil.getAlbumUri("operation").toString()).setSyncable(false).setType(2);
        } else {
            CardExtraInfo cardExtraInfo = (CardExtraInfo) GsonUtils.fromJson(cardInfo.getExtraInfo(), CardExtraInfo.class);
            UniqueKey uniqueKey = null;
            boolean isIgnored = false;
            if (cardExtraInfo != null) {
                uniqueKey = cardExtraInfo.uniqueKey;
                isIgnored = cardExtraInfo.isIgnored;
            }
            if (!(isIgnored || cardInfo.isAppCreate())) {
                AssistantScenarioStrategy assistantScenarioStrategy = CloudControlStrategyHelper.getAssistantScenarioStrategy();
                if (assistantScenarioStrategy != null) {
                    List<ScenarioRule> localRules = assistantScenarioStrategy.getLocalScenarioRules();
                    if (BaseMiscUtil.isValid(localRules)) {
                        for (ScenarioRule rule : localRules) {
                            if (rule.getScenarioId() == cardInfo.getScenarioId()) {
                                isIgnored = true;
                            }
                        }
                    }
                }
            }
            if (cardInfo.getMediaInfo() == null) {
                return null;
            }
            List<Long> mediaServerIds = cardInfo.getMediaInfo().getMediaList();
            List<Long> allMediaServerIds = cardInfo.getMediaInfo().getAllMediaList();
            if (allMediaServerIds == null) {
                allMediaServerIds = mediaServerIds;
            }
            List<String> selectedSha1s = CardUtil.getSha1sByServerIds(mediaServerIds);
            if (!BaseMiscUtil.isValid(selectedSha1s)) {
                return null;
            }
            cardBuilder.setType(0).setImageUri(null).setDetailUrl(CardUtil.getAlbumUri(Out.KEY_ALBUM).toString()).setUniqueKey(uniqueKey).setAllMediaSha1s(CardUtil.getSha1sByServerIds(allMediaServerIds)).setSelectedMediaSha1s(selectedSha1s).setCoverMediaFeatureItems(CardUtil.getCoverMediaItemsByServerIds(cardInfo.getMediaInfo().getCoverMediaList())).setSyncable(true).setIsIgnored(isIgnored);
        }
        Card card = cardBuilder.build();
        updateCardCoversIfNecessary(card);
        if (cardInfo.isStatusDelete()) {
            card.setLocalFlag(4);
        }
        add(card, false);
        MovieBackgroundDownloadManager.getInstance().downloadTemplate(GalleryApp.sGetAndroidContext(), CardUtil.getMovieTemplateFromCard(card));
        HashMap<String, String> params = new HashMap();
        if (card.getType() == 2) {
            params.put("server_id", String.valueOf(card.getServerId()));
        }
        params.put("scenario_id", String.valueOf(card.getScenarioId()));
        BaseSamplingStatHelper.recordCountEvent("assistant", "assistant_card_server_card_created", params);
        return card;
    }

    private void updateCardFromServerInternal(Card card, CardInfo cardInfo) {
        if (cardInfo != null && card.getServerTag() < cardInfo.getTag()) {
            List<Long> mediaServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getMediaList();
            List<Long> allMediaServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getAllMediaList();
            if (allMediaServerIds == null) {
                allMediaServerIds = mediaServerIds;
            }
            List<Long> mediaCoverServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getCoverMediaList();
            card.setTitle(cardInfo.getTitle());
            card.setDescription(cardInfo.getDescription());
            card.setScenarioId(cardInfo.getScenarioId());
            card.setServerId(cardInfo.getServerId());
            card.setUpdateTime(cardInfo.getUpdateTime());
            card.setAllMediaSha1s(CardUtil.getSha1sByServerIds(allMediaServerIds));
            card.setSelectedMediaSha1s(CardUtil.getSha1sByServerIds(mediaServerIds), "updateCardFromServer");
            card.setCoverMediaFeatureItems(CardUtil.getCoverMediaItemsByServerIds(mediaCoverServerIds));
            card.setServerTag(cardInfo.getTag());
            update(card, false);
        }
    }

    public Card getCardByServerId(String serverId, boolean containIgnored) {
        if (!TextUtils.isEmpty(serverId)) {
            EntityManager em = GalleryEntityManager.getInstance();
            String selection = String.format("serverId = %s", new Object[]{serverId});
            if (!containIgnored) {
                selection = selection + " AND ignored = 0";
            }
            List<Card> list = em.query(Card.class, selection, null, null, null);
            if (BaseMiscUtil.isValid(list)) {
                return (Card) list.get(0);
            }
        }
        return null;
    }

    public List<Card> getUnsynchronizedCards(int queryLimitOnce) {
        if (queryLimitOnce <= 0) {
            queryLimitOnce = 10;
        }
        return GalleryEntityManager.getInstance().query(Card.class, Card.BASE_UNSYNC_CARD_SELECTION, null, "createTime desc", String.format(Locale.US, "%s,%s", new Object[]{Integer.valueOf(0), Integer.valueOf(queryLimitOnce)}));
    }

    public CardSyncInfo getCardInfoFromCard(Card card) {
        List<ServerIdSha1Pair> selectedServerIdSha1Pairs = getServerIdSha1PairBySha1s(card.getSelectedMediaSha1s());
        return CardSyncInfo.newBuilder().setName(card.getTitle()).setScenarioId(card.getScenarioId()).setStatus(NormalPolicy.TAG).setDuplicateKey(card.generateDuplicateKey()).setDescription(card.getDescription()).setMediaList(ServerIdSha1Pair.getServerIds(selectedServerIdSha1Pairs)).setAllMediaList(ServerIdSha1Pair.getServerIds(getServerIdSha1PairBySha1s(card.getAllMediaSha1s()))).setCoverMediaList(ServerIdSha1Pair.getServerIdsOfCover(selectedServerIdSha1Pairs, card.getCoverMediaFeatureItems())).setExtraInfo(GsonUtils.toString(card.getCardExtraInfo())).setSortTime(card.getCreateTime()).build();
    }

    public List<ServerIdSha1Pair> getServerIdSha1PairBySha1s(List<String> cardSha1s) {
        return (List) SafeDBUtil.safeQuery(GalleryApp.sGetAndroidContext(), Media.URI_OWNER_ALBUM_MEDIA.buildUpon().appendQueryParameter("remove_duplicate_items", String.valueOf(true)).build(), CONVERT_PROJECTION, String.format("%s IN ('%s')", new Object[]{"sha1", TextUtils.join("','", cardSha1s)}), null, String.format("%s DESC", new Object[]{"alias_create_time"}), new QueryHandler<List<ServerIdSha1Pair>>() {
            public List<ServerIdSha1Pair> handle(Cursor cursor) {
                int count;
                if (cursor != null) {
                    count = cursor.getCount();
                } else {
                    count = 0;
                }
                List<ServerIdSha1Pair> serverIdList = new ArrayList(count);
                if (cursor != null) {
                    while (cursor.moveToNext()) {
                        Long serverId = Long.valueOf(cursor.getLong(0));
                        serverIdList.add(new ServerIdSha1Pair(serverId.longValue(), cursor.getString(1)));
                    }
                }
                return serverIdList;
            }
        });
    }

    public void onDeleteImages(List<String> imageSha1s) {
        if (BaseMiscUtil.isValid(imageSha1s)) {
            Iterator it;
            Card card;
            long oldCardTime = System.currentTimeMillis();
            if (this.mCardCache != null) {
                it = this.mCardCache.iterator();
                while (it.hasNext()) {
                    card = (Card) it.next();
                    if (card.removeImages(imageSha1s)) {
                        if (card.isEmpty()) {
                            recordCardImageEmptyReason("ImageDeleteOutside");
                        }
                        update(card, true);
                    }
                    oldCardTime = card.getCreateTime();
                }
            }
            List<Card> cardsInDb = GalleryEntityManager.getInstance().query(Card.class, "ignored = 0 AND localFlag NOT IN (1,-2,-1,4) AND createTime<" + oldCardTime, null, "createTime desc", null);
            if (BaseMiscUtil.isValid(cardsInDb)) {
                for (Card card2 : cardsInDb) {
                    if (card2.removeImages(imageSha1s)) {
                        if (card2.isEmpty()) {
                            recordCardImageEmptyReason("ImageDeleteOutside");
                        }
                        update(card2, true);
                    }
                }
            }
        }
    }

    public void recordCardImageEmptyReason(String reason) {
        Map<String, String> params = new HashMap(1);
        params.put("from", reason);
        GalleryStatHelper.recordCountEvent("assistant", "assistant_card_remove_all_image", params);
        Log.d("CardManager", android.util.Log.getStackTraceString(new Throwable()));
    }

    public void recordCardDeleteReason(String reason) {
        Map<String, String> params = new HashMap(1);
        params.put(FirewallLog.REASON, reason);
        GalleryStatHelper.recordCountEvent("assistant", "assistant_card_delete_card_reason", params);
        Log.d("CardManager", new Throwable());
    }
}
