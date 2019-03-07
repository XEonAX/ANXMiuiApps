.class public Lcom/miui/screenrecorder/view/RecorderSwitchWindowHelper;
.super Ljava/lang/Object;
.source "RecorderSwitchWindowHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dianWindowStay(Landroid/content/Context;IIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "originArea"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, ""

    .line 16
    .local v0, "area":Ljava/lang/String;
    move-object/from16 v9, p5

    .line 17
    .local v9, "recordArea":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 18
    .local v1, "configuration":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 19
    .local v2, "deviceOri":I
    const/4 v10, 0x2

    if-ne v2, v10, :cond_4

    .line 20
    div-int/lit8 v5, p3, 0x2

    .line 21
    .local v5, "level_y":I
    div-int/lit8 v4, p4, 0x3

    .line 22
    .local v4, "level_x1":I
    if-gt p2, v5, :cond_2

    .line 23
    if-ge p1, v4, :cond_1

    .line 24
    const-string v0, "landscape_1"

    .line 59
    .end local v4    # "level_x1":I
    .end local v5    # "level_y":I
    :cond_0
    :goto_0
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 60
    move-object v9, v0

    .line 64
    :goto_1
    new-instance v8, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v8}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 65
    .local v8, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    const-string v10, "floatwindow_move_area"

    invoke-virtual {v8, v10, v9}, Lcom/xiaomi/stat/MiStatParams;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v10, "Screenrecorder_floatWindow"

    const-string v11, "floatwindow_move"

    invoke-static {v10, v11, v8}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 67
    return-object v0

    .line 26
    .end local v8    # "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    .restart local v4    # "level_x1":I
    .restart local v5    # "level_y":I
    :cond_1
    const-string v0, "landscape_3"

    goto :goto_0

    .line 29
    :cond_2
    if-ge p1, v4, :cond_3

    .line 30
    const-string v0, "landscape_4"

    goto :goto_0

    .line 32
    :cond_3
    const-string v0, "landscape_6"

    goto :goto_0

    .line 35
    .end local v4    # "level_x1":I
    .end local v5    # "level_y":I
    :cond_4
    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    .line 36
    div-int/lit8 v3, p3, 0x2

    .line 37
    .local v3, "level_x":I
    div-int/lit8 v6, p4, 0x3

    .line 38
    .local v6, "level_y1":I
    mul-int/lit8 v7, v6, 0x2

    .line 39
    .local v7, "level_y2":I
    if-gt p2, v6, :cond_6

    .line 40
    if-ge p1, v3, :cond_5

    .line 41
    const-string v0, "portrait_1"

    goto :goto_0

    .line 43
    :cond_5
    const-string v0, "portrait_2"

    goto :goto_0

    .line 45
    :cond_6
    if-gt p2, v7, :cond_8

    .line 46
    if-ge p1, v3, :cond_7

    .line 47
    const-string v0, "portrait_3"

    goto :goto_0

    .line 49
    :cond_7
    const-string v0, "portrait_4"

    goto :goto_0

    .line 52
    :cond_8
    if-ge p1, v3, :cond_9

    .line 53
    const-string v0, "portrait_5"

    goto :goto_0

    .line 55
    :cond_9
    const-string v0, "portrait_6"

    goto :goto_0

    .line 62
    .end local v3    # "level_x":I
    .end local v6    # "level_y1":I
    .end local v7    # "level_y2":I
    :cond_a
    const-string v0, "no_change"

    goto :goto_1
.end method
