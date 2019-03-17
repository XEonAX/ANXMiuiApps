.class final Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;
.super Ljava/lang/Object;
.source "ImageFeatureManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageFeatureMangerHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/assistant/manager/ImageFeatureManger;-><init>(Lcom/miui/gallery/assistant/manager/ImageFeatureManger$1;)V

    sput-object v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;->INSTANCE:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/assistant/manager/ImageFeatureManger;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/miui/gallery/assistant/manager/ImageFeatureManger$ImageFeatureMangerHolder;->INSTANCE:Lcom/miui/gallery/assistant/manager/ImageFeatureManger;

    return-object v0
.end method
