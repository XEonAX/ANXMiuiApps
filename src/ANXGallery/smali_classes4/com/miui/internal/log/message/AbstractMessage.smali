.class public abstract Lcom/miui/internal/log/message/AbstractMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/log/message/Message;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbstractMessage"


# instance fields
.field private hd:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Ljava/lang/Appendable;)V
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public isRecycled()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->hd:Z

    return v0
.end method

.method protected abstract onRecycle()V
.end method

.method public prepareForReuse()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->hd:Z

    .line 44
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 22
    iget-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->hd:Z

    if-eqz v0, :cond_0

    .line 23
    const-string v0, "AbstractMessage"

    const-string v1, "Recycle message twice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/miui/internal/log/message/AbstractMessage;->onRecycle()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/log/message/AbstractMessage;->hd:Z

    .line 27
    invoke-static {p0}, Lcom/miui/internal/log/message/MessageFactory;->a(Lcom/miui/internal/log/message/Message;)V

    .line 29
    :goto_0
    return-void
.end method
