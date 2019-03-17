.class Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;


# direct methods
.method private constructor <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 882
    iput-object p1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    .line 883
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 884
    return-void
.end method

.method synthetic constructor <init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .param p2, "x1"    # Ljava/io/OutputStream;
    .param p3, "x2"    # Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$1;

    .prologue
    .line 881
    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 905
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 912
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 888
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 892
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 896
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor$FaultHidingOutputStream;->this$1:Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$2402(Lcom/nostra13/universalimageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)Z

    goto :goto_0
.end method
