.class public Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;
.super Ljava/lang/Object;
.source "NotificationIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/NotificationIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetIconResult"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public downloadSize:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;J)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "downloadSize"    # J

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    iput-wide p2, p0, Lcom/xiaomi/push/service/NotificationIconHelper$GetIconResult;->downloadSize:J

    .line 59
    return-void
.end method
