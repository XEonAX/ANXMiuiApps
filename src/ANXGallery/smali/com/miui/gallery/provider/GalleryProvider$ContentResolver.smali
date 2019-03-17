.class Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;
.super Lcom/miui/gallery/provider/GalleryContentResolver;
.source "GalleryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/GalleryProvider;)V
    .locals 0

    .prologue
    .line 869
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryContentResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/GalleryProvider;Lcom/miui/gallery/provider/GalleryProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/GalleryProvider;
    .param p2, "x1"    # Lcom/miui/gallery/provider/GalleryProvider$1;

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/GalleryProvider;)V

    return-void
.end method


# virtual methods
.method protected matchUri(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 873
    invoke-static {}, Lcom/miui/gallery/provider/GalleryProvider;->access$200()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected notifyInternal(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "sync"    # Z
    .param p4, "syncReason"    # I

    .prologue
    const/4 v4, 0x0

    .line 878
    invoke-static {}, Lcom/miui/gallery/provider/GalleryProvider;->access$300()Landroid/content/UriMatcher;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 879
    .local v0, "matchResult":I
    sparse-switch v0, :sswitch_data_0

    .line 944
    :goto_0
    if-eqz p3, :cond_0

    .line 945
    new-instance v2, Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    invoke-direct {v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;-><init>()V

    sget-object v3, Lcom/miui/gallery/cloud/syncstate/SyncType;->NORMAL:Lcom/miui/gallery/cloud/syncstate/SyncType;

    .line 946
    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncType(Lcom/miui/gallery/cloud/syncstate/SyncType;)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v2

    .line 947
    invoke-virtual {v2, p4}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setSyncReason(I)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 948
    invoke-virtual {v2, v3}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->setDelayUpload(Z)Lcom/miui/gallery/util/SyncUtil$Request$Builder;

    move-result-object v2

    .line 949
    invoke-virtual {v2}, Lcom/miui/gallery/util/SyncUtil$Request$Builder;->build()Lcom/miui/gallery/util/SyncUtil$Request;

    move-result-object v1

    .line 950
    .local v1, "request":Lcom/miui/gallery/util/SyncUtil$Request;
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/gallery/util/SyncUtil;->requestSync(Landroid/content/Context;Lcom/miui/gallery/util/SyncUtil$Request;)V

    .line 952
    .end local v1    # "request":Lcom/miui/gallery/util/SyncUtil$Request;
    :cond_0
    return-void

    .line 884
    :sswitch_0
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Cloud;->CLOUD_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 886
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 888
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 889
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 891
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 893
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 895
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 897
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 899
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI_COVER:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 901
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 905
    :sswitch_1
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 907
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OTHER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 909
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 913
    :sswitch_2
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 914
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->IGNORE_PERSONS_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 915
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$PeopleFace;->ONE_PERSON_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 919
    :sswitch_3
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$ShareUser;->SHARE_USER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 920
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 924
    :sswitch_4
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$CloudUser;->CLOUD_USER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 925
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI_SHARE_ALL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 929
    :sswitch_5
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 931
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$RecentDiscoveredMedia;->URI_COVER:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 933
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 936
    :sswitch_6
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Favorites;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 937
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Album;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 938
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 939
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 940
    iget-object v2, p0, Lcom/miui/gallery/provider/GalleryProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/GalleryProvider;

    invoke-virtual {v2}, Lcom/miui/gallery/provider/GalleryProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_ALL:Landroid/net/Uri;

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto/16 :goto_0

    .line 879
    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_0
        0x39 -> :sswitch_1
        0x3a -> :sswitch_0
        0x3f -> :sswitch_2
        0x42 -> :sswitch_3
        0x44 -> :sswitch_0
        0x47 -> :sswitch_3
        0x48 -> :sswitch_4
        0x49 -> :sswitch_4
        0x4d -> :sswitch_5
        0x55 -> :sswitch_6
    .end sparse-switch
.end method
