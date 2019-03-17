.class public Lcom/uploader/implement/a;
.super Ljava/lang/Object;
.source "LogTool.java"


# static fields
.field private static volatile a:Lcom/uploader/export/IUploaderLog;

.field private static volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0x1f

    sput v0, Lcom/uploader/implement/a;->b:I

    return-void
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uploader/implement/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xa

    .line 39
    if-eqz p1, :cond_0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<aus>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    :cond_0
    sget-object v0, Lcom/uploader/implement/a;->a:Lcom/uploader/export/IUploaderLog;

    .line 44
    .local v0, "l":Lcom/uploader/export/IUploaderLog;
    if-eqz v0, :cond_2

    .line 45
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/uploader/export/IUploaderLog;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    .line 65
    .end local p2    # "msg":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 48
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_2
    sget v2, Lcom/uploader/implement/a;->b:I

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 51
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 53
    :sswitch_0
    const/4 v1, 0x2

    if-nez p3, :cond_3

    .end local p2    # "msg":Ljava/lang/String;
    :goto_1
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local p2    # "msg":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 55
    :sswitch_1
    const/4 v1, 0x4

    if-nez p3, :cond_4

    .end local p2    # "msg":Ljava/lang/String;
    :goto_2
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local p2    # "msg":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 57
    :sswitch_2
    const/4 v1, 0x3

    if-nez p3, :cond_5

    .end local p2    # "msg":Ljava/lang/String;
    :goto_3
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local p2    # "msg":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 59
    :sswitch_3
    const/4 v1, 0x5

    if-nez p3, :cond_6

    .end local p2    # "msg":Ljava/lang/String;
    :goto_4
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local p2    # "msg":Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 61
    :sswitch_4
    const/4 v1, 0x6

    if-nez p3, :cond_7

    .end local p2    # "msg":Ljava/lang/String;
    :goto_5
    invoke-static {v1, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0

    .restart local p2    # "msg":Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method static final a(Lcom/uploader/export/IUploaderLog;)V
    .locals 0
    .param p0, "log"    # Lcom/uploader/export/IUploaderLog;

    .prologue
    .line 31
    sput-object p0, Lcom/uploader/implement/a;->a:Lcom/uploader/export/IUploaderLog;

    .line 32
    return-void
.end method

.method public static final a(I)Z
    .locals 2
    .param p0, "priority"    # I

    .prologue
    .line 69
    sget-object v0, Lcom/uploader/implement/a;->a:Lcom/uploader/export/IUploaderLog;

    .line 70
    .local v0, "l":Lcom/uploader/export/IUploaderLog;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v0, p0}, Lcom/uploader/export/IUploaderLog;->isEnabled(I)Z

    move-result v1

    .line 73
    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/uploader/implement/a;->b:I

    and-int/2addr v1, p0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
