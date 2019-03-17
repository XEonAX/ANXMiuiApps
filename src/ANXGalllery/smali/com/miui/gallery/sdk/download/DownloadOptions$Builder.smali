.class public Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
.super Ljava/lang/Object;
.source "DownloadOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/sdk/download/DownloadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInterruptExecuting:Z

.field private mManual:Z

.field private mQueueFirst:Z

.field private mRequireCharging:Z

.field private mRequireDeviceStorage:Z

.field private mRequirePower:Z

.field private mRequireWLAN:Z

.field private mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mQueueFirst:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mInterruptExecuting:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireWLAN:Z

    return v0
.end method

.method static synthetic access$400(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequirePower:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireCharging:Z

    return v0
.end method

.method static synthetic access$600(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireDeviceStorage:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mManual:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/miui/gallery/sdk/download/DownloadOptions;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/miui/gallery/sdk/download/DownloadOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/gallery/sdk/download/DownloadOptions;-><init>(Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;Lcom/miui/gallery/sdk/download/DownloadOptions$1;)V

    return-object v0
.end method

.method public cloneFrom(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 1
    .param p1, "options"    # Lcom/miui/gallery/sdk/download/DownloadOptions;

    .prologue
    .line 110
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$800(Lcom/miui/gallery/sdk/download/DownloadOptions;)Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .line 111
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$900(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mQueueFirst:Z

    .line 112
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1000(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mInterruptExecuting:Z

    .line 113
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1100(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireWLAN:Z

    .line 114
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1200(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequirePower:Z

    .line 115
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1300(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireCharging:Z

    .line 116
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1400(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireDeviceStorage:Z

    .line 117
    invoke-static {p1}, Lcom/miui/gallery/sdk/download/DownloadOptions;->access$1500(Lcom/miui/gallery/sdk/download/DownloadOptions;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mManual:Z

    .line 118
    return-object p0
.end method

.method public setInterruptExecuting(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "interruptExecuting"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mInterruptExecuting:Z

    .line 81
    return-object p0
.end method

.method public setQueueFirst(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "queueFirst"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mQueueFirst:Z

    .line 76
    return-object p0
.end method

.method public setRequireCharging(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "requireCharging"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireCharging:Z

    .line 96
    return-object p0
.end method

.method public setRequireDeviceStorage(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "requireDeviceStorage"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireDeviceStorage:Z

    .line 101
    return-object p0
.end method

.method public setRequirePower(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "requirePower"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequirePower:Z

    .line 91
    return-object p0
.end method

.method public setRequireWLAN(Z)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "requireWLAN"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mRequireWLAN:Z

    .line 86
    return-object p0
.end method

.method public setUriAdapter(Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;)Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;
    .locals 0
    .param p1, "uriAdapter"    # Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/miui/gallery/sdk/download/DownloadOptions$Builder;->mUriAdapter:Lcom/miui/gallery/sdk/download/adapter/IUriAdapter;

    .line 71
    return-object p0
.end method
