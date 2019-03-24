.class public interface abstract Lcom/miui/internal/log/appender/Appender;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Lcom/miui/internal/log/message/Message;)V
.end method

.method public abstract append(Ljava/lang/String;Ljava/lang/String;JLcom/miui/internal/log/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract close()V
.end method

.method public abstract getFormatter()Lcom/miui/internal/log/format/Formatter;
.end method

.method public abstract setFormatter(Lcom/miui/internal/log/format/Formatter;)V
.end method
