.class final Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$1;
.super Ljava/lang/Object;
.source "ScannerStrategy.java"

# interfaces
.implements Lcom/miui/gallery/cloudcontrol/Merger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/cloudcontrol/Merger",
        "<",
        "Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public merge(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .locals 1
    .param p1, "local"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;
    .param p2, "cloud"    # Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    .prologue
    .line 228
    invoke-static {p2}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 229
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$100(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;->cloneFrom(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$102(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$StreamFileStrategy;

    .line 234
    :cond_0
    invoke-static {p2}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$200(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 235
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$200(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 236
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$200(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;->cloneFrom(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$202(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$FileSizeLimitStrategy;

    .line 240
    :cond_1
    invoke-static {p2}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$300(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 241
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$300(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 242
    invoke-static {p1}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$300(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;->cloneFrom(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;->access$302(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$SpecialTypeMediaStrategy;

    .line 246
    :cond_2
    return-object p2
.end method

.method public bridge synthetic merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    check-cast p1, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    check-cast p2, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy$1;->merge(Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;)Lcom/miui/gallery/cloudcontrol/strategies/ScannerStrategy;

    move-result-object v0

    return-object v0
.end method
