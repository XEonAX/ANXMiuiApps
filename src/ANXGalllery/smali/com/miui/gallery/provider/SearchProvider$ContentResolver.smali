.class Lcom/miui/gallery/provider/SearchProvider$ContentResolver;
.super Lcom/miui/gallery/provider/GalleryContentResolver;
.source "SearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/SearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentResolver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/provider/SearchProvider;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/SearchProvider;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/SearchProvider;

    invoke-direct {p0}, Lcom/miui/gallery/provider/GalleryContentResolver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/SearchProvider;Lcom/miui/gallery/provider/SearchProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/SearchProvider;
    .param p2, "x1"    # Lcom/miui/gallery/provider/SearchProvider$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;-><init>(Lcom/miui/gallery/provider/SearchProvider;)V

    return-void
.end method


# virtual methods
.method protected matchUri(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 169
    invoke-static {}, Lcom/miui/gallery/provider/SearchProvider;->access$100()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 174
    invoke-static {}, Lcom/miui/gallery/provider/SearchProvider;->access$100()Landroid/content/UriMatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 175
    .local v0, "matchResult":I
    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/miui/gallery/provider/SearchProvider$ContentResolver;->this$0:Lcom/miui/gallery/provider/SearchProvider;

    invoke-virtual {v1}, Lcom/miui/gallery/provider/SearchProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/search/SearchContract$History;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
