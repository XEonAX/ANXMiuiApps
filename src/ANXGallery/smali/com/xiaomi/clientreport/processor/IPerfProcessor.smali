.class public interface abstract Lcom/xiaomi/clientreport/processor/IPerfProcessor;
.super Ljava/lang/Object;
.source "IPerfProcessor.java"

# interfaces
.implements Lcom/xiaomi/clientreport/processor/IDataSend;
.implements Lcom/xiaomi/clientreport/processor/IWrite;


# virtual methods
.method public abstract setPerfMap(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/clientreport/data/BaseClientReport;",
            ">;>;)V"
        }
    .end annotation
.end method
