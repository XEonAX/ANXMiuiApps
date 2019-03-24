.class public Lcom/miui/internal/log/appender/LogcatAppender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/log/appender/Appender;


# instance fields
.field private gI:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/miui/internal/log/appender/LogcatAppender$1;

    invoke-direct {v0, p0}, Lcom/miui/internal/log/appender/LogcatAppender$1;-><init>(Lcom/miui/internal/log/appender/LogcatAppender;)V

    iput-object v0, p0, Lcom/miui/internal/log/appender/LogcatAppender;->gI:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
    .locals 9

    .line 89
    iget-object v1, p0, Lcom/miui/internal/log/appender/LogcatAppender;->gI:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/StringBuilder;

    .line 90
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 91
    invoke-interface {p6, v8}, Lcom/miui/internal/log/message/Message;->format(Ljava/lang/Appendable;)V

    .line 92
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p6}, Lcom/miui/internal/log/message/Message;->getThrowable()Ljava/lang/Throwable;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/log/appender/LogcatAppender;->append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x2000

    if-le v0, v1, :cond_0

    .line 95
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 98
    :cond_0
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    sget-object p1, Lcom/miui/internal/log/appender/LogcatAppender$2;->gK:[I

    invoke-virtual {p5}, Lcom/miui/internal/log/Level;->ordinal()I

    move-result p3

    aget p1, p1, p3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 76
    :pswitch_0
    if-nez p7, :cond_0

    .line 77
    invoke-static {p2, p6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_0
    invoke-static {p2, p6, p7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    goto :goto_0

    .line 69
    :pswitch_1
    if-nez p7, :cond_1

    .line 70
    invoke-static {p2, p6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_1
    invoke-static {p2, p6, p7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    goto :goto_0

    .line 62
    :pswitch_2
    if-nez p7, :cond_2

    .line 63
    invoke-static {p2, p6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {p2, p6, p7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    goto :goto_0

    .line 55
    :pswitch_3
    if-nez p7, :cond_3

    .line 56
    invoke-static {p2, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_3
    invoke-static {p2, p6, p7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    goto :goto_0

    .line 48
    :pswitch_4
    if-nez p7, :cond_4

    .line 49
    invoke-static {p2, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_4
    invoke-static {p2, p6, p7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    goto :goto_0

    .line 41
    :pswitch_5
    if-nez p7, :cond_5

    .line 42
    invoke-static {p2, p6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 44
    :cond_5
    invoke-static {p2, p6, p7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    nop

    .line 85
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 0

    .line 102
    return-void
.end method

.method public getFormatter()Lcom/miui/internal/log/format/Formatter;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFormatter(Lcom/miui/internal/log/format/Formatter;)V
    .locals 0

    .line 30
    return-void
.end method
