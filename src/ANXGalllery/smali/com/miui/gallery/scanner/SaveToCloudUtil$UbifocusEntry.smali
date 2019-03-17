.class Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;
.super Ljava/lang/Object;
.source "SaveToCloudUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/scanner/SaveToCloudUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UbifocusEntry"
.end annotation


# instance fields
.field mMainIndexForCloud:I

.field mOuterIndexForCloud:I

.field mSubFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/gallery/data/LocalUbifocus$SubFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/scanner/SaveToCloudUtil$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/scanner/SaveToCloudUtil$1;

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/miui/gallery/scanner/SaveToCloudUtil$UbifocusEntry;-><init>()V

    return-void
.end method
