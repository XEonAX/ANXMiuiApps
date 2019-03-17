.class Lcom/miui/gallery/share/DBCache$2;
.super Landroid/database/ContentObserver;
.source "DBCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/DBCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/DBCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/DBCache;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/DBCache;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 91
    .local p0, "this":Lcom/miui/gallery/share/DBCache$2;, "Lcom/miui/gallery/share/DBCache$2;"
    iput-object p1, p0, Lcom/miui/gallery/share/DBCache$2;->this$0:Lcom/miui/gallery/share/DBCache;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 95
    .local p0, "this":Lcom/miui/gallery/share/DBCache$2;, "Lcom/miui/gallery/share/DBCache$2;"
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache$2;->this$0:Lcom/miui/gallery/share/DBCache;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/share/DBCache;->access$202(Lcom/miui/gallery/share/DBCache;Z)Z

    .line 96
    iget-object v0, p0, Lcom/miui/gallery/share/DBCache$2;->this$0:Lcom/miui/gallery/share/DBCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/share/DBCache;->access$100(Lcom/miui/gallery/share/DBCache;Z)Z

    .line 97
    return-void
.end method
