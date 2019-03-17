.class public interface abstract Lcom/xiaomi/clientreport/processor/IEventProcessor;
.super Ljava/lang/Object;
.source "IEventProcessor.java"

# interfaces
.implements Lcom/xiaomi/clientreport/processor/IDataSend;
.implements Lcom/xiaomi/clientreport/processor/IWrite;


# virtual methods
.method public abstract setEventMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;)V"
        }
    .end annotation
.end method
