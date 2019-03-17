.class Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;
.super Ljava/lang/Object;
.source "GalleryContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/GalleryContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyParams"
.end annotation


# instance fields
.field public observer:Landroid/database/ContentObserver;

.field public sync:Z

.field public syncReason:I

.field final synthetic this$0:Lcom/miui/gallery/provider/GalleryContentResolver;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/provider/GalleryContentResolver;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;->this$0:Lcom/miui/gallery/provider/GalleryContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/provider/GalleryContentResolver;Lcom/miui/gallery/provider/GalleryContentResolver$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/provider/GalleryContentResolver;
    .param p2, "x1"    # Lcom/miui/gallery/provider/GalleryContentResolver$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/gallery/provider/GalleryContentResolver$NotifyParams;-><init>(Lcom/miui/gallery/provider/GalleryContentResolver;)V

    return-void
.end method
