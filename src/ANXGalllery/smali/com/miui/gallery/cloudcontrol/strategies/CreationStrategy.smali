.class public Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "CreationStrategy.java"


# instance fields
.field private mIsCollageEntryEnable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "collage_entry"
    .end annotation
.end field

.field private mIsPhotoMovieEntryEnable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "photo_movie_entry"
    .end annotation
.end field

.field private mIsPrintEntryEnable:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "print_entry"
    .end annotation
.end field

.field private mMinPrintVersionCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "min_print_version_code"
    .end annotation
.end field

.field private mPrintIntentUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "print_intent_uri"
    .end annotation
.end field

.field private mPrintMaxImageCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "print_max_image_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 1
    .param p1, "isCollageEntryEnable"    # Z
    .param p2, "isPhotoMovieEntryEnable"    # Z
    .param p3, "isPrintEntryEnable"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsCollageEntryEnable:Z

    .line 33
    iput-boolean p2, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsPhotoMovieEntryEnable:Z

    .line 34
    iput-boolean p3, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsPrintEntryEnable:Z

    .line 35
    const-string/jumbo v0, "xiaomiprint://start.uri.activity?action=createWork"

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintIntentUri:Ljava/lang/String;

    .line 36
    const/16 v0, 0x22

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mMinPrintVersionCode:I

    .line 37
    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintMaxImageCount:I

    .line 38
    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 72
    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;-><init>(ZZZ)V

    return-object v0
.end method


# virtual methods
.method public doAdditionalProcessing()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintIntentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string/jumbo v0, "xiaomiprint://start.uri.activity?action=createWork"

    iput-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintIntentUri:Ljava/lang/String;

    .line 81
    :cond_0
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mMinPrintVersionCode:I

    if-gtz v0, :cond_1

    .line 82
    const/16 v0, 0x22

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mMinPrintVersionCode:I

    .line 85
    :cond_1
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintMaxImageCount:I

    if-gtz v0, :cond_2

    .line 86
    const/16 v0, 0xc8

    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintMaxImageCount:I

    .line 88
    :cond_2
    return-void
.end method

.method public getMinPrintVersionCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mMinPrintVersionCode:I

    return v0
.end method

.method public getPrintIntentUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintIntentUri:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintMaxImageCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintMaxImageCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mPrintMaxImageCount:I

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc8

    goto :goto_0
.end method

.method public isCollageEntryEnable()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsCollageEntryEnable:Z

    return v0
.end method

.method public isPhotoMovieEntryEnable()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsPhotoMovieEntryEnable:Z

    return v0
.end method

.method public isPrintEntryEnable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/CreationStrategy;->mIsPrintEntryEnable:Z

    return v0
.end method
