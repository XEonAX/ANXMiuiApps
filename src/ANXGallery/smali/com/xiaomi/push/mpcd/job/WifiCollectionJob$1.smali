.class Lcom/xiaomi/push/mpcd/job/WifiCollectionJob$1;
.super Ljava/lang/Object;
.source "WifiCollectionJob.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/xiaomi/push/mpcd/job/WifiCollectionJob$1;->this$0:Lcom/xiaomi/push/mpcd/job/WifiCollectionJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "lhs"    # Landroid/net/wifi/ScanResult;
    .param p2, "rhs"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 37
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Landroid/net/wifi/ScanResult;

    check-cast p2, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/push/mpcd/job/WifiCollectionJob$1;->compare(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result v0

    return v0
.end method
