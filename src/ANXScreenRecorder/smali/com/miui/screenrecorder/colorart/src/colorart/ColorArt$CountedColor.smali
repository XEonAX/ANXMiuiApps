.class Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;
.super Ljava/lang/Object;
.source "ColorArt.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountedColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mColor:I

.field private final mCount:I

.field final synthetic this$0:Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;


# direct methods
.method public constructor <init>(Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;II)V
    .locals 0
    .param p2, "color"    # I
    .param p3, "count"    # I

    .prologue
    .line 306
    iput-object p1, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->this$0:Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput p2, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mColor:I

    .line 308
    iput p3, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mCount:I

    .line 309
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;)I
    .locals 2
    .param p1, "another"    # Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 301
    check-cast p1, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->compareTo(Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;)I

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mColor:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mCount:I

    return v0
.end method

.method public isBlackOrWhite()Z
    .locals 14

    .prologue
    const-wide v12, 0x406fe00000000000L    # 255.0

    const-wide v10, 0x3fed1eb851eb851fL    # 0.91

    const-wide v8, 0x3fb70a3d70a3d70aL    # 0.09

    .line 317
    iget v6, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-double v6, v6

    div-double v4, v6, v12

    .line 318
    .local v4, "r":D
    iget v6, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-double v6, v6

    div-double v2, v6, v12

    .line 319
    .local v2, "g":D
    iget v6, p0, Lcom/miui/screenrecorder/colorart/src/colorart/ColorArt$CountedColor;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-double v6, v6

    div-double v0, v6, v12

    .line 321
    .local v0, "b":D
    cmpl-double v6, v4, v10

    if-lez v6, :cond_0

    cmpl-double v6, v2, v10

    if-lez v6, :cond_0

    cmpl-double v6, v0, v10

    if-gtz v6, :cond_1

    :cond_0
    cmpg-double v6, v4, v8

    if-gez v6, :cond_2

    cmpg-double v6, v2, v8

    if-gez v6, :cond_2

    cmpg-double v6, v0, v8

    if-gez v6, :cond_2

    .line 322
    :cond_1
    const/4 v6, 0x1

    .line 324
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
