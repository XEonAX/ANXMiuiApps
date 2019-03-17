.class Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;
.super Ljava/lang/Object;
.source "StorageSetLoader.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/loader/StorageSetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MFileFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/loader/StorageSetLoader;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/loader/StorageSetLoader;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/loader/StorageSetLoader;Lcom/miui/gallery/loader/StorageSetLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/loader/StorageSetLoader;
    .param p2, "x1"    # Lcom/miui/gallery/loader/StorageSetLoader$1;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;-><init>(Lcom/miui/gallery/loader/StorageSetLoader;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/miui/gallery/loader/StorageSetLoader$MFileFilter;->this$0:Lcom/miui/gallery/loader/StorageSetLoader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/loader/StorageSetLoader;->access$200(Lcom/miui/gallery/loader/StorageSetLoader;Ljava/lang/String;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
