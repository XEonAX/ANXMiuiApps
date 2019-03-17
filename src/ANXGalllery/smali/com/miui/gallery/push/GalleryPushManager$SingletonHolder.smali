.class Lcom/miui/gallery/push/GalleryPushManager$SingletonHolder;
.super Ljava/lang/Object;
.source "GalleryPushManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/push/GalleryPushManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/push/GalleryPushManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/miui/gallery/push/GalleryPushManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/push/GalleryPushManager;-><init>(Lcom/miui/gallery/push/GalleryPushManager$1;)V

    sput-object v0, Lcom/miui/gallery/push/GalleryPushManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/push/GalleryPushManager;

    return-void
.end method
