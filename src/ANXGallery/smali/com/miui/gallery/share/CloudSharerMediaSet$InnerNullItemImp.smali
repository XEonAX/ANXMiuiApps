.class Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;
.super Ljava/lang/Object;
.source "CloudSharerMediaSet.java"

# interfaces
.implements Lcom/miui/gallery/data/DBItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/CloudSharerMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerNullItemImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/CloudSharerMediaSet;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/CloudSharerMediaSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/CloudSharerMediaSet;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/miui/gallery/share/CloudSharerMediaSet$InnerNullItemImp;->this$0:Lcom/miui/gallery/share/CloudSharerMediaSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    const-string v0, ""

    return-object v0
.end method

.method protected getBabyInfo()Lcom/miui/gallery/cloud/baby/BabyInfo;
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCreatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    const-string v0, ""

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    const-string v0, ""

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string v0, ""

    return-object v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    const-string v0, ""

    return-object v0
.end method

.method public getShareAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    const-string v0, ""

    return-object v0
.end method

.method public getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    const-string v0, ""

    return-object v0
.end method

.method public getShareUrlLong()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, ""

    return-object v0
.end method

.method public getSharerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    const-string v0, ""

    return-object v0
.end method

.method public isPublic()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method
