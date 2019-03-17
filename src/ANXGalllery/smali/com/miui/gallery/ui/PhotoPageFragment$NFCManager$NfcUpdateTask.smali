.class Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NfcUpdateTask"
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mUpdateItem:Lcom/miui/gallery/model/BaseDataItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 2467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 2469
    return-void
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 3

    .prologue
    .line 2472
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2473
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 2475
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2480
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v2

    .line 2476
    :catch_0
    move-exception v1

    .line 2477
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PhotoPageFragment"

    invoke-static {v2, v1}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 2509
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2510
    iget-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 2512
    return-void
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 2494
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2495
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0}, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 2496
    .local v1, "adapter":Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 2497
    iget-object v4, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mUpdateItem:Lcom/miui/gallery/model/BaseDataItem;

    invoke-virtual {v4}, Lcom/miui/gallery/model/BaseDataItem;->getPathDisplayBetter()Ljava/lang/String;

    move-result-object v3

    .line 2498
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2500
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Landroid/net/Uri;

    const/4 v5, 0x0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v4, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUris([Landroid/net/Uri;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2501
    .restart local v3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2502
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "PhotoPageFragment"

    invoke-static {v4, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method updateItem(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 2485
    if-eqz p1, :cond_0

    .line 2486
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$NFCManager$NfcUpdateTask;->mUpdateItem:Lcom/miui/gallery/model/BaseDataItem;

    .line 2487
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/CompatHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2488
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getWorkHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    .line 2490
    :cond_0
    return-void
.end method
