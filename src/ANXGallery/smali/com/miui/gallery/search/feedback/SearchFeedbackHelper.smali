.class public Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;
.super Ljava/lang/Object;
.source "SearchFeedbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;,
        Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;,
        Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;,
        Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    }
.end annotation


# static fields
.field private static CAN_USE_CACHE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->CAN_USE_CACHE:Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Z)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p3, "x3"    # Z

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportFalseImages(Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->getFeedbackResultText(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addFeedbackReportedTag(Ljava/lang/String;)V
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :goto_0
    return-void

    .line 416
    :cond_0
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->getFeedbackReportedTags()Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "tags":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_1
    invoke-static {v0}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->setFeedbackReportedTags(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_1
    move-object v0, p0

    goto :goto_1
.end method

.method private static getFeedbackDialogText(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "feedbackType"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    .prologue
    .line 292
    sget-object v1, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$2;->$SwitchMap$com$miui$gallery$search$feedback$SearchFeedbackHelper$FeedbackType:[I

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid feedback type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :pswitch_0
    const v0, 0x7f0c0438

    .line 302
    .local v0, "res":I
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 297
    .end local v0    # "res":I
    :pswitch_1
    const v0, 0x7f0c0436

    .line 298
    .restart local v0    # "res":I
    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getFeedbackResultText(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;IZ)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "feedbackType"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p3, "count"    # I
    .param p4, "contribute"    # Z

    .prologue
    .line 308
    if-lez p3, :cond_2

    .line 310
    sget-object v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$2;->$SwitchMap$com$miui$gallery$search$feedback$SearchFeedbackHelper$FeedbackType:[I

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid feedback type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :pswitch_0
    if-eqz p4, :cond_0

    const v0, 0x7f0e003a

    .line 322
    .local v0, "res":I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, p3, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 335
    .end local v0    # "res":I
    .local v1, "text":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 312
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    const v0, 0x7f0e003c

    goto :goto_0

    .line 316
    :pswitch_1
    if-eqz p4, :cond_1

    const v0, 0x7f0e0039

    .line 318
    .restart local v0    # "res":I
    :goto_2
    goto :goto_0

    .line 316
    .end local v0    # "res":I
    :cond_1
    const v0, 0x7f0e003b

    goto :goto_2

    .line 324
    :cond_2
    sget-object v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$2;->$SwitchMap$com$miui$gallery$search$feedback$SearchFeedbackHelper$FeedbackType:[I

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 332
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid feedback type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :pswitch_2
    const v2, 0x7f0c0434

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_1

    .line 329
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_3
    const v2, 0x7f0c0433

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    .restart local v1    # "text":Ljava/lang/String;
    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 324
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFeedbackTaskInfo()Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 95
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, "userID":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 97
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Not logged in!"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 132
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 102
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Cloud privacy agreement denied"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 103
    goto :goto_0

    .line 106
    :cond_1
    new-instance v7, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    .line 107
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$Search;->getSearchFeedbackUrlHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryPathPrefix(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 108
    invoke-static {v5}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 109
    invoke-virtual {v7, v5}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string/jumbo v8, "tag/feedback/task/num"

    .line 110
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-class v8, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;

    .line 111
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setResultDataType(Ljava/lang/reflect/Type;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    sget-boolean v8, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->CAN_USE_CACHE:Z

    .line 112
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUseCache(Z)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 113
    invoke-virtual {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v2

    .line 115
    .local v2, "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :try_start_0
    invoke-virtual {v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v3

    .line 116
    .local v3, "result":[Ljava/lang/Object;
    if-eqz v3, :cond_3

    array-length v7, v3

    if-lez v7, :cond_3

    const/4 v7, 0x0

    aget-object v7, v3, v7

    instance-of v7, v7, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;

    if-eqz v7, :cond_3

    .line 117
    const/4 v7, 0x0

    aget-object v4, v3, v7

    check-cast v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;

    .line 118
    .local v4, "taskInfo":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "need_handle_image_num"

    iget v8, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;->needHandleImageNum:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v7, "finish_image_num"

    iget v8, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;->finishImageNum:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    iget-object v7, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;->awardInfo:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    const-string/jumbo v7, "task_award_info"

    iget-object v8, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;->awardInfo:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_2
    const-wide/32 v8, 0x493e0

    invoke-virtual {v2, v8, v9}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->setCacheExpires(J)Lcom/miui/gallery/net/base/BaseRequest;

    .line 125
    const/4 v7, 0x1

    sput-boolean v7, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->CAN_USE_CACHE:Z
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 128
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "result":[Ljava/lang/Object;
    .end local v4    # "taskInfo":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackTaskResponseData;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Lcom/miui/gallery/net/base/RequestError;
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Querying feedback info failed, %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    .end local v1    # "e":Lcom/miui/gallery/net/base/RequestError;
    :cond_3
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Empty feedback task info"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 132
    goto/16 :goto_0
.end method

.method public static goToFeedbackPolicyPage(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 202
    const-string v1, "https://i.mi.com/static2?filename=MicloudWebBill/event/gallery/privacy/%s.html"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "zh"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn"

    :goto_0
    aput-object v0, v2, v3

    .line 202
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->goToHybridPage(Landroid/app/Activity;Ljava/lang/String;)V

    .line 204
    return-void

    .line 203
    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method private static goToHybridPage(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 207
    sget-object v1, Lcom/miui/gallery/provider/GalleryContract$Common;->URI_HYBRID_PAGE:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "url"

    .line 208
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/miui/gallery/util/ActionURIHandler;->handleUri(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 211
    return-void
.end method

.method private static hasReportedTag(Ljava/lang/String;)Z
    .locals 7
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 431
    :cond_1
    invoke-static {}, Lcom/miui/gallery/preference/GalleryPreferences$Search;->getFeedbackReportedTags()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "tags":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 433
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "tagArray":[Ljava/lang/String;
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 435
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 436
    const/4 v3, 0x1

    goto :goto_0

    .line 434
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static needToQueryLikelyImagesForFeedbackTask(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-static {p0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->hasReportedTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static reportFalseImages(Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Z)I
    .locals 7
    .param p0, "tagName"    # Ljava/lang/String;
    .param p2, "feedbackType"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p3, "contribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p1, "imageServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    :cond_0
    const-string v5, "SearchFeedbackHelper"

    const-string v6, "Invalid false image params!"

    invoke-static {v5, v6}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 368
    :cond_1
    :goto_0
    return v2

    .line 345
    :cond_2
    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, "userID":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 347
    const-string v5, "SearchFeedbackHelper"

    const-string v6, "Not logged in!"

    invoke-static {v5, v6}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 348
    goto :goto_0

    .line 351
    :cond_3
    const/4 v2, 0x0

    .line 352
    .local v2, "totalSucceedCount":I
    const/4 v1, 0x0

    .line 353
    .local v1, "batchStart":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 354
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v1, 0xa

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 356
    .local v0, "batchEnd":I
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 355
    invoke-static {v3, p0, v5, p2, p3}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportFalseImagesBatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Z)I

    move-result v5

    add-int/2addr v2, v5

    .line 357
    move v1, v0

    .line 358
    goto :goto_1

    .line 360
    .end local v0    # "batchEnd":I
    :cond_4
    if-lez v2, :cond_1

    .line 361
    sput-boolean v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->CAN_USE_CACHE:Z

    .line 362
    sget-object v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->FALSE_NEGATIVE:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    invoke-virtual {p2, v4}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    invoke-static {p0}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->addFeedbackReportedTag(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static reportFalseImagesBatch(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Z)I
    .locals 10
    .param p0, "userID"    # Ljava/lang/String;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p3, "feedbackType"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p4, "contribute"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;",
            "Z)I"
        }
    .end annotation

    .prologue
    .local p2, "imageServerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 374
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 375
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Cloud privacy agreement denied"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 406
    :goto_0
    return v0

    .line 378
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 379
    .local v0, "batchCount":I
    const-string v7, ","

    invoke-static {v7, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "imageIdsString":Ljava/lang/String;
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Reporting false image info [%s: %s: %s]"

    invoke-static {v7, v8, p3, p1, p2}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 381
    new-instance v7, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    .line 382
    invoke-static {}, Lcom/miui/gallery/cloud/HostManager$Search;->getSearchFeedbackUrlHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryPathPrefix(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string/jumbo v8, "tag/feedback"

    .line 383
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 384
    invoke-static {p0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const/16 v8, 0x3ea

    .line 385
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setMethod(I)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 386
    invoke-virtual {v7, p0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-class v8, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;

    .line 387
    invoke-virtual {v7, v8}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setResultDataType(Ljava/lang/reflect/Type;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string v8, "feedbackType"

    .line 388
    invoke-virtual {p3}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string/jumbo v8, "tagName"

    .line 389
    invoke-virtual {v7, v8, p1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string v8, "imageIds"

    .line 390
    invoke-virtual {v7, v8, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    const-string v8, "isDonate"

    .line 391
    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v7

    .line 392
    invoke-virtual {v7}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v3

    .line 394
    .local v3, "request":Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;
    :try_start_0
    invoke-virtual {v3}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v5

    .line 395
    .local v5, "result":[Ljava/lang/Object;
    if-eqz v5, :cond_1

    array-length v7, v5

    if-lez v7, :cond_1

    const/4 v7, 0x0

    aget-object v7, v5, v7

    instance-of v7, v7, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;

    if-eqz v7, :cond_1

    .line 396
    const/4 v7, 0x0

    aget-object v4, v5, v7

    check-cast v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;

    .line 397
    .local v4, "responseData":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;
    iget-object v7, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;->failureImageIds:Ljava/util/Set;

    if-eqz v7, :cond_1

    .line 398
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "[%s] report failed!"

    iget-object v9, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;->failureImageIds:Ljava/util/Set;

    invoke-static {v7, v8, v9}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    iget-object v7, v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;->failureImageIds:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v6

    sub-int/2addr v0, v6

    goto/16 :goto_0

    .line 402
    .end local v4    # "responseData":Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackReportResponseData;
    :cond_1
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "Done report batch!"

    invoke-static {v7, v8}, Lcom/miui/gallery/search/utils/SearchLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/miui/gallery/net/base/RequestError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 404
    .end local v5    # "result":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 405
    .local v1, "e":Lcom/miui/gallery/net/base/RequestError;
    const-string v7, "SearchFeedbackHelper"

    const-string v8, "On report batch error! %s"

    invoke-static {v7, v8, v1}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v6

    .line 406
    goto/16 :goto_0
.end method

.method public static reportFalseNegativeImages(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "inFeedbackTask"    # Z
    .param p4, "completeListener"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "imageServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->FALSE_NEGATIVE:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportInDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V

    .line 237
    return-void
.end method

.method public static reportFalsePositiveImages(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "inFeedbackTask"    # Z
    .param p4, "completeListener"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, "imageServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;->FALSE_POSITIVE:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->reportInDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V

    .line 231
    return-void
.end method

.method private static reportInDialog(Landroid/app/Activity;Ljava/lang/String;ZLjava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "inFeedbackTask"    # Z
    .param p4, "feedbackType"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;
    .param p5, "completeListener"    # Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;",
            "Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 249
    .local p3, "imageServerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v6, "builder":Lmiui/app/AlertDialog$Builder;
    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->supportFeedbackTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    const v0, 0x7f0c0435

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, p2, v0}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 253
    :cond_1
    invoke-static {p0, p1, p4}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->getFeedbackDialogText(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0c02f9

    new-instance v0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;Landroid/app/Activity;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;)V

    .line 254
    invoke-virtual {v8, v9, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ca

    const/4 v2, 0x0

    .line 281
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 283
    :try_start_0
    invoke-virtual {v6}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v7

    .line 285
    .local v7, "ex":Ljava/lang/IllegalStateException;
    const-string v0, "SearchFeedbackHelper"

    const-string v1, "Ignore exception: %s"

    invoke-static {v0, v1, v7}, Lcom/miui/gallery/search/utils/SearchLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static supportFeedbackTask()Z
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->getInstance()Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    move-result-object v0

    const-string v1, "search-feedback-task"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;->queryFeatureStatus(Ljava/lang/String;)Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;->ENABLE:Lcom/miui/gallery/cloudcontrol/FeatureProfile$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
