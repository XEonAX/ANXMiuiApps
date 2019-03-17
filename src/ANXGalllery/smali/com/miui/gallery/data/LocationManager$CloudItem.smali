.class Lcom/miui/gallery/data/LocationManager$CloudItem;
.super Ljava/lang/Object;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/data/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudItem"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public delayTime:I

.field public id:J

.field public lat:D

.field public lng:D

.field public location:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/gallery/data/LocationManager;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/data/LocationManager;)V
    .locals 0

    .prologue
    .line 966
    iput-object p1, p0, Lcom/miui/gallery/data/LocationManager$CloudItem;->this$0:Lcom/miui/gallery/data/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/data/LocationManager;Lcom/miui/gallery/data/LocationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/data/LocationManager;
    .param p2, "x1"    # Lcom/miui/gallery/data/LocationManager$1;

    .prologue
    .line 966
    invoke-direct {p0, p1}, Lcom/miui/gallery/data/LocationManager$CloudItem;-><init>(Lcom/miui/gallery/data/LocationManager;)V

    return-void
.end method
