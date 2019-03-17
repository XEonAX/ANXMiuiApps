.class Lcom/miui/gallery/data/BackgroundJobService$1;
.super Ljava/lang/Object;
.source "BackgroundJobService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/data/BackgroundJobService;->deleteSecretThumbnail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/data/BackgroundJobService;


# direct methods
.method constructor <init>(Lcom/miui/gallery/data/BackgroundJobService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/data/BackgroundJobService;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/miui/gallery/data/BackgroundJobService$1;->this$0:Lcom/miui/gallery/data/BackgroundJobService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ".sa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
