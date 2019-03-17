.class public Lcom/miui/gallery/model/FaceSource;
.super Lcom/miui/gallery/model/PhotoLoaderSource;
.source "FaceSource.java"


# static fields
.field private static sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/miui/gallery/model/PhotoLoaderSource;-><init>()V

    .line 20
    sget-object v0, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    .line 22
    sget-object v0, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "person"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    sget-object v0, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.miui.gallery.cloud.provider"

    const-string v2, "person_recommend"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public createDataLoader(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)Lcom/miui/gallery/loader/BaseLoader;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 41
    sget-object v2, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 43
    .local v0, "code":I
    packed-switch v0, :pswitch_data_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    .line 45
    :pswitch_0
    new-instance v1, Lcom/miui/gallery/loader/FaceCloudSetLoader;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/gallery/loader/FaceCloudSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 46
    .local v1, "loader":Lcom/miui/gallery/loader/BaseLoader;
    goto :goto_0

    .line 48
    .end local v1    # "loader":Lcom/miui/gallery/loader/BaseLoader;
    :pswitch_1
    new-instance v1, Lcom/miui/gallery/loader/FaceCloudSetLoader;

    invoke-direct {v1, p1, p2, p3}, Lcom/miui/gallery/loader/FaceCloudSetLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 49
    .restart local v1    # "loader":Lcom/miui/gallery/loader/BaseLoader;
    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public match(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 32
    if-eqz p1, :cond_0

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.miui.gallery.cloud.provider"

    .line 33
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/gallery/model/FaceSource;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
