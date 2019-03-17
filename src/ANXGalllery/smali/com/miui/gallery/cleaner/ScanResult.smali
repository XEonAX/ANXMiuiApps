.class public Lcom/miui/gallery/cleaner/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cleaner/ScanResult$CenteredImageSpan;,
        Lcom/miui/gallery/cleaner/ScanResult$Builder;,
        Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;
    }
.end annotation


# instance fields
.field private mAction:I

.field private mCount:I

.field private mDescription:I

.field private mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

.field private mPaths:[Ljava/lang/String;

.field private mSize:J

.field private mTitle:I

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/cleaner/ScanResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/cleaner/ScanResult$1;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/miui/gallery/cleaner/ScanResult;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mType:I

    return p1
.end method

.method static synthetic access$202(Lcom/miui/gallery/cleaner/ScanResult;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mSize:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/miui/gallery/cleaner/ScanResult;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mPaths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    return p1
.end method

.method static synthetic access$502(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mTitle:I

    return p1
.end method

.method static synthetic access$602(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mDescription:I

    return p1
.end method

.method static synthetic access$702(Lcom/miui/gallery/cleaner/ScanResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mAction:I

    return p1
.end method

.method static synthetic access$802(Lcom/miui/gallery/cleaner/ScanResult;Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;)Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;
    .locals 0
    .param p0, "x0"    # Lcom/miui/gallery/cleaner/ScanResult;
    .param p1, "x1"    # Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    return-object p1
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mAction:I

    return v0
.end method

.method public getDescription()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mDescription:I

    return v0
.end method

.method public getMergedTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x0

    .line 52
    iget v5, p0, Lcom/miui/gallery/cleaner/ScanResult;->mTitle:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "title":Ljava/lang/String;
    iget v5, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    if-lez v5, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0024

    iget v7, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/miui/gallery/cleaner/ScanResult;->mCount:I

    .line 55
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    .line 54
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "count":Ljava/lang/String;
    const v5, 0x7f0201ac

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 58
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 57
    invoke-virtual {v2, v10, v10, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    new-instance v0, Lcom/miui/gallery/cleaner/ScanResult$CenteredImageSpan;

    invoke-direct {v0, v2}, Lcom/miui/gallery/cleaner/ScanResult$CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 60
    .local v0, "centeredImageSpan":Lcom/miui/gallery/cleaner/ScanResult$CenteredImageSpan;
    new-instance v3, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v3, "spannableTitle":Landroid/text/SpannableString;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x21

    invoke-virtual {v3, v0, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 65
    .end local v0    # "centeredImageSpan":Lcom/miui/gallery/cleaner/ScanResult$CenteredImageSpan;
    .end local v1    # "count":Ljava/lang/String;
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "spannableTitle":Landroid/text/SpannableString;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    goto :goto_0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mPaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mSize:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mType:I

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/miui/gallery/cleaner/ScanResult;->mOnClickListener:Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/cleaner/ScanResult$OnScanResultClickListener;->onClick(Landroid/content/Context;)V

    .line 80
    :cond_0
    return-void
.end method
