.class final Lcom/meicam/themehelper/NvsParseHelper$3;
.super Ljava/lang/Object;
.source "NvsParseHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meicam/themehelper/NvsParseHelper;->sortFileByScore(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/meicam/themehelper/NvsImageFileDesc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I
    .locals 2
    .param p1, "arg0"    # Lcom/meicam/themehelper/NvsImageFileDesc;
    .param p2, "arg1"    # Lcom/meicam/themehelper/NvsImageFileDesc;

    .prologue
    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 236
    iget v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    iget v1, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 243
    :goto_0
    return v0

    .line 238
    :cond_0
    iget v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    iget v1, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 239
    const/4 v0, -0x1

    goto :goto_0

    .line 240
    :cond_1
    iget v0, p1, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    iget v1, p2, Lcom/meicam/themehelper/NvsImageFileDesc;->score:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 241
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 233
    check-cast p1, Lcom/meicam/themehelper/NvsImageFileDesc;

    check-cast p2, Lcom/meicam/themehelper/NvsImageFileDesc;

    invoke-virtual {p0, p1, p2}, Lcom/meicam/themehelper/NvsParseHelper$3;->compare(Lcom/meicam/themehelper/NvsImageFileDesc;Lcom/meicam/themehelper/NvsImageFileDesc;)I

    move-result v0

    return v0
.end method
