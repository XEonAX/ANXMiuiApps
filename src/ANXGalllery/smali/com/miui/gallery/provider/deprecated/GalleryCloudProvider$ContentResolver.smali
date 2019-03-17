.class Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;
.super Lcom/miui/gallery/provider/GalleryContentResolver;
.source "GalleryCloudProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryContentResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;
    .param p2, "x1"    # Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$1;

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;)V

    return-void
.end method


# virtual methods
.method protected matchUri(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 992
    invoke-static {p1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->access$100(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z
    .param p4, "syncReason"    # I

    .prologue
    const/4 v3, 0x0

    .line 996
    sget-object v1, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1059
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1062
    :goto_0
    if-eqz p3, :cond_0

    .line 1063
    new-instance v1, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v2, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 1064
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 1065
    invoke-virtual {v1, p4}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1066
    invoke-virtual {v1, v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v1

    .line 1067
    invoke-virtual {v1}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v0

    .line 1068
    .local v0, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 1070
    .end local v0    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_0
    return-void

    .line 999
    :pswitch_1
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1000
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1001
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1002
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1003
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1004
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 1010
    :pswitch_2
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1018
    :pswitch_3
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1020
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1021
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1026
    :pswitch_4
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1027
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1032
    :pswitch_5
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1033
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1038
    :pswitch_6
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->RECOMMEND_FACES_OF_ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1043
    :pswitch_7
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1048
    :pswitch_8
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1049
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$ShareUser;->SHARE_USER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 1054
    :pswitch_9
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1055
    iget-object v1, p0, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/deprecated/GalleryCloudProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/provider/GalleryContract$CloudUser;->CLOUD_USER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 996
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
