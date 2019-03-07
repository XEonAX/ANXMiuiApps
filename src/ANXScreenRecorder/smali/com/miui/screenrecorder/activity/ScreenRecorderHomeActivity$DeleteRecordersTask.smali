.class Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;
.super Landroid/os/AsyncTask;
.source "ScreenRecorderHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeleteRecordersTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mOuterSelectedItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "activity"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p2, "selectedItem":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 692
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mOuterSelectedItem:Ljava/util/HashSet;

    .line 695
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 696
    iget-object v0, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mOuterSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 697
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    .param p2, "x1"    # Ljava/util/HashSet;
    .param p3, "x2"    # Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$1;

    .prologue
    .line 690
    invoke-direct {p0, p1, p2}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;-><init>(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;Ljava/util/HashSet;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 711
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_0

    .line 712
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 731
    :goto_0
    return-object v6

    .line 714
    :cond_0
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .line 715
    .local v0, "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    if-nez v0, :cond_1

    .line 716
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 721
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mOuterSelectedItem:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 722
    .local v3, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v2, "file":Ljava/io/File;
    new-array v7, v10, [Ljava/io/File;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->deleteFile([Ljava/io/File;)I

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_data = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 725
    .local v5, "where":Ljava/lang/String;
    invoke-static {}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$2400()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v5, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 727
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "where":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->getMediaDirStrList()Ljava/util/List;

    move-result-object v4

    .line 728
    .local v4, "stringList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 729
    .restart local v3    # "path":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/miui/screenrecorder/tools/MediaFileUtils;->scanFolder(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 731
    .end local v3    # "path":Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 690
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 736
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 737
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .line 739
    .local v0, "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    if-eqz v0, :cond_0

    .line 740
    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 743
    .end local v0    # "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 690
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 701
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity$DeleteRecordersTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;

    .line 703
    .local v0, "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    if-eqz v0, :cond_0

    .line 704
    invoke-static {v0}, Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;->access$1200(Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;)V

    .line 707
    .end local v0    # "activity":Lcom/miui/screenrecorder/activity/ScreenRecorderHomeActivity;
    :cond_0
    return-void
.end method
