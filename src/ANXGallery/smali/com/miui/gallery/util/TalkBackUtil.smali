.class public Lcom/miui/gallery/util/TalkBackUtil;
.super Ljava/lang/Object;
.source "TalkBackUtil.java"


# direct methods
.method public static getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createTime"    # J
    .param p3, "rawLocation"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    if-nez p4, :cond_1

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p4}, Lcom/miui/gallery/util/FileMimeUtil;->isVideoFromMimeType(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/miui/gallery/util/TalkBackUtil;->getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContentDescriptionForImage(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "createTime"    # J
    .param p3, "rawLocation"    # Ljava/lang/String;
    .param p4, "isVideo"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 42
    :goto_0
    return-object v2

    .line 36
    :cond_0
    invoke-static {}, Lcom/miui/gallery/data/LocationManager;->getInstance()Lcom/miui/gallery/data/LocationManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/miui/gallery/data/LocationManager;->generateTitleLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "location":Ljava/lang/String;
    const/16 v2, 0x3ae

    invoke-static {p1, p2, v2}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "time":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 39
    if-eqz p4, :cond_1

    const v2, 0x7f0c057b

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v0, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v2, 0x7f0c0263

    goto :goto_1

    .line 42
    :cond_2
    if-eqz p4, :cond_3

    const v2, 0x7f0c057a

    :goto_2
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v2, 0x7f0c0262

    goto :goto_2
.end method

.method public static requestAnnouncementEvent(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
