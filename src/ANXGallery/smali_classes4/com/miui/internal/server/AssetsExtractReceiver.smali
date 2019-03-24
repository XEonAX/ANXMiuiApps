.class public Lcom/miui/internal/server/AssetsExtractReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetsExtractReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 17
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    const-string p1, "AssetsExtractReceiver"

    const-string v0, "receive boot_completed broadcast"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {p0}, Lcom/miui/internal/util/DirectIndexedFileExtractor;->tryExtractDirectIndexedFiles(Landroid/content/Context;)V

    .line 21
    :cond_0
    return-void
.end method
