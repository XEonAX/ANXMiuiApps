.class Lcom/miui/gallery/cloud/CloudGroupUrlProvider$OwnerInstanceHolder;
.super Ljava/lang/Object;
.source "CloudGroupUrlProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OwnerInstanceHolder"
.end annotation


# static fields
.field private static final sOwnerUrlProvider:Lcom/miui/gallery/cloud/CloudGroupUrlProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/miui/gallery/cloud/CloudGroupUrlProvider$OwnerCloudGroupUrlProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudGroupUrlProvider$OwnerCloudGroupUrlProvider;-><init>(Lcom/miui/gallery/cloud/CloudGroupUrlProvider$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudGroupUrlProvider$OwnerInstanceHolder;->sOwnerUrlProvider:Lcom/miui/gallery/cloud/CloudGroupUrlProvider;

    return-void
.end method

.method static synthetic access$300()Lcom/miui/gallery/cloud/CloudGroupUrlProvider;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/gallery/cloud/CloudGroupUrlProvider$OwnerInstanceHolder;->sOwnerUrlProvider:Lcom/miui/gallery/cloud/CloudGroupUrlProvider;

    return-object v0
.end method
