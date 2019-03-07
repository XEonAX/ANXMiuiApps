.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;
.super Ljava/lang/Object;
.source "ScreenRecorderHomeActivity.java"

# interfaces
.implements Lcom/miui/screenrecorder/controller/MiuiScreenRecorderScannerController$ScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;


# direct methods
.method constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeScanner()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 263
    return-void
.end method

.method public scannerComplete(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/screenrecorder/data/GridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/miui/screenrecorder/data/GridItem;>;"
    new-instance v2, Lcom/xiaomi/stat/MiStatParams;

    invoke-direct {v2}, Lcom/xiaomi/stat/MiStatParams;-><init>()V

    .line 268
    .local v2, "miStatParams":Lcom/xiaomi/stat/MiStatParams;
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 269
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 273
    :goto_0
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1300(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 274
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 275
    :cond_0
    const-string v4, "file_count"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 276
    const-string v4, "Screenrecorder_home_page"

    const-string v5, "recorder_file_count"

    invoke-static {v4, v5, v2}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 277
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1400(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 304
    :goto_1
    return-void

    .line 271
    :cond_1
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$702(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 279
    :cond_2
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 280
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 281
    new-instance v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/data/GridItem;

    invoke-direct {v1, v4}, Lcom/miui/screenrecorder/data/GridItem;-><init>(Lcom/miui/screenrecorder/data/GridItem;)V

    .line 283
    .local v1, "item":Lcom/miui/screenrecorder/data/GridItem;
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 287
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/miui/screenrecorder/data/GridItem;
    :cond_4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v3, "tempSelected":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 289
    new-instance v1, Lcom/miui/screenrecorder/data/GridItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/screenrecorder/data/GridItem;

    invoke-direct {v1, v4}, Lcom/miui/screenrecorder/data/GridItem;-><init>(Lcom/miui/screenrecorder/data/GridItem;)V

    .line 290
    .restart local v1    # "item":Lcom/miui/screenrecorder/data/GridItem;
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    invoke-virtual {v1}, Lcom/miui/screenrecorder/data/GridItem;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 295
    .end local v1    # "item":Lcom/miui/screenrecorder/data/GridItem;
    :cond_6
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 296
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4, v3}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1502(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 297
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1600(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v5}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1500(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/screenrecorder/data/ScreenRecorderHomeAdapter;->setSelectedItem(Ljava/util/HashSet;)V

    .line 298
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 300
    .end local v3    # "tempSelected":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_7
    const-string v4, "file_count"

    iget-object v5, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v5}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$700(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v4, v6, v7}, Lcom/xiaomi/stat/MiStatParams;->putLong(Ljava/lang/String;J)V

    .line 301
    const-string v4, "Screenrecorder_home_page"

    const-string v5, "recorder_file_count"

    invoke-static {v4, v5, v2}, Lcom/miui/screenrecorder/tools/MiStatInterfaceUtils;->trackEvent(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/stat/MiStatParams;)V

    .line 302
    iget-object v4, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$8;->this$0:Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    invoke-static {v4}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1800(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    goto/16 :goto_1
.end method
