.class public Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
.super Ljava/lang/Object;
.source "GalleryExtendedAuthToken.java"


# instance fields
.field private mToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;


# direct methods
.method public constructor <init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V
    .locals 0
    .param p1, "token"    # Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;->mToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    .line 12
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;
    .locals 3
    .param p0, "plain"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->parse(Ljava/lang/String;)Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    move-result-object v0

    .line 27
    .local v0, "token":Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;
    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;

    invoke-direct {v1, v0}, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;-><init>(Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;)V

    goto :goto_0
.end method


# virtual methods
.method public getSecurity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/gallery/cloud/GalleryExtendedAuthToken;->mToken:Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;

    iget-object v0, v0, Lcom/xiaomi/micloudsdk/data/ExtendedAuthToken;->security:Ljava/lang/String;

    return-object v0
.end method
