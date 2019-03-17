.class Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;
.super Ljava/lang/Object;
.source "BaseDataItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/BaseDataItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayBetterPath"
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1

    .prologue
    .line 518
    iput-object p1, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->this$0:Lcom/miui/gallery/model/BaseDataItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mType:I

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mPath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/model/BaseDataItem;Lcom/miui/gallery/model/BaseDataItem$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/model/BaseDataItem;
    .param p2, "x1"    # Lcom/miui/gallery/model/BaseDataItem$1;

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;-><init>(Lcom/miui/gallery/model/BaseDataItem;)V

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 532
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget v0, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mType:I

    if-lt p1, v0, :cond_0

    .line 537
    iput p1, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mType:I

    .line 538
    iput-object p2, p0, Lcom/miui/gallery/model/BaseDataItem$DisplayBetterPath;->mPath:Ljava/lang/String;

    goto :goto_0
.end method
