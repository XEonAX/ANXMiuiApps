.class public Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
.super Lcom/miui/gallery/editor/photo/core/imports/text/model/FontBean;
.source "TextStyle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/editor/photo/core/imports/text/model/FontBean;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultNameResId:I

.field private state:I

.field private typeFace:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$1;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle$1;-><init>()V

    sput-object v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/model/FontBean;-><init>()V

    .line 21
    const v0, 0x7f0c0353

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/model/FontBean;-><init>()V

    .line 21
    const v0, 0x7f0c0353

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    .line 23
    const/16 v0, 0x13

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    .line 31
    return-void
.end method

.method private getDownloadSrcPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/gallery/editor/photo/core/imports/text/TextFontConfig;->FONT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalTextStyle()Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-direct {v0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;-><init>()V

    .line 35
    .local v0, "fontResource":Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;
    const/16 v1, 0x11

    iput v1, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    .line 36
    const-string v1, "local"

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:Ljava/lang/String;

    .line 37
    const v1, 0x7f0c0353

    iput v1, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    .line 38
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, v0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    .line 39
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)I
    .locals 2
    .param p1, "o"    # Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->extraInfo:Lcom/miui/gallery/editor/photo/core/imports/text/model/ExtraInfo;

    iget v0, v0, Lcom/miui/gallery/editor/photo/core/imports/text/model/ExtraInfo;->index:I

    iget-object v1, p1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->extraInfo:Lcom/miui/gallery/editor/photo/core/imports/text/model/ExtraInfo;

    iget v1, v1, Lcom/miui/gallery/editor/photo/core/imports/text/model/ExtraInfo;->index:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->compareTo(Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultNameResId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    return v0
.end method

.method public getDownloadFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->getDownloadSrcPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, ".0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->size:J

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    return v0
.end method

.method public getTypeFace()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isDownloadSuccess()Z
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExtra()Z
    .locals 2

    .prologue
    .line 71
    const-string v0, "extra"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 2

    .prologue
    .line 75
    const-string v0, "local"

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNeedDownload()Z
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    .line 44
    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeFace"    # Landroid/graphics/Typeface;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->typeFace:Landroid/graphics/Typeface;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->defaultNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/text/typeface/TextStyle;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
