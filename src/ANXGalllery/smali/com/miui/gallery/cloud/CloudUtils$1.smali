.class final Lcom/miui/gallery/cloud/CloudUtils$1;
.super Ljava/lang/Object;
.source "CloudUtils.java"

# interfaces
.implements Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloud/CloudUtils;->copyImage(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/BaseDocumentProviderUtils$WriteHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$destFilePath:Ljava/lang/String;

.field final synthetic val$inputStream:Ljava/io/InputStream;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$inputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$destFilePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "os"    # Ljava/io/FileOutputStream;

    .prologue
    const/4 v2, -0x1

    .line 1157
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$inputStream:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/miui/gallery/util/GalleryUtils;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$destFilePath:Ljava/lang/String;

    const/16 v1, 0x1b6

    invoke-static {v0, v1, v2, v2}, Lcom/miui/gallery/util/Utils;->setPermissions(Ljava/lang/String;III)I

    .line 1160
    const-string v0, "CloudUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copy image finish, time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/gallery/cloud/CloudUtils$1;->val$startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1163
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic handle(Ljava/io/FileOutputStream;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lcom/miui/gallery/cloud/CloudUtils$1;->handle(Ljava/io/FileOutputStream;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
