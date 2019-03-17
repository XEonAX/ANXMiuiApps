.class public abstract Lcom/miui/gallery/cloud/CloudUrlProvider;
.super Ljava/lang/Object;
.source "CloudUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloud/CloudUrlProvider$SharerVideoUrlProvider;,
        Lcom/miui/gallery/cloud/CloudUrlProvider$SharerImageUrlProvider;,
        Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerVideoUrlProvider;,
        Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerImageUrlProvider;
    }
.end annotation


# static fields
.field private static final sOwnerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

.field private static final sOwnerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;

.field private static final sSharerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

.field private static final sSharerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    new-instance v0, Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerImageUrlProvider;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerImageUrlProvider;-><init>(Lcom/miui/gallery/cloud/CloudUrlProvider$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sOwnerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

    .line 321
    new-instance v0, Lcom/miui/gallery/cloud/CloudUrlProvider$SharerImageUrlProvider;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudUrlProvider$SharerImageUrlProvider;-><init>(Lcom/miui/gallery/cloud/CloudUrlProvider$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sSharerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

    .line 322
    new-instance v0, Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerVideoUrlProvider;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudUrlProvider$OwnerVideoUrlProvider;-><init>(Lcom/miui/gallery/cloud/CloudUrlProvider$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sOwnerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;

    .line 323
    new-instance v0, Lcom/miui/gallery/cloud/CloudUrlProvider$SharerVideoUrlProvider;

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudUrlProvider$SharerVideoUrlProvider;-><init>(Lcom/miui/gallery/cloud/CloudUrlProvider$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sSharerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method public static getUrlProvider(ZZ)Lcom/miui/gallery/cloud/CloudUrlProvider;
    .locals 1
    .param p0, "isShared"    # Z
    .param p1, "isVideo"    # Z

    .prologue
    .line 326
    if-eqz p0, :cond_1

    .line 327
    if-eqz p1, :cond_0

    sget-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sSharerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;

    .line 330
    :goto_0
    return-object v0

    .line 327
    :cond_0
    sget-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sSharerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

    goto :goto_0

    .line 330
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sOwnerVideo:Lcom/miui/gallery/cloud/CloudUrlProvider;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/miui/gallery/cloud/CloudUrlProvider;->sOwnerImage:Lcom/miui/gallery/cloud/CloudUrlProvider;

    goto :goto_0
.end method


# virtual methods
.method public abstract getCommitSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getCommitUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCreateSubUbiUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getCreateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeleteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEditUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRequestDownloadUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUnHideMoveUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUnhideCopyUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUpdateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
