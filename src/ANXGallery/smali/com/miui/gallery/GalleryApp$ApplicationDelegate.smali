.class public Lcom/miui/gallery/GalleryApp$ApplicationDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "GalleryApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/GalleryApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/GalleryApp;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/GalleryApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/GalleryApp;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;->this$0:Lcom/miui/gallery/GalleryApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lmiui/external/ApplicationDelegate;->onCreate()V

    .line 98
    iget-object v0, p0, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;->this$0:Lcom/miui/gallery/GalleryApp;

    invoke-static {v0}, Lcom/miui/gallery/GalleryApp;->access$000(Lcom/miui/gallery/GalleryApp;)V

    .line 99
    iget-object v0, p0, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;->this$0:Lcom/miui/gallery/GalleryApp;

    invoke-static {v0}, Lcom/miui/gallery/GalleryApp;->access$100(Lcom/miui/gallery/GalleryApp;)V

    .line 104
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/gallery/GalleryApp$ApplicationDelegate;->this$0:Lcom/miui/gallery/GalleryApp;

    invoke-static {v0}, Lcom/miui/gallery/GalleryApp;->access$300(Lcom/miui/gallery/GalleryApp;)V

    .line 107
    :cond_0
    return-void
.end method
