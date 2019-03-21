package com.miui.gallery.cloud.card;

import com.miui.gallery.card.Card;
import com.miui.gallery.card.Card.CardExtraInfo;
import com.miui.gallery.card.CardManager;
import com.miui.gallery.card.CardUtil;
import com.miui.gallery.cloud.HostManager.Story;
import com.miui.gallery.cloud.card.model.CardCreateResult;
import com.miui.gallery.cloud.card.model.CardInfo;
import com.miui.gallery.cloud.card.network.CommonGalleryRequestHelper;
import com.miui.gallery.cloud.card.network.RequestArguments;
import com.miui.gallery.util.BaseMiscUtil;
import com.miui.gallery.util.GsonUtils;
import com.miui.gallery.util.Log;
import java.util.List;

public class SyncCardToServer {
    public void sync() {
        List<Card> cardList = CardManager.getInstance().getUnsynchronizedCards(100);
        if (BaseMiscUtil.isValid(cardList)) {
            for (Card card : cardList) {
                switch (card.getLocalFlag()) {
                    case 0:
                        syncCreateCard(card);
                        break;
                    case 1:
                        syncDeleteCard(card);
                        break;
                    case 2:
                        syncModifyCard(card);
                        break;
                    default:
                        Log.e("SyncCardToServer", "get local card flag error:" + card.getLocalFlag());
                        break;
                }
            }
        }
    }

    private void syncCreateCard(Card card) {
        try {
            updateCard(card, (CardCreateResult) new CommonGalleryRequestHelper(new RequestArguments<CardCreateResult>() {
                public int getMethod() {
                    return 1002;
                }

                public String getUrl() {
                    return Story.getCreateCardUrl();
                }
            }).addParam("data", GsonUtils.toString(CardManager.getInstance().getCardInfoFromCard(card))).executeSync());
        } catch (Object requestError) {
            Log.e("SyncCardToServer", "Post CreateCard failed, %s", requestError);
        } catch (Object e) {
            Log.e("SyncCardToServer", "Post CreateCard failed, %s", e);
        }
    }

    public void syncModifyCard(Card card) {
        try {
            updateCard(card, (CardInfo) new CommonGalleryRequestHelper(new RequestArguments<CardInfo>() {
                public int getMethod() {
                    return 1002;
                }

                public String getUrl() {
                    return Story.getUpdateCardUrl();
                }
            }).addParam("data", GsonUtils.toString(CardManager.getInstance().getCardInfoFromCard(card))).addParam("cardId", card.getServerId()).executeSync());
        } catch (Object requestError) {
            Log.e("SyncCardToServer", "Post ModifyCard failed, %s", requestError);
        } catch (Object e) {
            Log.e("SyncCardToServer", "Post ModifyCard failed, %s", e);
        }
    }

    public void syncDeleteCard(Card card) {
        try {
            CardInfo cardInfo = (CardInfo) new CommonGalleryRequestHelper(new RequestArguments<CardInfo>() {
                public int getMethod() {
                    return 1002;
                }

                public String getUrl() {
                    return Story.getDeleteCardUrl();
                }
            }).addParam("cardId", card.getServerId()).executeSync();
            if (cardInfo == null || !cardInfo.isStatusDelete()) {
                Log.e("SyncCardToServer", "Post DeleteCard failed!");
                return;
            }
            CardManager.getInstance().delete(card, false);
            CardManager.getInstance().recordCardDeleteReason("serverSynced");
        } catch (Object requestError) {
            Log.e("SyncCardToServer", "Post DeleteCard failed, %s", requestError);
        } catch (Object e) {
            Log.e("SyncCardToServer", "Post DeleteCard failed, %s", e);
        }
    }

    private void updateCard(Card card, CardCreateResult cardCreateResult) {
        if (card != null && cardCreateResult != null && cardCreateResult.getGalleryCard() != null) {
            CardInfo cardInfo;
            if (cardCreateResult.isDuplicate()) {
                List<Long> mediaCoverServerIds;
                cardInfo = cardCreateResult.getGalleryCard();
                List<Long> mediaServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getMediaList();
                List<Long> allMediaServerIds = cardInfo.getMediaInfo() == null ? null : cardInfo.getMediaInfo().getAllMediaList();
                if (allMediaServerIds == null) {
                    allMediaServerIds = mediaServerIds;
                }
                if (cardInfo.getMediaInfo() == null) {
                    mediaCoverServerIds = null;
                } else {
                    mediaCoverServerIds = cardInfo.getMediaInfo().getCoverMediaList();
                }
                CardExtraInfo cardExtraInfo = (CardExtraInfo) GsonUtils.fromJson(cardInfo.getExtraInfo(), CardExtraInfo.class);
                card.setUpdateTime(cardInfo.getUpdateTime());
                card.setTitle(cardInfo.getTitle());
                card.setDescription(cardInfo.getDescription());
                card.setCardExtraInfo(cardExtraInfo);
                card.setAllMediaSha1s(CardUtil.getSha1sByServerIds(allMediaServerIds));
                card.setSelectedMediaSha1s(CardUtil.getSha1sByServerIds(mediaServerIds), "cardCardFromServer");
                card.setCoverMediaFeatureItems(CardUtil.getCoverMediaItemsByServerIds(mediaCoverServerIds));
                card.setScenarioId(cardInfo.getScenarioId());
                card.setServerId(cardInfo.getServerId());
                card.setServerTag(cardInfo.getTag());
                card.setCreateBy(cardInfo.isAppCreate() ? 0 : 1);
                card.setCreateTime(cardInfo.getSortTime());
                card.setUpdateTime(cardInfo.getUpdateTime());
            } else if (card.getServerTag() < cardCreateResult.getGalleryCard().getTag()) {
                cardInfo = cardCreateResult.getGalleryCard();
                card.setServerId(cardInfo.getServerId());
                card.setServerTag(cardInfo.getTag());
                card.setUpdateTime(cardInfo.getUpdateTime());
            }
            CardManager.getInstance().update(card, false);
        }
    }

    private void updateCard(Card card, CardInfo cardInfo) {
        if (card != null && cardInfo != null && card.getServerTag() < cardInfo.getTag()) {
            Log.d("SyncCardToServer", "updateCard after SyncCardToServer");
            card.setServerId(cardInfo.getServerId());
            card.setServerTag(cardInfo.getTag());
            card.setUpdateTime(cardInfo.getUpdateTime());
            CardManager.getInstance().update(card, false);
        }
    }
}
