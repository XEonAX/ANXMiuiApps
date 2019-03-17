.class public Lcom/miui/gallery/util/SyncLog;
.super Ljava/lang/Object;
.source "SyncLog.java"


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/util/SyncLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 80
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;
    .param p4, "arg3"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method private static getFinalTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SyncLog"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 135
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/miui/gallery/util/SyncLog;->getFinalTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
